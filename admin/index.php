<?php
include "header.php";
include "../model/pdo.php";
include "../model/danhmuc.php";
include "../model/sanpham.php";
include "../model/taikhoan.php";
include "../global.php";


$count_sp = count(loadAll_sanpham());
$loadAll_sanpham_trang_thai_1 = loadAll_sanpham_trang_thai_1();
if (isset($_GET['act']) && ($_GET['act'] != "")) {
    $act = $_GET['act'];
    switch ($act) {
            //quan ly danh muc
        case "add_dm": {
                if (isset($_POST['submit']) && ($_POST['submit'])) {
                    $name = $_POST['name'];
                    $img = null;
                    $listone_dm = loadAll_danhmuc($name, 0);
                    if (is_array($listone_dm) && count($listone_dm) > 0) {
                        $err = "Tên danh mục đã tồn tại";
                    } else {

                        if ($_FILES['img']['name'] != "") {
                            $img = time() . "_" . $_FILES['img']['name'];
                            move_uploaded_file($_FILES['img']['tmp_name'], "../uploads/img_dm/$img");
                        }
                        insert_dm($name, $img);
                        $thongbao = "Thêm danh mục thành công";
                    }
                }
                include "./danhmuc/add_dm.php";
                break;
            }
        case "list_dm": {
                $list_dm = loadAll_danhmuc();
                include "./danhmuc/list_dm.php";
                break;
            }
        case "delete_dm": {
                if (isset($_GET['id']) && ($_GET['id'] > 0)) {
                    $loadone_dm = loadAll_danhmuc("", $_GET['id']);
                    if (isset($loadone_dm[0]['img'])) {
                        if ($loadone_dm[0]['img'] != "") {
                            $link = "../uploads/img_dm/" . $loadone_dm[0]['img'];
                            unlink("$link");
                        }
                    }
                    delete_dm($_GET['id']);
                }
                $list_dm = loadAll_danhmuc();
                include "./danhmuc/list_dm.php";
                break;
            }
        case 'update_dm':
            if (isset($_GET['id']) && ($_GET['id'] > 0)) {
                $loadone_dm = loadAll_danhmuc("", $_GET['id']);
                if (isset($_POST['submit']) && ($_POST['submit'])) {
                    $name = $_POST['name'];
                    $img = null;
                    if (($_FILES['img']['name'] != $loadone_dm[0]['img']) && ($_FILES['img']['name'] != "")) {
                        $img = time() . "_" . $_FILES['img']['name'];
                        move_uploaded_file($_FILES['img']['tmp_name'], "../uploads/img_dm/$img");
                        unlink("../uploads/img_dm/" . $loadone_dm[0]['img']);
                    }
                    update_dm($_GET['id'], $name, $img);
                    header('location: index.php?act=list_dm');
                }
            }
            $list_dm = loadAll_danhmuc();
            include './danhmuc/update_dm.php';
            break;
            //quan ly san pham
        case "add_sp": {
                $list_dm = loadAll_danhmuc();
                if (isset($_POST['submit']) && ($_POST['submit'])) {
                    $name = $_POST['name'];
                    $iddm = $_POST['iddm'];
                    $img = null;
                    $img2 = null;
                    $img3 = null;
                    $gia = $_POST['gia'];
                    $gia_new = $_POST['gia_new'];
                    $soluong = $_POST['soluong'];
                    $xuatxu = $_POST['xuatxu'];
                    $kieumay = $_POST['kieumay'];
                    $mota = $_POST['mota'];
                    //Kiem tra trung ten san pham
                    $listone_sp = loadAll_sanpham($name, 0);
                    if (is_array($listone_sp) && count($listone_sp) > 0) {
                        $err = "Tên sản phẩm đã tồn tại";
                    } else {
                        if ($_FILES['img']['name'] != "") {
                            $img = time() . "_" . $_FILES['img']['name'];
                            move_uploaded_file($_FILES['img']['tmp_name'], "../uploads/img_sp/$img");
                        }
                        if ($_FILES['img2']['name'] != "") {
                            $img2 = time() . "_" . $_FILES['img2']['name'];
                            move_uploaded_file($_FILES['img2']['tmp_name'], "../uploads/img_sp/$img2");
                        }
                        if ($_FILES['img3']['name'] != "") {
                            $img3 = time() . "_" . $_FILES['img3']['name'];
                            move_uploaded_file($_FILES['img3']['tmp_name'], "../uploads/img_sp/$img3");
                        }
                        insert_sp($iddm, $name, $img, $img2, $img3, $gia, $gia_new, $mota, $soluong, $xuatxu, $kieumay);
                        $thongbao = "Thêm sản phẩm thành công";
                    }
                }
                include "./sanpham/add_sp.php";
                break;
            }
        case "delete_sp": {
                if (isset($_GET['id']) && ($_GET['id'] > 0)) {
                    $loadone_sp = loadAll_sanpham("", $_GET['id']);
                    delete_sp($_GET['id']);
                    header('location: index.php?act=list_sp');
                }
                $list_sp = loadAll_sanpham();
                include "./sanpham/list_sp.php";
                break;
            }
        case "list_sp": {
                $list_sp = loadAll_sanpham();
                include "./sanpham/list_sp.php";
                break;
            }
            case "trash" :
                if(isset($_GET['id']) && $_GET['id'] > 0){
                    khoiphuc_sp($_GET['id']);
                    header('location: index.php?act=trash');
                }
                include "./sanpham/trash.php";
                break;
        case "update_sp": {
                if (isset($_GET['id']) && ($_GET['id'] > 0)) {
                    $list_dm = loadAll_danhmuc();
                    $loadone_sp = loadAll_sanpham("", $_GET['id']);
                    if (isset($_POST['submit']) && ($_POST['submit'])) {
                        $name = $_POST['name'];
                        $iddm = $_POST['iddm'];
                        $gia = $_POST['gia'];
                        $gia_new = $_POST['gia_new'];
                        $soluong = $_POST['soluong'];
                        $xuatxu = $_POST['xuatxu'];
                        $kieumay = $_POST['kieumay'];
                        $mota = $_POST['mota'];
                        if (($_FILES['img']['name'] != "")) {
                            $img = time() . "_" . $_FILES['img']['name'];
                            move_uploaded_file($_FILES['img']['tmp_name'], "../uploads/img_sp/$img");
                            unlink("../uploads/img_sp/" . $loadone_sp[0]['img']);
                        } else {
                            $img = $loadone_sp[0]['img'];
                        }
                        if (($_FILES['img2']['name'] != "")) {
                            $img2 = time() . "_" . $_FILES['img2']['name'];
                            move_uploaded_file($_FILES['img2']['tmp_name'], "../uploads/img_sp/$img2");
                            unlink("../uploads/img_sp/" . $loadone_sp[0]['img2']);
                        } else {
                            $img2 = $loadone_sp[0]['img2'];
                        }
                        if (($_FILES['img3']['name'] != "")) {
                            $img3 = time() . "_" . $_FILES['img3']['name'];
                            move_uploaded_file($_FILES['img3']['tmp_name'], "../uploads/img_sp/$img3");
                            unlink("../uploads/img_sp/" . $loadone_sp[0]['img3']);
                        } else {
                            $img3 = $loadone_sp[0]['img3'];
                        }
                        // echo $img . " " . $img2 . " " . $img3;
                        update_sp($_GET['id'], $iddm, $name, $img, $img2, $img3, $gia, $gia_new, $mota, $soluong, $xuatxu, $kieumay);
                        header('location: index.php?act=list_sp');
                    }
                }
                $list_dm = loadAll_danhmuc();
                include './sanpham/update_sp.php';
                break;
            }
    }
} else {
    include "home.php";
}
include "footer.php";
ob_end_flush();