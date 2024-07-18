

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `binhluan` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `noidung` text NOT NULL,
  `date` date NOT NULL,
  `star` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `binhluan` (`id`, `id_user`, `id_pro`, `noidung`, `date`, `star`) VALUES
(59, 4, 17, 'rất xinh', '2023-12-03', 5),
(61, 4, 15, 'phù hợp với giá tiền', '2023-12-04', 5),
(62, 10, 27, 'sản phẩm đúng với mô tả', '2023-12-06', 3),
(63, 6, 29, 'sản phẩm đúng mô tả', '2023-12-06', 5),
(64, 6, 38, 'sản phẩm tốt, sẽ giới thiệu thêm', '2023-12-06', 5),
(65, 6, 39, 'đẹp', '2023-12-06', 5);



CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



CREATE TABLE `ct_don_hang` (
  `id` int(11) NOT NULL,
  `id_dh` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia_ban` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `ct_don_hang` (`id`, `id_dh`, `id_sp`, `soluong`, `gia_ban`, `img`, `name`) VALUES
(22, 48, 29, 1, 1090000, '1700577843_Casio AE-1200WHD.jpeg', 'Casio AE-1200WHD'),
(23, 48, 17, 2, 7560000, '1700576490_Longines L3.742.4.96.6.jpeg', 'Longines L3.742.4.96.6'),
(26, 51, 15, 1, 3700000, '1700576346_Citizen BM7256-50E.jpeg', 'Citizen BM7256-50E'),
(27, 52, 29, 1, 1090000, '1700577843_Casio AE-1200WHD.jpeg', 'Casio AE-1200WHD'),
(28, 53, 15, 1, 3700000, '1700576346_Citizen BM7256-50E.jpeg', 'Citizen BM7256-50E'),
(29, 54, 27, 1, 2650000, '1700577701_Casio G-Shock GA-2100.jpeg', 'Casio G-Shock GA-2100'),
(30, 55, 26, 1, 1250000, '1700577643_Casio 42mm MTP-1375L.jpeg', 'Casio 42mm MTP-1375L'),
(31, 56, 22, 1, 4120000, '1700576974_Seiko 42mm SUR211P1.jpeg', 'Seiko 42mm SUR211P1'),
(32, 57, 19, 1, 5090000, '1700576653_Orient FAG02005W0.jpeg', 'Orient FAG02005W0'),
(33, 58, 22, 1, 4120000, '1700576974_Seiko 42mm SUR211P1.jpeg', 'Seiko 42mm SUR211P1'),
(34, 59, 27, 1, 2650000, '1700577701_Casio G-Shock GA-2100.jpeg', 'Casio G-Shock GA-2100'),
(35, 60, 29, 1, 1090000, '1700577843_Casio AE-1200WHD.jpeg', 'Casio AE-1200WHD'),
(36, 60, 38, 1, 10890000, '1701335850_T099.429.11.038.00-1-1657079694916.jpeg', 'Tissot - Nam T099.429.11.038.00 Size'),
(37, 60, 39, 1, 9100000, '1701335970_T086.407.11.061.00-1-1657164340779.jpeg', 'Tissot - Nam T086.407.11.061.00');



CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `danhmuc` (`id`, `name`, `img`) VALUES
(1, 'Casio', '1700298355_casio.jpeg'),
(2, 'Orient', '1700298369_Orient.jpeg'),
(3, 'Citizen', '1700298381_Citizen.jpeg'),
(4, 'Seiko', '1700298391_Seiko.jpeg'),
(5, 'Tissot', '1700299147_Tissot.jpeg'),
(6, 'Longines', '1700299572_Longines.jpeg');



CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nguoi_nhan` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `ghi_chu` varchar(255) DEFAULT NULL,
  `thanhtien` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;



INSERT INTO `donhang` (`id`, `id_user`, `nguoi_nhan`, `email`, `tel`, `address`, `date`, `ghi_chu`, `thanhtien`, `trangthai`) VALUES
(48, 4, 'datgin2k4', 'dnguyentien145@gmail.com', '0987654321', 'Hà Nội', '2023-11-03', '', 16240000, 3),
(51, 4, 'datgin2k4', 'dnguyentien145@gmail.com', '0964305701', 'Trịnh Văn Bô', '2023-11-03', '', 3730000, 3),
(52, 6, 'khanh123', 'datntph36689@fpt.edu.vn', '0964305701', 'Hà Tĩnh', '2023-10-04', '', 1120000, 3),
(53, 4, 'datgin2004', 'dnguyentien145@gmail.com', '0964305701', 'Chương Mỹ', '2023-10-04', '', 3730000, 3),
(54, 4, 'datgin2004', 'dnguyentien145@gmail.com', '0964305701', 'Trịnh Văn Bô', '2023-12-04', '', 2680000, 3),
(55, 6, 'khanh123', 'datntph36689@fpt.edu.vn', '0999999999', 'HƯNG YÊN', '2023-12-05', NULL, 1280000, 3),
(56, 8, 'khanhtdi', 'KHANHPRO199X@GMAIL.COM', '0989999999', 'Cầu Giấy, Hà Nội', '2023-12-05', NULL, 4150000, 3),
(57, 9, 'test123', 'trankhanhhy1997x@gmail.com', '0999999999', 'Cầu Giấy, Hà Nội', '2023-12-05', NULL, 5120000, 3),
(58, 10, 'demo001', 'demo001@gmail.com', '0999999999', 'Cầu Giấy, Hà Nội', '2023-12-06', 'khách hàng không thích sp', 4150000, 4),
(59, 10, 'demo002', 'demo001@gmail.com', '0989999999', 'Cầu Giấy, Hà Nội', '2023-12-06', 'Shipper đang đến đường giao sản phẩm', 2680000, 3),
(60, 6, 'khanh6/12', 'datntph36689@fpt.edu.vn', '0989999777', 'Cầu Giấy, Hà Nội', '2023-12-06', 'đã giao thành công', 21080000, 3);




CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `iddm` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `gia` int(11) NOT NULL,
  `gia_new` int(11) NOT NULL,
  `mota` text NOT NULL,
  `soluong` int(11) NOT NULL,
  `xuatxu` varchar(100) NOT NULL,
  `kieumay` varchar(100) NOT NULL,
  `luotxem` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `sanpham` (`id`, `iddm`, `name`, `img`, `img2`, `img3`, `gia`, `gia_new`, `mota`, `soluong`, `xuatxu`, `kieumay`, `luotxem`, `trangthai`) VALUES
(1, 2, 'Orient FAG02003W0 Size 41mm', 'dongho1.jpeg', '1701335200_dong-ho-orient--fag02003w0_2-ims.jpeg', '1701335200_dong-ho-orient--fag02003w0_4-ims.jpeg', 4500000, 3890000, 'Orient FAG02003W0 không chỉ là mẫu đồng hồ thuộc kiểu Semi Skeleton (lộ cơ) độc đáo mà còn là sự kết hợp hoàn hảo giữa cổ máy bền bỉ của Nhật Bản và âm hưởng truyền thống đậm phong cách Thụy Sĩ. Chi tiết một cửa sổ "độc nhãn" (Open Heart) ở vị trí 7h - 10h tạo nên vẻ khác biệt cho sản phẩm khi giúp người dùng có trải nghiệm thú vị, không cảm thấy rối mắt mỗi lần nhìn ngắm chuyển động của bộ máy F6T22.', 20, 'Nhật Bản', 'Pin/Quazt', 100, 0),
(2, 2, 'Orient - Nam FAG00003W043', 'dongho2.jpeg', '1701335333_FAG00003W0-2.jpeg', '1701335333_FAG00003W0-3.jpeg', 8050000, 6500000, 'Orient là một trong những thương hiệu đồng hồ nổi tiếng trên thế giới. Để đáp ứng nhu cầu về đa dạng khách hàng, Orient luôn sẵn hàng nâng cao, cải tiến và cho ra đời những sản phẩm độc lạ. Một trong các mẫu đồng hồ nam Orient rất được người tiêu dùng ưa chuộng đó là mẫu Orient FAG00003W0. Sản phẩm cũng là một trong những bộ sưu tập đắt giá của nhà Orient. Nếu là một tín đồ của đồng hồ, bạn không thể bỏ qua cơ hội sở hữu dòng Orient FAG00003W0 này.', 12, 'Nhật Bản', 'Cơ/Automatic', 98, 0),
(3, 2, 'Orient - RA-AR0004S10B', 'dongho3.jpeg', '1701335463_dong-ho-orient-ra-ar0004s10b_2-ims.jpeg', '1701335463_dong-ho-orient-ra-ar0004s10b_3-ims.jpeg', 8970000, 6700000, 'Với cách “nhá hàng” cấu tạo một phần bộ máy bên trong, đồng hồ Orient RA-AR0004S10B Open Heart đã khơi dậy trí tò mò của bất cứ ai từng chiêm ngưỡng. Sản phẩm kết hợp hài hòa giữa phong cách hiện đại và cổ điển giúp tôn lên vẻ sang trọng và thời thượng cho nam giới.', 20, 'Nhật Bản', 'Cơ/Automatic', 17, 0),
(4, 2, 'Orient - FAG03002B0 38.5', 'dongho4.jpeg', '1701335643_dong-ho-orient-fag03002b0_2-ims.jpeg', '1701335643_dong-ho-orient-fag03002b0_4-ims.jpeg', 7050000, 5700000, 'Đồng hồ Orient FAG03002B0 được xem là một siêu phẩm độc đáo, kết hợp giữa lối thiết kế cổ điển nhưng vẫn mang đậm phong cách thời thượng của thương hiệu đến từ Nhật Bản. Dưới sự trau chuốt và tỉ mỉ của các Designer nhà Orient, model nền mặt số màu đen phối với dây kim loại màu bạc này đã tạo được sức hút riêng biệt khiến nhiều người mong muốn sở hữu.', 15, 'Nhật Bản', 'Năng lượng mặt trời', 43, 0),
(13, 5, 'Tissot T006.407.16.033.00', '1700576058_Tissot T006.407.16.033.00.jpeg', '1701335063_dong-ho-tissot-t006.407.16.033.00_2-ims.jpeg', '1701335063_dong-ho-tissot-t006.407.16.033.00_3-ims.jpeg', 14500000, 11290000, 'Tissot là thương hiệu của Thụy Sĩ được thành lập vào năm 1853. Được thành lập bởi Charles-Félicien Tissot và người con trai Charles-Émile Tissot. Các dòng sản phẩm tiêu biểu: “Tissot Prx, Tissot Le Locle, Tissot Luxury, Tissot Chemin Des Tourelles, Tissot 18K Gold, Tissot T-Wave…”', 10, 'Thụy Sĩ', 'Cơ/Automatic', 35, 0),
(14, 3, 'Citizen NH8363-14H', '1700576274_Citizen NH8363-14H.jpeg', '1701333399_dong-ho-citizen-nh8363-14h_2-ims.jpeg', '1701333399_dong-ho-citizen-nh8363-14h_3-ims.jpeg', 5500000, 4230000, 'Đồng hồ Citizen là thương hiệu của Nhật Bản ra đời năm 1918 bởi viện nghiên cứu đồng hồ Shokosha. Citizen tiếng nhật có ý nghĩa đó là “người dân” hàm ý là bất kỳ ai cũng có thể sở hữu được đồng hồ của thương hiệu này"', 5, 'Nhật Bản', 'Cơ/Automatic', 34, 0),
(15, 3, 'Citizen BM7256-50E', '1700576346_Citizen BM7256-50E.jpeg', '1701333294_BM7256-50E-4.jpeg', '1701333294_BM7256-50E-7.jpeg', 4590000, 3700000, 'Đồng hồ Citizen là thương hiệu của Nhật Bản ra đời năm 1918 bởi viện nghiên cứu đồng hồ Shokosha. Citizen tiếng nhật có ý nghĩa đó là “người dân” hàm ý là bất kỳ ai cũng có thể sở hữu được đồng hồ của thương hiệu này', 20, 'Nhật Bản', 'Cơ/Automatic', 50, 0),
(16, 6, 'Longines L2.321.4.87.2', '1700576415_Longines L2.321.4.87.2.jpeg', '1701333589_L2.321.4.87.2-3-1664953295253.jpeg', '1701333589_L2.321.4.87.2-1-1664953287371.jpeg', 6500000, 5900000, '- Longines là thương hiệu đồng hồ Thụy Sĩ ra đời vào năm 1832. Được sáng lập bởi Auguste Agassiz. Có những dòng sản phẩm tiêu biểu: “Elegance, Watchmaking Tradition, Avigation, Diving, Performance”.', 8, 'Thụy Sĩ', 'Cơ/Automatic', 63, 0),
(17, 6, 'Longines L3.742.4.96.6', '1700576490_Longines L3.742.4.96.6.jpeg', '1701333711_L3.742.4.96.6-3-1649732654576.jpeg', '1701333711_L3.742.4.96.6-2-1649732648365.jpeg', 8900000, 7560000, '- Longines là thương hiệu đồng hồ Thụy Sĩ ra đời vào năm 1832. Được sáng lập bởi Auguste Agassiz. Có những dòng sản phẩm tiêu biểu: “Elegance, Watchmaking Tradition, Avigation, Diving, Performance”.', 15, 'Thụy Sĩ', 'Cơ/Automatic', 54, 0),
(18, 2, 'Orient RA-AR0003L10B', '1700576568_Orient RA-AR0003L10B.jpeg', '1701334240_RA-AR0003L10B-3-1678181761610.jpeg', '1701334240_RA-AR0003L10B-5-1678181767893.jpeg', 8900000, 7240000, 'Đúng với tên gọi Orient RA-AR0003L10B Open Heart, chiếc đồng hồ nam này được hãng lồng ghép chi tiết “hở tim” vô cùng tinh tế ở cả hai mặt. Ở phía trước, phần lộ máy đặt tại vị trí 9h thu hút và có viền bằng kim loại màu bạc bao bọc xung quanh. Phía sau sản phẩm cũng có một “cửa sổ” lớn giúp người dùng chiêm ngưỡng được bộ máy cơ học.', 20, 'Nhật Bản', 'Cơ




CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(225) NOT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL,
  `checkname` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `taikhoan` (`id`, `user`, `pass`, `email`, `tel`, `address`, `role`, `checkname`) VALUES
(1, 'admin123', 'Admin123123', 'admin@gmail.com.vn', NULL, NULL, 1, 0),
(04, 'dnguyentien145@gmail.com', '0964305701', 'Trịnh Văn Bô', '2023-12-04', '', 2680000, 3),
(55, 6, 'khanh123', 'datntph36689@fpt.edu.vn', '0999999999', 'HƯNG YÊN', '2023-12-05', NULL, 1280000, 3),
(56, 8, 'khanhtdi', 'KHANHPRO199X@GMAIL.COM', '0989999999', 'Cầu Giấy, Hà Nội', '2023-12-05', NULL, 4150000, 3),
(57, 9, 'test123', 'trankhanhhy1997x@gmail.com', '0999999999', 'Cầu Giấy, Hà Nội', '2023-12-05', NULL, 5120000, 3),
(58, 10, 'demo001', 'demo001@gmail.com', '0999999999', 'Cầu Giấy, Hà Nội', '2023-12-06', 'khách hàng không thích sp', 4150000, 4),
(59, 10, 'demo002', 'demo001@gmail.com', '0989999999', 'Cầu Giấy, Hà Nội', '2023-12-06', 'Shipper đang đến đường giao sản phẩm', 2680000, 3),
(60, 6, 'khanh6/12', 'datntph36689@fpt.edu.vn', '0989999777', 'Cầu Giấy, Hà Nội', '2023-12-06', 'đã giao thành công', 21080000, 3);;


ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tk_bl` (`id_user`),
  ADD KEY `fk_pro_bl` (`id_pro`);


ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sp_cart` (`idsp`),
  ADD KEY `fk_user_cart` (`iduser`);


ALTER TABLE `ct_don_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ctdh_dh` (`id_dh`),
  ADD KEY `fk_ctdh_sp` (`id_sp`);


ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_dh_tk` (`id_user`);


ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_danhmuc_sanpham` (`iddm`);


ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;


ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;


ALTER TABLE `ct_don_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;


ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;


ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;


ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;


ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;




ALTER TABLE `cart`
  ADD CONSTRAINT `fk_sp_cart` FOREIGN KEY (`idsp`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `fk_user_cart` FOREIGN KEY (`iduser`) REFERENCES `taikhoan` (`id`);


ALTER TABLE `ct_don_hang`
  ADD CONSTRAINT `fk_ctdh_dh` FOREIGN KEY (`id_dh`) REFERENCES `donhang` (`id`),
  ADD CONSTRAINT `fk_ctdh_sp` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id`);


ALTER TABLE `donhang`
  ADD CONSTRAINT `fk_dh_tk` FOREIGN KEY (`id_user`) REFERENCES `taikhoan` (`id`);

ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_danhmuc_sanpham` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);
COMMIT;

