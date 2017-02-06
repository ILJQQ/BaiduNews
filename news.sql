-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-12-20 13:40:53
-- 服务器版本： 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baidunews`
--

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `newstype` char(200) NOT NULL,
  `newstitle` varchar(200) NOT NULL,
  `newsimg` varchar(200) NOT NULL,
  `newstime` datetime NOT NULL,
  `newssrc` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`id`, `newstype`, `newstitle`, `newsimg`, `newstime`, `newssrc`) VALUES
(37, '精选', '类型标题', 'images/1.jpg', '2016-12-08 00:00:00', 'ILJQQ'),
(38, '精选', '类型标题', 'images/2.jpg', '2016-12-08 00:00:00', 'ILJQQ'),
(39, '精选', '类型标题', 'images/3.jpg', '2016-12-08 00:00:00', 'ILJQQ'),
(40, '百家', '类型标题', 'images/4.jpg', '2016-12-08 00:00:00', 'ILJQQ'),
(41, '百家', '类型标题', 'images/5.jpg', '2016-12-08 00:00:00', 'ILJQQ'),
(42, '百家', '类型标题', 'images/6.jpg', '2016-12-08 00:00:00', 'ILJQQ'),
(43, '本地', '类型标题', 'images/6.jpg', '2016-12-08 00:00:00', 'ILJQQ'),
(44, '本地', '类型标题', 'images/19.jpg', '2016-12-08 00:00:00', 'ILJQQ'),
(45, '图片', '类型标题', 'images/9.jpg', '2016-12-08 00:00:00', 'ILJQQ'),
(46, '图片', '类型标题', 'images/10.jpg', '2016-12-08 00:00:00', 'ILJQQ'),
(47, '图片', '类型标题', 'images/11.jpg', '2016-12-08 00:00:00', 'ILJQQ'),
(48, '图片', '类型标题', 'images/12.jpg', '2016-12-08 00:00:00', 'ILJQQ'),
(49, '娱乐', '类型标题', 'images/13.jpg', '2016-12-08 00:00:00', 'ILJQQ'),
(50, '娱乐', '类型标题', 'images/14.jpg', '2016-12-08 00:00:00', 'ILJQQ'),
(51, '社会', '类型标题', 'images/15.jpg', '2016-12-08 00:00:00', 'ILJQQ'),
(52, '社会', '类型标题', 'images/10.jpg', '2016-12-08 00:00:00', 'ILJQQ'),
(53, '军事', '类型标题', 'images/13.jpg', '2016-12-08 00:00:00', 'ILJQQ'),
(54, '军事', '类型标题', 'images/18.jpg', '2016-12-08 00:00:00', 'ILJQQ'),
(55, '女人', '类型标题', 'images/19.jpg', '2016-12-08 00:00:00', 'ILJQQ'),
(56, '女人', '类型标题', 'images/20.jpg', '2016-12-08 00:00:00', 'ILJQQ'),
(57, '女人', '类型标题', 'images/21.jpg', '2016-12-08 00:00:00', 'ILJQQ'),
(58, '图片', '类型标题', 'images/21.jpg', '2016-12-08 00:00:00', 'ILJQQ'),
(59, '搞笑', '类型标题', 'images/23.jpg', '2016-12-08 00:00:00', 'ILJQQ'),
(60, '搞笑', '类型标题', 'images/24.jpg', '2016-12-08 00:00:00', 'ILJQQ'),
(61, '互联网', '类型标题', 'images/25.jpg', '2016-12-08 00:00:00', 'ILJQQ'),
(62, '互联网', '类型标题', 'images/26.jpg', '2016-12-08 00:00:00', 'ILJQQ'),
(63, '精选', '后台添加标题', 'images/9.jpg', '2016-01-13 00:00:00', 'ILJQQ'),
(64, '精选', '后台添加标题', 'images/13.jpg', '2016-01-22 00:00:00', 'ILJQQ'),
(65, '精选', '后台添加标题', 'images/19.jpg', '2012-01-22 00:00:00', 'ILJQQ'),
(66, '精选', '后台添加标题', 'images/13.jpg', '2013-01-22 00:00:00', 'ILJQQ'),
(67, '精选', '后台添加标题', 'images/23.jpg', '2015-01-22 00:00:00', 'ILJQQ'),
(68, '精选', '后台添加标题', 'images/9.jpg', '2009-01-22 00:00:00', 'ILJQQ'),
(69, '精选', '后台添加标题', 'images/21.jpg', '2009-05-22 00:00:00', 'ILJQQ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
