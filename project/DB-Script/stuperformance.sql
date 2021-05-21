-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2021 at 08:02 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spm`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblassessment`
--

CREATE TABLE `tblassessment` (
  `assessmentid` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `allocatedmark` int(11) NOT NULL,
  `coid` varchar(10) NOT NULL,
  `courseid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblassessment`
--

INSERT INTO `tblassessment` (`assessmentid`, `type`, `allocatedmark`, `coid`, `courseid`) VALUES
(2, 'assignment', 10, 'CSE211-CO1', 'CSE 211'),
(3, 'midterm', 30, 'CSE211-CO2', 'CSE 211'),
(4, 'midterm', 30, 'CSE303-CO1', 'CSE 303'),
(5, 'finals', 40, 'CSE303-CO2', 'CSE 303'),
(6, 'project', 30, 'CSE303-CO3', 'CSE 303');

-- --------------------------------------------------------

--
-- Table structure for table `tblassessmentsubmission`
--

CREATE TABLE `tblassessmentsubmission` (
  `submissionid` int(11) NOT NULL,
  `assessmentid` int(11) NOT NULL,
  `studentid` decimal(7,0) NOT NULL,
  `obtainedmark` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblassessmentsubmission`
--

INSERT INTO `tblassessmentsubmission` (`submissionid`, `assessmentid`, `studentid`, `obtainedmark`) VALUES
(1, 4, '1416455', '8.80'),
(2, 5, '1416455', '26.00'),
(3, 6, '1416455', '24.00'),
(5, 4, '1579288', '7.00'),
(6, 5, '1579288', '18.40'),
(7, 6, '1579288', '23.00'),
(8, 4, '152882', '5.20'),
(9, 5, '152882', '12.00'),
(10, 6, '152882', '6.00'),
(11, 4, '1653725', '0.00'),
(12, 5, '1653725', '0.00'),
(13, 6, '1653725', '0.00'),
(17, 4, '1625654', '8.00'),
(18, 5, '1625654', '12.80'),
(19, 6, '1625654', '24.00'),
(20, 4, '1669953', '1.00'),
(21, 5, '1669953', '0.00'),
(22, 6, '1669953', '0.00'),
(23, 4, '1665555', '6.60'),
(24, 5, '1665555', '16.80'),
(25, 6, '1665555', '27.00'),
(26, 4, '1616161', '13.80'),
(27, 5, '1616161', '20.00'),
(28, 6, '1616161', '0.00'),
(29, 4, '1633554', '6.00'),
(30, 5, '1633554', '0.00'),
(31, 6, '1633554', '0.00'),
(34, 4, '1645333', '17.80'),
(35, 5, '1645333', '20.40'),
(36, 6, '1645333', '23.00'),
(37, 4, '1691291', '5.80'),
(38, 5, '1691291', '21.60'),
(39, 6, '1691291', '30.00'),
(40, 4, '1662147', '5.00'),
(41, 5, '1662147', '9.20'),
(42, 6, '1662147', '9.00'),
(43, 4, '1691483', '7.00'),
(44, 5, '1691483', '12.00'),
(45, 6, '1691483', '6.00'),
(46, 4, '1674181', '7.60'),
(47, 5, '1674181', '14.00'),
(48, 6, '1674181', '11.00'),
(49, 4, '1641252', '24.80'),
(50, 5, '1641252', '24.80'),
(51, 6, '1641252', '34.00'),
(52, 4, '1695837', '11.00'),
(53, 5, '1695837', '21.20'),
(54, 6, '1695837', '24.00'),
(55, 4, '1613273', '4.00'),
(56, 5, '1613273', '15.20'),
(57, 6, '1613273', '12.00'),
(58, 4, '1612985', '8.40'),
(59, 5, '1612985', '20.00'),
(60, 6, '1612985', '12.00'),
(64, 4, '1668314', '0.00'),
(65, 5, '1668314', '24.00'),
(66, 6, '1668314', '11.00'),
(67, 4, '1622731', '0.00'),
(68, 5, '1622731', '0.00'),
(69, 6, '1622731', '0.00'),
(70, 4, '1696326', '7.20'),
(71, 5, '1696326', '24.00'),
(72, 6, '1696326', '12.00'),
(73, 4, '1646434', '0.00'),
(74, 5, '1646434', '23.60'),
(75, 6, '1646434', '12.00'),
(76, 4, '1614142', '9.00'),
(77, 5, '1614142', '23.20'),
(78, 6, '1614142', '12.00'),
(79, 4, '1654432', '17.40'),
(80, 5, '1654432', '18.80'),
(81, 6, '1654432', '25.00'),
(82, 4, '1678812', '3.40'),
(83, 5, '1678812', '23.20'),
(84, 6, '1678812', '23.00'),
(85, 4, '1614733', '0.00'),
(86, 5, '1614733', '18.40'),
(87, 6, '1614733', '10.00'),
(88, 4, '1665491', '11.80'),
(89, 5, '1665491', '17.20'),
(90, 6, '1665491', '23.00'),
(91, 4, '1634352', '12.00'),
(92, 5, '1634352', '18.00'),
(93, 6, '1634352', '12.00'),
(94, 4, '1661638', '9.00'),
(95, 5, '1661638', '18.80'),
(96, 6, '1661638', '20.00'),
(97, 4, '1686272', '2.80'),
(98, 5, '1686272', '23.20'),
(99, 6, '1686272', '12.00'),
(100, 4, '1729416', '14.20'),
(101, 5, '1729416', '18.80'),
(102, 6, '1729416', '19.00'),
(103, 4, '1763881', '8.40'),
(104, 5, '1763881', '0.00'),
(105, 6, '1763881', '0.00'),
(124, 4, '1778274', '9.20'),
(125, 5, '1778274', '18.00'),
(126, 6, '1778274', '27.00'),
(127, 4, '1795656', '12.20'),
(128, 5, '1795656', '19.20'),
(129, 6, '1795656', '25.00'),
(130, 4, '1773277', '11.40'),
(131, 5, '1773277', '23.00'),
(132, 6, '1773277', '23.00'),
(133, 4, '1759787', '9.60'),
(134, 5, '1759787', '0.00'),
(135, 6, '1759787', '0.00'),
(136, 4, '1743714', '6.60'),
(137, 5, '1743714', '15.60'),
(138, 6, '1743714', '11.00'),
(139, 4, '1747457', '2.80'),
(140, 5, '1747457', '22.00'),
(141, 6, '1747457', '27.00'),
(142, 4, '1728125', '14.60'),
(143, 5, '1728125', '18.40'),
(144, 6, '1728125', '11.00'),
(145, 4, '1783512', '12.20'),
(146, 5, '1783512', '24.00'),
(147, 6, '1783512', '11.00'),
(148, 4, '1768463', '11.40'),
(149, 5, '1768463', '22.40'),
(150, 6, '1768463', '11.00'),
(151, 4, '1797625', '13.00'),
(152, 5, '1797625', '21.00'),
(153, 6, '1797625', '11.00'),
(154, 4, '1754681', '20.40'),
(155, 5, '1754681', '21.60'),
(156, 6, '1754681', '23.00'),
(157, 4, '1798883', '6.00'),
(158, 5, '1798883', '23.00'),
(159, 6, '1798883', '20.00'),
(160, 4, '1769463', '4.00'),
(161, 5, '1769463', '0.00'),
(162, 6, '1769463', '0.00'),
(163, 4, '1766156', '14.40'),
(164, 5, '1766156', '14.40'),
(165, 6, '1766156', '0.00'),
(166, 4, '1772947', '16.40'),
(167, 5, '1772947', '20.80'),
(168, 6, '1772947', '0.00'),
(169, 4, '1731817', '24.20'),
(170, 5, '1731817', '18.80'),
(171, 6, '1731817', '30.00'),
(172, 4, '1752538', '7.00'),
(173, 5, '1752538', '22.40'),
(174, 6, '1752538', '0.00'),
(175, 4, '1731852', '7.00'),
(176, 5, '1731852', '24.00'),
(177, 6, '1731852', '0.00'),
(178, 4, '1766176', '17.00'),
(179, 5, '1766176', '22.00'),
(180, 6, '1766176', '0.00'),
(181, 4, '1715578', '10.60'),
(182, 5, '1715578', '27.60'),
(183, 6, '1715578', '26.00'),
(184, 4, '1745484', '3.80'),
(185, 5, '1745484', '0.00'),
(186, 6, '1745484', '0.00'),
(187, 4, '1791753', '21.40'),
(188, 5, '1791753', '22.80'),
(189, 6, '1791753', '30.00'),
(190, 4, '1742892', '2.00'),
(191, 5, '1742892', '4.80'),
(192, 6, '1742892', '23.00'),
(193, 4, '1788337', '17.00'),
(194, 5, '1788337', '24.00'),
(195, 6, '1788337', '23.00'),
(196, 4, '1736425', '20.00'),
(197, 5, '1736425', '27.00'),
(198, 6, '1736425', '9.00'),
(199, 4, '1728439', '11.60'),
(200, 5, '1728439', '23.60'),
(201, 6, '1728439', '22.00'),
(202, 4, '1712983', '14.60'),
(203, 5, '1712983', '27.00'),
(204, 6, '1712983', '23.00'),
(205, 4, '1718437', '18.40'),
(206, 5, '1718437', '24.80'),
(207, 6, '1718437', '19.00'),
(208, 4, '1784847', '21.00'),
(209, 5, '1784847', '27.00'),
(210, 6, '1784847', '30.00'),
(211, 4, '1737824', '17.40'),
(212, 5, '1737824', '17.20'),
(213, 6, '1737824', '19.00'),
(214, 4, '1797789', '4.60'),
(215, 5, '1797789', '14.40'),
(216, 6, '1797789', '9.00'),
(217, 4, '1728139', '6.00'),
(218, 5, '1728139', '12.40'),
(219, 6, '1728139', '9.00'),
(220, 4, '1711619', '12.80'),
(221, 5, '1711619', '20.00'),
(222, 6, '1711619', '27.00'),
(223, 4, '1789481', '22.00'),
(224, 5, '1789481', '25.00'),
(225, 6, '1789481', '30.00'),
(226, 4, '1711729', '1.20'),
(227, 5, '1711729', '15.20'),
(228, 6, '1711729', '0.00'),
(229, 4, '1773384', '8.80'),
(230, 5, '1773384', '21.00'),
(231, 6, '1773384', '25.00'),
(232, 4, '1762565', '9.40'),
(233, 5, '1762565', '22.40'),
(234, 6, '1762565', '30.00'),
(235, 4, '1898334', '7.00'),
(236, 5, '1898334', '23.60'),
(237, 6, '1898334', '19.00'),
(238, 4, '1892367', '11.80'),
(239, 5, '1892367', '28.00'),
(240, 6, '1892367', '29.00'),
(241, 4, '1863951', '19.60'),
(242, 5, '1863951', '22.00'),
(243, 6, '1863951', '20.00'),
(244, 4, '1835298', '19.00'),
(245, 5, '1835298', '18.40'),
(246, 6, '1835298', '17.00'),
(247, 4, '1835874', '10.60'),
(248, 5, '1835874', '23.20'),
(249, 6, '1835874', '30.00'),
(250, 4, '1849651', '14.00'),
(251, 5, '1849651', '15.20'),
(252, 6, '1849651', '12.00'),
(253, 4, '1872128', '11.00'),
(254, 5, '1872128', '25.00'),
(255, 6, '1872128', '27.00'),
(256, 4, '1887973', '12.40'),
(257, 5, '1887973', '17.60'),
(258, 6, '1887973', '24.00'),
(259, 4, '1886577', '15.80'),
(260, 5, '1886577', '22.00'),
(261, 6, '1886577', '30.00'),
(262, 4, '1877262', '21.20'),
(263, 5, '1877262', '22.00'),
(264, 6, '1877262', '24.00'),
(265, 4, '1873255', '21.20'),
(266, 5, '1873255', '20.40'),
(267, 6, '1873255', '24.00'),
(268, 4, '1834433', '25.60'),
(269, 5, '1834433', '25.20'),
(270, 6, '1834433', '30.00'),
(271, 4, '1868128', '17.60'),
(272, 5, '1868128', '27.60'),
(273, 6, '1868128', '27.00'),
(274, 4, '1845457', '4.00'),
(275, 5, '1845457', '0.00'),
(276, 6, '1845457', '0.00'),
(277, 4, '1855787', '14.20'),
(278, 5, '1855787', '20.40'),
(279, 6, '1855787', '23.00'),
(280, 4, '1893863', '5.20'),
(281, 5, '1893863', '0.00'),
(282, 6, '1893863', '0.00'),
(283, 4, '1842333', '11.00'),
(284, 5, '1842333', '20.80'),
(285, 6, '1842333', '25.00');

-- --------------------------------------------------------

--
-- Table structure for table `tblco`
--

CREATE TABLE `tblco` (
  `coid` varchar(10) NOT NULL,
  `courseid` varchar(10) NOT NULL,
  `details` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblco`
--

INSERT INTO `tblco` (`coid`, `courseid`, `details`) VALUES
('CSE211-CO1', 'CSE 211', 'Students will learn methods for designing efficient algorithms, evaluating their performance, and \r\nways of establishing precise limits on the possible effectiveness of classes of algorithms '),
('CSE211-CO2', 'CSE 211', 'They will learn standard algorithms for fundamental problems.'),
('CSE303-CO1', 'CSE 303', 'Proficiency in the design of database applications starting from the conceptual design to the \r\nimplementation of database schemas and user interfaces.'),
('CSE303-CO2', 'CSE 303', 'Solid foundation on database design concepts, data models (E/R model, relational model), the \r\ndatabase query language SQL, and components of a database management system.'),
('CSE303-CO3', 'CSE 303', 'Basic understanding of data access structures, query processing and optimization techniques, and \r\ntransaction management.'),
('EEE131-CO1', 'EEE 131', 'Basic of Electronics'),
('EEE131-CO2', 'EEE 131', 'In depth understanding of Circuits'),
('MIS341-CO1', 'MIS 341', 'Understanding basic of MIS'),
('MIS341-CO2', 'MIS 341', 'Understanding software market');

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

CREATE TABLE `tblcourse` (
  `courseid` varchar(10) NOT NULL,
  `coursename` varchar(100) NOT NULL,
  `coursecredit` int(11) NOT NULL,
  `programid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcourse`
--

INSERT INTO `tblcourse` (`courseid`, `coursename`, `coursecredit`, `programid`) VALUES
('CSE 211', 'Algorithm', 3, 'BSc in CSE'),
('CSE 303', 'Database Management System', 3, 'BSc in CSE'),
('EEE 131', 'Electrical Circuit - I', 3, 'BSc in EEE'),
('EEE 132', 'Introduction to Materials and Chemistry', 3, 'BSc in EEE'),
('MIS 341', 'Computers in Business', 3, 'BSc MIS'),
('MIS 441', 'Accounting Information Systems', 3, 'BSc MIS');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartment`
--

CREATE TABLE `tbldepartment` (
  `departmentid` varchar(4) NOT NULL,
  `departmentname` varchar(30) NOT NULL,
  `schoolid` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbldepartment`
--

INSERT INTO `tbldepartment` (`departmentid`, `departmentname`, `schoolid`) VALUES
('CSE', 'Computer Science and Engineeri', 'SETS'),
('EEE', 'Electrical & Electronic Engine', 'SETS'),
('MIS', 'Management Information Systems', 'SBE');

-- --------------------------------------------------------

--
-- Table structure for table `tblfaculty`
--

CREATE TABLE `tblfaculty` (
  `facultyid` decimal(5,0) NOT NULL,
  `facultyname` varchar(30) NOT NULL,
  `emailid` varchar(15) DEFAULT NULL,
  `contractno` decimal(11,0) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `employmentyear` decimal(4,0) DEFAULT NULL,
  `departmentid` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblfaculty`
--

INSERT INTO `tblfaculty` (`facultyid`, `facultyname`, `emailid`, `contractno`, `address`, `gender`, `employmentyear`, `departmentid`) VALUES
('12345', 'F1', NULL, NULL, NULL, NULL, '2000', 'CSE'),
('12346', 'F2', NULL, NULL, NULL, NULL, '2000', 'CSE'),
('12347', 'F3', NULL, NULL, NULL, NULL, '2000', 'EEE'),
('12348', 'F4', NULL, NULL, NULL, NULL, '2000', 'EEE'),
('12349', 'F5', NULL, NULL, NULL, NULL, '2000', 'MIS');

-- --------------------------------------------------------

--
-- Table structure for table `tblplo`
--

CREATE TABLE `tblplo` (
  `ploid` varchar(20) NOT NULL,
  `programid` varchar(10) NOT NULL,
  `details` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblplo`
--

INSERT INTO `tblplo` (`ploid`, `programid`, `details`) VALUES
('PLO 1', 'BSc in CSE', 'Knowledge'),
('PLO 10', 'BSc in CSE', 'Communication'),
('PLO 11', 'BSc in CSE', 'Self-Motivated'),
('PLO 12', 'BSc in CSE', 'Ethics'),
('PLO 13', 'BSc in CSE', 'Process Management'),
('PLO 2', 'BSc in CSE', 'Requirement Analysis'),
('PLO 3', 'BSc in CSE', 'Problem Analysis'),
('PLO 4', 'BSc in CSE', 'Design'),
('PLO 5', 'BSc in CSE', 'Problem Solving'),
('PLO 6', 'BSc in CSE', 'Implementation'),
('PLO 7', 'BSc in CSE', 'Experiment and Analysis'),
('PLO 8', 'BSc in CSE', 'Community Engagement & Engg.'),
('PLO 9', 'BSc in CSE', 'Teamwork');

-- --------------------------------------------------------

--
-- Table structure for table `tblploco`
--

CREATE TABLE `tblploco` (
  `ploid` varchar(10) NOT NULL,
  `coid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblploco`
--

INSERT INTO `tblploco` (`ploid`, `coid`) VALUES
('PLO 1', 'CSE211-CO1'),
('PLO 1', 'CSE211-CO2'),
('PLO 1', 'CSE303-CO2'),
('PLO 1', 'CSE303-CO3'),
('PLO 12', 'CSE211-CO1'),
('PLO 12', 'CSE303-CO1'),
('PLO 13', 'CSE211-CO1'),
('PLO 13', 'CSE303-CO1'),
('PLO 2', 'CSE211-CO1'),
('PLO 2', 'CSE303-CO1'),
('PLO 2', 'CSE303-CO2'),
('PLO 3', 'CSE211-CO1'),
('PLO 3', 'CSE211-CO2'),
('PLO 3', 'CSE303-CO2'),
('PLO 4', 'CSE211-CO1'),
('PLO 4', 'CSE303-CO1'),
('PLO 4', 'CSE303-CO3'),
('PLO 5', 'CSE211-CO1'),
('PLO 5', 'CSE211-CO2'),
('PLO 5', 'CSE303-CO3'),
('PLO 6', 'CSE211-CO1'),
('PLO 6', 'CSE211-CO2'),
('PLO 6', 'CSE303-CO1'),
('PLO 6', 'CSE303-CO3'),
('PLO 7', 'CSE211-CO1'),
('PLO 7', 'CSE303-CO3');

-- --------------------------------------------------------

--
-- Table structure for table `tblprogram`
--

CREATE TABLE `tblprogram` (
  `programid` varchar(10) NOT NULL,
  `programname` varchar(30) NOT NULL,
  `departmentid` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblprogram`
--

INSERT INTO `tblprogram` (`programid`, `programname`, `departmentid`) VALUES
('BSc in CSE', 'Undergraduate Programs', 'CSE'),
('BSc in EEE', 'Undergraduate Programs', 'EEE'),
('BSc MIS', 'Undergraduate Programs', 'MIS');

-- --------------------------------------------------------

--
-- Table structure for table `tblschool`
--

CREATE TABLE `tblschool` (
  `schoolid` varchar(7) NOT NULL,
  `schoolname` varchar(30) NOT NULL,
  `universityname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblschool`
--

INSERT INTO `tblschool` (`schoolid`, `schoolname`, `universityname`) VALUES
('SBE', 'School of Business & Entrepren', 'IUB'),
('SELS', 'School of Environment And Life', 'IUB'),
('SETS', 'School of Engineering Technolo', 'IUB');

-- --------------------------------------------------------

--
-- Table structure for table `tblsection`
--

CREATE TABLE `tblsection` (
  `sectionid` int(11) NOT NULL,
  `courseid` varchar(10) NOT NULL,
  `facultyid` decimal(5,0) NOT NULL,
  `sectioncapacity` int(11) NOT NULL,
  `semesterid` varchar(20) NOT NULL,
  `sectionnumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblsection`
--

INSERT INTO `tblsection` (`sectionid`, `courseid`, `facultyid`, `sectioncapacity`, `semesterid`, `sectionnumber`) VALUES
(1, 'CSE 211', '12345', 40, 'Fall 2020', 1),
(2, 'CSE 303', '12346', 35, 'Fall 2020', 1),
(3, 'EEE 131', '12347', 45, 'Fall 2020', 1),
(5, 'EEE 132', '12348', 45, 'Fall 2020', 1),
(6, 'MIS 341', '12349', 40, 'Fall 2020', 1),
(7, 'MIS 441', '12349', 45, 'Fall 2020', 1),
(8, 'CSE 211', '12345', 40, 'Fall 2020', 2),
(9, 'CSE 303', '12346', 35, 'Fall 2020', 2),
(10, 'EEE 131', '12347', 45, 'Fall 2020', 2),
(11, 'EEE 132', '12348', 45, 'Fall 2020', 2),
(12, 'MIS 341', '12349', 40, 'Fall 2020', 2),
(13, 'MIS 441', '12349', 45, 'Fall 2020', 2),
(14, 'CSE 211', '12345', 40, 'Spring 2021', 1),
(15, 'CSE 303', '12346', 35, 'Spring 2021', 1),
(16, 'EEE 131', '12347', 45, 'Spring 2021', 1),
(17, 'EEE 132', '12348', 45, 'Spring 2021', 1),
(18, 'MIS 341', '12349', 40, 'Spring 2021', 1),
(19, 'MIS 441', '12349', 45, 'Spring 2021', 1),
(20, 'CSE 211', '12345', 40, 'Spring 2021', 2),
(21, 'CSE 303', '12346', 35, 'Spring 2021', 2),
(22, 'EEE 131', '12347', 45, 'Spring 2021', 2),
(23, 'EEE 132', '12348', 45, 'Spring 2021', 2),
(24, 'MIS 341', '12349', 40, 'Spring 2021', 2),
(25, 'MIS 441', '12349', 45, 'Spring 2021', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblsemester`
--

CREATE TABLE `tblsemester` (
  `semesterid` varchar(20) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblsemester`
--

INSERT INTO `tblsemester` (`semesterid`, `startdate`, `enddate`) VALUES
('Fall 2020', '2020-09-01', '2020-12-12'),
('Spring 2021', '2021-01-01', '2021-05-30');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `studentid` decimal(7,0) NOT NULL,
  `studentname` varchar(30) NOT NULL,
  `emailid` varchar(15) DEFAULT NULL,
  `contractno` decimal(11,0) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `enrollmentyear` decimal(4,0) DEFAULT NULL,
  `departmentid` varchar(4) DEFAULT NULL,
  `programid` varchar(10) DEFAULT NULL,
  `semesterid` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`studentid`, `studentname`, `emailid`, `contractno`, `address`, `gender`, `enrollmentyear`, `departmentid`, `programid`, `semesterid`) VALUES
('152882', 'C1', NULL, NULL, NULL, NULL, '2020', 'CSE', 'BSc in CSE', 'Fall 2020'),
('171213', 'SE1', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1416455', 'C2', NULL, NULL, NULL, NULL, '2020', 'CSE', 'BSc in CSE', 'Fall 2020'),
('1579288', 'C3', NULL, NULL, NULL, NULL, '2020', 'CSE', 'BSc IN CSE', 'Fall 2020'),
('1612985', 'C4', NULL, NULL, NULL, NULL, '2020', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1613273', 'C5', NULL, NULL, NULL, NULL, '2020', 'CSE', 'BSc IN CSE', 'Fall 2020'),
('1614142', 'E1', NULL, NULL, NULL, NULL, '2020', 'EEE', 'BSc IN EEE', 'Fall 2020'),
('1614733', 'E2', NULL, NULL, NULL, NULL, '2020', 'EEE', 'BSc IN EEE', 'Fall 2020'),
('1616161', 'E3', NULL, NULL, NULL, NULL, '2020', 'EEE', 'BSc in EEE', 'Spring 2021'),
('1622731', 'E4', NULL, NULL, NULL, NULL, '2020', 'EEE', 'BSc IN EEE', 'Fall 2020'),
('1623112', 'E5', NULL, NULL, NULL, NULL, '2020', 'EEE', 'BSc in EEE', 'Spring 2021'),
('1625654', 'M1', NULL, NULL, NULL, NULL, '2020', 'MIS', 'BSc MIS', 'Fall 2020'),
('1633554', 'M2', NULL, NULL, NULL, NULL, '2020', 'MIS', 'BSc MIS', 'Fall 2020'),
('1634352', 'M3', NULL, NULL, NULL, NULL, '2020', 'MIS', 'BSc MIS', 'Spring 2021'),
('1641252', 'M4', NULL, NULL, NULL, NULL, '2020', 'MIS', 'BSc MIS', 'Fall 2020'),
('1645333', 'M5', NULL, NULL, NULL, NULL, '2020', 'MIS', 'BSc MIS', 'Fall 2020'),
('1646434', 'C23', NULL, NULL, NULL, NULL, '2016', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1653725', 'C4', NULL, NULL, NULL, NULL, '2016', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1654432', 'C25', NULL, NULL, NULL, NULL, '2016', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1661638', 'C30', NULL, NULL, NULL, NULL, '2016', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1662147', 'C12', NULL, NULL, NULL, NULL, '2016', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1665491', 'C28', NULL, NULL, NULL, NULL, '2016', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1665555', 'C7', NULL, NULL, NULL, NULL, '2016', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1668314', 'C20', NULL, NULL, NULL, NULL, '2016', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1669953', 'C6', NULL, NULL, NULL, NULL, '2016', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1674181', 'C14', NULL, NULL, NULL, NULL, '2016', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1678812', 'C26', NULL, NULL, NULL, NULL, '2016', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1686272', 'C31', NULL, NULL, NULL, NULL, '2016', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1691291', 'C11', NULL, NULL, NULL, NULL, '2016', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1691483', 'C13', NULL, NULL, NULL, NULL, '2016', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1695837', 'C16', NULL, NULL, NULL, NULL, '2016', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1696326', 'C22', NULL, NULL, NULL, NULL, '2016', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1711619', 'C67', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1711729', 'C69', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1712983', 'C61', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1715578', 'C54', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1718437', 'C62', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1728125', 'C41', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1728139', 'C66', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1728439', 'C60', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1729416', 'C32', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1731817', 'C50', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1731852', 'C52', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1736425', 'C59', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1737824', 'C64', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1742892', 'C57', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1743714', 'C39', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1745484', 'C55', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1747457', 'C40', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1752538', 'C51', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1754681', 'C45', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1759787', 'C38', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1762565', 'C71', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1763881', 'C33', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1766156', 'C48', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1766176', 'C53', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1768463', 'C43', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1769463', 'C47', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1772947', 'C49', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1773277', 'C37', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1773384', 'C70', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1778274', 'C35', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1781682', 'C34', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1783512', 'C42', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1784847', 'C63', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1788337', 'C58', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1789481', 'C68', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1791753', 'C56', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1795656', 'C36', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1797625', 'C44', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1797789', 'C65', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1798883', 'C46', NULL, NULL, NULL, NULL, '2017', 'CSE', 'BSc in CSE', 'Spring 2021'),
('1813451', 'M1', NULL, NULL, NULL, NULL, '2018', 'MIS', 'BSc MIS', 'Fall 2020'),
('1813452', 'M2', NULL, NULL, NULL, NULL, '2018', 'MIS', 'BSc MIS', 'Fall 2020'),
('1813453', 'M3', NULL, NULL, NULL, NULL, '2018', 'MIS', 'BSc MIS', 'Spring 2021'),
('1825681', 'E1', NULL, NULL, NULL, NULL, '2018', 'EEE', 'BSc in EEE', 'Fall 2020'),
('1825682', 'E2', NULL, NULL, NULL, NULL, '2018', 'EEE', 'BSc in EEE', 'Fall 2020'),
('1825683', 'E3', NULL, NULL, NULL, NULL, '2018', 'EEE', 'BSc in EEE', 'Fall 2020'),
('1834433', 'C83', NULL, NULL, NULL, NULL, '2018', 'CSE', 'BSc in CSE', 'Fall 2020'),
('1835298', 'C75', NULL, NULL, NULL, NULL, '2018', 'CSE', 'BSc in CSE', 'Fall 2020'),
('1835874', 'C76', NULL, NULL, NULL, NULL, '2018', 'CSE', 'BSc in CSE', 'Fall 2020'),
('1842333', 'C88', NULL, NULL, NULL, NULL, '2018', 'CSE', 'BSc in CSE', 'Fall 2020'),
('1845457', 'C85', NULL, NULL, NULL, NULL, '2018', 'CSE', 'BSc in CSE', 'Fall 2020'),
('1849651', 'C77', NULL, NULL, NULL, NULL, '2018', 'CSE', 'BSc in CSE', 'Fall 2020'),
('1855787', 'C86', NULL, NULL, NULL, NULL, '2018', 'CSE', 'BSc in CSE', 'Fall 2020'),
('1863951', 'C74', NULL, NULL, NULL, NULL, '2018', 'CSE', 'BSc in CSE', 'Fall 2020'),
('1868128', 'C84', NULL, NULL, NULL, NULL, '2018', 'CSE', 'BSc in CSE', 'Fall 2020'),
('1872128', 'C78', NULL, NULL, NULL, NULL, '2018', 'CSE', 'BSc in CSE', 'Fall 2020'),
('1873255', 'C82', NULL, NULL, NULL, NULL, '2018', 'CSE', 'BSc in CSE', 'Fall 2020'),
('1877262', 'C81', NULL, NULL, NULL, NULL, '2018', 'CSE', 'BSc in CSE', 'Fall 2020'),
('1886577', 'C80', NULL, NULL, NULL, NULL, '2018', 'CSE', 'BSc in CSE', 'Fall 2020'),
('1887973', 'C79', NULL, NULL, NULL, NULL, '2018', 'CSE', 'BSc in CSE', 'Fall 2020'),
('1892367', 'C73', NULL, NULL, NULL, NULL, '2018', 'CSE', 'BSc in CSE', 'Fall 2020'),
('1893863', 'C87', NULL, NULL, NULL, NULL, '2018', 'CSE', 'BSc in CSE', 'Fall 2020'),
('1898334', 'C72', NULL, NULL, NULL, NULL, '2018', 'CSE', 'BSc in CSE', 'Fall 2020');

-- --------------------------------------------------------

--
-- Table structure for table `tbluniversity`
--

CREATE TABLE `tbluniversity` (
  `universityname` varchar(30) NOT NULL,
  `establishmentyear` decimal(4,0) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `vcname` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluniversity`
--

INSERT INTO `tbluniversity` (`universityname`, `establishmentyear`, `address`, `vcname`) VALUES
('iub', '1993', 'bashundhara', 'Tanweer Hasan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblassessment`
--
ALTER TABLE `tblassessment`
  ADD PRIMARY KEY (`assessmentid`),
  ADD KEY `coid` (`coid`),
  ADD KEY `courseid` (`courseid`);

--
-- Indexes for table `tblassessmentsubmission`
--
ALTER TABLE `tblassessmentsubmission`
  ADD PRIMARY KEY (`submissionid`),
  ADD KEY `assessmentid` (`assessmentid`),
  ADD KEY `studentid` (`studentid`);

--
-- Indexes for table `tblco`
--
ALTER TABLE `tblco`
  ADD PRIMARY KEY (`coid`),
  ADD KEY `fk_co_courseid` (`courseid`);

--
-- Indexes for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD PRIMARY KEY (`courseid`),
  ADD UNIQUE KEY `courseid` (`courseid`),
  ADD KEY `fk_course_programid` (`programid`);

--
-- Indexes for table `tbldepartment`
--
ALTER TABLE `tbldepartment`
  ADD PRIMARY KEY (`departmentid`),
  ADD KEY `department_FK` (`schoolid`);

--
-- Indexes for table `tblfaculty`
--
ALTER TABLE `tblfaculty`
  ADD PRIMARY KEY (`facultyid`),
  ADD KEY `faculty_FK` (`departmentid`);

--
-- Indexes for table `tblplo`
--
ALTER TABLE `tblplo`
  ADD PRIMARY KEY (`ploid`),
  ADD KEY `fk_plo_programid` (`programid`),
  ADD KEY `ploid` (`ploid`);

--
-- Indexes for table `tblploco`
--
ALTER TABLE `tblploco`
  ADD PRIMARY KEY (`ploid`,`coid`),
  ADD KEY `fk_ploco_coid` (`coid`);

--
-- Indexes for table `tblprogram`
--
ALTER TABLE `tblprogram`
  ADD PRIMARY KEY (`programid`),
  ADD KEY `program_FK` (`departmentid`);

--
-- Indexes for table `tblschool`
--
ALTER TABLE `tblschool`
  ADD PRIMARY KEY (`schoolid`),
  ADD KEY `school_FK` (`universityname`);

--
-- Indexes for table `tblsection`
--
ALTER TABLE `tblsection`
  ADD PRIMARY KEY (`sectionid`),
  ADD KEY `courseid` (`courseid`),
  ADD KEY `facultyid` (`facultyid`);

--
-- Indexes for table `tblsemester`
--
ALTER TABLE `tblsemester`
  ADD PRIMARY KEY (`semesterid`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`studentid`),
  ADD KEY `student_FK1` (`departmentid`),
  ADD KEY `student_fk2` (`programid`),
  ADD KEY `fk_student_semesterid` (`semesterid`);

--
-- Indexes for table `tbluniversity`
--
ALTER TABLE `tbluniversity`
  ADD PRIMARY KEY (`universityname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblassessment`
--
ALTER TABLE `tblassessment`
  MODIFY `assessmentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblassessmentsubmission`
--
ALTER TABLE `tblassessmentsubmission`
  MODIFY `submissionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT for table `tblsection`
--
ALTER TABLE `tblsection`
  MODIFY `sectionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblassessment`
--
ALTER TABLE `tblassessment`
  ADD CONSTRAINT `tblassessment_ibfk_1` FOREIGN KEY (`coid`) REFERENCES `tblco` (`coid`);

--
-- Constraints for table `tblassessmentsubmission`
--
ALTER TABLE `tblassessmentsubmission`
  ADD CONSTRAINT `tblassessmentsubmission_ibfk_1` FOREIGN KEY (`assessmentid`) REFERENCES `tblassessment` (`assessmentid`),
  ADD CONSTRAINT `tblassessmentsubmission_ibfk_2` FOREIGN KEY (`studentid`) REFERENCES `tblstudent` (`studentid`);

--
-- Constraints for table `tblco`
--
ALTER TABLE `tblco`
  ADD CONSTRAINT `fk_co_courseid` FOREIGN KEY (`courseid`) REFERENCES `tblcourse` (`courseid`);

--
-- Constraints for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD CONSTRAINT `fk_course_programid` FOREIGN KEY (`programid`) REFERENCES `tblprogram` (`programid`);

--
-- Constraints for table `tbldepartment`
--
ALTER TABLE `tbldepartment`
  ADD CONSTRAINT `department_FK` FOREIGN KEY (`schoolid`) REFERENCES `tblschool` (`schoolid`);

--
-- Constraints for table `tblfaculty`
--
ALTER TABLE `tblfaculty`
  ADD CONSTRAINT `faculty_FK` FOREIGN KEY (`departmentid`) REFERENCES `tbldepartment` (`departmentid`);

--
-- Constraints for table `tblplo`
--
ALTER TABLE `tblplo`
  ADD CONSTRAINT `fk_plo_programid` FOREIGN KEY (`programid`) REFERENCES `tblprogram` (`programid`);

--
-- Constraints for table `tblploco`
--
ALTER TABLE `tblploco`
  ADD CONSTRAINT `fk_ploco_coid` FOREIGN KEY (`coid`) REFERENCES `tblco` (`coid`),
  ADD CONSTRAINT `fk_ploco_ploid` FOREIGN KEY (`ploid`) REFERENCES `tblplo` (`ploid`);

--
-- Constraints for table `tblprogram`
--
ALTER TABLE `tblprogram`
  ADD CONSTRAINT `program_FK` FOREIGN KEY (`departmentid`) REFERENCES `tbldepartment` (`departmentid`);

--
-- Constraints for table `tblschool`
--
ALTER TABLE `tblschool`
  ADD CONSTRAINT `school_FK` FOREIGN KEY (`universityname`) REFERENCES `tbluniversity` (`universityname`);

--
-- Constraints for table `tblsection`
--
ALTER TABLE `tblsection`
  ADD CONSTRAINT `tblsection_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `tblcourse` (`courseid`),
  ADD CONSTRAINT `tblsection_ibfk_2` FOREIGN KEY (`facultyid`) REFERENCES `tblfaculty` (`facultyid`);

--
-- Constraints for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD CONSTRAINT `fk_student_semesterid` FOREIGN KEY (`semesterid`) REFERENCES `tblsemester` (`semesterid`),
  ADD CONSTRAINT `student_FK1` FOREIGN KEY (`departmentid`) REFERENCES `tbldepartment` (`departmentid`),
  ADD CONSTRAINT `student_fk2` FOREIGN KEY (`programid`) REFERENCES `tblprogram` (`programid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
