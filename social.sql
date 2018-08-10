-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-08-10 16:24:53
-- 服务器版本： 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'hi', 'bo_lv', 'bo_lv', '2018-08-02 22:10:16', 'no', 46),
(2, 'how are you', 'bo_lv', 'bo_lv', '2018-08-02 22:10:21', 'no', 46),
(3, '1', 'bo_lv', 'bo_lv', '2018-08-02 22:17:22', 'no', 46),
(4, '', 'bo_lv', 'bo_lv', '2018-08-02 22:17:33', 'no', 46),
(5, '22', 'bo_lv', 'bo_lv', '2018-08-02 22:17:35', 'no', 46),
(6, 'hi', 'bo_lv', 'bo_lv', '2018-08-02 22:23:27', 'no', 46),
(7, 'hi', 'bo_lv', 'bo_lv', '2018-08-02 22:23:31', 'no', 45),
(8, 'bye', 'bo_lv', 'bo_lv', '2018-08-02 22:34:31', 'no', 46),
(9, 'plz', 'bo_lv', 'bo_lv', '2018-08-02 22:36:46', 'no', 44),
(10, 'good night!', 'bo_lv', 'bo_lv', '2018-08-02 22:44:48', 'no', 45),
(11, 'come out tonight', 'double_double', 'bo_lv', '2018-08-02 23:25:57', 'no', 46),
(12, '', 'double_double', 'bo_lv', '2018-08-02 23:38:35', 'no', 46),
(13, '', 'double_double', 'bo_lv', '2018-08-02 23:40:49', 'no', 45),
(14, '222', 'double_double', 'chou_gua', '2018-08-04 12:15:55', 'no', 9),
(15, 'hhhh\r\n', 'double_double', 'double_double', '2018-08-05 14:20:45', 'no', 35),
(16, 'how are you', 'bo_lv', 'bo_lv', '2018-08-06 10:03:13', 'no', 54),
(17, 'ç‰›ç‰›ç‰›', 'chou_gua', 'bo_lv', '2018-08-07 18:12:35', 'no', 54),
(18, 'ok', 'chou_gua', 'chou_gua', '2018-08-07 18:14:15', 'no', 19),
(19, 'n', 'chou_gua', 'chou_gua', '2018-08-07 18:15:11', 'no', 10),
(20, '', 'chou_gua', 'chou_gua', '2018-08-07 18:15:14', 'no', 10),
(21, '', 'chou_gua', 'chou_gua', '2018-08-07 18:15:14', 'no', 10),
(22, '333', 'chou_gua', 'bo_lv', '2018-08-07 18:15:30', 'no', 4),
(23, '33', 'chou_gua', 'double_double', '2018-08-07 18:15:46', 'no', 38),
(24, '33333', 'chou_gua', 'double_double', '2018-08-07 18:15:56', 'no', 49),
(25, '333444', 'chou_gua', 'double_double', '2018-08-07 18:24:45', 'no', 49),
(26, 'eee', 'chou_gua', 'double_double', '2018-08-07 19:29:20', 'no', 60),
(27, '??', 'chou_gua', 'chou_gua', '2018-08-07 21:46:25', 'no', 22),
(28, '???', 'chou_gua', 'bo_lv', '2018-08-07 21:46:34', 'no', 3),
(29, '!!!!!', 'chou_gua', 'double_double', '2018-08-07 21:46:52', 'no', 60),
(30, 'hello, Im bolv', 'bo_lv', 'double_double', '2018-08-07 21:51:21', 'no', 60),
(31, 'Double comment on your profile post!', 'double_double', 'bo_lv', '2018-08-07 21:54:11', 'no', 67),
(32, 'double comment on chougua\'s post', 'double_double', 'chou_gua', '2018-08-07 21:57:16', 'no', 64),
(33, 'hey, Im newnew', 'new_new', 'double_double', '2018-08-07 22:51:08', 'no', 60),
(34, 'Howdy!I\'m new1!', 'new_new_1', 'double_double', '2018-08-07 22:53:30', 'no', 60),
(35, 'wow!', 'chou_gua', 'chou_gua', '2018-08-09 15:26:06', 'no', 87);

-- --------------------------------------------------------

--
-- 表的结构 `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(3, 'bo_lv', 'double_double'),
(4, 'bo_lv', 'double_double'),
(9, 'new_new1', 'double_double'),
(11, 'double_double_1', 'new_new'),
(12, 'double_double', 'new_new');

-- --------------------------------------------------------

--
-- 表的结构 `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(29, 'double_double', 44),
(44, 'double_double', 35),
(47, 'bo_lv', 46),
(67, 'double_double', 38),
(68, 'double_double', 32),
(69, 'double_double', 31),
(70, 'double_double', 24),
(71, 'double_double', 23),
(73, 'double_double', 53),
(74, 'double_double', 49),
(77, 'chou_gua', 56),
(89, 'chou_gua', 49),
(90, 'chou_gua', 58),
(91, 'chou_gua', 61),
(92, 'chou_gua', 61),
(94, 'chou_gua', 46),
(95, 'double_double', 65),
(105, 'chou_gua', 80),
(106, 'chou_gua', 87);

-- --------------------------------------------------------

--
-- 表的结构 `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(1, 'double_double', 'bo_lv', 'Hi, double!', '2018-08-05 20:45:03', 'yes', 'yes', 'no'),
(2, 'double_double', 'bo_lv', 'hhh\r\n', '2018-08-05 20:46:00', 'yes', 'yes', 'no'),
(3, 'double_double', 'bo_lv', 'never mind', '2018-08-05 20:46:05', 'yes', 'yes', 'no'),
(4, 'bo_lv', 'double_double', 'Hi, Bo Lv!', '2018-08-05 20:47:22', 'yes', 'no', 'no'),
(5, 'bo_lv', 'double_double', 'why!', '2018-08-05 20:47:28', 'yes', 'no', 'no'),
(6, 'double_double', 'bo_lv', 'Hello 3rd time! double!', '2018-08-05 20:48:30', 'yes', 'yes', 'no'),
(7, 'double_double', 'bo_lv', 'Hello 3rd time! double!', '2018-08-05 23:57:55', 'yes', 'yes', 'no'),
(8, 'double_double', 'bo_lv', 'Hello 3rd time! double!', '2018-08-06 00:00:38', 'yes', 'yes', 'no'),
(9, 'double_double', 'bo_lv', 'Hello 3rd time! double!', '2018-08-06 00:00:40', 'yes', 'yes', 'no'),
(10, 'double_double', 'bo_lv', 'Hello 3rd time! double!', '2018-08-06 00:00:43', 'yes', 'yes', 'no'),
(11, 'double_double', 'bo_lv', 'Hello 3rd time! double!', '2018-08-06 00:01:01', 'yes', 'yes', 'no'),
(12, 'double_double', 'bo_lv', 'Hello 3rd time! double!', '2018-08-06 00:01:35', 'yes', 'yes', 'no'),
(13, 'double_double', 'bo_lv', 'Hello 3rd time! double!', '2018-08-06 00:01:52', 'yes', 'yes', 'no'),
(14, 'double_double', 'bo_lv', 'Hello 3rd time! double!', '2018-08-06 08:15:58', 'yes', 'yes', 'no'),
(15, 'double_double', 'bo_lv', 'Good Morningï¼\r\n', '2018-08-06 08:18:32', 'yes', 'yes', 'no'),
(16, 'double_double', 'bo_lv', 'Good Morningï¼\r\n', '2018-08-06 08:19:35', 'yes', 'yes', 'no'),
(17, 'double_double', 'bo_lv', 'Good Morningï¼\r\n', '2018-08-06 08:32:17', 'yes', 'yes', 'no'),
(18, 'double_double', 'bo_lv', 'Good Morningï¼\r\n', '2018-08-06 08:32:19', 'yes', 'yes', 'no'),
(19, 'double_double', 'bo_lv', 'Good Morningï¼\r\n', '2018-08-06 08:32:28', 'yes', 'yes', 'no'),
(20, 'double_double', 'bo_lv', 'Good Morningï¼\r\n', '2018-08-06 08:32:31', 'yes', 'yes', 'no'),
(21, 'double_double', 'bo_lv', 'Godï¼', '2018-08-06 08:32:39', 'yes', 'yes', 'no'),
(22, 'double_double', 'bo_lv', 'Godï¼', '2018-08-06 09:32:30', 'yes', 'yes', 'no'),
(23, 'double_double', 'bo_lv', 'Godï¼', '2018-08-06 09:34:59', 'yes', 'yes', 'no'),
(24, 'chou_hua', 'bo_lv', 'Hello, Chouhua!', '2018-08-06 09:36:32', 'no', 'no', 'no'),
(25, 'double_double', 'bo_lv', 'doubleï¼\r\n', '2018-08-06 11:24:57', 'yes', 'yes', 'no'),
(26, 'chou_gua', 'double_double', 'Hey\r\n', '2018-08-06 19:44:42', 'yes', 'yes', 'no'),
(27, 'chou_gua', 'double_double', 'bye!', '2018-08-06 21:20:22', 'yes', 'yes', 'no'),
(28, 'chou_gua', 'chou_gua', 'sup?', '2018-08-06 21:43:58', 'yes', 'yes', 'no'),
(29, 'chou_gua', 'chou_gua', 'nothing', '2018-08-06 21:44:04', 'yes', 'yes', 'no'),
(30, 'double_double', 'chou_gua', 'hello~', '2018-08-06 21:44:27', 'yes', 'yes', 'no'),
(31, '', 'double_double', 'hello 3Q', '2018-08-06 23:01:52', 'no', 'no', 'no'),
(32, 'new', 'double_double', 'hello 3Q', '2018-08-06 23:02:50', 'no', 'no', 'no'),
(33, 'double_double', 'chou_gua', '1\r\n', '2018-08-07 10:18:52', 'yes', 'yes', 'no'),
(34, 'double_double', 'chou_gua', '2', '2018-08-07 10:18:53', 'yes', 'yes', 'no'),
(35, 'double_double', 'chou_gua', '3', '2018-08-07 10:18:54', 'yes', 'yes', 'no'),
(36, 'double_double', 'chou_gua', '4', '2018-08-07 10:18:55', 'yes', 'yes', 'no'),
(37, 'double_double', 'chou_gua', '5', '2018-08-07 10:18:56', 'yes', 'yes', 'no'),
(38, 'double_double', 'chou_gua', '6', '2018-08-07 10:18:59', 'yes', 'yes', 'no'),
(39, 'double_double', 'chou_gua', '33', '2018-08-07 10:19:01', 'yes', 'yes', 'no'),
(40, 'double_double', 'chou_gua', '222', '2018-08-07 10:19:03', 'yes', 'yes', 'no'),
(41, 'double_double', 'chou_gua', '33', '2018-08-07 10:19:04', 'yes', 'yes', 'no'),
(42, 'double_double', 'chou_gua', '333', '2018-08-07 10:19:05', 'yes', 'yes', 'no'),
(43, 'double_double', 'bo_lv', 'Iam lvbo', '2018-08-07 10:39:36', 'yes', 'yes', 'no'),
(44, 'double_double', 'new_new', 'Im newnew', '2018-08-07 10:40:05', 'yes', 'yes', 'no'),
(45, 'double_double', '33_33', 'hello, im 33', '2018-08-07 10:42:28', 'no', 'yes', 'no'),
(46, 'double_double', '44_44', 'Hi, Im 44', '2018-08-07 10:43:15', 'yes', 'yes', 'no'),
(47, 'double_double', '55_55', 'I am 55', '2018-08-07 10:44:19', 'no', 'yes', 'no'),
(48, '44_44', 'double_double', 'hihi', '2018-08-07 11:28:58', 'no', 'no', 'no'),
(49, '44_44', 'double_double', 'hihi', '2018-08-07 11:29:00', 'no', 'no', 'no'),
(50, 'double_double', 'chou_gua', 'I am here again', '2018-08-07 11:29:27', 'yes', 'yes', 'no'),
(51, 'double_double', 'new_new', 'hey', '2018-08-07 11:33:13', 'yes', 'yes', 'no'),
(52, 'chou_gua', 'double_double', 'how are you', '2018-08-07 11:34:21', 'yes', 'yes', 'no'),
(53, 'chou_gua', 'chou_gua', 'skr', '2018-08-07 11:40:06', 'yes', 'yes', 'no'),
(54, 'chou_gua', 'chou_gua', 'skr', '2018-08-07 11:40:20', 'yes', 'yes', 'no'),
(55, 'chou_gua', 'chou_gua', 'skr', '2018-08-07 11:40:23', 'yes', 'yes', 'no'),
(56, 'chou_gua', 'chou_gua', 'skr', '2018-08-07 11:40:24', 'yes', 'yes', 'no'),
(57, 'chou_gua', 'chou_gua', 'skr', '2018-08-07 11:40:29', 'yes', 'yes', 'no'),
(58, 'chou_gua', 'chou_gua', 'skr', '2018-08-07 11:40:31', 'yes', 'yes', 'no'),
(59, 'chou_gua', 'chou_gua', 'skr', '2018-08-07 11:40:34', 'yes', 'yes', 'no'),
(60, 'chou_gua', 'double_double', '333333333333333333333', '2018-08-07 11:41:06', 'yes', 'yes', 'no'),
(61, 'double_double', 'chou_gua', 'no!', '2018-08-07 11:41:49', 'yes', 'yes', 'no'),
(62, 'double_double', 'double_double', '2222', '2018-08-07 11:45:58', 'yes', 'yes', 'no'),
(63, 'double_double', 'double_double', '2222', '2018-08-07 11:46:05', 'yes', 'yes', 'no'),
(64, 'double_double', 'double_double', '2222', '2018-08-07 11:46:07', 'yes', 'yes', 'no'),
(65, 'double_double', 'double_double', '2222', '2018-08-07 11:46:09', 'yes', 'yes', 'no'),
(66, 'double_double', 'double_double', '2222', '2018-08-07 11:46:11', 'yes', 'yes', 'no'),
(67, 'double_double', 'double_double', '555', '2018-08-07 11:46:22', 'yes', 'yes', 'no'),
(68, 'double_double', 'double_double', '555', '2018-08-07 14:21:44', 'yes', 'yes', 'no'),
(69, 'bo_lv', 'chou_gua', 'Hey Bo!', '2018-08-07 21:45:14', 'no', 'no', 'no'),
(70, 'bo_lv', 'chou_gua', '!!!!', '2018-08-07 21:46:03', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- 表的结构 `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(1, 'double_double', 'chou_gua', 'Chou Gua liked your post', 'post.php?id=61', '2018-08-07 21:07:32', 'no', 'yes'),
(2, 'double_double', 'chou_gua', 'Chou Gua liked your post', 'post.php?id=61', '2018-08-07 21:07:36', 'no', 'yes'),
(3, 'double_double', 'chou_gua', 'Chou Gua liked your post', 'post.php?id=60', '2018-08-07 21:07:43', 'yes', 'yes'),
(4, 'bo_lv', 'chou_gua', 'Chou Gua liked your post', 'post.php?id=62', '2018-08-07 21:45:02', 'no', 'no'),
(5, 'bo_lv', 'chou_gua', 'Chou Gua commented on your post', 'post.php?id=3', '2018-08-07 21:46:34', 'no', 'no'),
(6, 'double_double', 'chou_gua', 'Chou Gua commented on your post', 'post.php?id=60', '2018-08-07 21:46:52', 'yes', 'yes'),
(7, 'bo_lv', 'chou_gua', 'Chou Gua liked your post', 'post.php?id=46', '2018-08-07 21:47:25', 'no', 'no'),
(8, 'double_double', 'chou_gua', 'Chou Gua liked your post', 'post.php?id=63', '2018-08-07 21:47:59', 'no', 'yes'),
(9, 'double_double', 'chou_gua', 'Chou Gua liked your post', 'post.php?id=64', '2018-08-07 21:48:20', 'no', 'yes'),
(10, 'double_double', 'chou_gua', 'Chou Gua liked your post', 'post.php?id=65', '2018-08-07 21:48:40', 'no', 'yes'),
(11, 'bo_lv', 'chou_gua', 'Chou Gua liked your post', 'post.php?id=66', '2018-08-07 21:49:04', 'no', 'no'),
(12, 'double_double', 'bo_lv', 'Bo Lv commented on your post', 'post.php?id=60', '2018-08-07 21:51:21', 'yes', 'yes'),
(13, 'chou_gua', 'bo_lv', 'Bo Lv commented on your profile post', 'post.php?id=60', '2018-08-07 21:51:21', 'no', 'yes'),
(14, 'bo_lv', 'bo_lv', 'Bo Lv liked your post', 'post.php?id=67', '2018-08-07 21:53:06', 'no', 'no'),
(15, 'bo_lv', 'double_double', 'Double Double commented on your post', 'post.php?id=67', '2018-08-07 21:54:11', 'no', 'no'),
(16, 'bo_lv', 'double_double', 'Double Double commented on your profile post', 'post.php?id=67', '2018-08-07 21:54:11', 'no', 'no'),
(17, 'chou_gua', 'double_double', 'Double Double liked your post', 'post.php?id=65', '2018-08-07 21:56:26', 'no', 'yes'),
(18, 'chou_gua', 'double_double', 'Double Double commented on your post', 'post.php?id=64', '2018-08-07 21:57:16', 'no', 'yes'),
(19, 'chou_gua', 'double_double', 'Double Double liked your post', 'post.php?id=68', '2018-08-07 21:58:08', 'no', 'yes'),
(20, 'chou_gua', 'double_double', 'Double Double posted on your profile', 'post.php?id=69', '2018-08-07 22:31:36', 'no', 'yes'),
(21, 'double_double', 'new_new', 'New New commented on your post', 'post.php?id=60', '2018-08-07 22:51:08', 'yes', 'yes'),
(22, 'chou_gua', 'new_new', 'New New commented on your profile post', 'post.php?id=60', '2018-08-07 22:51:08', 'no', 'yes'),
(23, 'bo_lv', 'new_new', 'New New commented on a post you commented on', 'post.php?id=60', '2018-08-07 22:51:08', 'no', 'no'),
(24, 'double_double', 'new_new_1', 'New New commented on your post', 'post.php?id=60', '2018-08-07 22:53:30', 'yes', 'yes'),
(25, 'chou_gua', 'new_new_1', 'New New commented on your profile post', 'post.php?id=60', '2018-08-07 22:53:30', 'no', 'yes'),
(26, 'bo_lv', 'new_new_1', 'New New commented on a post you commented on', 'post.php?id=60', '2018-08-07 22:53:30', 'no', 'no'),
(27, 'new_new', 'new_new_1', 'New New commented on a post you commented on', 'post.php?id=60', '2018-08-07 22:53:30', 'yes', 'yes'),
(28, 'double_double', 'new_new', 'New New liked your post', 'post.php?id=69', '2018-08-08 10:41:23', 'no', 'yes'),
(29, 'double_double', 'new_new', 'New New liked your post', 'post.php?id=69', '2018-08-08 10:41:26', 'no', 'yes'),
(30, 'double_double', 'new_new', 'New New liked your post', 'post.php?id=68', '2018-08-08 10:41:28', 'no', 'yes'),
(31, 'double_double', 'new_new', 'New New liked your post', 'post.php?id=60', '2018-08-08 10:58:47', 'yes', 'yes'),
(32, 'double_double', 'new_new', 'New New liked your post', 'post.php?id=60', '2018-08-08 10:58:49', 'yes', 'yes'),
(33, 'double_double', 'new_new', 'New New liked your post', 'post.php?id=60', '2018-08-08 10:58:56', 'yes', 'yes'),
(34, 'chou_gua', 'new_new', 'New New posted on your profile', 'post.php?id=70', '2018-08-08 11:02:14', 'no', 'yes'),
(35, 'chou_gua', 'new_new', 'New New posted on your profile', 'post.php?id=71', '2018-08-08 11:02:53', 'yes', 'yes'),
(36, 'new_new', 'chou_gua', 'cc hh liked your post', 'post.php?id=71', '2018-08-09 01:01:03', 'no', 'no'),
(37, 'chou_gua', 'double_double', 'Double Double liked your post', 'post.php?id=66', '2018-08-09 15:42:24', 'no', 'no');

-- --------------------------------------------------------

--
-- 表的结构 `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(3, 'This is the first Post!', 'bo_lv', 'none', '0000-00-00 00:00:00', 'no', 'no', 0, ''),
(4, 'This is the first Post!', 'bo_lv', 'none', '0000-00-00 00:00:00', 'no', 'no', 0, ''),
(5, 'This is the first Post!', 'bo_lv', 'none', '0000-00-00 00:00:00', 'no', 'no', 0, ''),
(6, 'This is the first Post!', 'bo_lv', 'none', '2018-07-31 22:09:19', 'no', 'no', 0, ''),
(7, 'This is the first Post!', 'bo_lv', 'none', '2018-07-31 23:41:41', 'no', 'no', 0, ''),
(8, 'Hi, Chou hua !', 'chou_gua', 'none', '2018-08-01 09:51:13', 'no', 'no', 0, ''),
(9, 'Hi, Chou hua !', 'chou_gua', 'none', '2018-08-01 09:54:50', 'no', 'no', 0, ''),
(10, 'Hi, Chou hua !', 'chou_gua', 'none', '2018-08-01 10:14:57', 'no', 'no', 0, ''),
(11, 'Hi, Chou hua !', 'chou_gua', 'none', '2018-08-01 10:15:37', 'no', 'no', 0, ''),
(12, 'Hiï¼Œ every one!\r\n', 'chou_gua', 'none', '2018-08-01 15:12:28', 'no', 'no', 0, ''),
(13, 'Hiï¼Œ every one!\r\n', 'chou_gua', 'none', '2018-08-01 15:47:38', 'no', 'no', 0, ''),
(14, 'Hiï¼Œ every one!\r\n', 'chou_gua', 'none', '2018-08-01 15:47:51', 'no', 'no', 0, ''),
(15, 'Hiï¼Œ every one!\r\n', 'chou_gua', 'none', '2018-08-01 15:47:54', 'no', 'no', 0, ''),
(16, 'nice to see you!\r\n', 'chou_gua', 'none', '2018-08-01 15:48:21', 'no', 'no', 0, ''),
(17, 'are you happy?', 'chou_gua', 'none', '2018-08-01 15:48:31', 'no', 'no', 0, ''),
(18, 'why?', 'chou_gua', 'none', '2018-08-01 15:48:35', 'no', 'no', 0, ''),
(19, 'why?', 'chou_gua', 'none', '2018-08-01 15:49:20', 'no', 'no', 0, ''),
(20, 'why?', 'chou_gua', 'none', '2018-08-01 15:49:30', 'no', 'no', 0, ''),
(21, 'why?', 'chou_gua', 'none', '2018-08-01 17:01:57', 'no', 'no', 0, ''),
(22, 'why?', 'chou_gua', 'none', '2018-08-01 17:22:59', 'no', 'no', 0, ''),
(23, 'why?', 'chou_gua', 'none', '2018-08-01 17:23:03', 'no', 'no', 1, ''),
(24, 'why?', 'chou_gua', 'none', '2018-08-01 17:23:12', 'no', 'no', 1, ''),
(25, 'why?', 'chou_gua', 'none', '2018-08-01 17:24:42', 'no', 'no', 0, ''),
(26, 'why?', 'chou_gua', 'none', '2018-08-01 17:24:45', 'no', 'no', 0, ''),
(27, '111', 'double_double', 'none', '2018-08-01 17:55:31', 'no', 'no', 0, ''),
(28, '111', 'bo_lv', 'none', '2018-08-01 18:15:53', 'no', 'yes', 0, ''),
(29, '111', 'bo_lv', 'none', '2018-08-01 18:15:57', 'no', 'no', 0, ''),
(30, '111', 'double_double', 'none', '2018-08-01 20:26:53', 'no', 'no', 0, ''),
(31, '1111', 'double_double', 'none', '2018-08-01 20:26:59', 'no', 'no', 1, ''),
(32, '222', 'double_double', 'none', '2018-08-02 18:55:24', 'no', 'no', 1, ''),
(33, '222', 'double_double', 'none', '2018-08-02 18:58:53', 'no', 'no', 0, ''),
(34, '222', 'double_double', 'none', '2018-08-02 18:59:59', 'no', 'no', 0, ''),
(35, '222', 'double_double', 'none', '2018-08-02 19:01:33', 'no', 'no', 1, ''),
(36, '222', 'double_double', 'none', '2018-08-02 20:59:28', 'no', 'no', 0, ''),
(37, '222', 'double_double', 'none', '2018-08-02 21:10:53', 'no', 'yes', 0, ''),
(38, '222', 'double_double', 'none', '2018-08-02 21:11:10', 'no', 'no', 1, ''),
(39, '222', 'double_double', 'none', '2018-08-02 21:34:46', 'no', 'yes', 0, ''),
(40, '222', 'double_double', 'none', '2018-08-02 21:35:46', 'no', 'yes', 0, ''),
(41, '222', 'double_double', 'none', '2018-08-02 21:37:16', 'no', 'yes', 0, ''),
(42, '222', 'double_double', 'none', '2018-08-02 21:37:29', 'no', 'yes', 0, ''),
(43, '222', 'double_double', 'none', '2018-08-02 21:37:50', 'no', 'yes', 0, ''),
(44, 'good night', 'bo_lv', 'none', '2018-08-02 21:39:33', 'no', 'no', 1, ''),
(45, 'good night', 'bo_lv', 'none', '2018-08-02 21:41:48', 'no', 'no', 0, ''),
(46, 'good night', 'bo_lv', 'none', '2018-08-02 21:42:31', 'no', 'no', 8, ''),
(47, '222', 'double_double', 'double_double', '2018-08-04 13:31:16', 'no', 'yes', 0, ''),
(48, '1212', 'double_double', 'double_double', '2018-08-04 13:34:16', 'no', 'yes', 0, ''),
(49, 'ä¸‰ä½“', 'double_double', 'double_double', '2018-08-04 13:36:05', 'no', 'no', 2, ''),
(50, 'æ°´æ»´', 'double_double', 'double_double', '2018-08-04 13:38:09', 'no', 'yes', 0, ''),
(51, 'Boom Zoomï¼', 'double_double', 'chou_gua', '2018-08-04 14:56:00', 'no', 'yes', 0, ''),
(52, 'booï¼', 'double_double', 'double_double', '2018-08-04 14:56:52', 'no', 'yes', 0, ''),
(53, 'Hi there', 'double_double', 'chou_gua', '2018-08-04 16:17:17', 'no', 'no', 1, ''),
(54, 'bo_lv say hi to double', 'bo_lv', 'double_double', '2018-08-05 14:22:08', 'no', 'no', 0, ''),
(55, '111', 'bo_lv', 'bo_lv', '2018-08-06 10:22:01', 'no', 'no', 0, ''),
(56, 'Hola!!', 'double_double', 'chou_gua', '2018-08-07 17:32:01', 'no', 'no', 1, ''),
(57, 'Hey! Chou Hua', 'double_double', 'chou_gua', '2018-08-07 17:35:23', 'no', 'no', 0, ''),
(58, 'HeyHey ,Chouhua', 'double_double', 'chou_gua', '2018-08-07 17:39:50', 'no', 'no', 1, ''),
(59, 'hhhhh', 'double_double', 'chou_gua', '2018-08-07 17:42:16', 'no', 'yes', 0, ''),
(60, '333', 'double_double', 'chou_gua', '2018-08-07 17:55:54', 'no', 'no', 0, ''),
(61, 'hhhh cccc', 'double_double', 'chou_gua', '2018-08-07 17:58:16', 'no', 'no', 2, ''),
(62, 'how are you', 'chou_gua', 'bo_lv', '2018-08-07 21:45:02', 'no', 'no', 0, ''),
(63, '!!!!', 'chou_gua', 'double_double', '2018-08-07 21:47:59', 'no', 'no', 0, ''),
(64, '~~~', 'chou_gua', 'double_double', '2018-08-07 21:48:20', 'no', 'no', 0, ''),
(65, '~å…¨çƒ', 'chou_gua', 'double_double', '2018-08-07 21:48:40', 'no', 'no', 1, ''),
(66, '~ï¼', 'chou_gua', 'bo_lv', '2018-08-07 21:49:04', 'no', 'no', 0, ''),
(67, 'This is my profile post!', 'bo_lv', 'bo_lv', '2018-08-07 21:53:06', 'no', 'no', 0, ''),
(68, 'double post on chougua profile', 'double_double', 'chou_gua', '2018-08-07 21:58:08', 'no', 'no', 0, ''),
(69, 'double post on hua\'s profile', 'double_double', 'chou_gua', '2018-08-07 22:31:36', 'no', 'no', 0, ''),
(70, 'Heyï¼chouguaï¼ŒIm chouhua', 'new_new', 'chou_gua', '2018-08-08 11:02:14', 'no', 'no', 0, ''),
(71, 'Heyï¼Œchouguaï¼ŒI\'m new new!', 'new_new', 'chou_gua', '2018-08-08 11:02:53', 'no', 'no', 0, ''),
(72, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/JsC9ZHi79jo\'></iframe><br>', 'chou_gua', 'none', '2018-08-09 10:19:44', 'no', 'no', 0, ''),
(73, 'heeee', 'chou_gua', 'none', '2018-08-09 11:19:50', 'no', 'yes', 0, ''),
(74, 'hey guys! I am looking forward to the superbow!', 'chou_gua', 'none', '2018-08-09 11:20:33', 'no', 'yes', 0, ''),
(75, 'hey guys! I am looking forward to the superbow!', 'chou_gua', 'none', '2018-08-09 11:54:59', 'no', 'no', 0, ''),
(76, 'hey guys! I am looking forward to the superbow!', 'chou_gua', 'none', '2018-08-09 11:57:15', 'no', 'yes', 0, ''),
(77, 'hey guys! I am looking forward to the superbow!', 'chou_gua', 'none', '2018-08-09 11:58:26', 'no', 'yes', 0, ''),
(78, 'hey guys! I am looking forward to the superbow!', 'chou_gua', 'none', '2018-08-09 11:58:29', 'no', 'yes', 0, ''),
(79, 'hey guys! I am looking forward to the superbow!', 'chou_gua', 'none', '2018-08-09 11:58:54', 'no', 'yes', 0, ''),
(80, 'hey guys! I am looking forward to the superbow!', 'chou_gua', 'none', '2018-08-09 11:58:57', 'no', 'yes', 1, ''),
(81, 'hey guys! I am looking forward to the superbow!', 'chou_gua', 'none', '2018-08-09 11:59:04', 'no', 'yes', 0, ''),
(82, 'hey guys! I am looking forward to the superbow!', 'chou_gua', 'none', '2018-08-09 11:59:07', 'no', 'yes', 0, ''),
(83, 'hi', 'chou_gua', 'none', '2018-08-09 15:19:34', 'no', 'yes', 0, ''),
(84, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/JsC9ZHi79jo\'></iframe><br>', 'chou_gua', 'none', '2018-08-09 15:21:31', 'no', 'yes', 0, ''),
(85, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/JsC9ZHi79jo\'></iframe><br>', 'chou_gua', 'none', '2018-08-09 15:21:35', 'no', 'no', 0, ''),
(86, 'Hello!', 'chou_gua', 'none', '2018-08-09 15:21:43', 'no', 'yes', 0, 'assets/images/posts/5b6beb8741ab4æŠ±ç‹—.png'),
(87, 'Hello!', 'chou_gua', 'none', '2018-08-09 15:21:55', 'no', 'no', 1, 'assets/images/posts/5b6beb9330ebaæŠ±ç‹—.png'),
(88, '~', 'double_double', 'none', '2018-08-10 00:38:13', 'no', 'yes', 0, 'assets/images/posts/5b6c6df5671deæŠ±ç‹—.png'),
(89, '~', 'double_double', 'none', '2018-08-10 00:38:18', 'no', 'yes', 0, 'assets/images/posts/5b6c6dfaa4231æŠ±ç‹—.png'),
(90, '~', 'double_double', 'none', '2018-08-10 00:38:22', 'no', 'yes', 0, 'assets/images/posts/5b6c6dfecef4cæŠ±ç‹—.png');

-- --------------------------------------------------------

--
-- 表的结构 `trends`
--

CREATE TABLE `trends` (
  `title` varchar(50) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `trends`
--

INSERT INTO `trends` (`title`, `hits`) VALUES
('Heeee', 1),
('Guys', 9),
('Looking', 9),
('Forward', 9),
('Superbow', 9),
('Hi', 1),
('Hello', 2);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(2, 'Lyu', 'Bo', 'lyu_bo_1', 'Abingge@gmail.com', '7cb60b3f675fbcd1c7905eee13b813a3', '2018-07-30', 'assets/images/profile_pics/defaults/head_1.jpg', 0, 0, 'no', ','),
(3, 'Chen', 'Yuanyu', 'chen_yuanyu', 'Chen@qq.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2018-07-30', 'assets/images/profile_pics/defaults/head_2.jpg', 0, 0, 'no', ','),
(4, 'Chou', 'Hua', 'chou_hua', 'Chouhua@qq.com', '7b10fe0f0e81edc1889c7cea09d1a7fd', '2018-07-30', 'assets/images/profile_pics/defaults/head_1.jpg', 0, 0, 'no', ','),
(5, 'Chou', 'Hua', 'chou_hua_1', 'Chouhua@qq.com1', '7cb60b3f675fbcd1c7905eee13b813a3', '2018-07-30', 'assets/images/profile_pics/defaults/head_2.jpg', 0, 0, 'no', ','),
(6, 'cc', 'hh', 'chou_gua', 'Chougua@qq.com', '1c0b76df7097ca049795a50cbfa90865', '2018-07-30', 'assets/images/profile_pics/defaults/head_1.jpg', 40, 5, 'no', ',bo_lv,double_double,new_new,'),
(7, 'Qq', 'Tt', 'qq_tt', 'Chougu@qq.com', 'c57562653c783faeb8b6cd917ef258c1', '2018-07-30', 'assets/images/profile_pics/defaults/head_1.jpg', 0, 0, 'no', ','),
(8, 'Goofy', 'Mouse', 'goofy_mouse', 'Goofy@gmail.com', '7cb60b3f675fbcd1c7905eee13b813a3', '2018-07-30', 'assets/images/profile_pics/defaults/head_2.jpg', 0, 0, 'no', ','),
(9, 'Double', 'Double', 'double_double', 'Double@qq.com', 'e8cd7da078a86726031ad64f35f5a6c0', '2018-07-30', 'assets/images/profile_pics/defaults/head_1.jpg', 32, 11, 'no', ',chou_gua,33_33,44_44,55_55,new_new_1,'),
(10, 'Bo', 'Lv', 'bo_lv', '1150671@tongji.edu.cn', '7cb60b3f675fbcd1c7905eee13b813a3', '2018-07-31', 'assets/images/profile_pics/bo_lv244c57889564212fb251850913f9f585n.jpeg', 13, 1, 'no', ',chou_gua,double_double,new_new,'),
(11, 'Double', 'Double', 'double_double_1', 'Double2@qq.com', '7cb60b3f675fbcd1c7905eee13b813a3', '2018-07-31', 'assets/images/profile_pics/defaults/head_2.jpg', 0, 0, 'no', ','),
(12, 'New', 'New', 'new_new', 'New@qq.com', '7cb60b3f675fbcd1c7905eee13b813a3', '2018-08-03', 'assets/images/profile_pics/defaults/head_1.jpg', 2, 0, 'no', ',chou_gua,'),
(13, 'New', 'New', 'new_new_1', 'New1@qq.com', '7cb60b3f675fbcd1c7905eee13b813a3', '2018-08-03', 'assets/images/profile_pics/defaults/head_1.jpg', 0, 0, 'no', ',double_double,'),
(14, 'New', 'New', 'new_new_1_2', 'New2@qq.com', '7cb60b3f675fbcd1c7905eee13b813a3', '2018-08-03', 'assets/images/profile_pics/defaults/head_2.jpg', 0, 0, 'no', ','),
(15, 'Bo', 'Lv', 'bo_lv_1', 'New3@qq.com', '7cb60b3f675fbcd1c7905eee13b813a3', '2018-08-03', 'assets/images/profile_pics/defaults/head_1.jpg', 0, 0, 'no', ','),
(17, 'Jackie', 'Chen', 'Jackie_Chen', '44@qq.com', '7cb60b3f675fbcd1c7905eee13b813a3', '2018-08-07', 'assets/images/profile_pics/defaults/head_2.jpg', 0, 0, 'no', ',double_double,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用表AUTO_INCREMENT `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- 使用表AUTO_INCREMENT `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- 使用表AUTO_INCREMENT `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- 使用表AUTO_INCREMENT `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
