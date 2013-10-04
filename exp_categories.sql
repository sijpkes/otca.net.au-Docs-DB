-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 03, 2013 at 07:18 PM
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
-- Table structure for table `exp_categories`
--

DROP TABLE IF EXISTS `exp_categories`;
CREATE TABLE IF NOT EXISTS `exp_categories` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(6) unsigned NOT NULL,
  `parent_id` int(4) unsigned NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `cat_url_title` varchar(75) NOT NULL,
  `cat_description` text,
  `cat_image` varchar(120) DEFAULT NULL,
  `cat_order` int(4) unsigned NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `group_id` (`group_id`),
  KEY `cat_name` (`cat_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `exp_categories`
--

INSERT INTO `exp_categories` (`cat_id`, `site_id`, `group_id`, `parent_id`, `cat_name`, `cat_url_title`, `cat_description`, `cat_image`, `cat_order`) VALUES
(1, 1, 4, 0, 'Document', 'document', 'Evidencing document, this could be any number of things that we need to decide....', '0', 1),
(2, 1, 5, 0, 'podcast-step-1', 'podcast-step-1', 'Audio for step 1 of the Practice reasoning process', '0', 2),
(3, 1, 7, 0, 'step-1-video-1', 'step-1-video-1', '', '0', 7),
(4, 1, 7, 0, 'step-1-video-2', 'step-1-video-2', '', '0', 8),
(5, 1, 7, 0, 'step1-audio-1', 'step1-audio-1', '', '0', 15),
(6, 1, 7, 0, 'step1-documents', 'step1-documents', '', '0', 16),
(7, 1, 7, 0, 'step-2-documents', 'step-2-documents', '', '0', 9),
(8, 1, 7, 0, 'step-3-video-1', 'step-3-video-1', '', '0', 11),
(9, 1, 7, 0, 'step-3-documents', 'step-3-documents', '', '0', 10),
(10, 1, 7, 0, 'step-6-documents', 'step-6-documents', '', '0', 13),
(11, 1, 7, 0, 'step-7-documents', 'step-7-documents', '', '0', 14),
(12, 1, 7, 0, 'place-holder', 'place-holder', 'Category for empty sections as a reminder to add something here', '0', 5),
(13, 1, 7, 0, 'step4-documents', 'step4-documents', '', '0', 17),
(14, 1, 7, 0, 'step-5-documents', 'step-5-documents', '', '0', 12),
(15, 1, 7, 0, 'bap-documents', 'bap-documents', '', '0', 4),
(16, 1, 7, 0, 'bap-docs-holistic', 'bap-docs-holistic', '', '0', 1),
(17, 1, 7, 0, 'bap-docs-reflection', 'bap-docs-reflection', '', '0', 2),
(18, 1, 7, 0, 'bap-docs-reflection-ppt', 'bap-docs-reflection-ppt', '', '0', 3),
(19, 1, 7, 0, 'step-1-audio-documents', 'step-1-audio-documents', '', '0', 6),
(20, 1, 5, 0, 'audio-supporting-document-step1', 'audio-supporting-document-step1', '', '0', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
