-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2017 at 09:49 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `result_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `code` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `pass`, `code`) VALUES
(1, 'pheonix', 'admin@gmail.com', 'adminadmin', 'adminadmin');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Index_no` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `user_name`, `email`, `Index_no`, `message`, `date`) VALUES
(1, 'Meruja Selvamanikkam', 'meruja@gmail.com', '6262626', 'jnjbjbj', '2017-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `dept` varchar(10) NOT NULL,
  `Subject` varchar(20) NOT NULL,
  `Course_Code` varchar(15) NOT NULL,
  `Course_Title` varchar(100) NOT NULL,
  `Credit_Value` int(2) NOT NULL,
  `Level` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `dept`, `Subject`, `Course_Code`, `Course_Title`, `Credit_Value`, `Level`) VALUES
(7, 'MS', 'Applied Mathematics', 'AMM101GC2', 'Vector Analysis', 2, '1G'),
(8, 'MS', 'Applied Mathematics', 'AMM102GC2', 'Dynamics', 2, '1G'),
(9, 'MS', 'Applied Mathematics', 'AMM103GC2', 'Ordinary Differential Equations', 2, '1G'),
(10, 'MS', 'Applied Mathematics', 'AMM104GC2', 'Matrices & Statics', 2, '1G'),
(11, 'CHE', 'Chemistry', 'CHE101GC2', 'General Chemistry and Chemistry of main group elements', 2, '1G'),
(12, 'CHE', 'Chemistry', 'CHE102GC2', 'Introductory Physical Chemistry', 2, '1G'),
(13, 'CHE', 'Chemistry', 'CHE103GC2', 'Stereochemistry and Reaction Mechanisms', 2, '1G'),
(14, 'CHE', 'Chemistry', 'CHE106GC1', 'Practical Chemistry 1 (Inorganic Chemistry)', 1, '1G'),
(15, 'CHE', 'Chemistry', 'CHE107GC1', 'Practical Chemistry 1 (Organic and Physical Chemistry)', 1, '1G'),
(17, 'CHE', 'Chemistry', 'CHE201GC2', 'Application of Spectroscopic Methods and Coordination Chemistry', 2, '2G'),
(18, 'CHE', 'Chemistry', 'CHE202GC3', 'Atomic and Molecular Structure and Basic Principles of Molecular Spectroscopy', 3, '1G'),
(19, 'CSC', 'Computer Science', 'CSC111GC3', 'Foundations of Computer Science', 3, '1G'),
(20, 'CSC', 'Computer Science', 'CSC112GC3', 'Computer Programming(1)', 3, '1G'),
(21, 'CSC', 'Computer Science', 'CSC113GC2', 'Data Structures and Algorithms(1)', 2, '1G'),
(22, 'PHY', 'Physics', 'PHY101GC2', 'Practical Physics(1)', 2, '1G'),
(23, 'PHY', 'Physics', 'PHY102GC3', 'Mechanics,Vibrations and Waves', 3, '1G'),
(24, 'PHY', 'Physics', 'PHY105GC3', 'Electricity,Electromagnetic Fields and Electronics', 3, '1G'),
(25, 'MS', 'Pure Mathematics', 'PMM101GC2', 'Set Theory', 2, '1G'),
(26, 'MS', 'Pure Mathematics', 'PMM102GC2', 'Limit Process', 2, '1G'),
(27, 'MS', 'Pure Mathematics', 'PMM103GC2', 'Algebra', 2, '1G'),
(28, 'MS', 'Pure Mathematics', 'PMM104GC2', 'Calculus', 2, '1G'),
(29, 'MS', 'Statistics', 'STA104GC3', 'Probability Theory', 3, '1G'),
(31, 'MS', 'Statistics', 'STA106GC2', 'Applied Statistics', 2, '1G'),
(33, 'CSC', 'Computer Science', 'CSC233GC2', 'Database Management System', 2, '2G'),
(34, 'CSC', 'Computer Science', 'CSC231GC2', 'Software Engineering', 2, '2G');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `grade_type` varchar(10) NOT NULL,
  `gpv_value` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`grade_type`, `gpv_value`) VALUES
('A', 4),
('A+', 4),
('A-', 3.7),
('B', 3),
('B+', 3.3),
('B-', 2.7),
('C', 2),
('C+', 2.3),
('C-', 1.7),
('D', 0.3),
('D+', 1.3),
('E', 0);

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `mob` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`id`, `name`, `email`, `pass`, `dept`, `mob`, `status`) VALUES
(1, 'aarurr', 'aaru@gmail.com', 'e492b5418a7e12e3a64d7cef8e05510e', 'CSC', '9015501897', '1'),
(2, 'meera', 'me@live.com', 'e10adc3949ba59abbe56e057f20f883e', 'CSC', '0771384600', '0'),
(5, 'Thabotharan Kathiravelu', 'thabotharan@gmail.com', 'dba62116b1229cfe24579c00cbb3b7fd', 'CSC', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `ip_address`
--

CREATE TABLE `ip_address` (
  `id` int(11) NOT NULL,
  `mac_id` varchar(20) NOT NULL,
  `ip_add` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `up_status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ip_address`
--

INSERT INTO `ip_address` (`id`, `mac_id`, `ip_add`, `date`, `up_status`) VALUES
(1, '0', '1010', '2017-03-07 16:57:31', 'successfull'),
(2, '', '10.10.10.164', '2017-03-07 17:01:45', 'successfull'),
(3, '::1', '10.10.10.164', '2017-03-07 17:03:18', 'successfull');

-- --------------------------------------------------------

--
-- Table structure for table `marks_photo`
--

CREATE TABLE `marks_photo` (
  `id` int(11) NOT NULL,
  `level` varchar(10) NOT NULL,
  `semester` int(2) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks_photo`
--

INSERT INTO `marks_photo` (`id`, `level`, `semester`, `subject`, `image`) VALUES
(3256, '2G', 2, 'CSC113GC2', '74848-result.jpg'),
(3257, '2G', 1, 'CSC111GC3', '29239-rms5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `admin` varchar(50) NOT NULL,
  `Instructor` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `notification` text NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `admin`, `Instructor`, `subject`, `notification`, `date`) VALUES
(1, 'admin@gmail.com', 'aaru@gmail.com', 'jbnmb', 'hkbkbkjn', '2017-02-05');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `Index_no` varchar(10) NOT NULL,
  `Course_Code` varchar(50) NOT NULL,
  `credit` int(2) NOT NULL,
  `semester` int(5) NOT NULL,
  `attempt` int(5) NOT NULL,
  `Level` varchar(5) NOT NULL,
  `marks` int(5) NOT NULL,
  `Result` varchar(10) NOT NULL,
  `gpv` varchar(10) NOT NULL,
  `credit*gpv` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `Index_no`, `Course_Code`, `credit`, `semester`, `attempt`, `Level`, `marks`, `Result`, `gpv`, `credit*gpv`) VALUES
(1, 'S1111', 'AMM222GC2', 2, 1, 1, '1G', 68, 'B', '3', '6'),
(2, 'S1112', 'CSC111GC3', 3, 1, 1, '1S', 75, 'A+', '4', '12'),
(3, 'S1113', 'PMM121GC2', 2, 2, 1, '2G', 80, 'A', '4', '8'),
(4, 'S1114', 'STA566GC4', 4, 2, 1, '3S', 75, 'A', '4', '16'),
(5, 'S1115', 'CSC225GC2', 2, 1, 2, '2G', 65, 'C', '2', '4'),
(6, 'S1116', 'PMM456GC2', 2, 2, 1, '1G', 50, 'D+', '1.3', '2.6'),
(7, 'S1117', 'PMM777GC4', 4, 2, 2, '1S', 80, 'A', '4', '16'),
(8, 'S1118', 'STA624GC2', 2, 1, 2, '3S', 91, 'A-', '3.7', '7.4'),
(9, 'S1119', 'AMM666GC3', 3, 2, 1, '1G', 84, 'A', '4', '12'),
(10, 'S1120', 'PMM999GC2', 2, 1, 1, '2G', 69, 'B', '3', '6'),
(11, 'S1121', 'CSC1213GC2', 2, 2, 1, '3G', 65, 'C', '2', '4'),
(12, 'S1122', 'CSC635GC3', 3, 2, 1, '1G', 83, 'A', '4', '12'),
(13, 'S1123', 'AMM741GC2', 2, 1, 1, '2G', 87, 'A', '4', '8'),
(14, 'S1124', 'PMM941GC3', 3, 1, 1, '1G', 64, 'C', '2', '6'),
(24, 'S8765', 'CSC111GC3', 3, 1, 1, '1G', 0, 'A-', '3.7', '11.1'),
(25, 'S8765', 'CSC112GC3', 3, 1, 1, '1G', 0, 'A+', '4', '12'),
(26, 'S8765', 'CSC113GC2', 2, 1, 1, '1G', 0, 'A', '4', '8'),
(27, 'S8765', 'PMM101GC2', 2, 1, 1, '1G', 0, 'B+', '3.3', '6.6'),
(28, 'S8765', 'PMM102GC2', 2, 1, 1, '1G', 0, 'B+', '3.3', '6.6'),
(29, 'S8765', 'PMM103GC2', 2, 1, 1, '1G', 0, 'B', '3', '6'),
(30, 'S8765', 'PMM104GC2', 2, 1, 1, '1G', 0, 'A+', '4', '8'),
(31, 'S8765', 'STA104GC3', 3, 1, 1, '1G', 0, 'C', '2', '6'),
(32, 'S8765', 'STA106GC2', 2, 1, 1, '1G', 0, 'C+', '2.3', '4.6'),
(56, 'F2†WÐ…àF[', '', 0, 0, 0, '', 0, '', '', ''),
(57, '0mxåöàE½', '', 0, 0, 0, '', 0, '', '', ''),
(58, 'µr·[j%e~£', '', 0, 0, 0, '', 0, '', '', ''),
(59, 'NJm$µ°5;RW', '', 0, 0, 0, '', 0, '', '', ''),
(60, 'B•dMbhîÏÁ', '', 0, 0, 0, '', 0, '', '', ''),
(61, 'Ù»·\r)B°ÆÖ', '', 0, 0, 0, '', 0, '', '', ''),
(62, 'k‹k[ÚòKßåÓ', '5®mImÀWåÏ', 0, 0, 0, '', 0, '', '', ''),
(63, 'pÇâ¸„=g', '', 0, 0, 0, '', 0, '', '', ''),
(64, 'ÚMÂ3S8(', '', 0, 0, 0, '', 0, '', '', ''),
(65, 'FC`4FC`4', '', 0, 0, 0, '', 0, '', '', ''),
(66, 'zKoæ¯_ÍŽ', '', 0, 0, 0, '', 0, '', '', ''),
(67, 'F2†WÐ…àF[', '', 0, 0, 0, '', 0, '', '', ''),
(68, '0mxåöàE½', '', 0, 0, 0, '', 0, '', '', ''),
(69, 'µr·[j%e~£', '', 0, 0, 0, '', 0, '', '', ''),
(70, 'NJm$µ°5;RW', '', 0, 0, 0, '', 0, '', '', ''),
(71, 'B•dMbhîÏÁ', '', 0, 0, 0, '', 0, '', '', ''),
(72, 'Ù»·\r)B°ÆÖ', '', 0, 0, 0, '', 0, '', '', ''),
(73, 'k‹k[ÚòKßåÓ', '5®mImÀWåÏ', 0, 0, 0, '', 0, '', '', ''),
(74, 'pÇâ¸„=g', '', 0, 0, 0, '', 0, '', '', ''),
(75, 'ÚMÂ3S8(', '', 0, 0, 0, '', 0, '', '', ''),
(76, 'FC`4FC`4', '', 0, 0, 0, '', 0, '', '', ''),
(77, 'zKoæ¯_ÍŽ', '', 0, 0, 0, '', 0, '', '', ''),
(78, 'F2†WÐ…àF[', '', 0, 0, 0, '', 0, '', '', ''),
(79, '0mxåöàE½', '', 0, 0, 0, '', 0, '', '', ''),
(80, 'µr·[j%e~£', '', 0, 0, 0, '', 0, '', '', ''),
(81, 'NJm$µ°5;RW', '', 0, 0, 0, '', 0, '', '', ''),
(82, 'B•dMbhîÏÁ', '', 0, 0, 0, '', 0, '', '', ''),
(83, 'Ù»·\r)B°ÆÖ', '', 0, 0, 0, '', 0, '', '', ''),
(84, 'k‹k[ÚòKßåÓ', '5®mImÀWåÏ', 0, 0, 0, '', 0, '', '', ''),
(85, 'pÇâ¸„=g', '', 0, 0, 0, '', 0, '', '', ''),
(86, 'ÚMÂ3S8(', '', 0, 0, 0, '', 0, '', '', ''),
(87, 'FC`4FC`4', '', 0, 0, 0, '', 0, '', '', ''),
(88, 'zKoæ¯_ÍŽ', '', 0, 0, 0, '', 0, '', '', ''),
(89, 'F2†WÐ…àF[', '', 0, 0, 0, '', 0, '', '', ''),
(90, '0mxåöàE½', '', 0, 0, 0, '', 0, '', '', ''),
(91, 'µr·[j%e~£', '', 0, 0, 0, '', 0, '', '', ''),
(92, 'NJm$µ°5;RW', '', 0, 0, 0, '', 0, '', '', ''),
(93, 'B•dMbhîÏÁ', '', 0, 0, 0, '', 0, '', '', ''),
(94, 'Ù»·\r)B°ÆÖ', '', 0, 0, 0, '', 0, '', '', ''),
(95, 'k‹k[ÚòKßåÓ', '5®mImÀWåÏ', 0, 0, 0, '', 0, '', '', ''),
(96, 'pÇâ¸„=g', '', 0, 0, 0, '', 0, '', '', ''),
(97, 'ÚMÂ3S8(', '', 0, 0, 0, '', 0, '', '', ''),
(98, 'FC`4FC`4', '', 0, 0, 0, '', 0, '', '', ''),
(99, 'zKoæ¯_ÍŽ', '', 0, 0, 0, '', 0, '', '', ''),
(100, 'F2†WÐ…àF[', '', 0, 0, 0, '', 0, '', '', ''),
(101, '0mxåöàE½', '', 0, 0, 0, '', 0, '', '', ''),
(102, 'µr·[j%e~£', '', 0, 0, 0, '', 0, '', '', ''),
(103, 'NJm$µ°5;RW', '', 0, 0, 0, '', 0, '', '', ''),
(104, 'B•dMbhîÏÁ', '', 0, 0, 0, '', 0, '', '', ''),
(105, 'Ù»·\r)B°ÆÖ', '', 0, 0, 0, '', 0, '', '', ''),
(106, 'k‹k[ÚòKßåÓ', '5®mImÀWåÏ', 0, 0, 0, '', 0, '', '', ''),
(107, 'pÇâ¸„=g', '', 0, 0, 0, '', 0, '', '', ''),
(108, 'ÚMÂ3S8(', '', 0, 0, 0, '', 0, '', '', ''),
(109, 'FC`4FC`4', '', 0, 0, 0, '', 0, '', '', ''),
(110, 'zKoæ¯_ÍŽ', '', 0, 0, 0, '', 0, '', '', ''),
(111, 'F2†WÐ…àF[', '', 0, 0, 0, '', 0, '', '', ''),
(112, '0mxåöàE½', '', 0, 0, 0, '', 0, '', '', ''),
(113, 'µr·[j%e~£', '', 0, 0, 0, '', 0, '', '', ''),
(114, 'NJm$µ°5;RW', '', 0, 0, 0, '', 0, '', '', ''),
(115, 'B•dMbhîÏÁ', '', 0, 0, 0, '', 0, '', '', ''),
(116, 'Ù»·\r)B°ÆÖ', '', 0, 0, 0, '', 0, '', '', ''),
(117, 'k‹k[ÚòKßåÓ', '5®mImÀWåÏ', 0, 0, 0, '', 0, '', '', ''),
(118, 'pÇâ¸„=g', '', 0, 0, 0, '', 0, '', '', ''),
(119, 'ÚMÂ3S8(', '', 0, 0, 0, '', 0, '', '', ''),
(120, 'FC`4FC`4', '', 0, 0, 0, '', 0, '', '', ''),
(121, 'S8879', 'AMM101GC2', 2, 1, 1, '1G', 68, 'B', '3.8', '7.6'),
(122, 'S8879', 'AMM102GC2', 2, 1, 1, '1G', 75, 'A', '4.4', '8.8'),
(123, 'S8879', 'AMM103GC2', 2, 1, 1, '1G', 80, 'A', '4.4', '8.8'),
(124, 'S8879', 'AMM104GC2', 2, 1, 1, '1G', 75, 'A', '4.4', '8.8'),
(125, 'S8879', 'PMM101GC2', 2, 1, 1, '1G', 65, 'C', '3.8', '7.6'),
(126, 'S8879', 'PMM102GC2', 2, 1, 1, '1G', 50, 'D', '3.8', '7.6'),
(127, 'S8879', 'PMM103GC2', 2, 1, 1, '1G', 80, 'A', '4.4', '8.8'),
(128, 'S8879', 'PMM104GC2', 2, 1, 1, '1G', 91, 'A', '4.4', '8.8'),
(129, 'S8879', 'STA104GC3', 3, 1, 1, '1G', 84, 'A', '6.6', '19.8'),
(130, 'S8879', 'STA106GC2', 2, 1, 1, '1G', 69, 'B', '3.8', '7.6'),
(131, 'S8879', 'AMM101GC2', 2, 1, 1, '1G', 68, 'B', '3.8', '7.6'),
(132, 'S8879', 'AMM102GC2', 2, 1, 1, '1G', 75, 'A', '4.4', '8.8'),
(133, 'S8879', 'AMM103GC2', 2, 1, 1, '1G', 80, 'A', '4.4', '8.8'),
(134, 'S8879', 'AMM104GC2', 2, 1, 1, '1G', 75, 'A', '4.4', '8.8'),
(135, 'S8879', 'PMM101GC2', 2, 1, 1, '1G', 65, 'C', '3.8', '7.6'),
(136, 'S8879', 'PMM102GC2', 2, 1, 1, '1G', 50, 'D', '3.8', '7.6'),
(137, 'S8879', 'PMM103GC2', 2, 1, 1, '1G', 80, 'A', '4.4', '8.8'),
(138, 'S8879', 'PMM104GC2', 2, 1, 1, '1G', 91, 'A', '4.4', '8.8'),
(139, 'S8879', 'STA104GC3', 3, 1, 1, '1G', 84, 'A', '6.6', '19.8'),
(140, 'S8879', 'STA106GC2', 2, 1, 1, '1G', 69, 'B', '3.8', '7.6'),
(141, 'S8879', 'AMM101GC2', 2, 1, 1, '1G', 68, 'B', '3.8', '7.6'),
(142, 'S8879', 'AMM102GC2', 2, 1, 1, '1G', 75, 'A', '4.4', '8.8'),
(143, 'S8879', 'AMM103GC2', 2, 1, 1, '1G', 80, 'A', '4.4', '8.8'),
(144, 'S8879', 'AMM104GC2', 2, 1, 1, '1G', 75, 'A', '4.4', '8.8'),
(145, 'S8879', 'PMM101GC2', 2, 1, 1, '1G', 65, 'C', '3.8', '7.6'),
(146, 'S8879', 'PMM102GC2', 2, 1, 1, '1G', 50, 'D', '3.8', '7.6'),
(147, 'S8879', 'PMM103GC2', 2, 1, 1, '1G', 80, 'A', '4.4', '8.8'),
(148, 'S8879', 'PMM104GC2', 2, 1, 1, '1G', 91, 'A', '4.4', '8.8'),
(149, 'S8879', 'STA104GC3', 3, 1, 1, '1G', 84, 'A', '6.6', '19.8'),
(150, 'S8879', 'STA106GC2', 2, 1, 1, '1G', 69, 'B', '3.8', '7.6'),
(151, 'S8879', 'AMM101GC2', 2, 1, 1, '1G', 68, 'B', '3.8', '7.6'),
(152, 'S8879', 'AMM102GC2', 2, 1, 1, '1G', 75, 'A', '4.4', '8.8'),
(153, 'S8879', 'AMM103GC2', 2, 1, 1, '1G', 80, 'A', '4.4', '8.8'),
(154, 'S8879', 'AMM104GC2', 2, 1, 1, '1G', 75, 'A', '4.4', '8.8'),
(155, 'S8879', 'PMM101GC2', 2, 1, 1, '1G', 65, 'C', '3.8', '7.6'),
(156, 'S8879', 'PMM102GC2', 2, 1, 1, '1G', 50, 'D', '3.8', '7.6'),
(157, 'S8879', 'PMM103GC2', 2, 1, 1, '1G', 80, 'A', '4.4', '8.8'),
(158, 'S8879', 'PMM104GC2', 2, 1, 1, '1G', 91, 'A', '4.4', '8.8'),
(159, 'S8879', 'STA104GC3', 3, 1, 1, '1G', 84, 'A', '6.6', '19.8'),
(160, 'S8879', 'STA106GC2', 2, 1, 1, '1G', 69, 'B', '3.8', '7.6'),
(161, 'S8879', 'AMM101GC2', 2, 1, 1, '1G', 68, 'B', '3.8', '7.6'),
(162, 'S8879', 'AMM102GC2', 2, 1, 1, '1G', 75, 'A', '4.4', '8.8'),
(163, 'S8879', 'AMM103GC2', 2, 1, 1, '1G', 80, 'A', '4.4', '8.8'),
(164, 'S8879', 'AMM104GC2', 2, 1, 1, '1G', 75, 'A', '4.4', '8.8'),
(165, 'S8879', 'PMM101GC2', 2, 1, 1, '1G', 65, 'C', '3.8', '7.6'),
(166, 'S8879', 'PMM102GC2', 2, 1, 1, '1G', 50, 'D', '3.8', '7.6'),
(167, 'S8879', 'PMM103GC2', 2, 1, 1, '1G', 80, 'A', '4.4', '8.8'),
(168, 'S8879', 'PMM104GC2', 2, 1, 1, '1G', 91, 'A', '4.4', '8.8'),
(169, 'S8879', 'STA104GC3', 3, 1, 1, '1G', 84, 'A', '6.6', '19.8'),
(170, 'S8879', 'STA106GC2', 2, 1, 1, '1G', 69, 'B', '3.8', '7.6'),
(171, 'S8879', 'AMM101GC2', 2, 1, 1, '1G', 68, 'B', '3.8', '7.6'),
(172, 'S8879', 'AMM102GC2', 2, 1, 1, '1G', 75, 'A', '4.4', '8.8'),
(173, 'S8879', 'AMM103GC2', 2, 1, 1, '1G', 80, 'A', '4.4', '8.8'),
(174, 'S8879', 'AMM104GC2', 2, 1, 1, '1G', 75, 'A', '4.4', '8.8'),
(175, 'S8879', 'PMM101GC2', 2, 1, 1, '1G', 65, 'C', '3.8', '7.6'),
(176, 'S8879', 'PMM102GC2', 2, 1, 1, '1G', 50, 'D', '3.8', '7.6'),
(177, 'S8879', 'PMM103GC2', 2, 1, 1, '1G', 80, 'A', '4.4', '8.8'),
(178, 'S8879', 'PMM104GC2', 2, 1, 1, '1G', 91, 'A', '4.4', '8.8'),
(179, 'S8879', 'STA104GC3', 3, 1, 1, '1G', 84, 'A', '6.6', '19.8'),
(180, 'S8879', 'STA106GC2', 2, 1, 1, '1G', 69, 'B', '3.8', '7.6'),
(181, 'S8879', 'AMM101GC2', 2, 1, 1, '1G', 68, 'B', '3.8', '7.6'),
(182, 'S8879', 'AMM102GC2', 2, 1, 1, '1G', 75, 'A', '4.4', '8.8'),
(183, 'S8879', 'AMM103GC2', 2, 1, 1, '1G', 80, 'A', '4.4', '8.8'),
(184, 'S8879', 'AMM104GC2', 2, 1, 1, '1G', 75, 'A', '4.4', '8.8'),
(185, 'S8879', 'PMM101GC2', 2, 1, 1, '1G', 65, 'C', '3.8', '7.6'),
(186, 'S8879', 'PMM102GC2', 2, 1, 1, '1G', 50, 'D', '3.8', '7.6'),
(187, 'S8879', 'PMM103GC2', 2, 1, 1, '1G', 80, 'A', '4.4', '8.8'),
(188, 'S8879', 'PMM104GC2', 2, 1, 1, '1G', 91, 'A', '4.4', '8.8'),
(189, 'S8879', 'STA104GC3', 3, 1, 1, '1G', 84, 'A', '6.6', '19.8'),
(190, 'S8879', 'STA106GC2', 2, 1, 1, '1G', 69, 'B', '3.8', '7.6'),
(191, 'S8879', 'AMM101GC2', 2, 1, 1, '1G', 68, 'B', '3.8', '7.6'),
(192, 'S8879', 'AMM102GC2', 2, 1, 1, '1G', 75, 'A', '4.4', '8.8'),
(193, 'S8879', 'AMM103GC2', 2, 1, 1, '1G', 80, 'A', '4.4', '8.8'),
(194, 'S8879', 'AMM104GC2', 2, 1, 1, '1G', 75, 'A', '4.4', '8.8'),
(195, 'S8879', 'PMM101GC2', 2, 1, 1, '1G', 65, 'C', '3.8', '7.6'),
(196, 'S8879', 'PMM102GC2', 2, 1, 1, '1G', 50, 'D', '3.8', '7.6'),
(197, 'S8879', 'PMM103GC2', 2, 1, 1, '1G', 80, 'A', '4.4', '8.8'),
(198, 'S8879', 'PMM104GC2', 2, 1, 1, '1G', 91, 'A', '4.4', '8.8'),
(199, 'S8879', 'STA104GC3', 3, 1, 1, '1G', 84, 'A', '6.6', '19.8'),
(200, 'S8879', 'STA106GC2', 2, 1, 1, '1G', 69, 'B', '3.8', '7.6'),
(201, 'S8879', 'AMM101GC2', 2, 1, 1, '1G', 68, 'B', '3.8', '7.6'),
(202, 'S8879', 'AMM102GC2', 2, 1, 1, '1G', 75, 'A', '4.4', '8.8'),
(203, 'S8879', 'AMM103GC2', 2, 1, 1, '1G', 80, 'A', '4.4', '8.8'),
(204, 'S8879', 'AMM104GC2', 2, 1, 1, '1G', 75, 'A', '4.4', '8.8'),
(205, 'S8879', 'PMM101GC2', 2, 1, 1, '1G', 65, 'C', '3.8', '7.6'),
(206, 'S8879', 'PMM102GC2', 2, 1, 1, '1G', 50, 'D', '3.8', '7.6'),
(207, 'S8879', 'PMM103GC2', 2, 1, 1, '1G', 80, 'A', '4.4', '8.8'),
(208, 'S8879', 'PMM104GC2', 2, 1, 1, '1G', 91, 'A', '4.4', '8.8'),
(209, 'S8879', 'STA104GC3', 3, 1, 1, '1G', 84, 'A', '6.6', '19.8'),
(210, 'S8879', 'STA106GC2', 2, 1, 1, '1G', 69, 'B', '3.8', '7.6');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` char(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `Index_no` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `email`, `pass`, `Index_no`, `status`) VALUES
(3, 'Meruja Selvamanikkam', 'meruja@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'S8765', '0'),
(4, 'Aaraney Sivakumar', 'aara@gmail.com', 'f565758819502656ded44d4e7bf3b8e8', 'S8879', '0'),
(6, '2014sp0548', 'adsjfjoasf@gmail.com', '20838a8df7cc0babd745c7af4b7d94e2', 'S12484', '1'),
(7, '2014sp05945', 'sdjvh@gmail.com', 'e32c3f86b31273563728c76adefa88f6', 'S54584', '1'),
(8, 'jaya', 'jaya@gmail.com', 'ce9689abdeab50b5bee3b56c7aadee27', '', '1'),
(9, 'jaya', 'j@gmail.com', 'ce9689abdeab50b5bee3b56c7aadee27', '', '0'),
(10, 'Parkavi Kabilathas', 'parkavi@gmail.com', '7d2e139328f0ff5e7c4509d34f8d74c9', 'S8785', '0'),
(11, 'Tharmini Thalayasingam', 'tharmini@gmail.com', '28742468abb3f5faeda64e4325cf4a5d', '', '0'),
(12, 'Cheromi Ibo', 'cheromi@gmail.com', '5b5d5c2a3d81585f7ebd721451875a9a', '', '0'),
(21, 'Thameera Tharmakulasingam', 'thamee@gmail.com', 'fcd99a327ddd404fdb9c187f3ed2c59c', 'S8780', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Course_Code` (`Course_Code`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade_type`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `ip_address`
--
ALTER TABLE `ip_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks_photo`
--
ALTER TABLE `marks_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `ip_address`
--
ALTER TABLE `ip_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `marks_photo`
--
ALTER TABLE `marks_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3258;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
