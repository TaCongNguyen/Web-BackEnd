-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 08, 2021 lúc 03:24 PM
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
-- Cấu trúc bảng cho bảng `contact_form_info`
--

CREATE TABLE `contact_form_info` (
  `name` text NOT NULL,
  `email` text NOT NULL,
  `subject` text NOT NULL,
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `contact_form_info`
--

INSERT INTO `contact_form_info` (`name`, `email`, `subject`, `comments`) VALUES
('Ta Nguyen', 'nguyensuperpro86@gmail.com', 'dsf', 'sad');

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
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `genre_id` int(30) NOT NULL,
  `title` text NOT NULL,
  `artist` text NOT NULL,
  `description` text NOT NULL,
  `cover_image` text NOT NULL,
  `date_created` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `user_id`, `genre_id`, `title`, `artist`, `description`, `cover_image`, `date_created`) VALUES
(1, 1, 11, 'GenMusicVN', 'Admin Gen', '&lt;p class=&quot;the-article-summary&quot; style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin-bottom: 18px; padding: 0px; border: 0px; font-size: 1.1em; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: Merriweather, serif; line-height: 28px; font-weight: bold; clear: both; float: none; width: 660px; text-align: center; position: relative; left: 0px; max-width: 660px; margin-right: auto !important; margin-left: auto !important;&quot;&gt;&lt;font style=&quot;&quot; color=&quot;#f7f7f7&quot;&gt;&quot;Ở v&ograve;ng thi đầu ti&ecirc;n khi xem Mỹ Anh biểu diễn tr&ecirc;n s&acirc;n khấu, t&ocirc;i thấy cuốn h&uacute;t, thậm ch&iacute; đứng dậy nh&uacute;n nhảy theo&quot;, Cara Phương chia sẻ với Zing.&lt;/font&gt;&lt;/p&gt;&lt;div class=&quot;the-article-body&quot; style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 1.1em; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; float: none; width: auto; position: relative; font-family: &amp;quot;Noto Serif&amp;quot;, serif; line-height: 28px; clear: both; left: 0px;&quot;&gt;&lt;p style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin-bottom: 18px; padding: 0px; border: 0px; vertical-align: baseline; text-size-adjust: 100%; float: none; width: 660px; max-width: 660px; margin-right: auto !important; margin-left: auto !important;&quot;&gt;&lt;font style=&quot;&quot; color=&quot;#f7f7f7&quot;&gt;Sinh năm 1995, Cara nổi tiếng từ khi tham gia MV&amp;nbsp;&lt;em style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%;&quot;&gt;Nơi n&agrave;y c&oacute; anh&lt;/em&gt;&amp;nbsp;của Sơn T&ugrave;ng M-TP. Sau đ&oacute;, c&ocirc; ph&aacute;t triển sự nghiệp ca h&aacute;t.&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin-top: 18px; margin-bottom: 18px; padding: 0px; border: 0px; vertical-align: baseline; text-size-adjust: 100%; max-width: 660px; float: none; width: 660px; margin-right: auto !important; margin-left: auto !important;&quot;&gt;&lt;font style=&quot;&quot; color=&quot;#f7f7f7&quot;&gt;Tham gia chương tr&igrave;nh The Heroes, Cara được đ&aacute;nh gi&aacute; l&agrave; th&iacute; sinh to&agrave;n diện, c&oacute; giọng h&aacute;t, vũ đạo, kỹ năng tr&igrave;nh diễn, l&agrave;m chủ s&acirc;n khấu. C&ocirc; hiện l&agrave; một trong những giọng ca g&acirc;y bất ngờ nhất ở cuộc thi. Từng chịu định kiến hot girl đi h&aacute;t, Cara cuối c&ugrave;ng cũng c&oacute; cơ hội chứng tỏ bản th&acirc;n sau 4 năm.&lt;/font&gt;&lt;/p&gt;&lt;h3 style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin-top: 10px; margin-bottom: 10px; border: 0px; font-size: 2rem; vertical-align: baseline; text-size-adjust: 100%; float: none; width: 660px; letter-spacing: -1px; line-height: 1.3; font-family: Merriweather, serif; max-width: 660px; margin-right: auto !important; margin-left: auto !important; padding: 30px 0px 10px !important;&quot;&gt;&lt;font style=&quot;&quot; color=&quot;#f7f7f7&quot;&gt;&quot;T&ocirc;i kh&ocirc;ng ngại c&aacute;c đối thủ, bất ngờ với Mỹ Anh&quot;&lt;/font&gt;&lt;/h3&gt;&lt;p class=&quot;question&quot; style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin-bottom: 18px; padding: 0px; border: 0px; vertical-align: baseline; text-size-adjust: 100%; font-style: italic; font-weight: bold; clear: both; max-width: 660px; float: none; width: 660px; margin-top: 30px !important; margin-right: auto !important; margin-left: auto !important;&quot;&gt;&lt;font style=&quot;&quot; color=&quot;#f7f7f7&quot;&gt;- Mục ti&ecirc;u của Cara khi tham gia The Heroes l&agrave; g&igrave;?&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin-top: 18px; margin-bottom: 18px; padding: 0px; border: 0px; vertical-align: baseline; text-size-adjust: 100%; max-width: 660px; float: none; width: 660px; margin-right: auto !important; margin-left: auto !important;&quot;&gt;&lt;font style=&quot;&quot; color=&quot;#f7f7f7&quot;&gt;- T&ocirc;i đến với The Heroes để được l&agrave;m những điều từ trước đến giờ chỉ mới h&igrave;nh dung trong suy nghĩ, được trải nghiệm, học hỏi thật nhiều về &acirc;m nhạc, kỹ thuật tr&igrave;nh diễn tr&ecirc;n s&acirc;n khấu qua từng v&ograve;ng thi với nhiều chủ đề đa dạng của chương tr&igrave;nh.&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin-top: 18px; margin-bottom: 18px; padding: 0px; border: 0px; vertical-align: baseline; text-size-adjust: 100%; max-width: 660px; float: none; width: 660px; margin-right: auto !important; margin-left: auto !important;&quot;&gt;&lt;font style=&quot;&quot; color=&quot;#f7f7f7&quot;&gt;Mục ti&ecirc;u nữa l&agrave; th&ocirc;ng qua những phần tr&igrave;nh diễn đ&oacute; t&ocirc;i c&oacute; thể đến gần kh&aacute;n giả hơn v&agrave; cho mọi người thấy được nhiều kh&iacute;a cạnh, khả năng kh&aacute;c của Cara.&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;question&quot; style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin-top: 25px; margin-bottom: 18px; padding: 0px; border: 0px; vertical-align: baseline; text-size-adjust: 100%; font-style: italic; font-weight: bold; max-width: 660px; float: none; width: 660px; margin-right: auto !important; margin-left: auto !important;&quot;&gt;&lt;font style=&quot;&quot; color=&quot;#f7f7f7&quot;&gt;- Trong d&agrave;n th&iacute; sinh hiện tại, ai l&agrave; người khiến chị bất ngờ nhất?&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin-top: 18px; margin-bottom: 18px; padding: 0px; border: 0px; vertical-align: baseline; text-size-adjust: 100%; max-width: 660px; float: none; width: 660px; margin-right: auto !important; margin-left: auto !important;&quot;&gt;&lt;font style=&quot;&quot; color=&quot;#f7f7f7&quot;&gt;- Ai cũng khiến t&ocirc;i bất ngờ. Mọi người qu&aacute; giỏi, nhiệt huyết. Nhưng nếu chọn một người nhất l&agrave; Mỹ Anh. Đến The Heroes, Cara mới biết Mỹ Anh. Ở v&ograve;ng thi đầu ti&ecirc;n khi xem Mỹ Anh biểu diễn tr&ecirc;n s&acirc;n khấu, t&ocirc;i thấy cuốn h&uacute;t, thậm ch&iacute; đứng dậy nh&uacute;n nhảy theo c&ocirc; ấy. Mỹ Anh giống &quot;girl crush&quot; vậy.&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;question&quot; style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin-top: 25px; margin-bottom: 18px; padding: 0px; border: 0px; vertical-align: baseline; text-size-adjust: 100%; font-style: italic; font-weight: bold; max-width: 660px; float: none; width: 660px; margin-right: auto !important; margin-left: auto !important;&quot;&gt;&lt;font style=&quot;&quot; color=&quot;#f7f7f7&quot;&gt;- Thi đấu với d&agrave;n đối thủ mạnh v&agrave; nhiệt huyết như vậy, hẳn chị chịu nhiều &aacute;p lực?&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin-top: 18px; margin-bottom: 18px; padding: 0px; border: 0px; vertical-align: baseline; text-size-adjust: 100%; max-width: 660px; float: none; width: 660px; margin-right: auto !important; margin-left: auto !important;&quot;&gt;&lt;font style=&quot;&quot; color=&quot;#f7f7f7&quot;&gt;- T&ocirc;i xem đ&acirc;y l&agrave; cơ hội để m&igrave;nh r&egrave;n luyện, n&ecirc;n cứ l&agrave;m hết khả năng, kh&ocirc;ng c&oacute; g&igrave; phải lo sợ. T&ocirc;i mang l&ecirc;n s&acirc;n khấu những g&igrave; m&igrave;nh c&oacute; thể l&agrave;m, c&oacute; thể nghĩ hoặc thậm ch&iacute; liều lĩnh thử những điều m&igrave;nh chưa từng.&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;question&quot; style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin-top: 25px; margin-bottom: 18px; padding: 0px; border: 0px; vertical-align: baseline; text-size-adjust: 100%; font-style: italic; font-weight: bold; max-width: 660px; float: none; width: 660px; margin-right: auto !important; margin-left: auto !important;&quot;&gt;&lt;font style=&quot;&quot; color=&quot;#f7f7f7&quot;&gt;- Sau 4 năm đi h&aacute;t, Cara vẫn gặp phải định kiến l&agrave; một hot girl đi h&aacute;t. Đến The Heroes, chị mới c&oacute; s&acirc;n khấu để chứng tỏ bản th&acirc;n. Cara nghĩ g&igrave; trước những đ&aacute;nh gi&aacute; tr&aacute;i chiều của kh&aacute;n giả trong thời gian qua?&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin-top: 18px; margin-bottom: 18px; padding: 0px; border: 0px; vertical-align: baseline; text-size-adjust: 100%; max-width: 660px; float: none; width: 660px; margin-right: auto !important; margin-left: auto !important;&quot;&gt;&lt;font style=&quot;&quot; color=&quot;#f7f7f7&quot;&gt;- Đ&atilde; l&agrave; một cuộc thi, t&ocirc;i cảm thấy việc nhận đ&aacute;nh gi&aacute; từ ban gi&aacute;m khảo hay tất cả kh&aacute;n giả xem trực tiếp, qua truyền h&igrave;nh đều l&agrave; chuyện b&igrave;nh thường. T&ocirc;i cũng chuẩn bị t&acirc;m l&yacute;, tiếp thu v&agrave; thay đổi c&oacute; chọn lọc.&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin-top: 18px; margin-bottom: 18px; padding: 0px; border: 0px; vertical-align: baseline; text-size-adjust: 100%; max-width: 660px; float: none; width: 660px; margin-right: auto !important; margin-left: auto !important;&quot;&gt;&lt;font style=&quot;&quot; color=&quot;#f7f7f7&quot;&gt;Hiện tại, t&ocirc;i may mắn được l&agrave;m việc với những anh, chị y&ecirc;u nghề, lu&ocirc;n truyền lửa v&agrave; động vi&ecirc;n t&ocirc;i cố gắng mỗi ng&agrave;y. Ngo&agrave;i ra t&ocirc;i nhận được sự y&ecirc;u thương, ủng hộ của kh&aacute;n giả n&ecirc;n kh&ocirc;ng c&ograve;n thấy kh&oacute; khăn g&igrave;. Việc của t&ocirc;i b&acirc;y giờ chỉ l&agrave; cố gắng để tốt hơn từng ng&agrave;y.&lt;/font&gt;&lt;/p&gt;&lt;/div&gt;', '1625748360_cara4_zing.jpg', 2147483647),
(2, 1, 11, 'Suboi và Gavin.D tung teaser MV bài hát chủ đề của AWC 2021', 'Admin Gen', '&lt;p class=&quot;the-article-summary&quot; style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding: 0px; border: 0px; font-size: 1.1em; vertical-align: baseline; background: transparent; text-size-adjust: 100%; font-family: &amp;quot;Noto Serif&amp;quot;, serif; line-height: 1.618; font-weight: bold; clear: both; float: left; width: 580px;&quot;&gt;&lt;font color=&quot;#ffffff&quot;&gt;Đoạn teaser MV &ldquo;Together&rdquo; đ&atilde; phần n&agrave;o h&eacute; lộ những bối cảnh trong MV c&ugrave;ng với sự xuất hiện ấn tượng của hai nghệ sĩ Suboi v&agrave; Gavin.D.&lt;/font&gt;&lt;/p&gt;&lt;div class=&quot;the-article-body&quot; style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 1.1em; vertical-align: baseline; background: transparent; text-size-adjust: 100%; float: left; width: 580px; position: relative; font-family: &amp;quot;Noto Serif&amp;quot;, serif; line-height: 1.618;&quot;&gt;&lt;p style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; float: none; width: 580px;&quot;&gt;&lt;font color=&quot;#ffffff&quot;&gt;Vừa qua, teaser đầu ti&ecirc;n cho ca kh&uacute;c chủ đề&amp;nbsp;&lt;em style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;&quot;&gt;Together&lt;/em&gt;&amp;nbsp;của giải đấu AWC 2021 đ&atilde; ch&iacute;nh thức tr&igrave;nh l&agrave;ng. Chỉ với 16 gi&acirc;y, đoạn teaser h&eacute; lộ những h&igrave;nh ảnh đầu ti&ecirc;n về bối cảnh của MV c&ugrave;ng sự g&oacute;p mặt của Suboi v&agrave; nam rapper người Th&aacute;i Lan Gavin.D.&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;&quot;&gt;&lt;font color=&quot;#ffffff&quot;&gt;Bối cảnh của&amp;nbsp;&lt;a href=&quot;https://www.youtube.com/watch?v=AI72rL1V1zM&quot; target=&quot;_blank&quot; rel=&quot;nofollow&quot; class=&quot;external-link&quot; style=&quot;text-rendering: geometricprecision; outline: none; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; cursor: pointer; border-bottom: 1px solid rgb(0, 120, 167);&quot;&gt;MV&amp;nbsp;&lt;em style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;&quot;&gt;Together&lt;/em&gt;&lt;/a&gt;&amp;nbsp;mang đậm t&iacute;nh viễn tưởng c&ugrave;ng phong c&aacute;ch tương lai futuristic. Điều n&agrave;y kh&ocirc;ng chỉ thể hiện qua kh&ocirc;ng gian của phi thuyền du h&agrave;nh thời gian trong teaser m&agrave; c&ograve;n ở tạo h&igrave;nh của hai rapper Suboi v&agrave; Gavin.D. Cả hai kho&aacute;c l&ecirc;n m&igrave;nh bộ trang phục c&aacute; t&iacute;nh m&agrave;u x&aacute;m bạc. Mặc d&ugrave; teaser chỉ d&agrave;i 16 gi&acirc;y nhưng h&igrave;nh ảnh v&agrave; phong c&aacute;ch của hai nghệ sĩ cũng đủ khiến kh&aacute;n giả mong chờ.&lt;/font&gt;&lt;/p&gt;&lt;div class=&quot;z-photoviewer-wrapper &quot; align=&quot;center&quot; style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; position: relative; clear: both;&quot;&gt;&lt;div class=&quot;z-photo-backdrop&quot; style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; position: fixed; opacity: 0; inset: 0px; transition: opacity 0.2s ease 0s; pointer-events: none;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;z-img-popup&quot; style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; position: absolute; top: 0px; pointer-events: none; width: 580px; height: 306px;&quot;&gt;&lt;div class=&quot;z-img-popup-overlay&quot; style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; position: absolute; z-index: 1000000102; inset: 0px; overflow: hidden; transition: top 0.2s ease 0s, right 0.2s ease 0s, bottom 0.2s ease 0s, left 0.2s ease 0s; -webkit-tap-highlight-color: rgba(255, 255, 255, 0);&quot;&gt;&lt;div class=&quot;z-photo-caption&quot; style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 15px; border: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; font-family: Mulish; position: absolute; display: flex; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: column; -webkit-box-pack: center; justify-content: center; z-index: 1; top: 0px; width: 240px; transition: none 0s ease 0s; opacity: 0; user-select: none; text-align: left; height: 609px;&quot;&gt;&lt;span class=&quot;z-desc&quot; style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; line-height: 1.4;&quot;&gt;&lt;font color=&quot;#ffffff&quot;&gt;Suboi xuất hiện trong MV với tạo h&igrave;nh ấn tượng.&lt;/font&gt;&lt;/span&gt;&lt;ul class=&quot;z-share-wrapper&quot; style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 10px 0px 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; list-style: none; display: flex; z-index: 2; position: relative;&quot;&gt;&lt;li class=&quot;btnZalo blue zalo-share-button &quot; data-oaid=&quot;4564080408575020426&quot; data-layout=&quot;icon-text&quot; data-customize=&quot;true&quot; data-href=&quot;https://zingnews.vn/suboi-va-gavind-tung-teaser-mv-bai-hat-chu-de-cua-awc-2021-post1236185.html#zingweb_category_category8_newslatest_1?utm_source=zalo&amp;amp;utm_medium=zalomsg&amp;amp;utm_campaign=zingdesktop&quot; style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px 10px 0px 0px; padding: 0px; border: 1px solid rgb(229, 229, 229); vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; width: 42px; height: 42px; -webkit-box-pack: center; justify-content: center; -webkit-box-align: center; align-items: center; border-radius: 50%; list-style: none; display: flex !important;&quot;&gt;&lt;a class=&quot;icon ic-zalo&quot; title=&quot;Chia Sẻ Zalo&quot; style=&quot;text-rendering: geometricprecision; outline: none; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; vertical-align: baseline; background-position: initial; background-size: contain; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; cursor: pointer; display: inline-block; width: 24px; height: 24px; background-image: url(&amp;quot;//static-znews.zadn.vn/images/icons/shares/icon-zalo.svg&amp;quot;) !important;&quot;&gt;&lt;/a&gt;&lt;iframe frameborder=&quot;0&quot; allowfullscreen=&quot;&quot; scrolling=&quot;no&quot; width=&quot;0px&quot; height=&quot;0px&quot; src=&quot;https://sp.zalo.me/plugins/share?dev=null&amp;amp;color=null&amp;amp;oaid=4564080408575020426&amp;amp;href=https%3A%2F%2Fzingnews.vn%2Fsuboi-va-gavind-tung-teaser-mv-bai-hat-chu-de-cua-awc-2021-post1236185.html%23zingweb_category_category8_newslatest_1%3Futm_source%3Dzalo%26utm_medium%3Dzalomsg%26utm_campaign%3Dzingdesktop&amp;amp;layout=icon-text&amp;amp;customize=true&amp;amp;callback=null&amp;amp;id=ff0f63c4-c811-48f8-905f-e3e7a9b92aa8&amp;amp;domain=zingnews.vn&amp;amp;android=false&amp;amp;ios=false&quot; style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border-width: 0px; border-style: initial; vertical-align: baseline; background: transparent; text-size-adjust: 100%; width: 210px; display: block; object-fit: cover; position: absolute;&quot;&gt;&lt;/iframe&gt;&lt;/li&gt;&lt;li style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 1px solid rgb(229, 229, 229); vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; width: 42px; height: 42px; -webkit-box-pack: center; justify-content: center; -webkit-box-align: center; align-items: center; border-radius: 50%; list-style: none; display: flex !important;&quot;&gt;&lt;a class=&quot;icon ic-fb&quot; title=&quot;Chia Sẻ Facebook&quot; style=&quot;text-rendering: geometricprecision; outline: none; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; vertical-align: baseline; background-position: initial; background-size: contain; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; cursor: pointer; display: inline-block; width: 24px; height: 24px; background-image: url(&amp;quot;//static-znews.zadn.vn/images/icons/shares/icon-fb.svg&amp;quot;) !important;&quot;&gt;&lt;/a&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;div class=&quot;z-img-container&quot; style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; position: relative; z-index: 900; transition: width 0.2s ease 0s, height 0.2s ease 0s, margin 0.2s ease 0s;&quot;&gt;&lt;div class=&quot;z-img-container-inner&quot; style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; visibility: hidden; transition: visibility 0s ease 0.5s;&quot;&gt;&lt;div class=&quot;z-img-sub-inner&quot; style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: rgb(247, 247, 245); text-size-adjust: 100%; width: 580px; animation: 300ms ease-in 0s 1 normal forwards running ani-off-photoviewer;&quot;&gt;&lt;div class=&quot;z-lazyimage-container&quot; style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; height: auto;&quot;&gt;&lt;div class=&quot;z-img&quot; style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; transition: opacity 300ms ease-in-out 0s; opacity: 1; width: 580px;&quot;&gt;&lt;img imgid=&quot;5701603&quot; src=&quot;https://znews-photo.zadn.vn/w1920/Uploaded/wyhktpu/2021_07_08/image001.png&quot; alt=&quot;MV Together,  Suboi anh 1&quot; width=&quot;1919&quot; height=&quot;1013&quot; class=&quot;unveil&quot; style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: rgb(241, 241, 241); text-size-adjust: 100%; width: 580px; height: 306.167px; max-width: 100%; display: block;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;button class=&quot;z-close-btn&quot; style=&quot;text-rendering: geometricprecision; outline: none; -webkit-font-smoothing: antialiased; border-width: 0px; border-style: initial; border-color: initial; background-color: rgba(0, 0, 0, 0.2); display: flex; -webkit-box-pack: center; justify-content: center; -webkit-box-align: center; align-items: center; border-radius: 50%; width: 42px; height: 42px; z-index: 901; position: fixed; top: 20px; right: 20px; opacity: 0; pointer-events: none; padding: 0px;&quot;&gt;&lt;i class=&quot;z-icon&quot; style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 13.3333px; vertical-align: baseline; background: url(&amp;quot;https://static-znews.zadn.vn/images/icons/zoom-out.svg&amp;quot;) 0% 0% / contain no-repeat transparent; text-size-adjust: 100%; width: 24px; height: 24px;&quot;&gt;&lt;/i&gt;&lt;/button&gt;&lt;/div&gt;&lt;/div&gt;&lt;table class=&quot;picture&quot; align=&quot;center&quot; style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 0.8em; vertical-align: baseline; background: transparent; text-size-adjust: 100%; border-spacing: 0px; width: 580px; font-family: sans-serif;&quot;&gt;&lt;tbody style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;&quot;&gt;&lt;tr style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;&quot;&gt;&lt;td class=&quot;pic&quot; style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; position: relative; cursor: pointer;&quot;&gt;&lt;div class=&quot;zad-inimage-wrapper&quot; style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; overflow: hidden;&quot;&gt;&lt;img imgid=&quot;5701603&quot; src=&quot;https://znews-photo.zadn.vn/w960/Uploaded/wyhktpu/2021_07_08/image001.png&quot; alt=&quot;MV Together,  Suboi anh 1&quot; width=&quot;1919&quot; height=&quot;1013&quot; class=&quot;unveil&quot; data-title=&quot;MV Together,  Suboi ảnh 1&quot; title=&quot;MV Together,  Suboi ảnh 1&quot; style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: rgb(241, 241, 241); text-size-adjust: 100%; width: 580px; height: auto; max-width: 100%; display: block;&quot;&gt;&lt;/div&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;&quot;&gt;&lt;td class=&quot;pCaption caption&quot; style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 5px 0px 8px; border: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; position: relative;&quot;&gt;&lt;p style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 1px; border: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; display: inline;&quot;&gt;&lt;font color=&quot;#ffffff&quot;&gt;Suboi xuất hiện trong MV với tạo h&igrave;nh ấn tượng.&lt;/font&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;/div&gt;&lt;p style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;&quot;&gt;&lt;font color=&quot;#ffffff&quot;&gt;&lt;em style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;&quot;&gt;Together&lt;/em&gt;&amp;nbsp;l&agrave; sản phẩm &acirc;m nhạc được hai rapper bắt tay thực hiện suốt nhiều th&aacute;ng, nhằm mang tới cho kh&aacute;n giả một sản phẩm &acirc;m nhạc ấn tượng cả phần nghe v&agrave; nh&igrave;n.&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;&quot;&gt;&lt;font color=&quot;#ffffff&quot;&gt;Về &acirc;m nhạc, d&ugrave; trong teaser chưa tiết lộ qu&aacute; nhiều giai điệu ca kh&uacute;c nhưng kh&aacute;n giả c&oacute; thể kỳ vọng một sản phẩm chất lượng được nh&agrave;o nặn bởi 2 nghệ sĩ đ&igrave;nh đ&aacute;m Suboi v&agrave; Gavin.D. Theo chia sẻ của bộ đ&ocirc;i, MV&lt;em style=&quot;text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;&quot;&gt;Together&lt;/em&gt;&amp;nbsp;l&agrave; một b&agrave;i h&aacute;t mang &acirc;m hưởng quốc tế thuộc phong c&aacute;ch hiphop hiện đại, với sự pha trộn đặc trưng trong phong c&aacute;ch rap của hai quốc gia Việt Nam - Th&aacute;i Lan.&lt;/font&gt;&lt;/p&gt;&lt;/div&gt;', '1625748720_suboi.jpg', 2147483647);

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
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `reset_token` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `type`, `profile_pic`, `date_created`, `reset_token`) VALUES
(1, 'Administrator', 'Nguyen', 'Male', '0338345335', 'GenMusic', 'admin@gmail.com', '0192023a7bbd73250516f069df18b500', 1, '', '2020-11-18 16:50:06', NULL),
(2, 'Hà', 'Nam', 'Male', '0338345335', 'Sample address', 'jsmith@gmail.com', '1254737c076cf867dc53d60a0364f38e', 2, '1605833640_avatar.jpg', '2020-11-20 08:54:15', NULL),
(3, 'Ta', 'Nguyen', 'Female', 'Thu Duc', 'Thu Duc\r\nDi An', 'congnguyen@gmail.com', 'a41b2f705655b40ff330ff4a3a0dbb58', 2, '', '2021-07-05 19:27:27', NULL),
(4, 'Vươn', 'Ngoan', 'Female', '033243452424', 'Thu Duc\r\nDi An', 'yassuo@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 2, '1625538060_1625537520_genshin.gif', '2021-07-06 09:21:36', NULL),
(5, 'hiep', 'ne', 'Female', '0367777777', '', 'hiepga2000.kt@gmail.com', '4f5cec75c744bd39b5126debbb7cffb8', 2, '', '2021-07-06 10:02:09', NULL),
(6, 'Ta', 'Nguyen', 'Male', '0338345335', 'Thu Duc\r\nDi An', 'nguyensuperpro86@gmail.com', 'ec32620eb35230a3d620b3af5e523b0b', 2, '', '2021-07-08 08:57:56', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
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
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
