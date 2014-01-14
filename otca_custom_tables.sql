-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 13, 2014 at 09:03 PM
-- Server version: 5.5.35
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
-- Table structure for table `otca_diary`
--

DROP TABLE IF EXISTS `otca_diary`;
CREATE TABLE IF NOT EXISTS `otca_diary` (
  `entry_id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_text` text NOT NULL,
  `creation_date` bigint(14) NOT NULL,
  `last_updated` bigint(14) NOT NULL,
  `member_id` int(11) NOT NULL,
  `current_practice_cycle` bigint(20) NOT NULL DEFAULT '0',
  `tag` varchar(255) NOT NULL DEFAULT 'general_diary_entry' COMMENT 'meta tag for gui purposes',
  `hidden` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`entry_id`),
  UNIQUE KEY `member_id` (`member_id`,`current_practice_cycle`,`tag`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3359 ;

-- --------------------------------------------------------

--
-- Table structure for table `otca_educators`
--

DROP TABLE IF EXISTS `otca_educators`;
CREATE TABLE IF NOT EXISTS `otca_educators` (
  `member_id` int(11) NOT NULL,
  `institution_id` int(11) NOT NULL,
  UNIQUE KEY `member_id` (`member_id`),
  KEY `institution_id` (`institution_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `otca_educator_feedback_save`
--

DROP TABLE IF EXISTS `otca_educator_feedback_save`;
CREATE TABLE IF NOT EXISTS `otca_educator_feedback_save` (
  `entry_id` int(11) NOT NULL,
  `educator_member_id` int(11) NOT NULL,
  `feedback` text NOT NULL,
  `criteria` longtext NOT NULL,
  UNIQUE KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `otca_evidence`
--

DROP TABLE IF EXISTS `otca_evidence`;
CREATE TABLE IF NOT EXISTS `otca_evidence` (
  `entry_id` int(11) NOT NULL COMMENT 'entry_id maps to exp_channel_titles which contains author_id and channel_id',
  `filename` varchar(255) CHARACTER SET utf8 NOT NULL,
  `upload_time` bigint(14) NOT NULL COMMENT 'time of upload',
  `last_assessed` bigint(14) NOT NULL DEFAULT '0' COMMENT 'recently assessed flag for timeline list'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `otca_evidence_access`
--

DROP TABLE IF EXISTS `otca_evidence_access`;
CREATE TABLE IF NOT EXISTS `otca_evidence_access` (
  `student_id` int(11) NOT NULL,
  `educator_id` int(11) NOT NULL,
  UNIQUE KEY `useraccess` (`student_id`,`educator_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `otca_evidence_validated`
--

DROP TABLE IF EXISTS `otca_evidence_validated`;
CREATE TABLE IF NOT EXISTS `otca_evidence_validated` (
  `evidence_id` int(11) NOT NULL COMMENT 'entry_id of this evidence',
  `assessor_id` int(11) NOT NULL COMMENT 'the user who validated this evidence',
  `matrix_ids` text CHARACTER SET utf8 NOT NULL COMMENT 'supervisor''s assessment of this evidence in JSON format',
  `feedback` text CHARACTER SET utf8 NOT NULL,
  `date_assessed` bigint(14) NOT NULL COMMENT 'Date this item was assessed',
  UNIQUE KEY `evidence_id` (`evidence_id`,`assessor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `otca_folio_highlights`
--

DROP TABLE IF EXISTS `otca_folio_highlights`;
CREATE TABLE IF NOT EXISTS `otca_folio_highlights` (
  `id` varchar(255) NOT NULL,
  `member_id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `type` varchar(25) NOT NULL,
  `color` varchar(7) NOT NULL,
  PRIMARY KEY (`member_id`,`entry_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='For highlighting items in student portfolios in color';

-- --------------------------------------------------------

--
-- Table structure for table `otca_institutions`
--

DROP TABLE IF EXISTS `otca_institutions`;
CREATE TABLE IF NOT EXISTS `otca_institutions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT 'must match exp_member_field name for institution',
  `type` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1 = University, 2 = Other',
  `expiry_date` int(10) NOT NULL,
  `student_uri_hash` varchar(255) NOT NULL,
  `educator_uri_hash` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `student_uri_hash` (`student_uri_hash`),
  KEY `educator_uri_hash` (`educator_uri_hash`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `otca_member_fields`
--

DROP TABLE IF EXISTS `otca_member_fields`;
CREATE TABLE IF NOT EXISTS `otca_member_fields` (
  `member_id` int(11) NOT NULL,
  `institution_id` int(11) NOT NULL,
  UNIQUE KEY `member_id` (`member_id`),
  KEY `institution_id` (`institution_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `otca_observed_behaviours`
--

DROP TABLE IF EXISTS `otca_observed_behaviours`;
CREATE TABLE IF NOT EXISTS `otca_observed_behaviours` (
  `step` int(11) NOT NULL,
  `level` tinyint(1) NOT NULL,
  `row` int(11) NOT NULL,
  `observed_behaviours` text NOT NULL,
  KEY `level` (`level`),
  KEY `step` (`step`),
  KEY `row` (`row`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `otca_pracsot`
--

DROP TABLE IF EXISTS `otca_pracsot`;
CREATE TABLE IF NOT EXISTS `otca_pracsot` (
  `id` varchar(6) NOT NULL DEFAULT '',
  `question` varchar(422) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `otca_pracsot_headers`
--

DROP TABLE IF EXISTS `otca_pracsot_headers`;
CREATE TABLE IF NOT EXISTS `otca_pracsot_headers` (
  `id` varchar(24) NOT NULL,
  `header` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `otca_quiz_answers`
--

DROP TABLE IF EXISTS `otca_quiz_answers`;
CREATE TABLE IF NOT EXISTS `otca_quiz_answers` (
  `answer` text NOT NULL,
  `comment` text NOT NULL,
  `question_id` int(11) NOT NULL,
  `correct` varchar(2) NOT NULL DEFAULT 'NA',
  `step` int(11) NOT NULL,
  KEY `question_id` (`question_id`,`step`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `otca_quiz_questions`
--

DROP TABLE IF EXISTS `otca_quiz_questions`;
CREATE TABLE IF NOT EXISTS `otca_quiz_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `step` tinyint(1) NOT NULL,
  `type` varchar(3) NOT NULL DEFAULT 'MCQ',
  UNIQUE KEY `id` (`id`,`step`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `otca_user_status`
--

DROP TABLE IF EXISTS `otca_user_status`;
CREATE TABLE IF NOT EXISTS `otca_user_status` (
  `member_id` int(11) NOT NULL,
  `steps` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT 'json array',
  `level` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'integer',
  `beginner` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'binary  1 or 0',
  `objectives` mediumtext CHARACTER SET utf8 NOT NULL COMMENT 'json array',
  `history_id` int(11) NOT NULL COMMENT 'id for saved history can be empty if not saved',
  `title` varchar(255) NOT NULL DEFAULT 'New Cycle',
  PRIMARY KEY (`member_id`),
  UNIQUE KEY `history_id` (`history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `otca_user_status_history`
--

DROP TABLE IF EXISTS `otca_user_status_history`;
CREATE TABLE IF NOT EXISTS `otca_user_status_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `steps` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT 'json array',
  `level` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'integer',
  `beginner` varchar(5) CHARACTER SET utf8 NOT NULL DEFAULT 'false' COMMENT 'binary string ''true'' or ''false''',
  `objectives` mediumtext CHARACTER SET utf8 NOT NULL COMMENT 'json array',
  `title` varchar(255) NOT NULL DEFAULT 'New Cycle',
  `time` bigint(14) NOT NULL COMMENT 'time first saved',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=548 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
