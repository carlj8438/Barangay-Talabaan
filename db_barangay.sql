-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2023 at 10:58 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_barangay`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblactivity`
--

CREATE TABLE `tblactivity` (
  `id` int(11) NOT NULL,
  `dateofactivity` date NOT NULL,
  `activity` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblactivityphoto`
--

CREATE TABLE `tblactivityphoto` (
  `id` int(11) NOT NULL,
  `activityid` int(11) NOT NULL,
  `filename` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblactivityphoto`
--

INSERT INTO `tblactivityphoto` (`id`, `activityid`, `filename`) VALUES
(18, 7, '1485255503893ChibiMaker.jpg'),
(19, 7, '1485255504014dental.jpg'),
(20, 7, '1485255504108images.jpg'),
(21, 8, '1485255608251dfxfxfxdfxfxfxdf.png'),
(22, 8, '1485255608315easy-nail-art-designs-for-beginners-youtube.jpg'),
(23, 8, '1485255608404Easy-Winter-Nail-Art-Tutorials-2013-2014-For-Beginners-Learners-10.jpg'),
(24, 8, '1485255608513motherboard.png'),
(25, 9, '148525575293111041019_1012143402147589_9043399646875097729_n.jpg'),
(26, 9, '1485255753089bg.PNG'),
(32, 10, '148526764905211041019_1012143402147589_9043399646875097729_n.jpg'),
(33, 10, '1485267649364bg.PNG'),
(34, 10, '1485267649563motherboard.png'),
(35, 10, '14855301764078196186971_2237f161bd_b.jpg'),
(36, 10, '1485530481111bicycle-1280x720.jpg'),
(38, 11, '1485530620716user2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblblotter`
--

CREATE TABLE `tblblotter` (
  `id` int(11) NOT NULL,
  `yearRecorded` varchar(4) NOT NULL,
  `dateRecorded` date NOT NULL,
  `complainant` text NOT NULL,
  `cage` int(11) NOT NULL,
  `caddress` text NOT NULL,
  `ccontact` int(11) NOT NULL,
  `personToComplain` text NOT NULL,
  `page` int(11) NOT NULL,
  `paddress` text NOT NULL,
  `pcontact` int(11) NOT NULL,
  `complaint` text NOT NULL,
  `actionTaken` varchar(50) NOT NULL,
  `sStatus` varchar(50) NOT NULL,
  `locationOfIncidence` text NOT NULL,
  `recordedby` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblblotter`
--

INSERT INTO `tblblotter` (`id`, `yearRecorded`, `dateRecorded`, `complainant`, `cage`, `caddress`, `ccontact`, `personToComplain`, `page`, `paddress`, `pcontact`, `complaint`, `actionTaken`, `sStatus`, `locationOfIncidence`, `recordedby`) VALUES
(3, '2016', '2016-10-15', 'sda, as das', 2132, 'asda', 213, '11', 3213, 'dasda', 2123, '213asd', '1st Option', 'Solved', 'asdsa', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tblclearance`
--

CREATE TABLE `tblclearance` (
  `id` int(11) NOT NULL,
  `clearanceNo` int(11) NOT NULL,
  `residentid` int(11) NOT NULL,
  `findings` text NOT NULL,
  `purpose` text NOT NULL,
  `orNo` int(11) NOT NULL,
  `samount` int(11) NOT NULL,
  `dateRecorded` date NOT NULL,
  `recordedBy` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblhousehold`
--

CREATE TABLE `tblhousehold` (
  `id` int(11) NOT NULL,
  `householdno` int(11) NOT NULL,
  `zone` varchar(11) NOT NULL,
  `totalhouseholdmembers` int(2) NOT NULL,
  `headoffamily` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblhousehold`
--

INSERT INTO `tblhousehold` (`id`, `householdno`, `zone`, `totalhouseholdmembers`, `headoffamily`) VALUES
(4, 1, '', 0, ''),
(5, 2, '', 0, ''),
(6, 3, '', 0, ''),
(7, 4, '', 0, ''),
(9, 5, '', 0, ''),
(10, 6, '', 0, ''),
(11, 7, '', 0, ''),
(12, 8, '', 0, ''),
(13, 9, '', 0, ''),
(14, 10, '', 0, ''),
(15, 11, '', 0, ''),
(16, 12, '', 0, ''),
(17, 13, '', 0, ''),
(18, 14, '', 0, ''),
(19, 15, '', 0, ''),
(20, 16, '', 0, ''),
(21, 17, '', 0, ''),
(22, 18, '', 0, ''),
(23, 19, '', 0, ''),
(24, 20, '', 0, ''),
(25, 21, '', 0, ''),
(26, 22, '', 0, ''),
(27, 23, '', 0, ''),
(28, 24, '', 0, ''),
(29, 25, '', 0, ''),
(30, 26, '', 0, ''),
(31, 27, '', 0, ''),
(32, 28, '', 0, ''),
(33, 29, '', 0, ''),
(34, 30, '', 0, ''),
(35, 31, '', 0, ''),
(36, 32, '', 0, ''),
(37, 33, '', 0, ''),
(38, 34, '', 0, ''),
(39, 35, '', 0, ''),
(40, 36, '', 0, ''),
(41, 37, '', 0, ''),
(42, 38, '', 0, ''),
(43, 39, '', 0, ''),
(44, 40, '', 0, ''),
(45, 41, '', 0, ''),
(46, 42, '', 0, ''),
(47, 43, '', 0, ''),
(48, 44, '', 0, ''),
(49, 45, '', 0, ''),
(50, 46, '', 0, ''),
(51, 47, '', 0, ''),
(52, 48, '', 0, ''),
(53, 49, '', 0, ''),
(54, 50, '', 0, ''),
(55, 51, '', 0, ''),
(56, 52, '', 0, ''),
(57, 53, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbllogs`
--

CREATE TABLE `tbllogs` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `logdate` datetime NOT NULL,
  `action` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbllogs`
--

INSERT INTO `tbllogs` (`id`, `user`, `logdate`, `action`) VALUES
(33, 'Administrator', '2023-02-02 22:54:58', 'Added Resident named Abilis, Cocoy Dayda'),
(34, 'Administrator', '2023-02-02 22:55:13', 'Added Household Number 1'),
(35, 'Administrator', '2023-02-02 22:58:12', 'Added Resident named Abilis, Cocoy Dayda'),
(36, 'Administrator', '2023-02-02 22:59:55', 'Added Resident named Abbilis, leni Dayda'),
(37, 'Administrator', '2023-02-02 23:00:18', 'Update Resident named Abbilis, leni Dayda'),
(38, 'Administrator', '2023-02-02 23:01:53', 'Added Resident named Abilis, May Dayda'),
(39, 'Administrator', '2023-02-02 23:02:34', 'Update Resident named Abilis, May Dayda'),
(40, 'Administrator', '2023-02-02 23:05:03', 'Added Resident named Abilis, MacMac Dayda'),
(41, 'Administrator', '2023-02-02 23:07:21', 'Added Resident named Alfaro, Alfredo Dimayacyac'),
(42, 'Administrator', '2023-02-02 23:08:54', 'Added Resident named Allfaro, Janice Dimayacyac'),
(43, 'Administrator', '2023-02-02 23:10:22', 'Added Resident named Alfaro, Marie Dimayacyac'),
(44, 'Administrator', '2023-02-02 23:10:41', 'Update Resident named Allfaro, Janice Dimayacyac'),
(45, 'Administrator', '2023-02-02 23:10:50', 'Added Household Number 2'),
(46, 'Administrator', '2023-02-02 23:11:44', 'Update Resident named Alfaro, Marie Dimayacyac'),
(47, 'Administrator', '2023-02-02 23:13:45', 'Added Resident named Alfaro, Mary Dimayacyac'),
(48, 'Administrator', '2023-02-02 23:14:00', 'Update Resident named Alfaro, Mary Dimayacyac'),
(49, 'Administrator', '2023-02-02 23:15:21', 'Added Resident named Alfaro, Mark Dimayacyac'),
(50, 'Administrator', '2023-02-02 23:16:40', 'Update Resident named Alfaro, Mark Dimayacyac'),
(51, 'Administrator', '2023-02-02 23:19:05', 'Added Resident named Ambito, Pipito Manalo'),
(52, 'Administrator', '2023-02-02 23:20:48', 'Added Resident named Anoba, Alberto Ramirez'),
(53, 'Administrator', '2023-02-02 23:21:53', 'Added Resident named Anoba, Rizalina Ramirez'),
(54, 'Administrator', '2023-02-02 23:23:17', 'Added Resident named Anoba, Rizamay Ramirez'),
(55, 'Administrator', '2023-02-02 23:24:12', 'Added Resident named Anoba, Rey Ramirez'),
(56, 'Administrator', '2023-02-02 23:24:27', 'Update Resident named Anoba, Rizalina Ramirez'),
(57, 'Administrator', '2023-02-02 23:24:38', 'Update Resident named Anoba, Rey Ramirez'),
(58, 'Administrator', '2023-02-02 23:25:39', 'Added Resident named Anoba, Raymart Ramirez'),
(59, 'Administrator', '2023-02-02 23:25:52', 'Added Household Number 3'),
(60, 'Administrator', '2023-02-02 23:25:56', 'Added Household Number 4'),
(61, 'Administrator', '2023-02-02 23:28:06', 'Added Resident named Ansus, Christian Tadeja'),
(62, 'Administrator', '2023-02-02 23:29:32', 'Added Resident named Ansus, Mary anne Tadeja'),
(63, 'Administrator', '2023-02-02 23:30:55', 'Added Resident named Ansus, Mary Tadeja'),
(64, 'Administrator', '2023-02-02 23:33:09', 'Added Resident named Astrologo, Mark Mauhay'),
(65, 'Administrator', '2023-02-02 23:35:03', 'Added Resident named Astrologo, Chinchin Mauhay'),
(66, 'Administrator', '2023-02-02 23:35:21', 'Added Household Number 6'),
(67, 'Administrator', '2023-02-02 23:36:40', 'Added Household Number 5'),
(68, 'Administrator', '2023-02-02 23:36:46', 'Added Household Number 6'),
(69, 'Administrator', '2023-02-02 23:39:05', 'Added Resident named Astrologo, Mark Ian Mauhay'),
(70, 'Administrator', '2023-02-02 23:41:18', 'Added Resident named Astrologo, Jerald Mauhay'),
(71, 'Administrator', '2023-02-02 23:42:25', 'Added Resident named Astrologo, Janna Mauhay'),
(72, 'Administrator', '2023-02-02 23:45:30', 'Update Resident named Astrologo, Janna Mauhay'),
(73, 'Administrator', '2023-02-02 23:49:50', 'Added Resident named Artillirra, Mark Gerald Ramirez'),
(74, 'Administrator', '2023-02-02 23:51:20', 'Added Resident named Artillira, Maybelyn Ramirez'),
(75, 'Administrator', '2023-02-02 23:51:47', 'Update Resident named Artillirra, Mark Gerald Ramirez'),
(76, 'Administrator', '2023-02-02 23:52:43', 'Added Resident named Artillira, Maybbelyn Ramirez'),
(77, 'Administrator', '2023-02-02 23:54:24', 'Added Resident named Artillira, Mery Anne Ramirez'),
(78, 'Administrator', '2023-02-02 23:55:26', 'Added Resident named Artillira, Mark Ramirez'),
(79, 'Administrator', '2023-02-02 23:55:42', 'Added Household Number 7'),
(80, 'Administrator', '2023-02-02 23:56:14', 'Update Resident named Artillira, Mery Anne Ramirez'),
(81, 'Administrator', '2023-02-02 23:57:24', 'Added Resident named Artillira, Prince Ramirez'),
(82, 'Administrator', '2023-02-02 23:58:35', 'Added Resident named Artillira, Shella Ramirez'),
(83, 'Administrator', '2023-02-03 00:00:10', 'Added Resident named Batayan , Inday Turog'),
(84, 'Administrator', '2023-02-03 00:01:24', 'Added Resident named Batayan, Ruben Turog'),
(85, 'Administrator', '2023-02-03 00:02:41', 'Added Resident named Batayan, Macar Turog'),
(86, 'Administrator', '2023-02-03 00:04:04', 'Added Resident named Batayan, Marita Ramirez'),
(87, 'Administrator', '2023-02-03 00:05:35', 'Added Resident named Batayan , Sherryl Ramirez'),
(88, 'Administrator', '2023-02-03 00:06:35', 'Added Resident named Batayan, Maria Ramirez'),
(89, 'Administrator', '2023-02-03 00:08:19', 'Added Resident named Baylosis, Ruben Aldea'),
(90, 'Administrator', '2023-02-03 00:11:19', 'Added Resident named Baylosis, Andrea Aldea'),
(91, 'Administrator', '2023-02-03 00:12:33', 'Added Resident named Baylosis, Cindy Aldea'),
(92, 'Administrator', '2023-02-03 00:13:37', 'Added Resident named Baylosis, Christopper Aldea'),
(93, 'Administrator', '2023-02-03 00:14:44', 'Added Resident named Baylosis, Mark Benjo Aldea'),
(94, 'Administrator', '2023-02-03 00:16:19', 'Added Resident named Bersamina, Clarita Gusman'),
(95, 'Administrator', '2023-02-03 00:17:37', 'Added Resident named Bersamina, Jhomar Gusman'),
(96, 'Administrator', '2023-02-03 00:18:01', 'Update Resident named Bersamina, Clarita Gusman'),
(97, 'Administrator', '2023-02-03 00:19:10', 'Added Resident named Bersamina, Jomarie Gusman'),
(98, 'Administrator', '2023-02-03 00:20:10', 'Added Resident named Bersamina, Kier Gusman'),
(99, 'Administrator', '2023-02-03 00:20:20', 'Added Household Number 8'),
(100, 'Administrator', '2023-02-03 00:20:25', 'Added Household Number 9'),
(101, 'Administrator', '2023-02-03 00:20:30', 'Added Household Number 10'),
(102, 'Administrator', '2023-02-03 00:22:05', 'Update Resident named Batayan , Sherryl Ramirez'),
(103, 'Administrator', '2023-02-03 00:23:11', 'Added Resident named Bulado , Garry Esparas'),
(104, 'Administrator', '2023-02-03 00:24:46', 'Added Resident named Cabato, Andrew Manalo'),
(105, 'Administrator', '2023-02-03 00:25:57', 'Added Resident named Cabato, Diane Manalo'),
(106, 'Administrator', '2023-02-03 00:27:06', 'Added Resident named Cabato, Micly Manalo'),
(107, 'Administrator', '2023-02-03 00:27:15', 'Added Household Number 11'),
(108, 'Administrator', '2023-02-03 00:27:19', 'Added Household Number 12'),
(109, 'Administrator', '2023-02-03 00:29:33', 'Added Resident named Callejo, Darwin Tanglao'),
(110, 'Administrator', '2023-02-03 00:30:36', 'Added Resident named Callejo, Donna Tanglao'),
(111, 'Administrator', '2023-02-03 00:32:06', 'Added Resident named Callejo, Edelyn Tanglao'),
(112, 'Administrator', '2023-02-03 00:34:42', 'Added Resident named Callejo, Eden Tanglao'),
(113, 'Administrator', '2023-02-03 00:36:14', 'Added Resident named Calejo, Marvin Jay Andal'),
(114, 'Administrator', '2023-02-03 00:36:23', 'Update Resident named Calejo, Marvin Jay Andal'),
(115, 'Administrator', '2023-02-03 00:37:39', 'Added Resident named Callejo, Rebecca Andal'),
(116, 'Administrator', '2023-02-03 00:39:17', 'Added Resident named Callejo, Rachelle Andal'),
(117, 'Administrator', '2023-02-03 00:40:38', 'Added Resident named Callejo, Mary Anne Andal'),
(118, 'Administrator', '2023-02-03 00:41:35', 'Added Resident named Callejo, Marvin Andal'),
(119, 'Administrator', '2023-02-03 00:41:51', 'Added Household Number 13'),
(120, 'Administrator', '2023-02-03 00:41:57', 'Added Household Number 14'),
(121, 'Administrator', '2023-02-03 00:43:27', 'Added Resident named Calumpang, Jeric Timenia'),
(122, 'Administrator', '2023-02-03 00:44:41', 'Added Resident named Calumpang, Rachelle Timenia'),
(123, 'Administrator', '2023-02-03 00:46:02', 'Added Resident named Calumpang, Xia Timenia'),
(124, 'Administrator', '2023-02-03 00:47:29', 'Added Resident named Caneo, Dharell Serna'),
(125, 'Administrator', '2023-02-03 00:48:38', 'Added Resident named Caneo, May Serna'),
(126, 'Administrator', '2023-02-03 00:49:47', 'Added Resident named Caneo, Mark '),
(127, 'Administrator', '2023-02-03 00:51:01', 'Added Resident named Caneo, Sarah Mae Serna'),
(128, 'Administrator', '2023-02-03 00:51:19', 'Added Household Number 15'),
(129, 'Administrator', '2023-02-03 00:51:25', 'Added Household Number 16'),
(130, 'Administrator', '2023-02-03 06:23:10', 'Added Resident named Catama, Apolo Abilis'),
(131, 'Administrator', '2023-02-03 06:24:28', 'Added Resident named Catama, Reajoy Abilis'),
(132, 'Administrator', '2023-02-03 06:25:50', 'Added Resident named Catama, Abiegail Abilis'),
(133, 'Administrator', '2023-02-03 06:26:49', 'Added Resident named Catama, Mark Abilis'),
(134, 'Administrator', '2023-02-03 06:27:58', 'Added Resident named Catama, Reamarie Abilis'),
(135, 'Administrator', '2023-02-03 06:28:08', 'Added Household Number 17'),
(136, 'Administrator', '2023-02-03 06:30:05', 'Added Resident named Cortuna, Alvin Manalo'),
(137, 'Administrator', '2023-02-03 06:31:05', 'Added Resident named Cortuna, Angel Manalo'),
(138, 'Administrator', '2023-02-03 06:32:02', 'Added Resident named Cortuna, Jezebel Manalo'),
(139, 'Administrator', '2023-02-03 06:33:18', 'Added Resident named Cortuna, John Paul Manalo'),
(140, 'Administrator', '2023-02-03 06:33:28', 'Added Household Number 18'),
(141, 'Administrator', '2023-02-03 06:38:48', 'Added Resident named Cortuna, Kezel Manalo'),
(142, 'Administrator', '2023-02-03 06:39:41', 'Added Resident named Cortuna, Loren Manalo'),
(143, 'Administrator', '2023-02-03 06:40:46', 'Added Resident named Cortuna, Manuel Manalo'),
(144, 'Administrator', '2023-02-03 06:42:48', 'Added Resident named Crisostomo, Marivic Montalban'),
(145, 'Administrator', '2023-02-03 06:44:02', 'Added Resident named Croisostomo, Mark Montalban'),
(146, 'Administrator', '2023-02-03 06:44:56', 'Added Resident named Crisostomo, Marie MIciano'),
(147, 'Administrator', '2023-02-03 06:46:17', 'Added Resident named Crisostomo, Joy Miciano'),
(148, 'Administrator', '2023-02-03 06:47:21', 'Added Resident named Crisosotomo, Krisha Miciano'),
(149, 'Administrator', '2023-02-03 06:47:31', 'Added Household Number 19'),
(150, 'Administrator', '2023-02-03 06:49:10', 'Added Resident named Crisostomo, Jerald Tadeja'),
(151, 'Administrator', '2023-02-03 06:50:05', 'Added Resident named Crisostomo, Loraine Tadeja'),
(152, 'Administrator', '2023-02-03 06:51:28', 'Added Resident named Crisostomo, Loraine Joy Tadeja'),
(153, 'Administrator', '2023-02-03 06:52:31', 'Added Resident named Crisostomo, Marie Tadeja'),
(154, 'Administrator', '2023-02-03 06:52:47', 'Added Household Number 20'),
(155, 'Administrator', '2023-02-03 06:53:09', 'Update Resident named Crisostomo, Marie Tadeja'),
(156, 'Administrator', '2023-02-03 06:54:47', 'Added Resident named Crisostomo, Janice Lara'),
(157, 'Administrator', '2023-02-03 06:55:01', 'Added Household Number 21'),
(158, 'Administrator', '2023-02-03 06:56:27', 'Added Resident named Damasco, Mark Jay Santiago'),
(159, 'Administrator', '2023-02-03 06:57:23', 'Added Resident named Damasco, Marie Santiago'),
(160, 'Administrator', '2023-02-03 06:58:23', 'Added Resident named Damasco, Mary Joy Santiago'),
(161, 'Administrator', '2023-02-03 06:59:26', 'Added Resident named Damasco, Mark Santiago'),
(162, 'Administrator', '2023-02-03 07:00:14', 'Added Resident named Damasco, Cherry santiago'),
(163, 'Administrator', '2023-02-03 07:01:02', 'Added Resident named Damasco, Janice Santiago'),
(164, 'Administrator', '2023-02-03 07:01:58', 'Added Resident named Damasco, Biboy Santiago'),
(165, 'Administrator', '2023-02-03 07:02:06', 'Added Household Number 22'),
(166, 'Administrator', '2023-02-03 07:03:24', 'Added Resident named Dayda, Delfin Turog'),
(167, 'Administrator', '2023-02-03 07:04:45', 'Added Resident named dayda, Cristie Turog'),
(168, 'Administrator', '2023-02-03 07:06:05', 'Added Resident named dayda, Alfredo Turog'),
(169, 'Administrator', '2023-02-03 07:07:04', 'Added Resident named dayda, Zenita Turog'),
(170, 'Administrator', '2023-02-03 07:08:02', 'Added Resident named dayda, VIncent Turog'),
(171, 'Administrator', '2023-02-03 07:09:06', 'Added Resident named Dayda, Mary Turog'),
(172, 'Administrator', '2023-02-03 07:10:11', 'Added Resident named Dayda, Marie Turog'),
(173, 'Administrator', '2023-02-03 07:10:59', 'Added Resident named Dayda, May Turog'),
(174, 'Administrator', '2023-02-03 07:11:31', 'Added Household Number 23'),
(175, 'Administrator', '2023-02-03 07:15:24', 'Added Resident named Dela Cruz, Manuel reyes'),
(176, 'Administrator', '2023-02-03 07:17:02', 'Added Resident named Dela Cruz, Manilyn REYES'),
(177, 'Administrator', '2023-02-03 07:17:58', 'Added Resident named Dela Cruz, Christian Reyes'),
(178, 'Administrator', '2023-02-03 07:19:04', 'Added Resident named Dela Cruz, Jessa Reyes'),
(179, 'Administrator', '2023-02-03 07:20:27', 'Added Resident named Dela Cruz, Maymay Reyes'),
(180, 'Administrator', '2023-02-03 07:20:34', 'Added Household Number 24'),
(181, 'Administrator', '2023-02-03 07:22:13', 'Added Resident named Enkargado, Daniel Taroma'),
(182, 'Administrator', '2023-02-03 07:23:39', 'Added Resident named enkargado, Floredo Taroma'),
(183, 'Administrator', '2023-02-03 07:24:33', 'Added Resident named Enkargado, Christy Taroma'),
(184, 'Administrator', '2023-02-03 07:25:38', 'Added Resident named Enkrgado, Krisha Taroma'),
(185, 'Administrator', '2023-02-03 07:26:44', 'Added Resident named Enkargado, Wency Taroma'),
(186, 'Administrator', '2023-02-03 07:27:44', 'Added Resident named Enkargado, Jay Taroma'),
(187, 'Administrator', '2023-02-03 07:27:53', 'Added Household Number 25'),
(188, 'Administrator', '2023-02-03 07:39:08', 'Added Resident named Etang, Laurel Cortuna'),
(189, 'Administrator', '2023-02-03 07:40:27', 'Added Resident named Etang, Laurel Cortuna'),
(190, 'Administrator', '2023-02-03 07:41:26', 'Added Resident named Etang, Marie Cortuna'),
(191, 'Administrator', '2023-02-03 07:42:25', 'Added Resident named Etang, MarieJOy Cortuna'),
(192, 'Administrator', '2023-02-03 07:43:19', 'Added Resident named Etang, Chris Cortuna'),
(193, 'Administrator', '2023-02-03 07:44:28', 'Added Resident named ETANG, Mary Cortuna'),
(194, 'Administrator', '2023-02-03 07:44:36', 'Added Household Number 26'),
(195, 'Administrator', '2023-02-03 07:46:06', 'Added Resident named Famanilay, Harold chu'),
(196, 'Administrator', '2023-02-03 07:47:09', 'Added Resident named Famanilay, Meann chu'),
(197, 'Administrator', '2023-02-03 07:48:01', 'Added Resident named Famanilay, MacMac Chu'),
(198, 'Administrator', '2023-02-03 07:48:56', 'Added Resident named Famanilay, Lesley Chu'),
(199, 'Administrator', '2023-02-03 07:49:47', 'Added Resident named Famanilay,  Chu'),
(200, 'Administrator', '2023-02-03 07:49:56', 'Added Household Number 27'),
(201, 'Administrator', '2023-02-03 07:51:25', 'Added Resident named Fajardo, Rico Cuz'),
(202, 'Administrator', '2023-02-03 07:52:26', 'Added Resident named Fajardo, May Cuz'),
(203, 'Administrator', '2023-02-03 07:53:25', 'Added Resident named Fajardo, JUnior Cuz'),
(204, 'Administrator', '2023-02-03 07:54:19', 'Added Resident named Fajardo, MArk Cuz'),
(205, 'Administrator', '2023-02-03 07:55:28', 'Added Resident named Fajardo, Lia Cuz'),
(206, 'Administrator', '2023-02-03 07:55:35', 'Added Household Number 28'),
(207, 'Administrator', '2023-02-03 07:57:03', 'Added Resident named Girao, Florante Reyes'),
(208, 'Administrator', '2023-02-03 07:58:29', 'Added Resident named Girao, Geann Reyes'),
(209, 'Administrator', '2023-02-03 07:59:24', 'Added Resident named Girao, lia Marie Reyes'),
(210, 'Administrator', '2023-02-03 07:59:32', 'Added Household Number 29'),
(211, 'Administrator', '2023-02-03 08:01:23', 'Added Resident named Gatot, LEmuel Malupa'),
(212, 'Administrator', '2023-02-03 08:02:41', 'Added Resident named Gatot, Maricar Malupa'),
(213, 'Administrator', '2023-02-03 08:03:25', 'Added Resident named Gatot, Lyca Malupa'),
(214, 'Administrator', '2023-02-03 08:04:12', 'Added Resident named Gatot, Layanne Malupa'),
(215, 'Administrator', '2023-02-03 08:04:28', 'Added Household Number 30'),
(216, 'Administrator', '2023-02-03 08:05:36', 'Added Resident named Malupa, Christian Manalo'),
(217, 'Administrator', '2023-02-03 08:06:41', 'Added Resident named Malupa, Lesley Manalo'),
(218, 'Administrator', '2023-02-03 08:07:52', 'Added Resident named Malupa, Xian Manalo'),
(219, 'Administrator', '2023-02-03 08:09:15', 'Added Resident named Malupa, Maymay Manalo'),
(220, 'Administrator', '2023-02-03 08:10:14', 'Added Resident named malupa, Grace Manalo'),
(221, 'Administrator', '2023-02-03 08:11:18', 'Added Resident named Malupa, Grey Manalo'),
(222, 'Administrator', '2023-02-03 08:11:25', 'Added Household Number 31'),
(223, 'Administrator', '2023-02-06 04:18:04', 'Added Resident named evanglista, lorenzo pedines'),
(224, 'Administrator', '2023-02-06 04:19:11', 'Added Resident named evangilista, Eurica pidenis'),
(225, 'Administrator', '2023-02-06 04:20:08', 'Added Resident named Evangilista, Florencio pideners'),
(226, 'Administrator', '2023-02-06 04:21:04', 'Added Resident named evanglista, Lorenz pedines'),
(227, 'Administrator', '2023-02-06 04:21:49', 'Added Resident named Evangilista, Prince Harvey pidenis'),
(228, 'Administrator', '2023-02-06 04:22:33', 'Added Resident named evanglista, Susana pidenis'),
(229, 'Administrator', '2023-02-06 04:23:25', 'Added Resident named evanglista, Aerolln pidenis'),
(230, 'Administrator', '2023-02-06 04:24:35', 'Added Resident named Francisco, Jake Prado'),
(231, 'Administrator', '2023-02-06 04:25:24', 'Added Resident named Francisco, dona Prado'),
(232, 'Administrator', '2023-02-06 04:26:11', 'Added Resident named Francisco, Eron jay Prado'),
(233, 'Administrator', '2023-02-06 04:26:56', 'Added Resident named Francisco, Jenny Prado'),
(234, 'Administrator', '2023-02-06 04:27:47', 'Added Resident named Francisco, nicole Prado'),
(235, 'Administrator', '2023-02-06 04:28:35', 'Added Resident named Francisco, rolly Prado'),
(236, 'Administrator', '2023-02-06 04:29:36', 'Added Resident named galendes, nikko malate'),
(237, 'Administrator', '2023-02-06 04:30:38', 'Added Resident named galendes, trisha malate'),
(238, 'Administrator', '2023-02-06 04:31:40', 'Added Resident named galendes, clarisse malate'),
(239, 'Administrator', '2023-02-06 04:32:35', 'Added Resident named galendes, Eurica malate'),
(240, 'Administrator', '2023-02-06 04:33:30', 'Added Resident named galendes, mark malate'),
(241, 'Administrator', '2023-02-06 04:34:46', 'Added Resident named gatdula, norman tibus'),
(242, 'Administrator', '2023-02-06 04:35:39', 'Added Resident named gatdula, eunice tibus'),
(243, 'Administrator', '2023-02-06 04:36:24', 'Added Resident named gatdula, maryanne tibus'),
(244, 'Administrator', '2023-02-06 04:37:24', 'Added Resident named gatdula, leo tibus'),
(245, 'Administrator', '2023-02-06 04:38:21', 'Added Resident named gatdula, nolan tibus'),
(246, 'Administrator', '2023-02-06 04:38:31', 'Added Household Number 32'),
(247, 'Administrator', '2023-02-06 04:38:35', 'Added Household Number 33'),
(248, 'Administrator', '2023-02-06 04:38:39', 'Added Household Number 34'),
(249, 'Administrator', '2023-02-06 04:38:43', 'Added Household Number 35'),
(250, 'Administrator', '2023-02-06 04:40:01', 'Added Resident named Francisco, florencio malate'),
(251, 'Administrator', '2023-02-06 04:40:51', 'Added Resident named Francisco, Susana malate'),
(252, 'Administrator', '2023-02-06 04:41:44', 'Added Resident named Francisco, mark malate'),
(253, 'Administrator', '2023-02-06 04:42:22', 'Added Resident named Francisco, Lorenz malate'),
(254, 'Administrator', '2023-02-06 04:42:53', 'Added Resident named Francisco, Eurica malate'),
(255, 'Administrator', '2023-02-06 04:43:35', 'Added Resident named Francisco, joy malate'),
(256, 'Administrator', '2023-02-06 04:44:14', 'Added Household Number 36'),
(257, 'Administrator', '2023-02-06 04:45:29', 'Added Resident named gonzales,  christine'),
(258, 'Administrator', '2023-02-06 04:46:47', 'Added Resident named gonzales, mark cortuna'),
(259, 'Administrator', '2023-02-06 04:47:31', 'Added Resident named gonzales, lea marie malate'),
(260, 'Administrator', '2023-02-06 04:48:18', 'Added Resident named gonzales, jaymark malate'),
(261, 'Administrator', '2023-02-06 04:49:14', 'Added Resident named gonzales, baby malate'),
(262, 'Administrator', '2023-02-06 04:49:29', 'Added Household Number 37'),
(263, 'Administrator', '2023-02-06 04:51:00', 'Added Resident named manalo, ronaldo sanuton'),
(264, 'Administrator', '2023-02-06 04:51:54', 'Added Resident named manalo, alvin sanuton'),
(265, 'Administrator', '2023-02-06 04:52:57', 'Added Resident named manalo, melanie sanuton'),
(266, 'Administrator', '2023-02-06 04:53:41', 'Added Resident named manalo, janeth sanuton'),
(267, 'Administrator', '2023-02-06 04:54:37', 'Added Resident named manalo, mark sanuton'),
(268, 'Administrator', '2023-02-06 04:55:33', 'Added Resident named manalo, ivan sanuton'),
(269, 'Administrator', '2023-02-06 04:56:36', 'Added Resident named manalo, james bandiola'),
(270, 'Administrator', '2023-02-06 04:57:26', 'Added Resident named manalo, Susana gadiola'),
(271, 'Administrator', '2023-02-06 04:58:18', 'Added Resident named manalo, mayanne gadiola'),
(272, 'Administrator', '2023-02-06 04:59:12', 'Added Resident named marasigan, alvin de guia'),
(273, 'Administrator', '2023-02-06 05:00:09', 'Added Resident named marasigan, mary jane de guia'),
(274, 'Administrator', '2023-02-06 05:00:52', 'Added Resident named marasigan, christian de guia'),
(275, 'Administrator', '2023-02-06 05:01:41', 'Added Resident named marasigan, renz de guia'),
(276, 'Administrator', '2023-02-06 05:02:43', 'Added Resident named marcelo, orlan gomez'),
(277, 'Administrator', '2023-02-06 05:03:47', 'Added Resident named marcelo, elaine gomez'),
(278, 'Administrator', '2023-02-06 05:04:47', 'Added Resident named masangkay, alfredo las'),
(279, 'Administrator', '2023-02-06 05:05:43', 'Added Resident named masangkay, janed las'),
(280, 'Administrator', '2023-02-06 05:06:29', 'Added Resident named masangkay, Eurica las'),
(281, 'Administrator', '2023-02-06 05:07:15', 'Added Resident named masangkay, michael las'),
(282, 'Administrator', '2023-02-06 05:07:26', 'Added Household Number 38'),
(283, 'Administrator', '2023-02-06 05:07:31', 'Added Household Number 39'),
(284, 'Administrator', '2023-02-06 05:07:35', 'Added Household Number 40'),
(285, 'Administrator', '2023-02-06 05:07:39', 'Added Household Number 41'),
(286, 'Administrator', '2023-02-06 05:07:44', 'Added Household Number 42'),
(287, 'Administrator', '2023-02-06 05:07:47', 'Added Household Number 43'),
(288, 'Administrator', '2023-02-06 05:08:42', 'Added Resident named masangkay, orlando tapales'),
(289, 'Administrator', '2023-02-06 05:09:39', 'Added Resident named masangkay, lea marie tapales'),
(290, 'Administrator', '2023-02-06 05:10:34', 'Added Resident named masangkay, rafael tapales'),
(291, 'Administrator', '2023-02-06 05:11:19', 'Added Resident named masangkay, grace tapales'),
(292, 'Administrator', '2023-02-06 05:12:10', 'Added Resident named masangkay, ana may tapales'),
(293, 'Administrator', '2023-02-06 05:12:51', 'Added Resident named masangkay, lea marie tapales'),
(294, 'Administrator', '2023-02-06 05:13:49', 'Added Resident named mendoza, bobby malate'),
(295, 'Administrator', '2023-02-06 05:14:47', 'Added Resident named mendoza, ruth may malate'),
(296, 'Administrator', '2023-02-06 05:15:33', 'Added Resident named mendoza, mark malate'),
(297, 'Administrator', '2023-02-06 05:16:17', 'Added Resident named mendoza, grace malate'),
(298, 'Administrator', '2023-02-06 05:18:06', 'Added Resident named mercene, jesus basila'),
(299, 'Administrator', '2023-02-06 05:19:20', 'Added Resident named mercene, mark jay basila'),
(300, 'Administrator', '2023-02-06 05:20:17', 'Added Resident named mercene, eva basila'),
(301, 'Administrator', '2023-02-06 05:21:21', 'Added Resident named mercene, may basila'),
(302, 'Administrator', '2023-02-06 05:22:09', 'Added Resident named mercene, marie basila'),
(303, 'Administrator', '2023-02-06 05:22:58', 'Added Resident named mercene, grace basila'),
(304, 'Administrator', '2023-02-06 05:23:18', 'Added Household Number 44'),
(305, 'Administrator', '2023-02-06 05:23:23', 'Added Household Number 45'),
(306, 'Administrator', '2023-02-06 05:23:27', 'Added Household Number 46'),
(307, 'Administrator', '2023-02-06 05:24:38', 'Added Resident named morales, manuel tadeja'),
(308, 'Administrator', '2023-02-06 05:25:28', 'Added Resident named morales, chritine tadeja'),
(309, 'Administrator', '2023-02-06 05:26:18', 'Added Resident named morales, manny tadeja'),
(310, 'Administrator', '2023-02-06 05:27:19', 'Added Resident named morales, romnick tadeja'),
(311, 'Administrator', '2023-02-06 05:27:58', 'Added Resident named morales, kim tadeja'),
(312, 'Administrator', '2023-02-06 05:28:48', 'Added Resident named morales, mark tadeja'),
(313, 'Administrator', '2023-02-06 05:29:57', 'Added Resident named nimer, nicanor curtudio'),
(314, 'Administrator', '2023-02-06 05:30:52', 'Added Resident named nimer, jessica curtudio'),
(315, 'Administrator', '2023-02-06 05:31:35', 'Added Resident named nimer, alvin curtudio'),
(316, 'Administrator', '2023-02-06 05:32:23', 'Added Resident named nimer, ellis curtudio'),
(317, 'Administrator', '2023-02-06 05:33:19', 'Added Resident named nimer, ivan james curtudio'),
(318, 'Administrator', '2023-02-06 05:34:30', 'Added Resident named obrador, jay castillo'),
(319, 'Administrator', '2023-02-06 05:35:20', 'Added Resident named obrador, gemma castillo'),
(320, 'Administrator', '2023-02-06 05:36:53', 'Added Resident named obrador, jayjay castillo'),
(321, 'Administrator', '2023-02-06 05:37:44', 'Added Resident named obrador, kim castillo'),
(322, 'Administrator', '2023-02-06 05:38:39', 'Added Resident named obrador, yam castillo'),
(323, 'Administrator', '2023-02-06 05:40:06', 'Added Resident named pacipico, rafael tesaluna'),
(324, 'Administrator', '2023-02-06 05:41:25', 'Added Resident named pacipico, grace tesaluna'),
(325, 'Administrator', '2023-02-06 05:42:24', 'Added Resident named pacipico, lea marie tesaluna'),
(326, 'Administrator', '2023-02-06 05:43:14', 'Added Resident named pacipico, jian kim tesaluna'),
(327, 'Administrator', '2023-02-06 05:44:04', 'Added Resident named pacipico, mark tesaluna'),
(328, 'Administrator', '2023-02-06 05:44:49', 'Added Resident named pacipico, johnny tesaluna'),
(329, 'Administrator', '2023-02-06 05:45:30', 'Added Resident named pacipico, alvin tesaluna'),
(330, 'Administrator', '2023-02-06 05:46:38', 'Added Resident named pamanilay, agusto manalo'),
(331, 'Administrator', '2023-02-06 05:47:53', 'Added Resident named pamanilay, bernabi manol'),
(332, 'Administrator', '2023-02-06 05:48:47', 'Added Resident named pamanilay, alvin malate'),
(333, 'Administrator', '2023-02-06 05:49:43', 'Added Resident named pamanilay, grace malate'),
(334, 'Administrator', '2023-02-06 05:50:28', 'Added Resident named pamanilay, chris malate'),
(335, 'Administrator', '2023-02-06 05:50:43', 'Added Household Number 47'),
(336, 'Administrator', '2023-02-06 05:50:48', 'Added Household Number 48'),
(337, 'Administrator', '2023-02-06 05:50:52', 'Added Household Number 49'),
(338, 'Administrator', '2023-02-06 05:50:55', 'Added Household Number 50'),
(339, 'Administrator', '2023-02-06 05:53:21', 'Added Resident named ramos, marites tesaluna'),
(340, 'Administrator', '2023-02-06 05:54:13', 'Added Resident named ramos, alvin tesaluna'),
(341, 'Administrator', '2023-02-06 05:55:05', 'Added Resident named ramos, chritine tesaluna'),
(342, 'Administrator', '2023-02-06 05:55:28', 'Added Household Number 51'),
(343, 'Administrator', '2023-02-06 05:55:34', 'Added Household Number 52'),
(344, 'Administrator', '2023-02-06 05:55:45', 'Added Household Number 53');

-- --------------------------------------------------------

--
-- Table structure for table `tblofficial`
--

CREATE TABLE `tblofficial` (
  `id` int(11) NOT NULL,
  `sPosition` varchar(50) NOT NULL,
  `completeName` text NOT NULL,
  `pcontact` varchar(20) NOT NULL,
  `paddress` text NOT NULL,
  `termStart` date NOT NULL,
  `termEnd` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblofficial`
--

INSERT INTO `tblofficial` (`id`, `sPosition`, `completeName`, `pcontact`, `paddress`, `termStart`, `termEnd`, `status`) VALUES
(4, 'Captain', 'eliezer a. vacalares, jr.', '8978768761', 'gdfgdfgd', '2016-10-03', '2016-10-06', 'Ongoing Term'),
(5, 'Kagawad(Ordinance)', 'ramil d. pakino', '4234', 'sfdsa', '2016-10-31', '2016-11-17', 'Ongoing Term'),
(6, 'Kagawad(Public Safety)', 'chito t. epal', '234234', '45sdfdf', '2016-10-31', '2016-11-24', 'Ongoing Term'),
(7, 'Kagawad(Tourism)', 'debie v. pereyra', '67567', 'sdfgf543', '2016-11-13', '2016-12-01', 'Ongoing Term'),
(8, 'Kagawad(Budget & Finance)', 'milard t. muring', '35454', 'dfgfgxcg', '2016-11-06', '2016-11-30', 'Ongoing Term'),
(9, 'Kagawad(Agriculture)', 'jaime d. abella', '3453545', 'sfsfds', '2016-11-06', '2016-11-22', 'Ongoing Term'),
(10, 'Kagawad(Education)', 'eugene j. labo', '4245', 'vxcsaf', '2016-11-06', '2016-11-25', 'Ongoing Term'),
(11, 'Kagawad(Infrastracture)', 'lerma a. abesamis', '231', 'xcvs', '2016-10-31', '2016-11-28', 'Ongoing Term');

-- --------------------------------------------------------

--
-- Table structure for table `tblpermit`
--

CREATE TABLE `tblpermit` (
  `id` int(11) NOT NULL,
  `residentid` int(11) NOT NULL,
  `businessName` text NOT NULL,
  `businessAddress` text NOT NULL,
  `typeOfBusiness` varchar(50) NOT NULL,
  `orNo` int(11) NOT NULL,
  `samount` int(11) NOT NULL,
  `dateRecorded` date NOT NULL,
  `recordedBy` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpermit`
--

INSERT INTO `tblpermit` (`id`, `residentid`, `businessName`, `businessAddress`, `typeOfBusiness`, `orNo`, `samount`, `dateRecorded`, `recordedBy`, `status`) VALUES
(2, 11, 'test', 'test', 'Option 2', 213, 2132131, '2016-10-15', '', 'Disapproved');

-- --------------------------------------------------------

--
-- Table structure for table `tblresident`
--

CREATE TABLE `tblresident` (
  `id` int(11) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `bdate` varchar(20) NOT NULL,
  `bplace` text NOT NULL,
  `age` int(11) NOT NULL,
  `barangay` varchar(120) NOT NULL,
  `zone` varchar(15) NOT NULL,
  `totalhousehold` int(5) NOT NULL,
  `differentlyabledperson` varchar(100) NOT NULL,
  `relationtohead` varchar(50) NOT NULL,
  `maritalstatus` varchar(50) NOT NULL,
  `bloodtype` varchar(10) NOT NULL,
  `civilstatus` varchar(20) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `monthlyincome` int(12) NOT NULL,
  `householdnum` int(11) NOT NULL,
  `lengthofstay` int(11) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `skills` text NOT NULL,
  `igpitID` int(11) NOT NULL,
  `philhealthNo` int(12) NOT NULL,
  `highestEducationalAttainment` varchar(50) NOT NULL,
  `houseOwnershipStatus` varchar(50) NOT NULL,
  `landOwnershipStatus` varchar(20) NOT NULL,
  `dwellingtype` varchar(20) NOT NULL,
  `waterUsage` varchar(20) NOT NULL,
  `lightningFacilities` varchar(20) NOT NULL,
  `sanitaryToilet` varchar(20) NOT NULL,
  `formerAddress` text NOT NULL,
  `remarks` text NOT NULL,
  `image` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblresident`
--

INSERT INTO `tblresident` (`id`, `lname`, `fname`, `mname`, `bdate`, `bplace`, `age`, `barangay`, `zone`, `totalhousehold`, `differentlyabledperson`, `relationtohead`, `maritalstatus`, `bloodtype`, `civilstatus`, `occupation`, `monthlyincome`, `householdnum`, `lengthofstay`, `religion`, `nationality`, `gender`, `skills`, `igpitID`, `philhealthNo`, `highestEducationalAttainment`, `houseOwnershipStatus`, `landOwnershipStatus`, `dwellingtype`, `waterUsage`, `lightningFacilities`, `sanitaryToilet`, `formerAddress`, `remarks`, `image`, `username`, `password`) VALUES
(18, 'Abilis', 'Cocoy', 'Dayda', '1960-12-17', '', 62, '', 'Baranguit', 0, 'no', '', '', 'AB', 'Single', 'Senior', 0, 1, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'No schooling completed', '-Select-', '', '', '', '', '', '', '', 'default.png', '1', '1'),
(19, 'Abbilis', 'leni', 'Dayda', '1962-03-24', '', 60, '', 'Baranguit', 0, 'no', '', '', '', 'Single', 'Senior', 10000, 1, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'No schooling completed', '-Select-', '', '', '', '0', '', '', '', 'default.png', '2', ''),
(20, 'Abilis', 'May', 'Dayda', '1985-04-05', '', 37, '', 'Baranguit', 0, 'no', '', '', '', 'Widow', 'Employed', 20000, 1, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '0', '', '', '', 'default.png', '3', ''),
(21, 'Abilis', 'MacMac', 'Dayda', '2006-12-17', '', 16, '', 'Baranguit', 0, 'no', '', '', '', 'Single', 'Student', 0, 1, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '4', '4'),
(22, 'Alfaro', 'Alfredo', 'Dimayacyac', '1970-12-12', '', 52, '', 'Baranguit', 0, 'no', '', '', '', 'Married', 'Employed', 10000, 2, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '5', '5'),
(23, 'Allfaro', 'Janice', 'Dimayacyac', '1968-03-05', '', 54, '', 'Baranguit', 0, '', '', '', '', 'Married', 'Unemployed', 0, 2, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '0', '', '', '', 'default.png', '6', ''),
(24, 'Alfaro', 'Marie', 'Dimayacyac', '1990-07-09', '', 32, '', 'Baranguit', 0, 'yes', '', '', '', 'Single', 'UNemployed', 0, 2, 0, '', 'Filipino', 'Female', '', 0, 0, 'No schooling completed', '-Select-', '', '', '', '0', '', '', '', 'default.png', '7', ''),
(25, 'Alfaro', 'Mary', 'Dimayacyac', '', '', 0, '', 'Baranguit', 0, 'no', '', '', '', 'Single', 'Employed', 10000, 2, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '0', '', '', '', 'default.png', '9', ''),
(26, 'Alfaro', 'Mark', 'Dimayacyac', '1997-12-23', '', 25, '', 'Baranguit', 0, 'no', '', '', '', 'Single', 'Student', 0, 2, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '0', '', '', '', 'default.png', '', ''),
(27, 'Ambito', 'Pipito', 'Manalo', '1950-11-23', '', 72, '', 'Baranguit', 0, 'yes', '', '', '', 'Widow', 'Senior', 0, 3, 0, 'Roman Catholic', 'Filipino', 'Male', '', 0, 0, 'No schooling completed', '-Select-', '', '', '', '', '', '', '', 'default.png', '10', ''),
(28, 'Anoba', 'Alberto', 'Ramirez', '1970-05-03', '', 52, '', 'Baranguit', 0, 'no', '', '', '', 'Married', 'Employed', 10000, 0, 0, '', 'Filipino', 'Male', 'Head', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '11', ''),
(29, 'Anoba', 'Rizalina', 'Ramirez', '1970-12-11', '', 52, '', 'Baranguit', 0, 'no', '', '', '', 'Married', 'UNemployed', 0, 4, 0, '', 'Filipino', 'Female', '', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '0', '', '', '', 'default.png', '12', ''),
(30, 'Anoba', 'Rizamay', 'Ramirez', '1999-11-11', '', 23, '', 'Baranguit', 0, 'no', '', '', 'B', 'Single', 'Employed', 10000, 4, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'College, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '13', ''),
(31, 'Anoba', 'Rey', 'Ramirez', '2001-09-23', '', 21, '', 'Baranguit', 0, 'no', '', '', '', 'Single', 'Employed', 10000, 4, 0, '', 'Filipino', 'Male', '', 0, 0, 'High school graduate', '-Select-', '', '', '', '0', '', '', '', 'default.png', '14', ''),
(32, 'Anoba', 'Raymart', 'Ramirez', '2006-12-12', '', 16, '', 'Baranguit', 0, 'no', '', '', '', 'Single', 'Student', 0, 4, 0, '', 'Filipino', 'Male', '', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '15', ''),
(33, 'Ansus', 'Christian', 'Tadeja', '1990-12-23', '', 32, '', 'Oyas', 0, 'no', '', '', 'O', 'Married', 'Employed', 10000, 5, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'College, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '16', ''),
(34, 'Ansus', 'Mary anne', 'Tadeja', '1992-02-14', '', 30, '', 'Oyas', 0, 'no', '', '', '', 'Married', 'UNemployed', 0, 0, 0, '', 'Filipino', 'Female', '', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '17', ''),
(35, 'Ansus', 'Mary', 'Tadeja', '2020-05-29', '', 2, '', 'Oyas', 0, 'no', '', '', 'AB', 'Single', 'Student', 0, 0, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'No schooling completed', '-Select-', '', '', '', '', '', '', '', 'default.png', '18', ''),
(36, 'Astrologo', 'Mark', 'Mauhay', '1980-09-12', '', 42, '', 'Oyas', 0, 'no', '', '', '', 'Married', 'Employed', 20000, 6, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'College, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '19', ''),
(37, 'Astrologo', 'Chinchin', 'Mauhay', '1979-06-06', '', 43, '', 'Oyas', 0, 'no', '', '', '', 'Married', 'Employed', 10000, 6, 0, 'Roman Catholic', 'Filipino', 'Female', '', 0, 0, 'College, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '20', ''),
(38, 'Astrologo', 'Mark Ian', 'Mauhay', '2001-02-23', '', 21, '', 'Oyas', 0, 'no', '', '', 'A', 'Single', 'Student', 0, 6, 0, 'Roman Catholic', 'Filipino', 'Male', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '21', ''),
(39, 'Astrologo', 'Jerald', 'Mauhay', '2005-09-09', '', 17, '', 'Oyas', 0, 'no', '', '', '', 'Single', 'Student', 0, 6, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '22', ''),
(40, 'Astrologo', 'Janna', 'Mauhay', '2007-12-23', '', 15, '', 'Oyas', 0, '', '', '', '', 'Single', 'Student', 0, 6, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '0', '', '', '', 'default.png', '23', ''),
(41, 'Artillirra', 'Mark Gerald', 'Ramirez', '1975-12-12', '', 47, '', 'Proper', 0, 'no', '', '', '', 'Married', 'Employed', 10000, 7, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '0', '', '', '', 'default.png', '24', ''),
(42, 'Artillira', 'Maybbelyn', 'Ramirez', '1975-12-23', '', 47, '', 'Proper', 0, 'no', '', '', '', 'Married', 'Employed', 10000, 7, 0, '', 'Filipino', 'Female', '', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '25', ''),
(43, 'Artillira', 'Mery Anne', 'Ramirez', '2000-02-29', '', 22, '', 'Proper', 0, 'no', '', '', '', 'Single', 'UNemployed', 0, 7, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'College, undergrad', '-Select-', '', '', '', '0', '', '', '', 'default.png', '26', ''),
(44, 'Artillira', 'Mark', 'Ramirez', '2004-09-09', '', 18, '', 'Proper', 0, 'no', '', '', '', 'Single', 'Student', 0, 7, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '27', ''),
(45, 'Artillira', 'Prince', 'Ramirez', '2005-03-24', '', 17, '', 'Proper', 0, 'no', '', '', '', 'Single', 'Student', 0, 7, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '28', ''),
(46, 'Artillira', 'Shella', 'Ramirez', '2008-05-06', '', 14, '', 'Proper', 0, 'no', '', '', '', 'Single', 'Student', 0, 7, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '29', ''),
(47, 'Batayan ', 'Inday', 'Turog', '1960-08-09', '', 62, '', 'Proper', 0, 'no', '', '', 'O', 'Widow', 'UNemployed', 0, 8, 0, '', 'Filipino', 'Female', 'Head', 0, 0, 'Elementary', '-Select-', '', '', '', '', '', '', '', 'default.png', '30', ''),
(48, 'Batayan', 'Ruben', 'Turog', '1982-12-17', '', 40, '', 'Proper', 0, 'yes', '', '', 'B', 'Single', 'UNemployed', 0, 8, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'No schooling completed', '-Select-', '', '', '', '', '', '', '', 'default.png', '31', ''),
(49, 'Batayan', 'Macar', 'Turog', '1985-04-03', '', 37, '', 'Proper', 0, '', '', '', '', 'Married', 'Employed', 10000, 8, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '32', ''),
(50, 'Batayan', 'Marita', 'Ramirez', '1986-12-31', '', 36, '', 'Proper', 0, 'no', '', '', '', 'Married', 'UNemployed', 0, 8, 0, 'INC', 'Filipino', 'Female', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '33', ''),
(51, 'Batayan ', 'Sherryl', 'Ramirez', '2003-07-28', '', 19, '', 'Proper', 0, 'no', '', '', '', 'Single', 'Employed', 10000, 8, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '0', '', '', '', 'default.png', '34', ''),
(52, 'Batayan', 'Maria', 'Ramirez', '2006-06-29', '', 16, '', 'Proper', 0, 'no', '', '', '', 'Single', 'Student', 0, 8, 0, '', 'Filipino', 'Female', '', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '35', ''),
(53, 'Baylosis', 'Ruben', 'Aldea', '1985-05-21', '', 37, '', 'Proper', 0, 'no', '', '', '', 'Married', 'Employed', 10000, 9, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '36', ''),
(54, 'Baylosis', 'Andrea', 'Aldea', '1986-09-01', '', 36, '', 'Proper', 0, 'no', '', '', 'B', 'Married', 'UNemployed', 0, 9, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '37', ''),
(55, 'Baylosis', 'Cindy', 'Aldea', '2005-12-17', '', 17, '', 'Proper', 0, 'no', '', '', 'A', 'Single', 'Student', 0, 9, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '38', ''),
(56, 'Baylosis', 'Christopper', 'Aldea', '2007-12-13', '', 15, '', 'Proper', 0, 'no', '', '', '', 'Single', 'Student', 0, 9, 0, 'Roman Catholic', 'Filipino', 'Male', 'Member', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '39', ''),
(57, 'Baylosis', 'Mark Benjo', 'Aldea', '2009-06-07', '', 13, '', 'Proper', 0, 'no', '', '', 'A', 'Single', 'Student', 0, 9, 0, 'Roman Catholic', 'Filipino', 'Male', 'Member', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '40', ''),
(58, 'Bersamina', 'Clarita', 'Gusman', '1980-07-06', '', 42, '', 'balisong', 0, 'no', '', '', '', 'Widow', 'Employed', 10000, 10, 0, '', 'Filipino', 'Female', 'Head', 0, 0, 'Elementary', '-Select-', '', '', '', '0', '', '', '', 'default.png', '41', ''),
(59, 'Bersamina', 'Jhomar', 'Gusman', '1999-05-21', '', 23, '', 'balisong', 0, 'no', '', '', 'O', 'Single', 'Employed', 10000, 10, 0, 'INC', 'Filipino', 'Male', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '42', ''),
(60, 'Bersamina', 'Jomarie', 'Gusman', '2003-12-23', '', 19, '', 'balisong', 0, 'no', '', '', 'A', 'Single', 'Student', 0, 10, 0, 'Roman Catholic', 'Filipino', 'Male', 'Member', 0, 0, 'College, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '43', ''),
(61, 'Bersamina', 'Kier', 'Gusman', '2006-03-03', '', 16, '', 'balisong', 0, 'no', '', '', '', 'Single', 'Student', 0, 10, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '44', ''),
(62, 'Bulado ', 'Garry', 'Esparas', '2003-07-09', '', 19, '', 'balisong', 0, 'no', '', '', '', 'Single', 'Employed', 10000, 11, 0, '', 'Filipino', 'Male', '', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '45', ''),
(63, 'Cabato', 'Andrew', 'Manalo', '1995-12-25', '', 27, '', 'balisong', 0, 'no', '', '', '', 'Married', 'Employed', 30000, 12, 0, 'Roman Catholic', 'Filipino', 'Male', 'Head', 0, 0, 'College, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '46', ''),
(64, 'Cabato', 'Diane', 'Manalo', '1997-12-12', '', 25, '', 'balisong', 0, 'no', '', '', '', 'Married', 'Employed', 10000, 12, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '47', ''),
(65, 'Cabato', 'Micly', 'Manalo', '2018-05-05', '', 4, '', 'balisong', 0, 'no', '', '', '', 'Single', 'Student', 0, 12, 0, 'Roman Catholic', 'Filipino', 'Female', 'Member', 0, 0, 'No schooling completed', '-Select-', '', '', '', '', '', '', '', 'default.png', '48', ''),
(66, 'Callejo', 'Darwin', 'Tanglao', '1960-09-06', '', 62, '', 'Olango', 0, 'no', '', '', 'B', 'Married', 'Senior', 0, 13, 0, 'Born Again', 'Filipino', 'Male', '', 0, 0, 'No schooling completed', '-Select-', '', '', '', '', '', '', '', 'default.png', '49', ''),
(67, 'Callejo', 'Donna', 'Tanglao', '1967-12-17', '', 55, '', 'Olango', 0, 'no', '', '', '', 'Married', 'Employed', 10000, 13, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '50', ''),
(68, 'Callejo', 'Edelyn', 'Tanglao', '1990-12-12', '', 32, '', 'Olango', 0, 'no', '', '', '', 'Married', 'Employed', 10000, 13, 0, '', 'Filipino', 'Female', '', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '51', ''),
(69, 'Callejo', 'Eden', 'Tanglao', '1995-05-04', '', 27, '', 'Olango', 0, 'no', '', '', 'O', 'Single', 'Employed', 30000, 13, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'Master’s degree', '-Select-', '', '', '', '', '', '', '', 'default.png', '52', ''),
(70, 'Calejo', 'Marvin Jay', 'Andal', '1975-11-29', '', 47, '', 'Olango', 0, 'no', '', '', '', 'Married', 'Employed', 20000, 14, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'High school graduate', '-Select-', '', '', '', '0', '', '', '', 'default.png', '54', ''),
(71, 'Callejo', 'Rebecca', 'Andal', '1976-12-12', '', 46, '', 'Olango', 0, 'no', '', '', '', 'Married', 'Employed', 10000, 14, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '55', ''),
(72, 'Callejo', 'Rachelle', 'Andal', '2003-12-23', '', 19, '', 'Olango', 0, 'no', '', '', '', 'Single', 'Employed', 20000, 14, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'College, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '56', ''),
(73, 'Callejo', 'Mary Anne', 'Andal', '2006-07-12', '', 16, '', 'Olango', 0, 'no', '', '', 'B', 'Single', 'Employed', 10000, 14, 0, 'Roman Catholic', 'Filipino', 'Female', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '57', ''),
(74, 'Callejo', 'Marvin', 'Andal', '2009-04-25', '', 13, '', 'Olango', 0, 'no', '', '', '', 'Single', 'Student', 0, 14, 0, '', 'Filipino', 'Male', '', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '58', ''),
(75, 'Calumpang', 'Jeric', 'Timenia', '1994-06-06', '', 28, '', 'Pitogo', 0, 'no', '', '', 'O', 'Married', 'Employed', 20000, 15, 0, 'Roman Catholic', 'Filipino', 'Male', '', 0, 0, 'College, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '59', ''),
(76, 'Calumpang', 'Rachelle', 'Timenia', '1996-12-14', '', 26, '', 'Pitogo', 0, 'no', '', '', 'B', '', 'Employed', 10000, 15, 0, 'Roman Catholic', 'Filipino', 'Female', '', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '60', ''),
(77, 'Calumpang', 'Xia', 'Timenia', '2019-02-23', '', 3, '', 'Pitogo', 0, 'no', '', '', 'O', 'Single', 'Student', 0, 15, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'No schooling completed', '-Select-', '', '', '', '', '', '', '', 'default.png', '61', ''),
(78, 'Caneo', 'Dharell', 'Serna', '1989-12-12', '', 33, '', 'Baranguit', 0, 'no', '', '', 'B', 'Married', 'Employed', 10000, 16, 0, 'INC', 'Filipino', 'Male', 'Head', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '62', ''),
(79, 'Caneo', 'May', 'Serna', '1990-12-12', '', 32, '', 'Pitogo', 0, 'no', '', '', '', 'Married', 'UNemployed', 0, 16, 0, 'Roman Catholic', 'Filipino', 'Female', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '63', ''),
(80, 'Caneo', 'Mark', '', '2005-12-17', '', 17, '', 'Pitogo', 0, 'no', '', '', '', 'Single', 'Student', 0, 16, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '64', ''),
(81, 'Caneo', 'Sarah Mae', 'Serna', '2009-12-12', '', 13, '', 'Pitogo', 0, 'no', '', '', '', 'Single', 'Student', 0, 16, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '65', ''),
(82, 'Catama', 'Apolo', 'Abilis', '1970-12-12', '', 52, '', 'Pitogo', 0, 'no', '', '', 'AB', 'Married', 'Employed', 20000, 17, 0, '', 'Filipino', 'Male', '', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '66', ''),
(83, 'Catama', 'Reajoy', 'Abilis', '1971-02-12', '', 51, '', 'Pitogo', 0, 'no', '', '', 'A', 'Married', 'Employed', 10000, 17, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '67', ''),
(84, 'Catama', 'Abiegail', 'Abilis', '1995-08-09', '', 27, '', 'Pitogo', 0, 'no', '', '', '', 'Single', 'Employed', 10000, 17, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'College, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '68', ''),
(85, 'Catama', 'Mark', 'Abilis', '1999-07-08', '', 23, '', 'Pitogo', 0, 'no', '', '', '', 'Single', 'Student', 0, 17, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '69', ''),
(86, 'Catama', 'Reamarie', 'Abilis', '2001-12-12', '', 21, '', 'Pitogo', 0, 'no', '', '', '', 'Single', 'Student', 0, 17, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '70', ''),
(87, 'Cortuna', 'Alvin', 'Manalo', '1980-02-02', '', 43, '', 'Baranguit', 0, 'no', '', '', '', 'Married', 'Employed', 20000, 18, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'College, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '71', ''),
(88, 'Cortuna', 'Angel', 'Manalo', '1981-09-09', '', 41, '', 'Baranguit', 0, 'no', '', '', '', 'Married', 'Employed', 20000, 18, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'College, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '72', ''),
(89, 'Cortuna', 'Jezebel', 'Manalo', '2000-12-12', '', 22, '', 'Baranguit', 0, 'no', '', '', 'B', 'Single', 'Student', 0, 18, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '73', ''),
(90, 'Cortuna', 'John Paul', 'Manalo', '2004-12-12', '', 18, '', 'Baranguit', 0, 'no', '', '', '', 'Single', 'Student', 0, 18, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '74', ''),
(91, 'Cortuna', 'Kezel', 'Manalo', '2006-01-01', '', 17, '', 'Baranguit', 0, 'no', '', '', '', 'Single', 'Student', 0, 18, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '75', ''),
(92, 'Cortuna', 'Loren', 'Manalo', '2007-02-02', '', 16, '', 'Baranguit', 0, 'no', '', '', '', '', 'Student', 0, 18, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '76', ''),
(93, 'Cortuna', 'Manuel', 'Manalo', '2009-12-12', '', 13, '', 'Baranguit', 0, 'no', '', '', '', 'Single', '', 0, 18, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '77', ''),
(94, 'Crisostomo', 'Marivic', 'Montalban', '1965-09-01', '', 57, '', 'Baranguit', 0, 'no', '', '', '', 'Widow', 'UNemployed', 0, 19, 0, '', 'Filipino', 'Female', 'Head', 0, 0, 'No schooling completed', '-Select-', '', '', '', '', '', '', '', 'default.png', '78', ''),
(95, 'Croisostomo', 'Mark', 'Montalban', '1990-12-12', '', 32, '', 'Baranguit', 0, 'no', '', '', 'O', 'Married', 'Employed', 10000, 19, 0, 'Roman Catholic', 'Filipino', 'Male', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '79', ''),
(96, 'Crisostomo', 'Marie', 'MIciano', '1990-12-12', '', 32, '', 'Baranguit', 0, 'no', '', '', 'B', 'Married', 'Employed', 10000, 19, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '80', ''),
(97, 'Crisostomo', 'Joy', 'Miciano', '2010-12-12', '', 12, '', 'Baranguit', 0, 'no', '', '', 'B', 'Single', 'Student', 0, 19, 0, 'Roman Catholic', 'Filipino', 'Female', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '81', ''),
(98, 'Crisosotomo', 'Krisha', 'Miciano', '2014-12-12', '', 8, '', 'Baranguit', 0, 'no', '', '', '', 'Single', 'Student', 0, 19, 0, 'Roman Catholic', 'Filipino', 'Female', 'Member', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '82', ''),
(99, 'Crisostomo', 'Jerald', 'Tadeja', '1995-12-12', '', 27, '', 'Baranguit', 0, 'no', '', '', '', 'Single', 'Employed', 20000, 20, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'College, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '83', ''),
(100, 'Crisostomo', 'Loraine', 'Tadeja', '1995-12-12', '', 27, '', 'Baranguit', 0, 'no', '', '', '', '', 'UNemployed', 0, 20, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'College, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '84', ''),
(101, 'Crisostomo', 'Loraine Joy', 'Tadeja', '2016-01-09', '', 7, '', 'Baranguit', 0, '', '', '', '', 'Single', 'Student', 0, 20, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '85', ''),
(102, 'Crisostomo', 'Marie', 'Tadeja', '2019-12-13', '', 3, '', 'Baranguit', 0, '', '', '', '', 'Single', 'Student', 0, 20, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '0', '', '', '', 'default.png', '86', ''),
(103, 'Crisostomo', 'Janice', 'Lara', '2000-12-14', '', 22, '', 'Baranguit', 0, 'no', '', '', '', '', 'Employed', 10000, 21, 0, '', 'Filipino', 'Female', 'Head', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '87', ''),
(104, 'Damasco', 'Mark Jay', 'Santiago', '1978-09-09', '', 44, '', 'Baranguit', 0, '', '', '', '', 'Married', 'Employed', 20000, 22, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '88', ''),
(105, 'Damasco', 'Marie', 'Santiago', '1979-08-09', '', 43, '', 'Baranguit', 0, '', '', '', '', 'Married', 'Employed', 10000, 22, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '89', ''),
(106, 'Damasco', 'Mary Joy', 'Santiago', '1999-12-12', '', 23, '', 'Baranguit', 0, '', '', '', '', 'Single', 'UNemployed', 0, 22, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'College, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '90', ''),
(107, 'Damasco', 'Mark', 'Santiago', '2001-12-23', '', 21, '', 'Baranguit', 0, 'no', '', '', 'B', 'Single', 'Student', 0, 22, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '91', ''),
(108, 'Damasco', 'Cherry', 'santiago', '2003-12-12', '', 19, '', 'Baranguit', 0, '', '', '', '', 'Single', 'Student', 0, 22, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '92', ''),
(109, 'Damasco', 'Janice', 'Santiago', '2005-12-12', '', 17, '', 'Baranguit', 0, 'no', '', '', '', 'Single', 'Student', 0, 22, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '93', ''),
(110, 'Damasco', 'Biboy', 'Santiago', '2009-09-09', '', 13, '', 'Baranguit', 0, '', '', '', '', 'Single', 'Student', 0, 22, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '95', ''),
(111, 'Dayda', 'Delfin', 'Turog', '1969-12-12', '', 53, '', 'Oyas', 0, '', '', '', '', 'Married', 'Employed', 20000, 23, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'Elementary', '-Select-', '', '', '', '', '', '', '', 'default.png', '96', ''),
(112, 'dayda', 'Cristie', 'Turog', '1970-12-12', '', 52, '', 'Oyas', 0, 'no', '', '', '', 'Married', 'Employed', 10000, 23, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '97', ''),
(113, 'dayda', 'Alfredo', 'Turog', '1989-04-04', '', 33, '', 'Oyas', 0, 'yes', '', '', '', 'Single', 'UNemployed', 0, 23, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'No schooling completed', '-Select-', '', '', '', '', '', '', '', 'default.png', '98', ''),
(114, 'dayda', 'Zenita', 'Turog', '1981-12-23', '', 41, '', 'Oyas', 0, '', '', '', '', 'Single', 'Employed', 10000, 23, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '99', ''),
(115, 'dayda', 'VIncent', 'Turog', '1990-12-12', '', 32, '', 'Oyas', 0, '', '', '', '', 'Single', 'Employed', 10000, 23, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '100', ''),
(116, 'Dayda', 'Mary', 'Turog', '1995-02-02', '', 28, '', 'Oyas', 0, '', '', '', '', 'Single', 'Student', 0, 23, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '101', ''),
(117, 'Dayda', 'Marie', 'Turog', '1998-06-06', '', 24, '', 'Oyas', 0, '', '', '', '', 'Single', 'Student', 0, 23, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '102', ''),
(118, 'Dayda', 'May', 'Turog', '2000-12-27', '', 22, '', 'Oyas', 0, '', '', '', '', 'Single', 'Student', 0, 23, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '103', ''),
(119, 'Dela Cruz', 'Manuel', 'reyes', '1980-12-12', '', 42, '', 'Baranguit', 0, 'no', '', '', '', 'Married', 'Employed', 10000, 24, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '104', ''),
(120, 'Dela Cruz', 'Manilyn', 'REYES', '1981-09-23', '', 41, '', 'Baranguit', 0, '', '', '', '', 'Married', 'Employed', 10000, 24, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '105', ''),
(121, 'Dela Cruz', 'Christian', 'Reyes', '2001-12-12', '', 21, '', 'Baranguit', 0, '', '', '', '', 'Single', 'UNemployed', 0, 24, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '106', ''),
(122, 'Dela Cruz', 'Jessa', 'Reyes', '2005-12-23', '', 17, '', 'Baranguit', 0, '', '', '', '', 'Single', 'Student', 0, 24, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '107', ''),
(123, 'Dela Cruz', 'Maymay', 'Reyes', '2008-12-12', '', 14, '', 'Baranguit', 0, '', '', '', '', 'Single', 'Student', 0, 24, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '108', ''),
(124, 'Enkargado', 'Daniel', 'Taroma', '1956-09-09', '', 66, '', 'Proper', 0, 'yes', '', '', '', 'Widow', 'UNemployed', 0, 25, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'Elementary', '-Select-', '', '', '', '', '', '', '', 'default.png', '109', ''),
(125, 'enkargado', 'Floredo', 'Taroma', '1980-12-01', '', 42, '', 'Proper', 0, '', '', '', '', 'Married', 'Employed', 10000, 25, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'Elementary', '-Select-', '', '', '', '', '', '', '', 'default.png', '110', ''),
(126, 'Enkargado', 'Christy', 'Taroma', '1983-09-08', '', 39, '', 'Proper', 0, '', '', '', '', 'Married', 'Employed', 10000, 25, 0, '', 'Filipino', 'Female', '', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '111', ''),
(127, 'Enkrgado', 'Krisha', 'Taroma', '2000-12-14', '', 22, '', 'Proper', 0, '', '', '', '', 'Single', 'Employed', 20000, 25, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'College, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '112', ''),
(128, 'Enkargado', 'Wency', 'Taroma', '2004-12-24', '', 18, '', 'Proper', 0, '', '', '', '', 'Single', 'Student', 0, 25, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '113', ''),
(129, 'Enkargado', 'Jay', 'Taroma', '2008-09-06', '', 14, '', 'Proper', 0, '', '', '', '', 'Single', 'Student', 0, 25, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '114', ''),
(130, 'Etang', 'Laurel', 'Cortuna', '1975-12-12', '', 47, '', 'Baranguit', 0, '', '', '', '', 'Married', 'Employed', 10000, 26, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '115', ''),
(131, 'Etang', 'Marie', 'Cortuna', '1978-07-01', '', 44, '', 'Baranguit', 0, '', '', '', '', 'Married', 'Employed', 10000, 26, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '116', ''),
(132, 'Etang', 'MarieJOy', 'Cortuna', '1998-12-29', '', 24, '', 'Baranguit', 0, '', '', '', '', 'Single', 'UNemployed', 0, 26, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'College, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '117', ''),
(133, 'Etang', 'Chris', 'Cortuna', '2000-07-08', '', 22, '', 'Baranguit', 0, '', '', '', '', 'Single', 'Student', 0, 26, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '118', ''),
(134, 'ETANG', 'Mary', 'Cortuna', '2005-07-08', '', 17, '', 'Baranguit', 0, '', '', '', '', 'Single', 'Student', 0, 26, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '119', ''),
(135, 'Famanilay', 'Harold', 'chu', '1990-02-23', '', 32, '', 'Oyas', 0, '', '', '', '', 'Married', 'Employed', 30000, 27, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'Master’s degree', '-Select-', '', '', '', '', '', '', '', 'default.png', '120', ''),
(136, 'Famanilay', 'Meann', 'chu', '1991-07-08', '', 31, '', 'Oyas', 0, '', '', '', '', 'Married', 'Employed', 20000, 27, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'College, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '121', ''),
(137, 'Famanilay', 'MacMac', 'Chu', '2001-12-17', '', 21, '', 'Oyas', 0, '', '', '', '', 'Single', 'Student', 0, 27, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '122', ''),
(138, 'Famanilay', 'Lesley', 'Chu', '2004-12-12', '', 18, '', 'Oyas', 0, 'no', '', '', '', 'Single', 'Student', 0, 27, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '123', ''),
(139, 'Famanilay', '', 'Chu', '2008-02-04', '', 14, '', 'Oyas', 0, '', '', '', '', 'Single', 'Student', 0, 27, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '124', ''),
(140, 'Fajardo', 'Rico', 'Cuz', '1984-05-05', '', 38, '', 'Proper', 0, '', '', '', '', 'Married', 'Employed', 20000, 28, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'College, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '125', ''),
(141, 'Fajardo', 'May', 'Cuz', '1985-09-08', '', 37, '', 'Proper', 0, '', '', '', '', 'Married', 'UNemployed', 0, 28, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '126', ''),
(142, 'Fajardo', 'JUnior', 'Cuz', '2000-12-12', '', 22, '', 'Proper', 0, '', '', '', '', 'Single', 'UNemployed', 0, 28, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '127', ''),
(143, 'Fajardo', 'MArk', 'Cuz', '2004-12-23', '', 18, '', 'Proper', 0, 'no', '', '', '', 'Single', 'Student', 0, 28, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '128', ''),
(144, 'Fajardo', 'Lia', 'Cuz', '2007-12-27', '', 15, '', 'Proper', 0, '', '', '', 'B', 'Married', 'Student', 0, 28, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '129', ''),
(145, 'Girao', 'Florante', 'Reyes', '1960-09-08', '', 62, '', 'balisong', 0, 'no', '', '', '', 'Married', 'UNemployed', 0, 29, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'No schooling completed', '-Select-', '', '', '', '', '', '', '', 'default.png', '130', ''),
(146, 'Girao', 'Geann', 'Reyes', '1967-12-18', '', 55, '', 'balisong', 0, '', '', '', '', 'Married', 'UNemployed', 0, 29, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'Elementary', '-Select-', '', '', '', '', '', '', '', 'default.png', '131', ''),
(147, 'Girao', 'lia Marie', 'Reyes', '1980-02-03', '', 43, '', 'balisong', 0, '', '', '', '', 'Single', 'Employed', 10000, 29, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '133', ''),
(148, 'Gatot', 'LEmuel', 'Malupa', '1987-09-07', '', 35, '', 'Baranguit', 0, '', '', '', '', 'Married', 'Employed', 10000, 30, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '135', ''),
(149, 'Gatot', 'Maricar', 'Malupa', '1988-12-12', '', 34, '', 'Baranguit', 0, '', '', '', '', 'Married', 'UNemployed', 0, 30, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '136', ''),
(150, 'Gatot', 'Lyca', 'Malupa', '2003-12-12', '', 19, '', 'Baranguit', 0, '', '', '', '', 'Single', 'Student', 0, 30, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '138', ''),
(151, 'Gatot', 'Layanne', 'Malupa', '2006-08-06', '', 16, '', 'Baranguit', 0, '', '', '', '', 'Single', 'Student', 0, 30, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '137', ''),
(152, 'Malupa', 'Christian', 'Manalo', '1985-05-04', '', 37, '', 'Oyas', 0, '', '', '', '', 'Single', 'Employed', 10000, 31, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '139', ''),
(153, 'Malupa', 'Lesley', 'Manalo', '1985-06-07', '', 37, '', 'Oyas', 0, '', '', '', '', 'Married', 'Employed', 10000, 31, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '140', ''),
(154, 'Malupa', 'Xian', 'Manalo', '2000-07-09', '', 22, '', 'Oyas', 0, '', '', '', '', 'Single', 'Employed', 10000, 31, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'College, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '141', ''),
(155, 'Malupa', 'Maymay', 'Manalo', '2003-09-08', '', 19, '', 'Oyas', 0, '', '', '', '', 'Single', 'Student', 0, 31, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '142', ''),
(156, 'malupa', 'Grace', 'Manalo', '2006-12-29', '', 16, '', 'Oyas', 0, '', '', '', '', 'Single', 'Student', 0, 31, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '144', ''),
(157, 'Malupa', 'Grey', 'Manalo', '2007-05-03', '', 15, '', 'Oyas', 0, '', '', '', '', 'Single', 'Student', 0, 31, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '145', ''),
(158, 'evanglista', 'lorenzo', 'pedines', '1968-09-07', '', 54, '', 'balisong', 0, 'no', '', '', '', 'Married', 'Employed', 10000, 32, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '146', ''),
(159, 'evangilista', 'Eurica', 'pidenis', '1970-12-23', '', 52, '', 'balisong', 0, 'no', '', '', '', 'Married', 'UNemployed', 0, 32, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '147', ''),
(160, 'Evangilista', 'Florencio', 'pideners', '1990-08-23', '', 32, '', 'balisong', 0, 'no', '', '', '', 'Single', 'UNemployed', 0, 32, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '148', ''),
(161, 'evanglista', 'Lorenz', 'pedines', '1992-12-17', '', 30, '', 'balisong', 0, 'no', '', '', '', 'Single', 'Employed', 10000, 32, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'College, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '149', ''),
(162, 'Evangilista', 'Prince Harvey', 'pidenis', '1996-09-07', '', 26, '', 'balisong', 0, 'no', '', '', '', 'Single', 'Student', 0, 32, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '150', ''),
(163, 'evanglista', 'Susana', 'pidenis', '2000-12-17', '', 22, '', 'balisong', 0, 'no', '', '', '', 'Single', 'Student', 0, 32, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '151', ''),
(164, 'evanglista', 'Aerolln', 'pidenis', '2002-12-12', '', 20, '', 'balisong', 0, 'no', '', '', '', 'Single', 'Student', 0, 32, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '152', ''),
(165, 'Francisco', 'Jake', 'Prado', '1980-03-24', '', 42, '', 'Proper', 0, 'no', '', '', '', 'Married', 'Employed', 20000, 33, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '153', ''),
(166, 'Francisco', 'dona', 'Prado', '1981-12-17', '', 41, '', 'Proper', 0, 'no', '', '', '', 'Married', 'Employed', 10000, 33, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'College, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '154', ''),
(167, 'Francisco', 'Eron jay', 'Prado', '2000-02-13', '', 22, '', 'Proper', 0, 'no', '', '', '', 'Single', 'Student', 0, 33, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '155', ''),
(168, 'Francisco', 'Jenny', 'Prado', '2003-12-12', '', 19, '', 'Proper', 0, 'no', '', '', '', 'Single', 'Student', 0, 33, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '156', ''),
(169, 'Francisco', 'nicole', 'Prado', '2006-09-06', '', 16, '', 'Proper', 0, '', '', '', '', 'Single', 'Student', 0, 33, 0, 'Born Again', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '157', ''),
(170, 'Francisco', 'rolly', 'Prado', '2009-04-23', '', 13, '', 'Proper', 0, 'no', '', '', '', 'Single', 'Student', 0, 33, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '158', ''),
(171, 'galendes', 'nikko', 'malate', '1989-09-09', '', 33, '', 'Oyas', 0, 'no', '', '', '', 'Married', 'Employed', 20000, 34, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'Vocational', '-Select-', '', '', '', '', '', '', '', 'default.png', '159', ''),
(172, 'galendes', 'trisha', 'malate', '1988-09-08', '', 34, '', 'Oyas', 0, '', '', '', '', 'Married', 'Employed', 10000, 34, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'College, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '160', ''),
(173, 'galendes', 'clarisse', 'malate', '0010-12-17', '', 2012, '', 'Oyas', 0, 'no', '', '', '', 'Single', 'Student', 0, 34, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '161', ''),
(174, 'galendes', 'Eurica', 'malate', '2013-09-23', '', 9, '', 'Oyas', 0, 'no', '', '', '', 'Single', 'Student', 0, 34, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '162', ''),
(175, 'galendes', 'mark', 'malate', '2016-01-01', '', 7, '', 'Oyas', 0, 'yes', '', '', '', 'Single', 'Student', 0, 34, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '163', ''),
(176, 'gatdula', 'norman', 'tibus', '1960-07-24', '', 62, '', 'Baranguit', 0, 'no', '', '', '', 'Married', 'Senior', 0, 35, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'Elementary', '-Select-', '', '', '', '', '', '', '', 'default.png', '164', ''),
(177, 'gatdula', 'eunice', 'tibus', '1962-12-17', '', 60, '', 'Baranguit', 0, 'no', '', '', '', 'Married', 'Employed', 10000, 35, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'Elementary', '-Select-', '', '', '', '', '', '', '', 'default.png', '165', ''),
(178, 'gatdula', 'maryanne', 'tibus', '1990-02-26', '', 32, '', 'Baranguit', 0, 'no', '', '', '', 'Married', 'Employed', 10000, 35, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '166', ''),
(179, 'gatdula', 'leo', 'tibus', '1996-12-24', '', 26, '', 'Baranguit', 0, '', '', '', '', 'Married', 'Employed', 10000, 35, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '167', ''),
(180, 'gatdula', 'nolan', 'tibus', '2013-12-17', '', 9, '', 'Baranguit', 0, 'no', '', '', '', 'Single', 'Student', 0, 35, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '168', ''),
(181, 'Francisco', 'florencio', 'malate', '1961-12-29', '', 61, '', 'Oyas', 0, 'yes', '', '', '', 'Widow', 'UNemployed', 0, 36, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'No schooling completed', '-Select-', '', '', '', '', '', '', '', 'default.png', '169', ''),
(182, 'Francisco', 'Susana', 'malate', '1985-12-17', '', 37, '', 'Oyas', 0, 'no', '', '', '', 'Married', 'Employed', 10000, 36, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '170', ''),
(183, 'Francisco', 'mark', 'malate', '1986-09-08', '', 36, '', 'Oyas', 0, 'no', '', '', '', 'Married', 'Employed', 10000, 36, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '171', ''),
(184, 'Francisco', 'Lorenz', 'malate', '2001-12-17', '', 21, '', 'Oyas', 0, 'no', '', '', 'A', 'Single', 'Student', 0, 36, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '172', ''),
(185, 'Francisco', 'Eurica', 'malate', '2004-09-08', '', 18, '', 'Oyas', 0, 'no', '', '', '', 'Single', 'Student', 0, 36, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '173', ''),
(186, 'Francisco', 'joy', 'malate', '2006-08-05', '', 16, '', 'Oyas', 0, '', '', '', '', 'Single', 'Student', 0, 36, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '174', ''),
(187, 'gonzales', '', 'christine', '1983-07-07', '', 39, '', 'Pitogo', 0, 'no', '', '', 'B', 'Widow', 'Employed', 20000, 37, 0, '', 'Filipino', 'Female', 'Head', 0, 0, 'No schooling completed', '-Select-', '', '', '', '', '', '', '', 'default.png', '175', ''),
(188, 'gonzales', 'mark', 'cortuna', '1995-12-12', '', 27, '', 'Pitogo', 0, 'no', '', '', '', 'Single', 'UNemployed', 0, 37, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '176', ''),
(189, 'gonzales', 'lea marie', 'malate', '1998-09-08', '', 24, '', 'Pitogo', 0, 'no', '', '', '', 'Single', 'Student', 0, 37, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '177', ''),
(190, 'gonzales', 'jaymark', 'malate', '2000-05-06', '', 22, '', 'Pitogo', 0, 'no', '', '', '', 'Single', 'Student', 0, 37, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '178', ''),
(191, 'gonzales', 'baby', 'malate', '2005-05-05', '', 17, '', 'Pitogo', 0, 'no', '', '', '', 'Single', 'Student', 0, 37, 0, '', 'Filipino', 'Female', '', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '179', ''),
(192, 'manalo', 'ronaldo', 'sanuton', '1959-12-12', '', 63, '', 'Pitogo', 0, 'yes', '', '', '', 'Single', 'UNemployed', 0, 38, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'No schooling completed', '-Select-', '', '', '', '', '', '', '', 'default.png', '180', ''),
(193, 'manalo', 'alvin', 'sanuton', '1980-12-17', '', 42, '', 'Pitogo', 0, 'no', '', '', 'B', 'Married', 'Employed', 20000, 39, 0, '', 'Filipino', 'Male', '', 0, 0, 'Vocational', '-Select-', '', '', '', '', '', '', '', 'default.png', '181', ''),
(194, 'manalo', 'melanie', 'sanuton', '1981-09-27', '', 41, '', 'Pitogo', 0, 'no', '', '', 'B', 'Widow', 'UNemployed', 0, 39, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'College, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '182', ''),
(195, 'manalo', 'janeth', 'sanuton', '2001-08-17', '', 21, '', 'Pitogo', 0, '', '', '', '', 'Single', 'Student', 0, 39, 0, '', 'Filipino', 'Female', '', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '183', ''),
(196, 'manalo', 'mark', 'sanuton', '2003-12-13', '', 19, '', 'Pitogo', 0, 'no', '', '', '', 'Single', 'Student', 0, 39, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '184', ''),
(197, 'manalo', 'ivan', 'sanuton', '2005-04-04', '', 17, '', 'Pitogo', 0, 'no', '', '', 'A', 'Single', 'Student', 0, 39, 0, '', 'Filipino', 'Male', '', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '185', ''),
(198, 'manalo', 'james', 'bandiola', '1994-09-08', '', 28, '', 'Olango', 0, '', '', '', '', 'Married', 'UNemployed', 30000, 40, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'Bachelor’s degree', '-Select-', '', '', '', '', '', '', '', 'default.png', '186', ''),
(199, 'manalo', 'Susana', 'gadiola', '1995-12-12', '', 27, '', 'Olango', 0, 'no', '', '', '', 'Married', 'UNemployed', 0, 40, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'Vocational', '-Select-', '', '', '', '', '', '', '', 'default.png', '187', ''),
(200, 'manalo', 'mayanne', 'gadiola', '2018-12-12', '', 4, '', 'Olango', 0, 'no', '', '', '', 'Single', 'Student', 0, 40, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '188', ''),
(201, 'marasigan', 'alvin', 'de guia', '1984-03-03', '', 38, '', 'Baranguit', 0, '', '', '', '', 'Married', 'Employed', 20000, 41, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'Vocational', '-Select-', '', '', '', '', '', '', '', 'default.png', '189', ''),
(202, 'marasigan', 'mary jane', 'de guia', '1983-09-08', '', 39, '', 'Baranguit', 0, 'no', '', '', '', 'Married', 'Employed', 10000, 41, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'College, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '190', ''),
(203, 'marasigan', 'christian', 'de guia', '2005-12-23', '', 17, '', 'Baranguit', 0, 'no', '', '', 'B', 'Single', 'Student', 0, 41, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '191', ''),
(204, 'marasigan', 'renz', 'de guia', '2007-08-09', '', 15, '', 'Baranguit', 0, 'no', '', '', '', 'Single', 'Student', 0, 41, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '192', ''),
(205, 'marcelo', 'orlan', 'gomez', '1954-07-07', '', 68, '', 'Proper', 0, 'no', '', '', 'B', 'Married', 'Senior', 0, 42, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'Elementary', '-Select-', '', '', '', '', '', '', '', 'default.png', '193', ''),
(206, 'marcelo', 'elaine', 'gomez', '1956-05-24', '', 66, '', 'Proper', 0, '', '', '', '', 'Married', 'Senior', 0, 42, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'Elementary', '-Select-', '', '', '', '', '', '', '', 'default.png', '194', ''),
(207, 'masangkay', 'alfredo', 'las', '1987-12-14', '', 35, '', 'Proper', 0, 'no', '', '', '', 'Married', 'Employed', 10000, 43, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '195', ''),
(208, 'masangkay', 'janed', 'las', '1988-06-07', '', 34, '', 'Proper', 0, 'no', '', '', 'B', 'Married', 'UNemployed', 0, 43, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '196', ''),
(209, 'masangkay', 'Eurica', 'las', '2009-12-12', '', 13, '', 'Proper', 0, 'no', '', '', '', 'Single', 'Student', 0, 43, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '197', ''),
(210, 'masangkay', 'michael', 'las', '2012-12-13', '', 10, '', 'Proper', 0, 'no', '', '', '', 'Single', 'Student', 0, 43, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '198', ''),
(211, 'masangkay', 'orlando', 'tapales', '1970-12-17', '', 52, '', 'Upper', 0, 'no', '', '', '', 'Married', 'Employed', 10000, 44, 0, '', 'Filipino', 'Male', '', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '199', ''),
(212, 'masangkay', 'lea marie', 'tapales', '1969-12-17', '', 53, '', 'Upper', 0, '', '', '', '', 'Married', 'UNemployed', 0, 44, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '200', ''),
(213, 'masangkay', 'rafael', 'tapales', '1999-02-23', '', 23, '', 'Upper', 0, 'no', '', '', 'O', 'Single', 'Employed', 10000, 44, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '201', '');
INSERT INTO `tblresident` (`id`, `lname`, `fname`, `mname`, `bdate`, `bplace`, `age`, `barangay`, `zone`, `totalhousehold`, `differentlyabledperson`, `relationtohead`, `maritalstatus`, `bloodtype`, `civilstatus`, `occupation`, `monthlyincome`, `householdnum`, `lengthofstay`, `religion`, `nationality`, `gender`, `skills`, `igpitID`, `philhealthNo`, `highestEducationalAttainment`, `houseOwnershipStatus`, `landOwnershipStatus`, `dwellingtype`, `waterUsage`, `lightningFacilities`, `sanitaryToilet`, `formerAddress`, `remarks`, `image`, `username`, `password`) VALUES
(214, 'masangkay', 'grace', 'tapales', '2002-08-07', '', 20, '', 'Upper', 0, '', '', '', '', 'Single', 'Student', 0, 44, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '202', ''),
(215, 'masangkay', 'ana may', 'tapales', '2005-08-09', '', 17, '', 'Upper', 0, '', '', '', '', 'Single', 'Student', 0, 44, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '203', ''),
(216, 'masangkay', 'lea marie', 'tapales', '2009-12-17', '', 13, '', 'Upper', 0, 'no', '', '', '', 'Single', 'Student', 0, 44, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '204', ''),
(217, 'mendoza', 'bobby', 'malate', '1990-05-06', '', 32, '', 'Upper', 0, '', '', '', '', 'Married', 'Employed', 20000, 45, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '205', ''),
(218, 'mendoza', 'ruth may', 'malate', '1992-09-09', '', 30, '', 'Upper', 0, 'no', '', '', '', 'Married', 'Employed', 10000, 45, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '206', ''),
(219, 'mendoza', 'mark', 'malate', '2005-03-23', '', 17, '', 'Upper', 0, 'no', '', '', '', 'Single', 'Student', 0, 45, 0, '', 'Filipino', 'Male', '', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '207', ''),
(220, 'mendoza', 'grace', 'malate', '2009-12-24', '', 13, '', 'Upper', 0, 'no', '', '', 'B', 'Single', 'Student', 0, 45, 0, '', 'Filipino', 'Female', '', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '210', ''),
(221, 'mercene', 'jesus', 'basila', '1950-08-08', '', 72, '', 'Proper', 0, 'no', '', '', 'AB', 'Widow', 'UNemployed', 0, 46, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '211', ''),
(222, 'mercene', 'mark jay', 'basila', '1975-09-23', '', 47, '', 'Proper', 0, 'no', '', '', 'B', 'Married', 'Employed', 10000, 46, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'Elementary', '-Select-', '', '', '', '', '', '', '', 'default.png', '212', ''),
(223, 'mercene', 'eva', 'basila', '1980-12-24', '', 42, '', 'Proper', 0, 'no', '', '', 'AB', 'Married', 'Employed', 10000, 46, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '213', ''),
(224, 'mercene', 'may', 'basila', '1999-12-13', '', 23, '', 'Proper', 0, '', '', '', '', 'Single', 'Student', 0, 46, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '214', ''),
(225, 'mercene', 'marie', 'basila', '2002-09-09', '', 20, '', 'Proper', 0, 'no', '', '', '', 'Single', 'Student', 0, 46, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '215', ''),
(226, 'mercene', 'grace', 'basila', '2005-07-07', '', 17, '', 'Proper', 0, 'no', '', '', '', 'Single', 'Student', 0, 46, 0, '', 'Filipino', 'Male', 'Head', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '216', ''),
(227, 'morales', 'manuel', 'tadeja', '1978-09-04', '', 44, '', 'Proper', 0, 'no', '', '', '', 'Married', 'Employed', 20000, 47, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '217', ''),
(228, 'morales', 'chritine', 'tadeja', '1980-06-07', '', 42, '', 'Baranguit', 0, 'no', '', '', 'B', 'Married', 'Employed', 10000, 47, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '218', ''),
(229, 'morales', 'manny', 'tadeja', '2000-08-09', '', 22, '', 'Proper', 0, 'no', '', '', '', 'Single', 'Student', 0, 47, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '219', ''),
(230, 'morales', 'romnick', 'tadeja', '2003-07-08', '', 19, '', 'Proper', 0, 'no', '', '', 'B', 'Single', 'Student', 0, 47, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '220', ''),
(231, 'morales', 'kim', 'tadeja', '2004-12-26', '', 18, '', 'Proper', 0, 'no', '', '', '', 'Single', 'Student', 0, 47, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '221', ''),
(232, 'morales', 'mark', 'tadeja', '2005-11-23', '', 17, '', 'Proper', 0, 'yes', '', '', '', 'Single', 'Student', 0, 47, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '222', ''),
(233, 'nimer', 'nicanor', 'curtudio', '1968-12-17', '', 54, '', 'Oyas', 0, 'no', '', '', 'O', 'Married', 'Employed', 10000, 48, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '223', ''),
(234, 'nimer', 'jessica', 'curtudio', '1969-09-09', '', 53, '', 'Oyas', 0, '', '', '', '', 'Married', 'Employed', 10000, 48, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '224', ''),
(235, 'nimer', 'alvin', 'curtudio', '1990-04-25', '', 32, '', 'Oyas', 0, '', '', '', '', 'Single', 'UNemployed', 0, 48, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'High school, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '225', ''),
(236, 'nimer', 'ellis', 'curtudio', '1995-05-07', '', 27, '', 'Oyas', 0, 'no', '', '', '', 'Single', 'Student', 0, 48, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '227', ''),
(237, 'nimer', 'ivan james', 'curtudio', '1998-09-23', '', 24, '', 'Oyas', 0, 'no', '', '', 'B', 'Single', 'Student', 0, 48, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '228', ''),
(238, 'obrador', 'jay', 'castillo', '1989-03-23', '', 33, '', 'balisong', 0, 'no', '', '', '', 'Married', 'Employed', 20000, 49, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '229', ''),
(239, 'obrador', 'gemma', 'castillo', '1990-12-17', '', 32, '', 'balisong', 0, 'no', '', '', '', 'Married', 'Employed', 10000, 49, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '230', ''),
(240, 'obrador', 'jayjay', 'castillo', '2010-09-09', '', 12, '', 'Oyas', 0, 'no', '', '', '', 'Single', 'Student', 0, 49, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '231', ''),
(241, 'obrador', 'kim', 'castillo', '2011-12-24', '', 11, '', 'Oyas', 0, 'no', '', '', '', 'Single', 'Student', 10000, 49, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '232', ''),
(242, 'obrador', 'yam', 'castillo', '2013-08-09', '', 9, '', 'Oyas', 0, '', '', '', '', 'Single', 'Student', 0, 49, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '233', ''),
(243, 'pacipico', 'rafael', 'tesaluna', '1985-08-09', '', 37, '', 'Pitogo', 0, 'no', '', '', 'B', 'Married', 'Employed', 10000, 50, 0, '', 'Filipino', 'Male', 'Head', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '236', ''),
(244, 'pacipico', 'grace', 'tesaluna', '1989-12-23', '', 33, '', 'Pitogo', 0, '', '', '', '', 'Married', 'Employed', 0, 50, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '237', ''),
(245, 'pacipico', 'lea marie', 'tesaluna', '2000-12-23', '', 22, '', 'Pitogo', 0, '', '', '', '', 'Single', 'Student', 0, 50, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '238', ''),
(246, 'pacipico', 'jian kim', 'tesaluna', '2002-12-23', '', 20, '', 'Pitogo', 0, 'no', '', '', 'AB', 'Single', 'Student', 0, 50, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '240', ''),
(247, 'pacipico', 'mark', 'tesaluna', '2005-12-12', '', 17, '', 'Pitogo', 0, 'no', '', '', 'A', 'Single', 'Student', 0, 50, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '241', ''),
(248, 'pacipico', 'johnny', 'tesaluna', '2008-08-08', '', 14, '', 'Pitogo', 0, 'no', '', '', '', 'Single', 'Student', 0, 50, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '242', ''),
(249, 'pacipico', 'alvin', 'tesaluna', '2010-12-12', '', 12, '', 'Pitogo', 0, '', '', '', '', 'Single', 'Student', 0, 50, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '245', ''),
(250, 'pamanilay', 'agusto', 'manalo', '1955-12-12', '', 67, '', 'Baranguit', 0, 'no', '', '', '', 'Married', 'Senior', 10000, 51, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'Elementary', '-Select-', '', '', '', '', '', '', '', 'default.png', '246', ''),
(251, 'pamanilay', 'bernabi', 'manol', '1953-12-12', '', 69, '', 'Baranguit', 0, 'no', '', '', '', 'Married', 'Senior', 10000, 51, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'Elementary', '-Select-', '', '', '', '', '', '', '', 'default.png', '247', ''),
(252, 'pamanilay', 'alvin', 'malate', '1980-12-12', '', 42, '', 'Baranguit', 0, 'no', '', '', '', 'Married', 'Employed', 20000, 52, 0, '', 'Filipino', 'Male', 'Head', 0, 0, 'College, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '248', ''),
(253, 'pamanilay', 'grace', 'malate', '1978-09-23', '', 44, '', 'Baranguit', 0, 'no', '', '', 'B', 'Married', 'Employed', 20000, 52, 0, '', 'Filipino', 'Female', 'Member', 0, 0, 'College, undergrad', '-Select-', '', '', '', '', '', '', '', 'default.png', '249', ''),
(254, 'pamanilay', 'chris', 'malate', '2001-12-12', '', 21, '', 'Baranguit', 0, 'no', '', '', '', 'Single', 'Student', 0, 52, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '250', ''),
(255, 'ramos', 'marites', 'tesaluna', '1970-12-12', '', 52, '', 'Proper', 0, 'no', '', '', 'B', 'Widow', 'Employed', 10000, 53, 0, '', 'Filipino', 'Male', 'Member', 0, 0, 'High school graduate', '-Select-', '', '', '', '', '', '', '', 'default.png', '251', ''),
(256, 'ramos', 'alvin', 'tesaluna', '2000-12-12', '', 22, '', 'Baranguit', 0, '', '', '', '', 'Single', 'Student', 0, 53, 0, '', 'Filipino', 'Male', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '252', ''),
(257, 'ramos', 'chritine', 'tesaluna', '2005-09-09', '', 17, '', 'Baranguit', 0, 'no', '', '', '', 'Single', 'Student', 0, 53, 0, '', 'Filipino', 'Female', 'Member', 0, 0, '', '-Select-', '', '', '', '', '', '', '', 'default.png', '253', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE `tblstaff` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `username`, `password`, `type`) VALUES
(1, 'admin', 'admin', 'administrator'),
(2, 'zone', '1234', 'zoneleader');

-- --------------------------------------------------------

--
-- Table structure for table `tblzone`
--

CREATE TABLE `tblzone` (
  `id` int(5) NOT NULL,
  `zone` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblzone`
--

INSERT INTO `tblzone` (`id`, `zone`, `username`, `password`) VALUES
(2, '4', 'a', 'a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblactivity`
--
ALTER TABLE `tblactivity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblactivityphoto`
--
ALTER TABLE `tblactivityphoto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblblotter`
--
ALTER TABLE `tblblotter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclearance`
--
ALTER TABLE `tblclearance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhousehold`
--
ALTER TABLE `tblhousehold`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbllogs`
--
ALTER TABLE `tbllogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblofficial`
--
ALTER TABLE `tblofficial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpermit`
--
ALTER TABLE `tblpermit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresident`
--
ALTER TABLE `tblresident`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblzone`
--
ALTER TABLE `tblzone`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblactivity`
--
ALTER TABLE `tblactivity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblactivityphoto`
--
ALTER TABLE `tblactivityphoto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tblblotter`
--
ALTER TABLE `tblblotter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblclearance`
--
ALTER TABLE `tblclearance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblhousehold`
--
ALTER TABLE `tblhousehold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbllogs`
--
ALTER TABLE `tbllogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;

--
-- AUTO_INCREMENT for table `tblofficial`
--
ALTER TABLE `tblofficial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblpermit`
--
ALTER TABLE `tblpermit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblresident`
--
ALTER TABLE `tblresident`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `tblstaff`
--
ALTER TABLE `tblstaff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
