-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2018 at 07:32 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jueaa`
--

-- --------------------------------------------------------

--
-- Table structure for table `sb_page_list`
--

CREATE TABLE `sb_page_list` (
  `page_id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `url` varchar(250) CHARACTER SET latin1 DEFAULT NULL COMMENT 'folder/pageName',
  `category_id` int(11) DEFAULT NULL,
  `category_layer` int(3) DEFAULT '1' COMMENT '1=layer 1;2=layer 2;3=layer 3',
  `category_layer_details` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `maskingName` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `sp_type` int(11) NOT NULL DEFAULT '0' COMMENT '0=default,1=information'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `sb_page_list`
--

INSERT INTO `sb_page_list` (`page_id`, `name`, `url`, `category_id`, `category_layer`, `category_layer_details`, `status`, `maskingName`, `ordering`, `sp_type`) VALUES
(4, 'Activities Summary: 2004~2017', 'includes/social_responsibility', 7, 1, NULL, 1, 'social_responsibility', 0, 0),
(5, 'Home', '', 0, 0, NULL, 1, 'Home', 0, 0),
(6, 'Organization', '', 0, 0, NULL, 1, 'Organization', 0, 0),
(7, 'Activities', '', 0, 0, NULL, 1, 'Activities', 0, 0),
(8, 'My Account', 'includes/my_account', 5, 1, NULL, 1, 'my_account', 0, 0),
(9, 'Photo Gallery', 'includes/galary', 7, 2, NULL, 1, 'galary', 0, 0),
(10, 'JUEAA Scholarship', 'includes/jueaa_scholarship', 5, 1, NULL, 1, 'jueaa_scholarship', 0, 0),
(11, 'Download', 'includes/download', 5, 2, NULL, 1, 'download', 0, 0),
(12, 'Contact Us', 'includes/contact_us', 6, 3, NULL, 1, 'contact_us', 0, 0),
(21, 'JUEAA Advisory Board', 'includes/jueaa_information', 6, 2, '', 1, 'JUEAA_Advisory_Board', 1, 1),
(24, 'JUEAA Executive Committee', 'includes/jueaa_information', 10, 2, '', 1, 'JUEAA_Executive_Committee', 2, 1),
(32, 'JUEAA Stipend Recipients', 'includes/jueaa_information', 8, 3, '', 1, 'JUEAA_Stipend_Recipients', 0, 1),
(34, 'JUEAA Life Members\' List', 'includes/jueaa_members_list_allValues', 8, 3, '', 1, 'JUEAA_Life_Members_List', 0, 1),
(35, 'Student', 'includes/students', 11, 1, NULL, 1, '_students', 0, 0),
(36, 'Teacher', 'includes/teacher', 12, 1, NULL, 1, '_teacher', 0, 0),
(37, 'sherpur', 'inlcudes/sherpur', 21, 1, NULL, 1, '_sherpur', 0, 0),
(38, 'dhaka', 'includes/dhaka', 4, 1, NULL, 1, '_dhaka', 0, 0),
(39, 'bangladesh', 'includes/bangladesh', 9, 1, NULL, 1, '_bangladesh', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sb_page_list`
--
ALTER TABLE `sb_page_list`
  ADD PRIMARY KEY (`page_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sb_page_list`
--
ALTER TABLE `sb_page_list`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
