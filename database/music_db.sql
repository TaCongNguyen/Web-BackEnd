-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 07, 2021 lúc 04:38 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `music_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `genres`
--

CREATE TABLE `genres` (
  `id` int(30) NOT NULL,
  `genre` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `cover_photo` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `genres`
--

INSERT INTO `genres` (`id`, `genre`, `description`, `cover_photo`, `date_created`) VALUES
(1, 'Pop', 'Nhạc pop', '1625537820_popmusic.jpg', '2020-11-19 08:26:53'),
(2, 'Rock', 'Rock cực mạnh', '1625537880_rock.jpg', '2020-11-19 08:29:13'),
(3, 'Nhạc Việt', 'Nhạc Việt nè mọi người', '1625537760_nhacviet.jpg', '2020-11-19 08:59:17'),
(9, 'Acoustic', 'Những bài hát nổi tiếng với tiếng đàn guitar', '1625665800_Acoustic.jpg', '2021-07-07 09:36:23'),
(10, 'Lofi', 'Giai điệu hoài niệm, thư giãn ', '1625665860_lofi.jpg', '2021-07-07 09:37:25'),
(11, 'EDM', 'Bùng cháy với những giai điệu mạnh mẽ', '1625665800_EDM.jpg', '2021-07-07 09:38:12'),
(12, 'Hot US-UK', 'Tổng hợp những bài hit US-UK ', '1625665860_usuk.jpg', '2021-07-07 09:39:04'),
(13, 'Hot K-Pop', 'Idol, Idol và Idol', '1625665800_kpop.jpg', '2021-07-07 09:39:55'),
(14, 'Jazz', 'Phong cách âm nhạc độc lập, biểu diễu', '1625665860_jazz.jpg', '2021-07-07 09:40:51'),
(15, 'Nhạc Hoa', 'Tổng hợp những bài hát nhạc hoa hay nhất', '1625665860_cpop.jpg', '2021-07-07 09:41:56'),
(16, 'Nhạc Phật Giáo', 'Hoa nở là hữu tình, hoa rơi là vô ý', '1625665860_nhacPhatGiao.jpg', '2021-07-07 09:44:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `playlist`
--

CREATE TABLE `playlist` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `cover_image` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `playlist`
--

INSERT INTO `playlist` (`id`, `user_id`, `title`, `description`, `cover_image`, `date_created`) VALUES
(1, 1, 'Chill', 'Tôi chỉ muốn chill', '1625537520_chill.jpg', '2020-11-20 08:52:36'),
(2, 1, 'Genshin Impact', 'List nhạc chơi game Genshin Impact', '1625537520_genshin.gif', '2020-11-20 08:58:35'),
(3, 1, 'Tình yêu vội vàng', 'Một playlist về tình yêu buồn thảm của tôi', '1625537520_tinhyeubuon.jpg', '2020-11-20 08:59:23'),
(6, 1, 'Làm việc ở nhà tránh xa \"Vi rút\"', 'Xa xa xa ra Cô Vi', '1625665980_LamViecONhaTranhXaVirus.jpg', '2021-07-07 20:53:19'),
(7, 1, 'Ballad Gây Thương Nhớ', 'Nghe là nhớ người yêu ', '1625666040_BalladGayThuongNho.jpg', '2021-07-07 20:54:55'),
(8, 1, 'Khi Làm Việc Ở Nhà Nghe Gì', 'Nhiều thể loại nhạc hấp dẫn', '1625666220_KhiLamViecONhaNgheGi.jpg', '2021-07-07 20:57:30'),
(9, 1, 'Ballad Những Ngày Mưa', 'Một chút chill ngày mưa', '1625666760_BalladNgayMua.jpg', '2021-07-07 21:06:24'),
(10, 1, 'Baroque Tập Trung Học Tập', 'tập trung học đi', '1625666760_BaroqueTapTrung.jpg', '2021-07-07 21:06:52'),
(11, 1, 'Cho Những Ngày An Yên', 'Thư giãn cuối tuần', '1625666820_ChoNhungNgayAnYen.jpg', '2021-07-07 21:07:25'),
(12, 1, 'Soul City', 'Cuồng nhiệt không khí phố thị', '1625666880_Driving.jpg', '2021-07-07 21:08:42'),
(13, 1, 'Yoga Thiền', 'Tĩnh tâm tu luyện chính quả', '1625666940_YogaThien.jpg', '2021-07-07 21:09:14'),
(14, 1, 'Cảm Xúc Ngày Mưa', 'Một chút thẫn thờ suy nghĩ khi mưa', '1625666940_NgayMua.jpg', '2021-07-07 21:09:50'),
(15, 1, 'Party', 'Hand upppppp', '1625667000_Party.jpg', '2021-07-07 21:10:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `playlist_items`
--

CREATE TABLE `playlist_items` (
  `id` int(30) NOT NULL,
  `playlist_id` int(30) NOT NULL,
  `music_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `playlist_items`
--

INSERT INTO `playlist_items` (`id`, `playlist_id`, `music_id`, `date_created`) VALUES
(2, 2, 2, '2020-11-20 08:58:44'),
(3, 3, 2, '2020-11-20 08:59:46'),
(4, 3, 1, '2020-11-20 08:59:46'),
(5, 6, 17, '2021-07-07 20:54:08'),
(6, 6, 4, '2021-07-07 20:54:08'),
(7, 6, 14, '2021-07-07 20:54:08'),
(8, 6, 19, '2021-07-07 20:54:08'),
(9, 6, 18, '2021-07-07 20:54:08'),
(10, 6, 22, '2021-07-07 20:54:08'),
(11, 7, 18, '2021-07-07 20:55:31'),
(12, 7, 13, '2021-07-07 20:55:31'),
(13, 7, 12, '2021-07-07 20:55:31'),
(14, 7, 9, '2021-07-07 20:55:31'),
(15, 7, 5, '2021-07-07 20:55:31'),
(16, 8, 16, '2021-07-07 20:57:56'),
(17, 8, 19, '2021-07-07 20:57:56'),
(18, 8, 20, '2021-07-07 20:57:56'),
(19, 8, 15, '2021-07-07 20:57:56'),
(20, 8, 6, '2021-07-07 20:57:56'),
(21, 8, 1, '2021-07-07 20:57:56'),
(22, 8, 2, '2021-07-07 20:57:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `uploads`
--

CREATE TABLE `uploads` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `genre_id` int(30) NOT NULL,
  `title` text NOT NULL,
  `artist` text NOT NULL,
  `description` text NOT NULL,
  `upath` text NOT NULL,
  `cover_image` text NOT NULL,
  `date_created` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `uploads`
--

INSERT INTO `uploads` (`id`, `user_id`, `genre_id`, `title`, `artist`, `description`, `upath`, `cover_image`, `date_created`) VALUES
(1, 1, 2, 'Em của ngày hôm qua', 'Sơn Tùng', 'Bài hát cực hay', 'emcuangayhomqua.mp3', 'emcuangayhomqua.jpg', 2147483647),
(2, 2, 1, 'Chạy ngay đi', 'Sơn Tùng', 'Bài hát ám ảnh', 'chayngaydi.mp3', 'chayngaydi.jpg', 2147483647),
(4, 1, 3, 'Bao Nhiêu', 'Chillies', '', '1625665380_BaoNhieu-Chillies.mp3', '1625665380_quakhungcuaso_chillies.jpg', 2147483647),
(5, 1, 3, 'Dù Chẳng Phải Anh', 'Đinh Mạnh Ninh', '', '1625665440_DuChangPhaiAnh-DinhManhNinh-5075069.mp3', '1625665440_DùChẳngPhảiAnh.jpg', 2147483647),
(6, 1, 3, 'Mộng Du', 'Chillies', '', '1625665500_MongDu-Chillies.mp3', '1625665500_quakhungcuaso_chillies.jpg', 2147483647),
(7, 1, 3, 'Qua Khung Cửa Sổ', 'Chillies', '', '1625665620_QuaKhungCuaSo-Chillies.mp3', '1625665620_quakhungcuaso_chillies.jpg', 2147483647),
(9, 1, 3, 'Mùa Thu Lá Xanh', 'Hy', '', '1625665560_MuaThuLaXanh-Hy-4680052.mp3', '1625665560_MùaThuLáXanh.jpg', 2147483647),
(10, 1, 3, 'Một Cái Tên', 'Chillies', '', '1625665500_MotCaiTen-Chillies.mp3', '1625665500_quakhungcuaso_chillies.jpg', 2147483647),
(11, 1, 3, 'Khi Em Lớn', 'Orange ft Hoàng Dũng', '', '1625665500_KhiEmLon_Orange_HoangDung.mp3', '1625665500_khiemlon.jpg', 2147483647),
(12, 1, 3, 'Người Ta Đâu Thương Em', 'LyLy ft Tú Anh', '', '1625665560_NguoiTaDauThuongEm-LylyAnhTuTheVoice-6931862.mp3', '1625665560_NgườiTaĐâuThươngEm.jpg', 2147483647),
(13, 1, 9, 'Xin Đừng Nhấc Máy', 'B Ray ft HanSara', '', '1625665680_XinDungNhacMay_B Ray_HanSara.mp3', '1625665680_xindungnhacmay.jpg', 2147483647),
(14, 1, 12, 'Bad Guy', 'Billie Eilish', '', '1625665080_BadGuy-BillieEilish-5936021.mp3', '1625665080_whenweallfallasleep_billieeilish.jpg', 2147483647),
(15, 1, 12, 'Bury A Friend', 'Billie Eilish', '', '1625665440_BuryAFriend-BillieEilish-5877588.mp3', '1625665440_whenweallfallasleep_billieeilish.jpg', 2147483647),
(16, 1, 12, 'Downtown', 'Allie X', '', '1625665440_Downtown-AllieX-5018398.mp3', '1625665440_Downtown.jpg', 2147483647),
(17, 1, 12, 'Old Town Road (Remix)', 'LilNax X ft Billy Ray Cyrus', '', '1625665560_OldTownRoadRemix-LilNasXBillyRayCyrus-6033730.mp3', '1625665560_OldTownRoad(Remix).jpg', 2147483647),
(18, 1, 12, 'Paris In The Rain', 'Lauv', '', '1625665620_ParisInTheRain-Lauv-5281481.mp3', '1625665620_ParisInTheRain.jpg', 2147483647),
(19, 1, 12, 'Someone You Love', 'Lewis Capaldi', '', '1625665620_SomeoneYouLoved-LewisCapaldi-5997823.mp3', '1625665620_SomeoneYouLoved.jpg', 2147483647),
(20, 1, 12, 'Strawberries Cigarettes', 'Troye Sivan', '', '1625665680_StrawberriesCigarettes-TroyeSivan-5413444.mp3', '1625665680_Strawberries&Cigarettes.jpg', 2147483647),
(21, 1, 12, 'The Cure', 'Lady Gaga', '', '1625665680_TheCure-LadyGaga-5343078.mp3', '1625665680_TheCure.jpg', 2147483647),
(22, 1, 12, 'Work From Home', 'Fifth Harmony ft Ty Dollaign', '', '1625665740_WorkFromHome-FifthHarmonyTyDollaign-4350133.mp3', '1625665740_WorkFromHome.jpg', 2147483647),
(23, 1, 9, 'Dẫu Nhớ Gấp Trăm Lần', 'Nguyên Hà', '', '1625667120_DauNhoGapTramLan-NguyenHa-6718620.mp3', '1625667120_DẫuNhớGấpTrămLần.jpg', 2147483647),
(24, 1, 9, 'Có Ai', 'Jun Phạm', '', '1625667180_CoAi-JunPham-6721622.mp3', '1625667180_CóAi.jpg', 2147483647),
(25, 1, 9, 'Cà Phê Thuốc Lá Và Những Ngày Mưa', 'Thế Bảo', '', '1625667240_CafeThuocLaVaNhungNgayVui-TheBao-4938467.mp3', '1625667240_cafethuoclavanhuongngaymua.jpg', 2147483647);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` int(1) NOT NULL DEFAULT 2,
  `profile_pic` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `type`, `profile_pic`, `date_created`) VALUES
(1, 'Administrator', 'Nguyen', 'Male', '0338345335', 'GenMusic', 'admin@gmail.com', '0192023a7bbd73250516f069df18b500', 1, '', '2020-11-18 16:50:06'),
(2, 'Hà', 'Nam', 'Male', '0338345335', 'Sample address', 'jsmith@gmail.com', '1254737c076cf867dc53d60a0364f38e', 2, '1605833640_avatar.jpg', '2020-11-20 08:54:15'),
(3, 'Ta', 'Nguyen', 'Female', 'Thu Duc', 'Thu Duc\r\nDi An', 'congnguyen@gmail.com', 'a41b2f705655b40ff330ff4a3a0dbb58', 2, '', '2021-07-05 19:27:27'),
(4, 'Vươn', 'Ngoan', 'Female', '033243452424', 'Thu Duc\r\nDi An', 'yassuo@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 2, '1625538060_1625537520_genshin.gif', '2021-07-06 09:21:36'),
(5, 'hiep', 'ne', 'Female', '0367777777', '', 'hiepga2000.kt@gmail.com', '4f5cec75c744bd39b5126debbb7cffb8', 2, '', '2021-07-06 10:02:09');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `playlist_items`
--
ALTER TABLE `playlist_items`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `playlist_items`
--
ALTER TABLE `playlist_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
