-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2023-07-07 10:07:18
-- 服务器版本： 5.7.39-log
-- PHP 版本： 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `currency`
--

-- --------------------------------------------------------

--
-- 表的结构 `currency_now`
--

CREATE TABLE `currency_now` (
  `k` int(2) DEFAULT NULL,
  `v` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `currency_now`
--

INSERT INTO `currency_now` (`k`, `v`) VALUES
(0, 9.1974),
(1, 0.9244),
(2, 7.2329),
(3, 8.0557),
(4, NULL),
(5, NULL),
(6, 5.336),
(7, 0.6596),
(8, 1.0549),
(9, 0.6705),
(10, 0.0501),
(11, 5.4038),
(12, 4.7908),
(13, 7.8641),
(14, 0.8984),
(15, 0.1295),
(16, 0.2047),
(17, 4.4511),
(18, 0.0055),
(19, 0.0778),
(20, 1.5461),
(21, 0.2233),
(22, NULL),
(23, NULL),
(24, NULL),
(25, NULL),
(26, NULL),
(27, 0.0824),
(28, 0.0005),
(29, 1.4139),
(30, 1.9039),
(31, 0.0824),
(32, 0.3783),
(33, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
