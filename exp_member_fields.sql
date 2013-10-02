-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 01, 2013 at 09:01 PM
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

--
-- Dumping data for table `exp_member_fields`
--

INSERT INTO `exp_member_fields` (`m_field_id`, `m_field_name`, `m_field_label`, `m_field_description`, `m_field_type`, `m_field_list_items`, `m_field_ta_rows`, `m_field_maxl`, `m_field_width`, `m_field_search`, `m_field_required`, `m_field_public`, `m_field_reg`, `m_field_cp_reg`, `m_field_fmt`, `m_field_order`) VALUES
(1, 'first_name', 'First Name', '', 'text', '', 10, 255, '100%', 'y', 'y', 'y', 'y', 'y', 'none', 2),
(2, 'last_name', 'Last Name', '', 'text', '', 10, 255, '100%', 'y', 'y', 'y', 'y', 'y', 'none', 2),
(3, 'student_number', 'Student Number', 'Educators just enter a ''0'' for your student number.', 'text', '', 10, 100, '100%', 'y', 'y', 'y', 'y', 'y', 'none', 3),
(4, 'institution', 'Institution', 'University or institution student is enrolled in.  If you are an educator, choose the institution the student you are supervising is enrolled in.', 'select', 'University of Newcastle\nUniversity of Western Sydney\nJames Cook University\nLa Trobe University\nCharles Sturt University\n\n', 10, 100, '100%', 'y', 'y', 'y', 'y', 'y', 'none', 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
