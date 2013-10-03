-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 03, 2013 at 12:18 AM
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
-- Table structure for table `exp_files`
--

DROP TABLE IF EXISTS `exp_files`;
CREATE TABLE IF NOT EXISTS `exp_files` (
  `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned DEFAULT '1',
  `title` varchar(255) DEFAULT NULL,
  `upload_location_id` int(4) unsigned DEFAULT '0',
  `rel_path` varchar(255) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_size` int(10) DEFAULT '0',
  `description` text,
  `credit` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `uploaded_by_member_id` int(10) unsigned DEFAULT '0',
  `upload_date` int(10) DEFAULT NULL,
  `modified_by_member_id` int(10) unsigned DEFAULT '0',
  `modified_date` int(10) DEFAULT NULL,
  `file_hw_original` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`file_id`),
  KEY `upload_location_id` (`upload_location_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=884 ;

--
-- Dumping data for table `exp_files`
--

INSERT INTO `exp_files` (`file_id`, `site_id`, `title`, `upload_location_id`, `rel_path`, `mime_type`, `file_name`, `file_size`, `description`, `credit`, `location`, `uploaded_by_member_id`, `upload_date`, `modified_by_member_id`, `modified_date`, `file_hw_original`) VALUES
(133, 1, 'Occupational Therapy Demand Management Matrix', 3, '/home4/otaltcne/public_html/resources/Occupational_Therapy_Demand_Management_Matrix.pdf', 'application/pdf', 'Occupational_Therapy_Demand_Management_Matrix.pdf', 20705, '', '', '', 1, 1358917116, 1, 1358917494, ' '),
(139, 1, 'Family and Person Centred Practice Presentation by Gjyn O''Toole (PDF)', 3, '/home4/otaltcne/public_html/resources/Step_3_-_Video_-_Family_and_Person_Centred_Practice.pdf', 'application/pdf', 'Step_3_-_Video_-_Family_and_Person_Centred_Practice.pdf', 1230930, '', '', '', 1, 1358923156, 1, 1359690184, ' '),
(148, 1, 'Family Person-Centred Practice Model - by Gjyn O''Toole', 3, '/home4/otaltcne/public_html/resources/Family_Person-Centred_Practice_Model_Step_3_Occupational_Assessment_Gjyn_OToole.pdf', 'application/pdf', 'Family_Person-Centred_Practice_Model_Step_3_Occupational_Assessment_Gjyn_OToole.pdf', 93839, '', '', '', 1, 1359689899, 1, 1359689964, ' '),
(150, 1, 'Example Worksheet Diagnostic Reasoning', 3, '/home4/otaltcne/public_html/resources/STEP_1_REQUEST_FOR_SERVICE_Example_Worksheet_Diagnostic_Reasoning.pdf', 'application/pdf', 'STEP_1_REQUEST_FOR_SERVICE_Example_Worksheet_Diagnostic_Reasoning.pdf', 175872, '', '', '', 1, 1365124772, 1, 1365124800, ' '),
(151, 1, 'Example Orientation to Mental Health Student Assignment', 3, '/home4/otaltcne/public_html/resources/STEP_1_REQUEST_FOR_SERVICE_Example_Orientation_to_Mental_Health_Student_Assignment.pdf', 'application/pdf', 'STEP_1_REQUEST_FOR_SERVICE_Example_Orientation_to_Mental_Health_Student_Assignment.pdf', 229376, '', '', '', 1, 1365124849, 1, 1365124926, ' '),
(152, 1, 'Cultural Safety Definitions and Links', 3, '/home4/otaltcne/public_html/resources/STEP_2_INFORMATION_GATHERING_Cultural_Safety_Definitions_and_Links.pdf', 'application/pdf', 'STEP_2_INFORMATION_GATHERING_Cultural_Safety_Definitions_and_Links.pdf', 309934, '', '', '', 1, 1365125228, 1, 1365125256, ' '),
(153, 1, 'Example Documentation Checklist for Students and Practice Educators', 3, '/home4/otaltcne/public_html/resources/STEP_3_OCCUPATIONAL_ASSESSMENT_Example_Documentation_Checklist_for_Students_and_Practice_Educators.pdf', 'application/pdf', 'STEP_3_OCCUPATIONAL_ASSESSMENT_Example_Documentation_Checklist_for_Students_and_Practice_Educators.pdf', 220180, '', '', '', 1, 1365125723, 1, 1365125758, ' '),
(154, 1, 'Example Worksheet Observation Sheet', 3, '/home4/otaltcne/public_html/resources/STEP_3_OCCUPATIONAL_ASSESSMENT_Example_Worksheet_Observation_Sheet.pdf', 'application/pdf', 'STEP_3_OCCUPATIONAL_ASSESSMENT_Example_Worksheet_Observation_Sheet.pdf', 179599, '', '', '', 1, 1365125772, 1, 1365125898, ' '),
(155, 1, 'Occupational Therapy Initial Assessment Form', 3, '/home4/otaltcne/public_html/resources/STEP_3_OCCUPATIONAL_ASSESSMENT_Occupational_Therapy_Initial_Assessment_Form.pdf', 'application/pdf', 'STEP_3_OCCUPATIONAL_ASSESSMENT_Occupational_Therapy_Initial_Assessment_Form.pdf', 119460, '', '', '', 1, 1365125928, 1, 1365125955, ' '),
(156, 1, 'Preparing for Assessment - Assessment Planning Form', 3, '/home4/otaltcne/public_html/resources/STEP_3_OCCUPATIONAL_ASSESSMENT_Preparing_for_Assessment__Assessment_Planning_Form.pdf', 'application/pdf', 'STEP_3_OCCUPATIONAL_ASSESSMENT_Preparing_for_Assessment__Assessment_Planning_Form.pdf', 231547, '', '', '', 1, 1365126051, 1, 1365128839, ' '),
(157, 1, 'Example Documentation Checklist for Students and Practice Educators', 3, '/home4/otaltcne/public_html/resources/STEP_4_IDENTIFICATION_OF_OCCUPATIONAL_ISSUES_Example_Documentation_Checklist_for_Students_and_Practice_Educators.pdf', 'application/pdf', 'STEP_4_IDENTIFICATION_OF_OCCUPATIONAL_ISSUES_Example_Documentation_Checklist_for_Students_and_Practice_Educators.pdf', 220180, '', '', '', 1, 1365126335, 1, 1365126538, ' '),
(158, 1, 'Example Identification of Occupational Issues Form Based on a Newspaper Article, The Post (2009)', 3, '/home4/otaltcne/public_html/resources/STEP_4_IDENTIFICATION_OF_OCCUPATIONAL_ISSUES_Example_Identification_of_Occupational_Issues_Form_Based_on_a_Newspaper_Article,_The_Post,_2009.pdf', 'application/pdf', 'STEP_4_IDENTIFICATION_OF_OCCUPATIONAL_ISSUES_Example_Identification_of_Occupational_Issues_Form_Based_on_a_Newspaper_Article,_The_Post,_2009.pdf', 182641, '', '', '', 1, 1365126561, 1, 1365126609, ' '),
(159, 1, 'Newspaper Article, The Post (2009)', 3, '/home4/otaltcne/public_html/resources/STEP_4_IDENTIFICATION_OF_OCCUPATIONAL_ISSUES_Newspaper_Article,_The_Post,_2009.pdf', 'application/pdf', 'STEP_4_IDENTIFICATION_OF_OCCUPATIONAL_ISSUES_Newspaper_Article,_The_Post,_2009.pdf', 206449, '', '', '', 1, 1365129012, 1, 1365129043, ' '),
(160, 1, 'Example Documentation Checklist for Students and Practice Educators', 3, '/home4/otaltcne/public_html/resources/STEP_5_GOAL_SETTING_Example_Documentation_Checklist_for_Students_and_Practice_Educators.pdf', 'application/pdf', 'STEP_5_GOAL_SETTING_Example_Documentation_Checklist_for_Students_and_Practice_Educators.pdf', 220221, '', '', '', 1, 1365129083, 1, 1365129342, ' '),
(161, 1, 'Example Checklist Safety During Equipment Prescription', 3, '/home4/otaltcne/public_html/resources/STEP_6_INTERVENTION_Example_Checklist_Safety_During_Equipment_Prescription.pdf', 'application/pdf', 'STEP_6_INTERVENTION_Example_Checklist_Safety_During_Equipment_Prescription.pdf', 339436, '', '', '', 1, 1365129401, 1, 1365129437, ' '),
(162, 1, 'Example Documentation Checklist for Students and Practice Educators', 3, '/home4/otaltcne/public_html/resources/STEP_6_INTERVENTION_Example_Documentation_Checklist_for_Students_and_Practice_Educators.pdf', 'application/pdf', 'STEP_6_INTERVENTION_Example_Documentation_Checklist_for_Students_and_Practice_Educators.pdf', 220232, '', '', '', 1, 1365129452, 1, 1365129483, ' '),
(163, 1, 'Example Service Visit Form', 3, '/home4/otaltcne/public_html/resources/STEP_6_INTERVENTION_Example_Service_Visit_Form.pdf', 'application/pdf', 'STEP_6_INTERVENTION_Example_Service_Visit_Form.pdf', 213586, '', '', '', 1, 1365129498, 1, 1365129516, ' '),
(164, 1, 'Example Supervision Template (alt)', 3, '/home4/otaltcne/public_html/resources/STEP_6_INTERVENTION_Example_Supervision_Template_(alt).pdf', 'application/pdf', 'STEP_6_INTERVENTION_Example_Supervision_Template_(alt).pdf', 122542, '', '', '', 1, 1365129541, 1, 1365129561, ' '),
(165, 1, 'Example Supervision Template', 3, '/home4/otaltcne/public_html/resources/STEP_6_INTERVENTION_Example_Supervision_Template.pdf', 'application/pdf', 'STEP_6_INTERVENTION_Example_Supervision_Template.pdf', 155894, '', '', '', 1, 1365129583, 1, 1365129603, ' '),
(169, 1, 'Example Checklist - Evaluating Intervention Checklist', 3, '/home4/otaltcne/public_html/resources/STEP_7_Example_Checklist_Evaluating_Intervention_Checklist.pdf', 'application/pdf', 'STEP_7_Example_Checklist_Evaluating_Intervention_Checklist.pdf', 245432, '', '', '', 1, 1365130289, 1, 1365130317, ' '),
(171, 1, 'Example Practice Placement Initial Contact Prompt Sheet for Students Practice Eds', 3, '/home4/otaltcne/public_html/resources/BAP_Example_Practice_Placement_Initial_Contact_Prompt_Sheet_for_Students__Practice_Eds.pdf', 'application/pdf', 'BAP_Example_Practice_Placement_Initial_Contact_Prompt_Sheet_for_Students__Practice_Eds.pdf', 228567, '', '', '', 1, 1365132223, 1, 1365132271, ' '),
(185, 1, 'Example Reflection 1 EMERGING LEVEL', 3, '/home4/otaltcne/public_html/resources/Example_Reflection_1_EMERGING_LEVEL.pdf', 'application/pdf', 'Example_Reflection_1_EMERGING_LEVEL.pdf', 212552, '', '', '', 1, 1365133957, 1, 1365133994, ' '),
(190, 1, 'Occupational Therapy Indicators for Referral', 3, '/home4/otaltcne/public_html/resources/STEP_1_REQUEST_FOR_SERVICE_Occupational_Threapy_Indicators_for_Referral.pdf', 'application/pdf', 'STEP_1_REQUEST_FOR_SERVICE_Occupational_Threapy_Indicators_for_Referral.pdf', 108636, '', '', '', 1, 1365135342, 1, 1365135414, ' '),
(191, 1, 'Practice Reasoning Audio - Community Request for Service Form', 3, '/home4/otaltcne/public_html/resources/STEP_1_REQUEST_FOR_SERVICE_Example_Community_Request_for_Service_Referral_Form_.pdf', 'application/pdf', 'STEP_1_REQUEST_FOR_SERVICE_Example_Community_Request_for_Service_Referral_Form_.pdf', 148634, '', '', '', 1, 1365135440, 1, 1366354452, ' '),
(192, 1, 'Example Outpatient Request for Service Referral Form', 3, '/home4/otaltcne/public_html/resources/STEP_1_REQUEST_FOR_SERVICE_Example_Outpatient_Request_for_Service_Referral_Form.pdf', 'application/pdf', 'STEP_1_REQUEST_FOR_SERVICE_Example_Outpatient_Request_for_Service_Referral_Form.pdf', 134154, '', '', '', 1, 1365135523, 1, 1365135560, ' '),
(193, 1, 'Example Standard Intake Protocol', 3, '/home4/otaltcne/public_html/resources/STEP_1_REQUEST_FOR_SERVICE_Example_Standard_Intake_Protocol.pdf', 'application/pdf', 'STEP_1_REQUEST_FOR_SERVICE_Example_Standard_Intake_Protocol.pdf', 7956, '', '', '', 1, 1365135614, 1, 1365135639, ' '),
(194, 1, 'School Questionnaire Form', 3, '/home4/otaltcne/public_html/resources/STEP_1_REQUEST_FOR_SERVICE_Example_Paediatric_Setting_Video_School_Questionnaire_Form.pdf', 'application/pdf', 'STEP_1_REQUEST_FOR_SERVICE_Example_Paediatric_Setting_Video_School_Questionnaire_Form.pdf', 96881, '', '', '', 1, 1365135684, 1, 1365135849, ' '),
(200, 1, 'Practice Reasoning Audio - Outpatient Request for Service Form', 3, '/home4/otaltcne/public_html/resources/STEP_1_REQUEST_FOR_SERVICE_Example_Outpatient_Request_for_Service_Request_Form_for_Student_Practice_Reasoning_Audio.pdf', 'application/pdf', 'STEP_1_REQUEST_FOR_SERVICE_Example_Outpatient_Request_for_Service_Request_Form_for_Student_Practice_Reasoning_Audio.pdf', 137492, '', '', '', 1, 1366354187, 1, 1366354497, ' '),
(201, 1, 'Practice Reasoning Audio - Standard Intake Protocol', 3, '/home4/otaltcne/public_html/resources/STEP_1_REQUEST_FOR_SERVICE_Example_Standard_Intake_Protocol_for_Student_Practice_Reasoning_Audio.pdf', 'application/pdf', 'STEP_1_REQUEST_FOR_SERVICE_Example_Standard_Intake_Protocol_for_Student_Practice_Reasoning_Audio.pdf', 65976, '', '', '', 1, 1366354743, 1, 1366354856, ' '),
(202, 1, '2. EMERGING Practice Reasoning With De-identified Referral Forms - Part 2', 2, '/home4/otaltcne/public_html/audio/2_Part_2_EMERGING_Practice_Reasoning_With_De-identified_Referral_Forms_Step_1_Request_for_Service.mp3', 'audio/mpeg', '2_Part_2_EMERGING_Practice_Reasoning_With_De-identified_Referral_Forms_Step_1_Request_for_Service.mp3', 1027052, '', '', '', 1, 1366358893, 1, 1366448146, ' ');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
