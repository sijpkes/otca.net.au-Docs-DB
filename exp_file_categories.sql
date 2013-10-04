-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 03, 2013 at 07:33 PM
-- Server version: 5.5.34
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `otaltcne_ExpressionEngine`
--

-- --------------------------------------------------------

--
-- Table structure for table `exp_file_categories`
--

DROP TABLE IF EXISTS `exp_file_categories`;
CREATE TABLE IF NOT EXISTS `exp_file_categories` (
  `file_id` int(10) unsigned DEFAULT NULL,
  `cat_id` int(10) unsigned DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT '0',
  `is_cover` char(1) DEFAULT 'n',
  KEY `file_id` (`file_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exp_file_categories`
--

INSERT INTO `exp_file_categories` (`file_id`, `cat_id`, `sort`, `is_cover`) VALUES
(133, 3, 0, 'n'),
(200, 19, 0, 'n'),
(201, 19, 0, 'n'),
(202, 2, 0, 'n'),
(192, 6, 0, 'n'),
(191, 19, 0, 'n'),
(190, 6, 0, 'n'),
(196, 4, 0, 'n'),
(153, 9, 0, 'n'),
(139, 8, 0, 'n'),
(158, 13, 0, 'n'),
(157, 13, 0, 'n'),
(171, 15, 0, 'n'),
(169, 11, 0, 'n'),
(185, 17, 0, 'n'),
(195, 4, 0, 'n'),
(194, 4, 0, 'n'),
(193, 6, 0, 'n'),
(148, 8, 0, 'n'),
(150, 6, 0, 'n'),
(151, 6, 0, 'n'),
(152, 7, 0, 'n'),
(154, 9, 0, 'n'),
(155, 9, 0, 'n'),
(156, 9, 0, 'n'),
(159, 13, 0, 'n'),
(160, 14, 0, 'n'),
(161, 10, 0, 'n'),
(162, 10, 0, 'n'),
(163, 10, 0, 'n'),
(164, 10, 0, 'n'),
(165, 10, 0, 'n'),
(166, 10, 0, 'n'),
(167, 10, 0, 'n'),
(168, 10, 0, 'n'),
(172, 15, 0, 'n'),
(173, 15, 0, 'n'),
(174, 15, 0, 'n'),
(175, 15, 0, 'n'),
(176, 15, 0, 'n'),
(177, 15, 0, 'n'),
(178, 15, 0, 'n'),
(179, 15, 0, 'n'),
(180, 15, 0, 'n'),
(181, 15, 0, 'n'),
(182, 15, 0, 'n'),
(183, 16, 0, 'n'),
(184, 15, 0, 'n'),
(186, 17, 0, 'n'),
(187, 17, 0, 'n'),
(188, 17, 0, 'n'),
(189, 18, 0, 'n'),
(197, 16, 0, 'n'),
(198, 16, 0, 'n'),
(204, 2, 0, 'n'),
(205, 2, 0, 'n'),
(207, 2, 0, 'n'),
(208, 2, 0, 'n'),
(883, 13, 0, 'n');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
