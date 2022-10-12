-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 12, 2022 lúc 05:38 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bandienmay`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `email`, `password`, `admin_name`) VALUES
(1, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Anh Hào');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `baiviet_id` int(11) NOT NULL,
  `tenbaiviet` varchar(100) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `danhmuctin_id` int(11) NOT NULL,
  `baiviet_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`baiviet_id`, `tenbaiviet`, `tomtat`, `noidung`, `danhmuctin_id`, `baiviet_image`) VALUES
(1, 'Máy Lạnh - Điều hòa - Thiết bị điện lạnh không thể thiếu của mọi nhà', 'Việt Nam là một đất nước nằm khá gần xích đạo, với khí hậu nhiệt đới gió mùa đặc trưng, cộng với hiện tượng biến đổi khí hậu càng làm cho nhiệt độ hằng năm tăng lên.  Để có thể đảm bảo sức khỏe cũng như mang lại cho bạn một môi trường sống thoải mái nhất thì việc trang bị một chiếc điều hòa cho gia đình mình là vô cùng cần thiết. Thế nhưng không phải người dùng nào cũng có đủ kinh nghiệm để có thể tìm được một chiếc Máy lạnh có giá cả hợp lý, đáp ứng đúng nhu cầu sử dụng và tiết kiệm chi phí vận hành.\r\n\r\nĐể hỗ trợ quý khách hàng nắm được nhiều thông tin hơn và tìm được thiết bị phù hợp với gia đình, Nguyễn Kim xin gửi quý khách một số thông tin cũng như kinh nghiệm lựa chọn điều hòa giá rẻ để có thể có những lựa chọn chính xác nhất.', '', 1, 'maylanhtin.jpg'),
(2, 'Máy giặt', 'Ngày nay, Máy giặt là một thiết bị không thể thiếu trong mỗi gia đình Việt, làm cho việc giặt giũ trở nên nhẹ nhàng. Máy giặt mang lại cho các thành gia đình thêm gần gũi chia sẻ, yêu thương nhau hơn.\r\n\r\nNước ta quy tụ tất cả các thương hiệu hàng đầu thế giới: Electrolux, Panasonic, LG, Samsung, Sanyo, Toshiba, Casper, AQua...\r\n\r\nTrong đó máy giặt Electrolux luôn là sự lựa chọn ưu tiên hàng đầu của người tiêu dùng. Bởi thiết kế mang phong cách Châu âu trang nhã và hiện đại, cùng với sự tiên phong trong công nghệ giúp cho quần áo luôn sạch sẽ, mùi hương thơm bền lâu.', '', 2, 'maygiactin.jpg'),
(3, 'Laptop phù hợp mục đích sử dụng', 'Đối với người sử dụng laptop cơ bản: Nhóm đối tượng này thường là học sinh - sinh viên và dân văn phòng, do đó chỉ cần chọn những mẫu laptop học tập - văn phòng có cấu hình ổn định, xử lý tốt và ổn định những tác vụ công việc. Dòng laptop này có giá thành ổn nhất.', '', 3, 'laptin.jpg'),
(4, 'Những điều cần biết khi mua tivi\r\n', 'Mua tivi hoặc sử dụng tivi có thể bạn sẽ quan tâm đến một số khái niệm đặc thù như loại màn hình tivi (LED, Plasma, OLED), độ phân giải (HD, FullHD, 4K), một số tính năng đặc biệt (TV thông minh, TV màn hình cong, TV 4K, Tivi 3D), các hình thức kết nối phổ biến (HDMI, USB, MHL) và kết nối đặc trưng (Screen Mirroring, Content Streaming).', '', 4, 'tvtin.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Laptop'),
(2, 'Tủ lạnh'),
(3, 'Máy giặc'),
(4, 'Điện thoại'),
(5, 'Tivi ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc_tin`
--

CREATE TABLE `tbl_danhmuc_tin` (
  `danhmuctin_id` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc_tin`
--

INSERT INTO `tbl_danhmuc_tin` (`danhmuctin_id`, `tendanhmuc`) VALUES
(1, 'Kiến thức máy lạnh'),
(2, 'Kiến thức máy giặc'),
(3, 'Kiến thức laptop'),
(4, 'Kiến thức Tivi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_donhang`
--

CREATE TABLE `tbl_donhang` (
  `donhang_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `mahang` varchar(50) NOT NULL,
  `khachhang_id` int(11) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tinhtrang` int(11) NOT NULL,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_donhang`
--

INSERT INTO `tbl_donhang` (`donhang_id`, `sanpham_id`, `soluong`, `mahang`, `khachhang_id`, `ngaythang`, `tinhtrang`, `huydon`) VALUES
(10, 17, 7, '3060', 12, '2019-10-01 04:11:55', 1, 0),
(11, 21, 5, '8979', 14, '2019-10-04 02:29:52', 0, 0),
(12, 26, 6, '8979', 14, '2019-10-04 02:29:52', 0, 0),
(13, 20, 3, '4236', 15, '2019-10-04 02:33:55', 0, 0),
(14, 21, 4, '4236', 15, '2019-10-04 02:33:56', 0, 0),
(15, 20, 3, '6503', 16, '2019-10-04 02:34:56', 0, 0),
(16, 21, 4, '6503', 16, '2019-10-04 02:34:56', 0, 0),
(17, 21, 1, '2508', 17, '2019-10-04 02:35:19', 0, 0),
(18, 26, 3, '4249', 18, '2019-10-04 02:45:46', 0, 0),
(19, 26, 3, '8728', 19, '2019-10-04 02:46:40', 0, 0),
(20, 21, 1, '5037', 20, '2019-10-04 02:48:16', 0, 0),
(21, 20, 1, '5037', 20, '2019-10-04 02:48:17', 0, 0),
(22, 21, 1, '1594', 21, '2019-10-04 02:51:05', 0, 0),
(23, 20, 1, '1594', 21, '2019-10-04 02:51:05', 0, 0),
(24, 20, 1, '2323', 22, '2019-10-04 02:54:27', 0, 0),
(25, 21, 3, '2323', 22, '2019-10-04 02:54:27', 0, 0),
(26, 21, 2, '5737', 23, '2019-10-04 02:57:00', 0, 0),
(28, 25, 3, '7785', 25, '2019-10-04 03:11:51', 0, 0),
(29, 22, 5, '7785', 25, '2019-10-04 03:11:52', 0, 0),
(30, 27, 2, '7785', 25, '2019-10-04 03:11:52', 0, 0),
(31, 21, 1, '5396', 26, '2019-10-04 03:49:08', 0, 0),
(32, 20, 3, '5396', 26, '2019-10-04 03:49:08', 0, 0),
(33, 20, 3, '7914', 28, '2019-10-05 05:38:42', 0, 0),
(34, 26, 1, '7914', 28, '2019-10-05 05:38:42', 0, 0),
(35, 25, 2, '6687', 27, '2019-10-09 09:48:42', 1, 2),
(36, 26, 3, '6687', 27, '2019-10-09 09:48:42', 1, 2),
(37, 27, 1, '6687', 27, '2019-10-09 09:48:42', 1, 2),
(38, 22, 1, '1125', 27, '2019-10-09 09:47:17', 1, 2),
(39, 24, 1, '1125', 27, '2019-10-09 09:47:17', 1, 2),
(40, 20, 1, '555', 27, '2019-10-09 09:50:07', 0, 2),
(41, 21, 1, '3896', 29, '2022-10-11 13:37:54', 1, 2),
(42, 19, 1, '7681', 1, '2022-10-12 15:13:35', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giaodich`
--

CREATE TABLE `tbl_giaodich` (
  `giaodich_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `magiaodich` varchar(50) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `khachhang_id` int(11) NOT NULL,
  `tinhtrangdon` int(11) NOT NULL DEFAULT 0,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_giaodich`
--

INSERT INTO `tbl_giaodich` (`giaodich_id`, `sanpham_id`, `soluong`, `magiaodich`, `ngaythang`, `khachhang_id`, `tinhtrangdon`, `huydon`) VALUES
(3, 21, 2, '5737', '2019-10-04 02:57:00', 23, 0, 0),
(4, 26, 1, '6219', '2019-10-04 02:58:34', 24, 0, 0),
(5, 25, 3, '7785', '2019-10-04 03:11:52', 25, 0, 0),
(6, 22, 5, '7785', '2019-10-04 03:11:52', 25, 0, 0),
(7, 27, 2, '7785', '2019-10-04 03:11:52', 25, 0, 0),
(8, 21, 1, '5396', '2019-10-04 03:49:08', 26, 0, 0),
(9, 20, 3, '5396', '2019-10-04 03:49:08', 26, 0, 0),
(10, 20, 3, '7914', '2019-10-05 05:38:42', 28, 0, 0),
(11, 26, 1, '7914', '2019-10-05 05:38:42', 28, 0, 0),
(12, 25, 2, '6687', '2019-10-09 09:48:42', 27, 1, 2),
(13, 26, 3, '6687', '2019-10-09 09:48:42', 27, 1, 2),
(14, 27, 1, '6687', '2019-10-09 09:48:42', 27, 1, 2),
(15, 22, 1, '1125', '2019-10-09 09:47:17', 27, 1, 2),
(16, 24, 1, '1125', '2019-10-09 09:47:17', 27, 1, 2),
(17, 20, 1, '555', '2019-10-09 09:50:08', 27, 0, 2),
(18, 21, 1, '3896', '2022-10-11 13:37:54', 29, 1, 2),
(19, 19, 1, '7681', '2022-10-12 15:13:35', 1, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `giohang_id` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `giasanpham` varchar(50) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_khachhang`
--

CREATE TABLE `tbl_khachhang` (
  `khachhang_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` text NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `giaohang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_khachhang`
--

INSERT INTO `tbl_khachhang` (`khachhang_id`, `name`, `phone`, `address`, `note`, `email`, `password`, `giaohang`) VALUES
(1, 'Nguyễn Anh Hào', '0888229404', '795 Đường 30 tháng 4, Phường Vĩnh Thông, Rạch Giá', '', 'nah200402@gmail.com', 'a8afa333bf702567c3b230e0d9f10b99', 0),
(2, 'Nguyễn Văn A', '012345678', 'Rạch Sỏi - Kiên Giang', 'Cao m8', 'anhcaom8@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `sanpham_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sanpham_name` varchar(255) NOT NULL,
  `sanpham_chitiet` text NOT NULL,
  `sanpham_mota` text NOT NULL,
  `sanpham_gia` varchar(100) NOT NULL,
  `sanpham_giakhuyenmai` varchar(100) NOT NULL,
  `sanpham_active` int(11) NOT NULL,
  `sanpham_hot` int(11) NOT NULL,
  `sanpham_soluong` int(11) NOT NULL,
  `sanpham_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`sanpham_id`, `category_id`, `sanpham_name`, `sanpham_chitiet`, `sanpham_mota`, `sanpham_gia`, `sanpham_giakhuyenmai`, `sanpham_active`, `sanpham_hot`, `sanpham_soluong`, `sanpham_image`) VALUES
(17, 2, 'Tủ lạnh Inverter UltimateTaste 700 cửa Pháp 541 lít', 'Rau củ tươi ngon suốt 7 ngày với tính năng TasteLockPlus', 'Không gian rộng rãi, thoải mái lưu trữ', '6000000', '5500000', 0, 0, 10, 'tulanh2.jpg'),
(18, 5, 'Android Tivi TCL 43 inch L43S5200 ', 'Android Tivi TCL 43 inch L43S5200 có thiết kế hiện đại, gọn gàng, khung viền được làm mỏng cho màn hình phủ trọn tầm nhìn của bạn, mang đến trải nghiệm tuyệt vời, không bị giới hạn.', 'Lắp đặt miễn phí lúc giao hàng', '5000000', '4500000', 0, 0, 1, 'tv.jpg'),
(19, 5, 'Google Tivi Sony 32 inch KD-32W830K', 'Google Tivi Sony 32 inch KD-32W830K trang bị các công nghệ xử lý hình ảnh, âm thanh hiện đại như nâng cấp hình ảnh X-Reality PRO, chuyển động mượt Motionflow XR 200, S-Master Digital Amplifier, đặc biệt hệ điều hành Google TV đáp ứng đa dạng nhu cầu giải trí của người sử dụng.', 'Thời gian bảo hành: 2 năm', '5600000', '4800000', 0, 0, 1, 'm4.jpg'),
(20, 4, 'iPhone 14 Pro Max', '6.7 inch, Super Retina XDR, 2796 x 1290 Pixels', 'Apple A16 Bionic\r\n', '33990000', '33490000', 0, 0, 10, 'ip14.jpg'),
(21, 4, 'Samsung Galaxy Z Flip4 5G 128GB ', 'Samsung Galaxy Z Flip4 – chiếc smartphone nắp gập xịn sò bậc nhất thị trường di động đánh dấu cho sự phát triển vượt bậc về công nghệ. Không chỉ đơn thuần là một chiếc smartphone cao cấp, Galaxy Z Flip4 còn là món phụ kiện thời trang tuyệt vời cho các quý cô trong dịp cuối năm nay.', 'Snapdragon 8+ Gen 1 8 nhân; 1 nhân 3.18 GHz, 3 nhân 2.7 GHz & 4 nhân 2 GHz', '23990000', '20990000', 0, 0, 10, 'dt.jpg'),
(22, 2, 'Tủ lạnh Family Hub Samsung Inverter 616 lít RS64T5F01B4/SV', 'Tủ lạnh Family Hub giúp bạn dễ dàng chia sẻ video, hình ảnh hay lời nhắn đến với người thân thông qua màn hình được trang bị trên tủ lạnh. Ngoài ra tính năng này còn giúp bạn quản lý toàn bộ thực phẩm có trong tủ một cách đơn giản.\r\n\r\n', 'Kết nối cả gia đình với nhau thông qua màn hình trên tủ lạnh Family Hub', '75000000', '68000000', 0, 0, 5, 'tulanh1.jpg'),
(23, 2, 'Tủ lạnh Samsung Inverter 488 lít RF48A4010B4/SV', 'Tủ lạnh Samsung Inverter 488 lít RF48A4010B4/SV được trang bị 2 dàn lạnh độc lập ở ngăn đông và ngăn lạnh, có thể điều chỉnh linh hoạt nhiệt của 2 ngăn riêng biệt, duy trì độ ẩm phù hợp cho thực phẩm. Đồng thời, không bị lẫn mùi giữa các ngăn, giữ trọn vẹn hương vị ban đầu của thực phẩm.', 'Giữ thực phẩm tươi ngon tròn vị nhờ công nghệ 2 dàn Lạnh độc lập Twin Cooling Plus', '105000000', '94000000', 0, 0, 10, 'tulanh.jpg'),
(24, 1, 'ThinkPad X1 Carbon Gen 10 Core i7-1255U/ 16GB / 512GB SSD / 14\" FHD+ WUXGA', 'Đánh giá ThinkPad X1 Carbon Gen 10th. Tại CES 2022, Lenovo đã giới thiệu một siêu phẩm mới cho dòng ThinkPad hàng đầu của mình, đó chính là chiếc ThinkPad X1 Carbon thế hệ thứ 10. Đây được xem là mẫu laptop doanh nhân tốt nhất của Lenovo và nằm trong những chiếc laptop tốt nhất đầu năm 2022 như dòng. ThinkPad X1 Carbon Gen 10 được nâng cấp tổng thể từ bộ vi xử lý mới nhất của Intel, Webcam, màn hình OLED. Vì vậy bản nâng cấp này rất tuyệt vời, trên cả mong đợi của nhiều fan Thinkpad X1 Carbon.', 'Đánh giá ThinkPad X1 Carbon Gen 10th: Mạnh hơn, màn OLED siêu đẹp', '42900000', '40990000', 0, 0, 10, 'lap.jpg'),
(25, 1, 'Laptop Lenovo V14 G2 ITL 82KA00RTVN (Core i3-1115G4 | 4GB | 512GB | Intel UHD | 14 inch FHD | NoOS | Đen)', 'Lenovo V14 G2 ITL 82KA00RTVN là chiếc laptop – máy tính xách tay lý tưởng để bạn giải quyết công việc một cách nhanh chóng mọi lúc mọi nơi với con chip Intel Core i3 thế hệ thứ 11 siêu ổn định, thiết kế mỏng nhẹ, bền bỉ cùng công nghệ âm thanh Dolby Vision đặc sắc. Chiếc laptop Lenovo này hứa hẹn sẽ mang lại cho người dùng - đặc biệt là các bạn học sinh, sinh viên - nhiều bất ngờ so với mức giá chưa tới 10 triệu đồng.', 'Hiệu năng ổn định – Thiết kế xoay gập 180 độ bền bỉ - Bảo mật tuyệt đối', '10900000', '8990000', 0, 0, 10, 'lap1.jpg'),
(26, 3, 'Máy giặt sấy thông minh AI Ecobubble™ 21kg (WD21T6500GV)', 'Khối Lượng Giặt (kg)\r\n21.0 kg', 'Khối Lượng Thực\r\n98 kg', '33990000', '30990000', 0, 0, 10, 'mg.jpg'),
(27, 3, 'Máy giặt Aqua Inverter 9 kg AQD- D902G BK', 'Máy giặt Aqua Inverter 9 kg AQD- D902G BK sở hữu động cơ truyền động trực tiếp DD Inverter giúp máy vận hành êm ái và tiết kiệm điện năng. Chương trình giặt thông minh AI tự động điều chỉnh lượng nước giặt xả dựa trên khối lượng quần áo và chất liệu vải.', '- Kiểu dáng: máy giặt cửa trước - lồng ngang.', '12490000', '9900000', 0, 0, 10, 'mg2.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `slider_caption` text NOT NULL,
  `slider_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `slider_caption`, `slider_active`) VALUES
(1, 'b2.jpg', 'Slider khuyến mãi ', 1),
(2, 'b3.jpg', 'Slider 50%', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`baiviet_id`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_danhmuc_tin`
--
ALTER TABLE `tbl_danhmuc_tin`
  ADD PRIMARY KEY (`danhmuctin_id`);

--
-- Chỉ mục cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD PRIMARY KEY (`donhang_id`);

--
-- Chỉ mục cho bảng `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  ADD PRIMARY KEY (`giaodich_id`);

--
-- Chỉ mục cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`giohang_id`);

--
-- Chỉ mục cho bảng `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  ADD PRIMARY KEY (`khachhang_id`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`sanpham_id`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `baiviet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc_tin`
--
ALTER TABLE `tbl_danhmuc_tin`
  MODIFY `danhmuctin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  MODIFY `donhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  MODIFY `giaodich_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `giohang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  MODIFY `khachhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `sanpham_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
