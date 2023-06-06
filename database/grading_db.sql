-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 07:11 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grading_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `advisers`
--

CREATE TABLE `advisers` (
  `adviser_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `grade_id` varchar(5) NOT NULL,
  `section` varchar(20) NOT NULL,
  `program` varchar(5) NOT NULL,
  `school_year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `ATT_ID` int(30) NOT NULL,
  `STUDENT_ID` int(30) NOT NULL,
  `SYI_ID` int(30) NOT NULL,
  `MONTH` varchar(15) NOT NULL,
  `DAYS_OF_CLASSES` int(5) NOT NULL,
  `DAYS_PRESENT` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`ATT_ID`, `STUDENT_ID`, `SYI_ID`, `MONTH`, `DAYS_OF_CLASSES`, `DAYS_PRESENT`) VALUES
(25, 2, 3, 'June', 0, 0),
(26, 2, 3, 'July', 0, 0),
(27, 2, 3, 'August', 0, 0),
(28, 2, 3, 'September', 0, 0),
(29, 2, 3, 'October', 0, 0),
(30, 2, 3, 'November', 0, 0),
(31, 2, 3, 'December', 0, 0),
(32, 2, 3, 'January', 0, 0),
(33, 2, 3, 'February', 0, 0),
(34, 2, 3, 'March', 0, 0),
(35, 2, 3, 'April', 0, 0),
(36, 2, 3, 'May', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `awss`
--

CREATE TABLE `awss` (
  `id` int(200) NOT NULL,
  `ff` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_b`
--

CREATE TABLE `data_b` (
  `db_id` int(10) NOT NULL,
  `db_name` varchar(50) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_base`
--

CREATE TABLE `data_base` (
  `db_id` int(10) NOT NULL,
  `dn_name` varchar(50) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `general_setting`
--

CREATE TABLE `general_setting` (
  `id` int(12) NOT NULL,
  `website_name` varchar(400) NOT NULL,
  `website_address` varchar(500) NOT NULL,
  `website_phone1` varchar(30) NOT NULL,
  `website_phone2` varchar(30) NOT NULL,
  `website_email1` varchar(200) NOT NULL,
  `website_email2` varchar(200) NOT NULL,
  `website_start` varchar(25) NOT NULL,
  `web_about` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_setting`
--

INSERT INTO `general_setting` (`id`, `website_name`, `website_address`, `website_phone1`, `website_phone2`, `website_email1`, `website_email2`, `website_start`, `web_about`) VALUES
(1, '', 'OTI COLLEGE OF EDUCATION', '', '', '', '', '', ''),
(2, '', 'OTI COLLEGE OF EDUCATION', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `grade_id` int(10) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`grade_id`, `grade`, `status`) VALUES
(1, '7', ''),
(2, '8', ''),
(3, '9', ''),
(4, '10', ''),
(5, 'Level 11', ''),
(6, 'Level 200', '');

-- --------------------------------------------------------

--
-- Table structure for table `grades_per_subject`
--

CREATE TABLE `grades_per_subject` (
  `ID` int(11) NOT NULL,
  `STUDENT_ID` int(30) NOT NULL,
  `YEAR` int(5) NOT NULL,
  `SUBJECT` varchar(20) NOT NULL,
  `PERIODIC_GRADING` int(5) NOT NULL,
  `GRADES` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `history_log`
--

CREATE TABLE `history_log` (
  `log_id` int(10) NOT NULL,
  `transaction` varchar(200) NOT NULL,
  `user_id` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_log`
--

INSERT INTO `history_log` (`log_id`, `transaction`, `user_id`, `date_added`) VALUES
(36, 'logged out', 1, '2021-02-26 09:34:59'),
(37, 'logged in', 1, '2021-02-26 09:38:19'),
(38, 'logged in', 1, '2021-02-26 11:57:05'),
(39, 'added Science in the subject list', 1, '2021-02-26 11:57:42'),
(40, 'printed Angel Jude Suarez permanent record', 1, '2021-02-26 11:58:23'),
(41, 'added record of m m', 0, '2021-02-26 12:00:26'),
(42, 'printed Angel Jude Suarez permanent record', 1, '2021-02-26 12:00:46'),
(43, 'logged out', 1, '2021-02-26 12:05:14'),
(44, 'logged in', 1, '2023-04-10 12:41:38'),
(45, 'printed Promoted Student List of 2019-2020', 1, '2023-04-10 12:42:05'),
(46, 'added Raeem Abu as new student', 1, '2023-04-10 12:52:28'),
(47, 'updated 3 in the student list', 1, '2023-04-10 12:52:58'),
(48, 'logged out', 1, '2023-04-10 12:53:47'),
(49, 'logged in', 2, '2023-04-10 12:54:01'),
(50, 'printed Promoted Student List of 2019-2020', 2, '2023-04-10 12:54:27'),
(51, 'added ICT in the subject list', 2, '2023-04-10 12:57:25'),
(52, 'updated 4 in the subject list', 2, '2023-04-10 12:57:36'),
(53, 'logged out', 2, '2023-04-10 12:57:52'),
(54, 'logged in', 1, '2023-04-10 13:10:21'),
(55, 'updated 4 in the subject list', 1, '2023-04-10 13:16:09'),
(56, 'added RME in the subject list', 1, '2023-04-10 13:16:45'),
(57, 'updated 2 in the curriculum list', 0, '2023-04-10 13:19:10'),
(58, 'updated 1 in the curriculum list', 0, '2023-04-10 13:19:14'),
(59, 'updated 1 in the curriculum list', 0, '2023-04-10 13:19:15'),
(60, 'added 2023-2024 in the school year list', 1, '2023-04-10 13:23:33'),
(61, 'updated 2023-2024 as the current school year ', 1, '2023-04-10 13:23:42'),
(62, 'printed Promoted Student List of 2019-2020', 1, '2023-04-10 13:24:27'),
(63, 'added Rahim Abukar as new student', 1, '2023-04-10 13:26:27'),
(64, 'logged out', 1, '2023-04-10 14:03:32'),
(65, 'logged in', 1, '2023-04-10 14:09:18'),
(66, 'logged out', 1, '2023-04-10 14:19:00'),
(67, 'logged in', 2, '2023-04-10 14:19:10'),
(68, 'logged out', 2, '2023-04-10 14:53:28'),
(69, 'logged in', 1, '2023-04-10 14:53:52'),
(70, 'logged in', 1, '2023-04-10 14:57:17'),
(71, 'printed Angel Jude Suarez permanent record', 1, '2023-04-10 15:21:06'),
(72, 'logged out', 1, '2023-04-10 15:50:07'),
(73, 'logged in', 1, '2023-04-10 16:37:12'),
(74, 'logged out', 1, '2023-04-10 16:40:29'),
(75, 'logged in', 2, '2023-04-10 16:40:43'),
(76, 'logged out', 2, '2023-04-10 16:55:43'),
(77, 'logged in', 1, '2023-04-10 16:56:03'),
(78, 'updated 2019-2020 as the current school year ', 1, '2023-04-10 17:24:17'),
(79, 'updated 2023-2024 as the current school year ', 1, '2023-04-10 17:24:25'),
(80, 'logged out', 1, '2023-04-10 17:27:39'),
(81, 'logged in', 1, '2023-04-11 16:31:16'),
(82, 'logged in', 1, '2023-04-12 09:10:52'),
(83, 'logged in', 1, '2023-04-12 09:43:53'),
(84, 'added klutsey henry as new student', 1, '2023-04-12 09:46:34'),
(85, 'logged in', 1, '2023-04-13 12:37:06'),
(86, 'logged in', 1, '2023-04-14 08:00:00'),
(87, 'logged out', 1, '2023-04-14 08:01:31'),
(88, 'logged in', 2, '2023-04-14 08:01:42'),
(89, 'printed Promoted Student List of 2019-2020', 2, '2023-04-14 08:14:53'),
(90, 'printed Angel Jude Suarez permanent record', 2, '2023-04-14 08:15:24'),
(91, 'printed Rahim Abukar permanent record', 2, '2023-04-14 08:16:04'),
(92, 'printed Rahim Abukar permanent record', 2, '2023-04-14 08:18:28'),
(93, 'printed Raheem Abu permanent record', 2, '2023-04-14 08:18:36'),
(94, 'printed Angel Jude Suarez permanent record', 2, '2023-04-14 08:19:02'),
(95, 'updated 3 in the student list', 2, '2023-04-14 08:49:18'),
(96, 'logged out', 2, '2023-04-14 08:52:55'),
(97, 'logged in', 1, '2023-04-14 08:53:10'),
(98, 'updated 3 in the curriculum list', 0, '2023-04-14 09:46:18'),
(99, 'printed klutsey henry permanent record', 1, '2023-04-14 09:57:05'),
(100, 'printed klutsey henry permanent record', 1, '2023-04-14 10:00:02'),
(101, 'printed klutsey henry permanent record', 1, '2023-04-14 10:01:17'),
(102, 'printed klutsey henry permanent record', 1, '2023-04-14 10:03:03'),
(103, 'printed Angel Jude Suarez permanent record', 1, '2023-04-14 10:03:44'),
(104, 'printed Angel Jude Suarez permanent record', 1, '2023-04-14 10:06:52'),
(105, 'printed Angel Jude Suarez permanent record', 1, '2023-04-14 10:07:30'),
(106, 'added Level 11 in the grades list', 1, '2023-04-14 10:13:48'),
(107, 'added Level 200 in the grades list', 1, '2023-04-14 10:14:11'),
(108, 'printed Promoted Student List of 2019-2020', 1, '2023-04-14 10:58:04'),
(109, 'logged in', 1, '2023-04-14 11:00:59'),
(110, 'logged out', 1, '2023-04-14 11:03:47'),
(111, 'logged in', 2, '2023-04-14 11:04:00'),
(112, 'logged in', 2, '2023-04-14 11:17:10'),
(113, 'logged out', 2, '2023-04-14 11:27:24'),
(114, 'logged in', 1, '2023-04-14 11:27:34'),
(115, 'logged out', 1, '2023-04-14 11:50:50'),
(116, 'logged in', 1, '2023-04-14 11:51:04'),
(117, 'logged out', 1, '2023-04-14 11:51:13'),
(118, 'logged in', 2, '2023-04-14 11:51:27'),
(119, 'logged in', 2, '2023-04-14 11:54:24'),
(120, 'logged out', 2, '2023-04-14 12:08:00'),
(121, 'logged in', 1, '2023-04-14 12:08:15'),
(122, 'logged out', 1, '2023-04-14 12:09:37'),
(123, 'logged in', 1, '2023-04-14 12:09:48'),
(124, 'logged out', 1, '2023-04-14 12:09:59'),
(125, 'logged in', 2, '2023-04-14 12:10:14'),
(126, 'logged out', 2, '2023-04-14 12:43:47'),
(127, 'logged in', 1, '2023-04-14 12:43:58'),
(128, 'logged out', 1, '2023-04-14 17:56:00'),
(129, 'logged in', 2, '2023-04-14 17:56:16'),
(130, 'logged out', 2, '2023-04-14 17:59:33'),
(131, 'logged in', 1, '2023-04-14 18:00:01'),
(132, 'logged in', 1, '2023-04-14 19:17:19'),
(133, 'logged out', 1, '2023-04-14 20:00:24'),
(134, 'logged in', 1, '2023-04-14 20:32:41'),
(135, 'logged out', 1, '2023-04-14 20:36:59'),
(136, 'logged in', 2, '2023-04-14 20:37:15'),
(137, 'printed klutsey henry permanent record', 2, '2023-04-14 20:40:32'),
(138, 'logged out', 2, '2023-04-14 20:51:05'),
(139, 'logged in', 1, '2023-04-14 20:51:20'),
(140, 'logged out', 1, '2023-04-14 21:04:31'),
(141, 'logged in', 2, '2023-04-14 21:04:54'),
(142, 'logged out', 2, '2023-04-14 22:00:30'),
(143, 'logged in', 1, '2023-04-14 22:00:42'),
(144, 'updated 3 in the subject list', 1, '2023-04-14 22:07:33'),
(145, 'updated 1 in the subject list', 1, '2023-04-14 22:35:55'),
(146, 'updated 4 in the subject list', 1, '2023-04-14 22:36:06'),
(147, 'updated 3 in the subject list', 1, '2023-04-14 22:41:13'),
(148, 'updated 3 in the curriculum list', 0, '2023-04-14 22:41:36'),
(149, 'updated 3 in the curriculum list', 0, '2023-04-14 22:41:38'),
(150, 'updated 3 in the curriculum list', 0, '2023-04-14 22:41:39'),
(151, 'updated 1 in the curriculum list', 0, '2023-04-14 22:41:40'),
(152, 'updated 2 in the curriculum list', 0, '2023-04-14 22:41:41'),
(153, 'updated 3 in the student list', 1, '2023-04-14 23:10:44'),
(154, 'printed klutsey henry permanent record', 1, '2023-04-14 23:36:30'),
(155, 'printed Promoted Student List of 2019-2020', 1, '2023-04-14 23:37:23'),
(156, 'logged out', 1, '2023-04-14 23:40:56'),
(157, 'logged in', 1, '2023-04-14 23:41:18'),
(158, 'updated 2023-2024 as the current school year ', 1, '2023-04-14 23:41:39'),
(159, 'added   as new student', 0, '2023-04-15 20:13:20'),
(160, 'added   as new student', 0, '2023-04-15 21:38:57'),
(161, 'logged out', 1, '2023-04-15 22:52:50'),
(162, 'logged in', 1, '2023-04-15 22:53:28'),
(163, 'logged out', 1, '2023-04-15 22:55:23'),
(164, 'logged in', 1, '2023-04-15 23:05:57'),
(165, 'logged out', 1, '2023-04-15 23:06:56'),
(166, 'logged in', 1, '2023-04-15 23:51:51'),
(167, 'logged out', 1, '2023-04-15 23:53:05'),
(168, 'logged in', 1, '2023-04-16 00:00:41'),
(169, 'logged out', 1, '2023-04-16 00:11:19'),
(170, 'logged in', 12, '2023-04-16 00:11:30'),
(171, 'logged out', 12, '2023-04-16 00:37:24'),
(172, 'logged in', 1, '2023-04-16 00:37:38'),
(173, 'logged out', 1, '2023-04-16 04:56:54'),
(174, 'logged in', 12, '2023-04-16 04:57:32'),
(175, 'logged out', 12, '2023-04-16 04:59:21'),
(176, 'logged in', 1, '2023-04-16 04:59:34'),
(177, 'logged out', 1, '2023-04-16 05:25:49'),
(178, 'logged in', 12, '2023-04-16 05:26:01'),
(179, 'logged out', 12, '2023-04-16 06:38:17'),
(180, 'logged in', 1, '2023-04-16 06:38:32'),
(181, 'added Raheem Abu as new student', 1, '2023-04-16 14:12:12'),
(182, 'added Raeem Admin as new student', 1, '2023-04-16 14:14:09'),
(183, 'added Rahim Abu as new student', 1, '2023-04-16 14:15:39'),
(184, 'added Raheem Abu as new student', 1, '2023-04-16 14:16:41'),
(185, 'added Raheem Abu as new student', 1, '2023-04-16 14:20:18'),
(186, 'added Raheem Abu as new student', 1, '2023-04-16 14:47:05'),
(187, 'added Raheem Abu as new student', 1, '2023-04-16 14:50:32'),
(188, 'logged out', 1, '2023-04-16 17:36:56'),
(189, 'logged in', 2, '2023-04-16 17:37:13'),
(190, 'logged in', 1, '2023-04-17 09:54:43'),
(191, 'updated 12 in the student list', 1, '2023-04-17 09:56:55'),
(192, 'updated 12 in the student list', 1, '2023-04-17 12:53:58'),
(193, 'added rah Admin as new student', 1, '2023-04-17 13:31:10'),
(194, 'logged in', 1, '2023-04-17 13:35:01'),
(195, 'added Raheem Abukar as new student', 1, '2023-04-17 13:36:28'),
(196, 'logged out', 1, '2023-04-19 08:35:20'),
(197, 'logged in', 1, '2023-04-19 08:37:02'),
(198, 'logged out', 1, '2023-04-20 07:40:06'),
(199, 'logged in', 1, '2023-04-20 08:25:38'),
(200, 'logged out', 1, '2023-04-20 09:25:52'),
(201, 'logged in', 1, '2023-04-20 12:07:45'),
(202, 'logged in', 1, '2023-04-21 16:00:10'),
(203, 'logged out', 1, '2023-04-21 16:48:36'),
(204, 'logged in', 2, '2023-04-21 16:48:51'),
(205, 'logged out', 2, '2023-04-21 16:49:41'),
(206, 'logged in', 1, '2023-04-21 16:49:54'),
(207, 'updated 13 in the student list', 1, '2023-04-21 16:50:28'),
(208, 'updated 5 in the subject list', 1, '2023-04-21 16:51:12'),
(209, 'updated 5 in the subject list', 1, '2023-04-21 16:51:35'),
(210, 'updated 5 in the subject list', 1, '2023-04-21 16:51:48'),
(211, 'updated 5 in the subject list', 1, '2023-04-21 16:52:00'),
(212, 'logged in', 1, '2023-04-21 18:13:07'),
(213, 'logged in', 1, '2023-05-07 16:36:46'),
(214, 'logged in', 1, '2023-05-12 04:33:46'),
(215, 'logged in', 1, '2023-05-14 11:22:33'),
(216, 'logged in', 1, '2023-05-18 17:01:49'),
(217, 'logged out', 1, '2023-05-18 17:30:29'),
(218, 'logged in', 2, '2023-05-18 17:30:43'),
(219, 'logged out', 2, '2023-05-18 17:31:28'),
(220, 'logged in', 1, '2023-05-18 17:31:39'),
(221, 'logged out', 1, '2023-05-18 17:32:56'),
(222, 'logged in', 2, '2023-05-18 17:33:06'),
(223, 'logged in', 1, '2023-05-19 06:02:24'),
(224, 'logged out', 1, '2023-05-19 06:03:56'),
(225, 'logged in', 1, '2023-05-19 06:04:09'),
(226, 'logged in', 2, '2023-05-20 14:22:17'),
(227, 'logged out', 2, '2023-05-20 14:27:33'),
(228, 'logged in', 1, '2023-05-20 14:27:49'),
(229, 'printed Raheem Abu permanent record', 1, '2023-05-20 14:29:53'),
(230, 'printed rah Admin permanent record', 1, '2023-05-20 14:31:18'),
(231, 'logged out', 1, '2023-05-20 14:32:17'),
(232, 'logged in', 2, '2023-05-20 14:32:20'),
(233, 'logged out', 2, '2023-05-20 14:40:34'),
(234, 'logged in', 1, '2023-05-20 14:40:47'),
(235, 'logged in', 2, '2023-05-28 10:12:29'),
(236, 'logged out', 2, '2023-05-28 21:30:31'),
(237, 'logged in', 2, '2023-05-28 21:30:35'),
(238, 'logged out', 2, '2023-05-28 21:30:40'),
(239, 'logged in', 2, '2023-05-30 14:43:59'),
(240, 'logged out', 2, '2023-06-01 10:42:27'),
(241, 'logged in', 1, '2023-06-01 10:42:48'),
(242, 'logged out', 1, '2023-06-01 10:49:36'),
(243, 'logged in', 2, '2023-06-01 10:49:38'),
(244, 'logged out', 2, '2023-06-01 22:25:03'),
(245, 'logged in', 2, '2023-06-01 22:25:06'),
(246, 'logged out', 2, '2023-06-01 22:25:15'),
(247, 'logged in', 1, '2023-06-01 22:25:28'),
(248, 'logged out', 1, '2023-06-01 22:31:14'),
(249, 'logged in', 1, '2023-06-01 22:31:27'),
(250, 'logged out', 1, '2023-06-01 22:35:40'),
(251, 'logged in', 1, '2023-06-01 22:35:53'),
(252, 'logged out', 1, '2023-06-01 22:39:47'),
(253, 'logged in', 2, '2023-06-01 22:39:49'),
(254, 'logged out', 2, '2023-06-01 22:41:09'),
(255, 'logged in', 2, '2023-06-01 22:42:50'),
(256, 'logged out', 2, '2023-06-01 23:26:57'),
(257, 'logged in', 2, '2023-06-01 23:27:03'),
(258, 'logged in', 2, '2023-06-04 13:57:28'),
(259, 'logged out', 2, '2023-06-04 14:23:13'),
(260, 'logged in', 1, '2023-06-04 14:23:26'),
(261, 'logged out', 1, '2023-06-04 14:25:42'),
(262, 'logged in', 2, '2023-06-04 14:25:47'),
(263, 'logged in', 2, '2023-06-04 14:28:36'),
(264, 'updated 2 in the subject list', 2, '2023-06-04 14:38:15'),
(265, 'logged out', 2, '2023-06-04 14:47:23'),
(266, 'logged in', 1, '2023-06-04 14:47:28'),
(267, 'added Our World Our Future in the subject list', 1, '2023-06-04 14:48:17'),
(268, 'logged out', 1, '2023-06-04 14:48:26'),
(269, 'logged in', 2, '2023-06-04 14:48:31'),
(270, 'logged out', 2, '2023-06-04 14:53:41'),
(271, 'logged in', 1, '2023-06-04 14:53:49'),
(272, 'logged out', 1, '2023-06-04 14:56:09'),
(273, 'logged in', 2, '2023-06-04 14:56:14'),
(274, 'logged out', 2, '2023-06-04 15:32:39'),
(275, 'logged in', 1, '2023-06-04 15:32:49'),
(276, 'printed Raheem Abu permanent record', 1, '2023-06-04 15:37:07'),
(277, 'printed Raheem Abu permanent record', 1, '2023-06-04 15:37:38'),
(278, 'printed Raheem Abukar permanent record', 1, '2023-06-04 15:37:44'),
(279, 'printed rah Admin permanent record', 1, '2023-06-04 15:37:48'),
(280, 'printed Retained Student List of 2019-2020', 1, '2023-06-04 15:38:03'),
(281, 'logged out', 1, '2023-06-04 15:39:23'),
(282, 'logged in', 14, '2023-06-04 15:39:35'),
(283, 'logged out', 14, '2023-06-04 15:43:19'),
(284, 'logged in', 1, '2023-06-04 15:43:25'),
(285, 'logged out', 1, '2023-06-04 15:45:28'),
(286, 'logged in', 14, '2023-06-04 15:45:32'),
(287, 'logged out', 14, '2023-06-04 15:45:53'),
(288, 'logged in', 1, '2023-06-04 15:45:57'),
(289, 'logged out', 1, '2023-06-04 17:45:26'),
(290, 'logged in', 14, '2023-06-04 17:45:33'),
(291, 'logged out', 14, '2023-06-05 17:55:45'),
(292, 'logged in', 1, '2023-06-05 17:55:50'),
(293, 'added SOCIAL in the subject list', 1, '2023-06-05 17:58:01'),
(294, 'printed Retained Student List of 2019-2020', 1, '2023-06-05 18:00:27'),
(295, 'logged out', 1, '2023-06-05 18:01:52'),
(296, 'logged in', 15, '2023-06-05 18:02:15'),
(297, 'logged out', 15, '2023-06-05 18:05:34'),
(298, 'logged in', 14, '2023-06-05 18:05:40'),
(299, 'logged in', 1, '2023-06-05 18:48:15'),
(300, 'logged in', 1, '2023-06-05 21:16:39'),
(301, 'logged out', 1, '2023-06-05 21:16:45'),
(302, 'logged in', 15, '2023-06-05 21:17:21'),
(303, 'logged in', 1, '2023-06-06 03:56:38'),
(304, 'logged in', 14, '2023-06-06 16:16:11'),
(305, 'logged out', 14, '2023-06-06 16:26:42'),
(306, 'logged in', 14, '2023-06-06 16:26:55'),
(307, 'logged out', 14, '2023-06-06 16:29:39'),
(308, 'logged in', 14, '2023-06-06 16:31:20'),
(309, 'logged out', 14, '2023-06-06 16:35:05'),
(310, 'logged in', 14, '2023-06-06 16:35:15'),
(311, 'logged out', 14, '2023-06-06 16:35:34'),
(312, 'logged out', 0, '2023-06-06 16:40:04'),
(313, 'logged out', 0, '2023-06-06 16:45:37'),
(314, 'logged in', 14, '2023-06-06 16:47:41'),
(315, 'logged in', 14, '2023-06-06 16:48:49'),
(316, 'logged out', 14, '2023-06-06 16:50:06'),
(317, 'logged in', 14, '2023-06-06 16:50:08'),
(318, 'logged out', 14, '2023-06-06 16:51:23'),
(319, 'logged in', 14, '2023-06-06 16:51:25'),
(320, 'logged out', 14, '2023-06-06 16:52:02'),
(321, 'logged in', 1, '2023-06-06 16:52:07'),
(322, 'logged out', 1, '2023-06-06 16:52:21'),
(323, 'logged in', 14, '2023-06-06 16:52:25'),
(324, 'logged out', 14, '2023-06-06 16:57:53'),
(325, 'logged in', 14, '2023-06-06 16:57:55'),
(326, 'logged in', 14, '2023-06-06 17:05:31'),
(327, 'logged out', 14, '2023-06-06 17:07:01'),
(328, 'logged in', 14, '2023-06-06 17:09:19'),
(329, 'logged out', 14, '2023-06-06 17:09:46'),
(330, 'logged in', 1, '2023-06-06 17:09:50'),
(331, 'logged out', 1, '2023-06-06 17:10:31'),
(332, 'logged in', 14, '2023-06-06 17:10:35');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `NOTICE_ID` int(250) NOT NULL,
  `NOTICE` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `PROGRAM_ID` int(20) NOT NULL,
  `PROGRAM` varchar(10) NOT NULL,
  `DESCRIPTION` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`PROGRAM_ID`, `PROGRAM`, `DESCRIPTION`) VALUES
(1, 'Regular', 'Regular'),
(2, 'Sandwich', 'During Vacation'),
(3, 'Distance', 'Weekends'),
(4, 'ONLINE', 'VIA ZOOM');

-- --------------------------------------------------------

--
-- Table structure for table `promotion_candidates`
--

CREATE TABLE `promotion_candidates` (
  `id` int(10) NOT NULL,
  `STUDENT_ID` int(10) NOT NULL,
  `SY` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promotion_candidates`
--

INSERT INTO `promotion_candidates` (`id`, `STUDENT_ID`, `SY`) VALUES
(2, 2, '2019-2020'),
(3, 3, '2019-2020'),
(4, 5, '2023-2024');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `SY_ID` int(10) NOT NULL,
  `school_year` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`SY_ID`, `school_year`, `status`) VALUES
(1, '2016-2017', 'No'),
(2, '2017-2018', 'No'),
(3, '2018-2019', 'No'),
(4, '2019-2020', 'No'),
(5, '2017-2018', 'No'),
(6, '2023-2024', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `STUDENT_ID` int(50) NOT NULL,
  `LRN_NO` int(12) NOT NULL,
  `LASTNAME` varchar(30) NOT NULL,
  `FIRSTNAME` varchar(30) NOT NULL,
  `MIDDLENAME` varchar(30) NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `DATE_OF_BIRTH` date NOT NULL,
  `STREET` varchar(30) NOT NULL,
  `PROVINCE` varchar(30) NOT NULL,
  `TOWN` varchar(30) NOT NULL,
  `BRGY` varchar(30) NOT NULL,
  `PARENT_GUARDIAN` varchar(50) NOT NULL,
  `P_ADDRESS` varchar(60) NOT NULL,
  `INT_COURSE_COMP` varchar(50) NOT NULL,
  `SCHOOL_YEAR` varchar(10) NOT NULL,
  `GEN_AVE` int(6) NOT NULL,
  `TOTAL_NO_OF_YEAR` int(5) NOT NULL,
  `PROGRAM` varchar(20) NOT NULL,
  `BIRTH_PLACE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `STUDENT_ID` int(50) NOT NULL,
  `LRN_NO` varchar(15) NOT NULL,
  `LASTNAME` varchar(30) NOT NULL,
  `FIRSTNAME` varchar(30) NOT NULL,
  `MIDDLENAME` varchar(30) NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `DATE_OF_BIRTH` date NOT NULL,
  `ADDRESS` varchar(20) NOT NULL,
  `BIRTH_PLACE` varchar(50) NOT NULL,
  `PARENT_GUARDIAN` varchar(50) NOT NULL,
  `P_ADDRESS` varchar(60) NOT NULL,
  `INT_COURSE_COMP` varchar(50) NOT NULL,
  `SCHOOL_YEAR` varchar(10) NOT NULL,
  `GEN_AVE` varchar(6) NOT NULL,
  `TOTAL_NO_OF_YEARS` varchar(5) NOT NULL,
  `PROGRAM` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`STUDENT_ID`, `LRN_NO`, `LASTNAME`, `FIRSTNAME`, `MIDDLENAME`, `GENDER`, `DATE_OF_BIRTH`, `ADDRESS`, `BIRTH_PLACE`, `PARENT_GUARDIAN`, `P_ADDRESS`, `INT_COURSE_COMP`, `SCHOOL_YEAR`, `GEN_AVE`, `TOTAL_NO_OF_YEARS`, `PROGRAM`) VALUES
(12, '11112', 'Abu', 'Raheem', 'Bakr', 'MALE', '2023-04-18', 'babato', 'Yendi', 'Biniyam Bichati', 'Catholic', 'R/C JHS', '2018-2019', '90', '3', '3'),
(13, '11113', 'Abu', 'Raheem', 'Bakr', 'MALE', '2023-04-11', 'babato', 'Yendi', 'biniyam Bichati', 'Catholic', 'R/C JHS', '2018-2019', '90', '3', '2'),
(14, '11116', 'Admin', 'rah', 'Bakr', 'FEMALE', '2023-04-19', 'babato', 'Yendi', 'biniyam Bichati', 'Catholic', 'R/C JHS', '2019-2020', '90', '4', '1'),
(15, '11115', 'Abukar', 'Raheem', 'Bakr', 'FEMALE', '2023-03-26', 'babato', 'Saboba', 'biniyam Bichati', 'Catholic', 'R/C Primary', '2018-2019', '98', '5', '1');

-- --------------------------------------------------------

--
-- Table structure for table `student_int_info`
--

CREATE TABLE `student_int_info` (
  `ID` int(30) NOT NULL,
  `STUDENT_ID` varchar(30) NOT NULL,
  `INT_COURSE_COMP` varchar(50) NOT NULL,
  `SCHOOL_YEAR_START` year(4) NOT NULL,
  `SCHOOL_YEAR_ENDS` year(4) NOT NULL,
  `GEN_AVE` int(5) NOT NULL,
  `TOTAL_NO_YEARS` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_year_info`
--

CREATE TABLE `student_year_info` (
  `SYI_ID` int(11) NOT NULL,
  `STUDENT_ID` int(30) NOT NULL,
  `SCHOOL` varchar(100) NOT NULL,
  `YEAR` varchar(15) NOT NULL,
  `SECTION` varchar(10) NOT NULL,
  `TOTAL_NO_OF_YEAR` int(5) NOT NULL,
  `SCHOOL_YEAR` varchar(10) NOT NULL,
  `ADVANCE_UNIT` varchar(10) NOT NULL,
  `LACK_UNIT` varchar(10) NOT NULL,
  `ADVISER` varchar(40) NOT NULL,
  `GEN_AVE` varchar(10) NOT NULL,
  `RANK` varchar(10) NOT NULL,
  `TO_BE_CLASSIFIED` varchar(10) NOT NULL,
  `TDAYS_OF_CLASSES` int(5) NOT NULL,
  `TDAYS_PRESENT` int(5) NOT NULL,
  `ACTION` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_year_info`
--

INSERT INTO `student_year_info` (`SYI_ID`, `STUDENT_ID`, `SCHOOL`, `YEAR`, `SECTION`, `TOTAL_NO_OF_YEAR`, `SCHOOL_YEAR`, `ADVANCE_UNIT`, `LACK_UNIT`, `ADVISER`, `GEN_AVE`, `RANK`, `TO_BE_CLASSIFIED`, `TDAYS_OF_CLASSES`, `TDAYS_PRESENT`, `ACTION`) VALUES
(3, 2, 'School', '1', '1', 7, '2019-2020', '', '', '', '90.1666666', '', '', 0, 0, 'Promoted');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `SUBJECT_ID` int(11) NOT NULL,
  `SUBJECT` varchar(50) NOT NULL,
  `FOR` varchar(10) NOT NULL,
  `DESCRIPTION` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`SUBJECT_ID`, `SUBJECT`, `FOR`, `DESCRIPTION`) VALUES
(1, 'English', 'Regular', 'English'),
(2, 'Math', 'All', 'Maths'),
(3, 'Science', 'Distance', 'dsaf'),
(4, 'ICT', 'Sandwich', 'Computer basics'),
(5, 'Religious and M Education', 'All', 'Religious'),
(6, 'Our World Our Future', 'Regular', 'History and Culture of our people'),
(7, 'SOCIAL', 'Regular', 'ONE YEAR COURSE');

-- --------------------------------------------------------

--
-- Table structure for table `total_grades_subjects`
--

CREATE TABLE `total_grades_subjects` (
  `TGS_ID` int(30) NOT NULL,
  `STUDENT_ID` int(30) NOT NULL,
  `SYI_ID` int(30) NOT NULL,
  `SUBJECT` int(20) NOT NULL,
  `1ST_GRADING` varchar(10) NOT NULL,
  `2ND_GRADING` varchar(10) NOT NULL,
  `3RD_GRADING` varchar(10) NOT NULL,
  `4TH_GRADING` varchar(10) NOT NULL,
  `UNITS` varchar(10) NOT NULL,
  `FINAL_GRADES` varchar(10) NOT NULL,
  `PASSED_FAILED` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `total_grades_subjects`
--

INSERT INTO `total_grades_subjects` (`TGS_ID`, `STUDENT_ID`, `SYI_ID`, `SUBJECT`, `1ST_GRADING`, `2ND_GRADING`, `3RD_GRADING`, `4TH_GRADING`, `UNITS`, `FINAL_GRADES`, `PASSED_FAILED`) VALUES
(5, 2, 3, 2, '90', '95', '96', '97', '', '94.50', 'PASSED'),
(6, 2, 3, 1, '85', '86', '87', '88', '', '86.50', 'PASSED'),
(7, 2, 3, 3, '88', '88', '90', '92', '', '89.50', 'PASSED');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `USER_ID` int(11) NOT NULL,
  `LASTNAME` varchar(30) NOT NULL,
  `FIRSTNAME` varchar(30) NOT NULL,
  `USER` varchar(10) NOT NULL,
  `PASSWORD` text NOT NULL,
  `USER_TYPE` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`USER_ID`, `LASTNAME`, `FIRSTNAME`, `USER`, `PASSWORD`, `USER_TYPE`) VALUES
(1, 'Oti', 'Oti Antwi', 'admin', '0192023a7bbd73250516f069df18b500', 'ADMINISTRATOR'),
(2, 'Raheem', 'Abu Bakr ', 'student', '81dc9bdb52d04dc20036dbd8313ed055', 'STAFF'),
(12, 'Abu', 'Raheem', 'raheem', '4ddf7fd96ffcf749d2f1ee6efb64cc88', 'STAFF'),
(14, 'Adam', 'Barikisu', 'bilkis', '81dc9bdb52d04dc20036dbd8313ed055', 'STAFF'),
(15, 'OWUSU', 'EDDIE', 'EDDIE', '81dc9bdb52d04dc20036dbd8313ed055', 'STAFF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advisers`
--
ALTER TABLE `advisers`
  ADD PRIMARY KEY (`adviser_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`ATT_ID`);

--
-- Indexes for table `data_b`
--
ALTER TABLE `data_b`
  ADD PRIMARY KEY (`db_id`);

--
-- Indexes for table `data_base`
--
ALTER TABLE `data_base`
  ADD PRIMARY KEY (`db_id`);

--
-- Indexes for table `general_setting`
--
ALTER TABLE `general_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `grades_per_subject`
--
ALTER TABLE `grades_per_subject`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `history_log`
--
ALTER TABLE `history_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`NOTICE_ID`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`PROGRAM_ID`);

--
-- Indexes for table `promotion_candidates`
--
ALTER TABLE `promotion_candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`SY_ID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`STUDENT_ID`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`STUDENT_ID`);

--
-- Indexes for table `student_int_info`
--
ALTER TABLE `student_int_info`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_year_info`
--
ALTER TABLE `student_year_info`
  ADD PRIMARY KEY (`SYI_ID`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`SUBJECT_ID`);

--
-- Indexes for table `total_grades_subjects`
--
ALTER TABLE `total_grades_subjects`
  ADD PRIMARY KEY (`TGS_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advisers`
--
ALTER TABLE `advisers`
  MODIFY `adviser_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `ATT_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `data_b`
--
ALTER TABLE `data_b`
  MODIFY `db_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_base`
--
ALTER TABLE `data_base`
  MODIFY `db_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_setting`
--
ALTER TABLE `general_setting`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `grade_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `grades_per_subject`
--
ALTER TABLE `grades_per_subject`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `NOTICE_ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `PROGRAM_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `promotion_candidates`
--
ALTER TABLE `promotion_candidates`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `SY_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `STUDENT_ID` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `STUDENT_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `student_int_info`
--
ALTER TABLE `student_int_info`
  MODIFY `ID` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_year_info`
--
ALTER TABLE `student_year_info`
  MODIFY `SYI_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `SUBJECT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `total_grades_subjects`
--
ALTER TABLE `total_grades_subjects`
  MODIFY `TGS_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
