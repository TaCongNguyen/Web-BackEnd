-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 06, 2021 lúc 04:29 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 7.3.28

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
(3, 'Nhạc Việt', 'Nhạc Việt nè mọi người', '1625537760_nhacviet.jpg', '2020-11-19 08:59:17');

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
(3, 1, 'Tình yêu vội vàng', 'Một playlist về tình yêu buồn thảm của tôi', '1625537520_tinhyeubuon.jpg', '2020-11-20 08:59:23');

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
(1, 6, 1, '2020-11-20 08:52:51'),
(2, 2, 2, '2020-11-20 08:58:44'),
(3, 3, 2, '2020-11-20 08:59:46'),
(4, 3, 1, '2020-11-20 08:59:46');

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
(2, 2, 1, 'Chạy ngay đi', 'Sơn Tùng', 'Bài hát ám ảnh', 'chayngaydi.mp3', 'chayngaydi.jpg', 2147483647);

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
(4, 'Vươn', 'Ngoan', 'Female', '033243452424', 'Thu Duc\r\nDi An', 'yassuo@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 2, '1625538060_1625537520_genshin.gif', '2021-07-06 09:21:36');

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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `playlist_items`
--
ALTER TABLE `playlist_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
