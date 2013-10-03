-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 03, 2013 at 12:12 AM
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
-- Table structure for table `exp_channel_titles`
--

DROP TABLE IF EXISTS `exp_channel_titles`;
CREATE TABLE IF NOT EXISTS `exp_channel_titles` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `forum_topic_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url_title` varchar(75) NOT NULL,
  `status` varchar(50) NOT NULL,
  `versioning_enabled` char(1) NOT NULL DEFAULT 'n',
  `view_count_one` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_two` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_three` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_four` int(10) unsigned NOT NULL DEFAULT '0',
  `allow_comments` varchar(1) NOT NULL DEFAULT 'y',
  `sticky` varchar(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) NOT NULL,
  `year` char(4) NOT NULL,
  `month` char(2) NOT NULL,
  `day` char(3) NOT NULL,
  `expiration_date` int(10) NOT NULL DEFAULT '0',
  `comment_expiration_date` int(10) NOT NULL DEFAULT '0',
  `edit_date` bigint(14) DEFAULT NULL,
  `recent_comment_date` int(10) DEFAULT NULL,
  `comment_total` int(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `author_id` (`author_id`),
  KEY `url_title` (`url_title`),
  KEY `status` (`status`),
  KEY `entry_date` (`entry_date`),
  KEY `expiration_date` (`expiration_date`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1272 ;

--
-- Dumping data for table `exp_channel_titles`
--

INSERT INTO `exp_channel_titles` (`entry_id`, `site_id`, `channel_id`, `author_id`, `forum_topic_id`, `ip_address`, `title`, `url_title`, `status`, `versioning_enabled`, `view_count_one`, `view_count_two`, `view_count_three`, `view_count_four`, `allow_comments`, `sticky`, `entry_date`, `year`, `month`, `day`, `expiration_date`, `comment_expiration_date`, `edit_date`, `recent_comment_date`, `comment_total`) VALUES
(4, 1, 1, 1, NULL, '134.148.202.94', 'Knowing yourself as a developing therapist', 'knowing-yourself-as-a-developing-therapist', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1340859106, '2012', '06', '28', 0, 0, 20120629025347, 0, 0),
(5, 1, 1, 1, NULL, '134.148.226.173', 'Understanding where you work', 'understanding-where-you-work', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1340859278, '2012', '06', '28', 0, 0, 20120628145438, 0, 0),
(6, 1, 1, 1, NULL, '134.148.226.173', 'Becoming competent - assessing yourself and being assessed', 'becoming-competent-assessing-yourself-and-being-assessed', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1340859472, '2012', '06', '28', 0, 0, 20120628145752, 0, 0),
(7, 1, 1, 1, NULL, '134.148.226.173', 'Developing your practice reasoning', 'developing-your-practice-reasoning', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1340860265, '2012', '06', '28', 0, 0, 20120628151105, 0, 0),
(8, 1, 1, 1, NULL, '134.148.226.173', 'Doing Research', 'doing-research', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1340860423, '2012', '06', '28', 0, 0, 20120628151343, 0, 0),
(10, 1, 3, 1, NULL, '134.148.201.115', 'Different Practice Contexts', 'different-practice-contexts', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1340935153, '2012', '06', '29', 0, 0, 20130320024614, 0, 0),
(11, 1, 4, 1, NULL, '134.148.229.84', 'The Occupational Therapy Practice Process (OTPP)', 'the-occupational-therapy-practice-process', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1340936280, '2012', '06', '29', 0, 0, 20130904011456, 0, 0),
(12, 1, 6, 1, NULL, '134.148.201.115', 'Evidencing your practice competencies', 'evidencing-your-practice-competencies', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1340936651, '2012', '06', '29', 0, 0, 20130320030012, 0, 0),
(13, 1, 5, 1, NULL, '134.148.205.19', 'Practice resources', 'practice-resources', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1340936979, '2012', '06', '29', 0, 0, 20130522021840, 0, 0),
(14, 1, 9, 1, NULL, '134.148.197.128', 'Step 1 Table', 'step-1-table', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1341367377, '2012', '07', '04', 0, 0, 20130424000158, 0, 0),
(15, 1, 9, 1, NULL, '134.148.197.207', 'Step 2 Table', 'step-2-table', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1341367434, '2012', '07', '04', 0, 0, 20130419005755, 0, 0),
(16, 1, 9, 1, NULL, '134.148.208.48', 'Step 3 Table', 'step-3-table', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1341367440, '2012', '07', '04', 0, 0, 20130830044950, 0, 0),
(17, 1, 9, 1, NULL, '134.148.197.240', 'Step 4 Table', 'step-4-table', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1341367511, '2012', '07', '04', 0, 0, 20130404031312, 0, 0),
(18, 1, 9, 1, NULL, '134.148.197.240', 'Step 5 Table', 'step-5-table', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1341367465, '2012', '07', '04', 0, 0, 20130404031426, 0, 0),
(19, 1, 9, 1, NULL, '134.148.197.240', 'Step 6 Table', 'step-6-table', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1341367530, '2012', '07', '04', 0, 0, 20130404031531, 0, 0),
(20, 1, 9, 1, NULL, '134.148.197.240', 'Step 7 Table', 'step-7-table', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1341367590, '2012', '07', '04', 0, 0, 20130404031631, 0, 0),
(52, 1, 9, 1, NULL, '128.184.184.42', 'Being a Professional', 'being-a-professional', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1351664504, '2012', '10', '31', 0, 0, 20130516002545, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
