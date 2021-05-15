<br />
<b>Warning</b>:  Trying to access array offset on value of type bool in <b>C:\xampp\htdocs\adminer.php</b> on line <b>1473</b><br />
-- Adminer 4.8.0 MySQL 5.5.5-10.4.18-MariaDB dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP DATABASE IF EXISTS `s.p.m.`;
CREATE DATABASE `s.p.m.` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `s.p.m.`;

DROP TABLE IF EXISTS `tblassessment`;
CREATE TABLE `tblassessment` (
  `assessmentid` varchar(2) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `totalmark` decimal(3,2) DEFAULT NULL,
  `coid` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`assessmentid`),
  KEY `assessment_fk` (`coid`),
  CONSTRAINT `assessment_fk` FOREIGN KEY (`coid`) REFERENCES `tblco` (`coid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tblassessment` (`assessmentid`, `type`, `totalmark`, `coid`) VALUES
('1',	NULL,	NULL,	NULL),
('2',	NULL,	NULL,	NULL)
ON DUPLICATE KEY UPDATE `assessmentid` = VALUES(`assessmentid`), `type` = VALUES(`type`), `totalmark` = VALUES(`totalmark`), `coid` = VALUES(`coid`);

DROP TABLE IF EXISTS `tblassessmentsubmission`;
CREATE TABLE `tblassessmentsubmission` (
  `submissionid` varchar(2) NOT NULL,
  `markobtain` decimal(3,2) DEFAULT NULL,
  `studentid` decimal(7,0) DEFAULT NULL,
  `assessmentid` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`submissionid`),
  KEY `submission_fk1` (`assessmentid`),
  KEY `submission_fk2` (`studentid`),
  CONSTRAINT `submission_fk1` FOREIGN KEY (`assessmentid`) REFERENCES `tblassessment` (`assessmentid`),
  CONSTRAINT `submission_fk2` FOREIGN KEY (`studentid`) REFERENCES `tblstudent` (`studentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tblassessmentsubmission` (`submissionid`, `markobtain`, `studentid`, `assessmentid`) VALUES
('1',	NULL,	NULL,	NULL),
('2',	NULL,	NULL,	NULL)
ON DUPLICATE KEY UPDATE `submissionid` = VALUES(`submissionid`), `markobtain` = VALUES(`markobtain`), `studentid` = VALUES(`studentid`), `assessmentid` = VALUES(`assessmentid`);

DROP TABLE IF EXISTS `tblco`;
CREATE TABLE `tblco` (
  `coid` varchar(4) NOT NULL,
  `courseid` char(6) DEFAULT NULL,
  `ploid` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`coid`),
  KEY `co_fk1` (`courseid`),
  KEY `co_fk2` (`ploid`),
  CONSTRAINT `co_fk1` FOREIGN KEY (`courseid`) REFERENCES `tblcourse` (`courseid`),
  CONSTRAINT `co_fk2` FOREIGN KEY (`ploid`) REFERENCES `tblplo` (`ploid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tblco` (`coid`, `courseid`, `ploid`) VALUES
('co1',	NULL,	NULL),
('co2',	NULL,	NULL),
('co3',	NULL,	NULL),
('co4',	NULL,	NULL)
ON DUPLICATE KEY UPDATE `coid` = VALUES(`coid`), `courseid` = VALUES(`courseid`), `ploid` = VALUES(`ploid`);

DROP TABLE IF EXISTS `tblcourse`;
CREATE TABLE `tblcourse` (
  `courseid` char(6) NOT NULL,
  `coursename` varchar(25) NOT NULL,
  `totalcredit` decimal(1,0) DEFAULT NULL,
  PRIMARY KEY (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tblcourse` (`courseid`, `coursename`, `totalcredit`) VALUES
('CSE301',	'AUTOMETA',	3),
('CSE303',	'DBMS',	4)
ON DUPLICATE KEY UPDATE `courseid` = VALUES(`courseid`), `coursename` = VALUES(`coursename`), `totalcredit` = VALUES(`totalcredit`);

DROP TABLE IF EXISTS `tbldepartment`;
CREATE TABLE `tbldepartment` (
  `departmentid` varchar(4) NOT NULL,
  `departmentname` varchar(30) NOT NULL,
  `schoolid` varchar(7) NOT NULL,
  PRIMARY KEY (`departmentid`),
  KEY `department_FK` (`schoolid`),
  CONSTRAINT `department_FK` FOREIGN KEY (`schoolid`) REFERENCES `tblschool` (`schoolid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbldepartment` (`departmentid`, `departmentname`, `schoolid`) VALUES
('CSE',	'Computer Science and Engineeri',	'SETS')
ON DUPLICATE KEY UPDATE `departmentid` = VALUES(`departmentid`), `departmentname` = VALUES(`departmentname`), `schoolid` = VALUES(`schoolid`);

DROP TABLE IF EXISTS `tblfaculty`;
CREATE TABLE `tblfaculty` (
  `facultyid` decimal(5,0) NOT NULL,
  `facultyname` varchar(30) NOT NULL,
  `emailid` varchar(15) DEFAULT NULL,
  `contractno` decimal(11,0) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `employmentyear` decimal(4,0) DEFAULT NULL,
  `departmentid` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`facultyid`),
  KEY `faculty_FK` (`departmentid`),
  CONSTRAINT `faculty_FK` FOREIGN KEY (`departmentid`) REFERENCES `tbldepartment` (`departmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tblfaculty` (`facultyid`, `facultyname`, `emailid`, `contractno`, `address`, `gender`, `employmentyear`, `departmentid`) VALUES
(12345,	'F1',	NULL,	NULL,	NULL,	NULL,	2000,	'CSE'),
(12346,	'F2',	NULL,	NULL,	NULL,	NULL,	2000,	'CSE')
ON DUPLICATE KEY UPDATE `facultyid` = VALUES(`facultyid`), `facultyname` = VALUES(`facultyname`), `emailid` = VALUES(`emailid`), `contractno` = VALUES(`contractno`), `address` = VALUES(`address`), `gender` = VALUES(`gender`), `employmentyear` = VALUES(`employmentyear`), `departmentid` = VALUES(`departmentid`);

DROP TABLE IF EXISTS `tblplo`;
CREATE TABLE `tblplo` (
  `ploid` varchar(5) NOT NULL,
  `programid` varchar(10) DEFAULT NULL,
  `details` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ploid`),
  KEY `plo_fk` (`programid`),
  CONSTRAINT `plo_fk` FOREIGN KEY (`programid`) REFERENCES `tblprogram` (`programid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `tblprogram`;
CREATE TABLE `tblprogram` (
  `programid` varchar(10) NOT NULL,
  `programname` varchar(30) NOT NULL,
  `departmentid` varchar(4) NOT NULL,
  PRIMARY KEY (`programid`),
  KEY `program_FK` (`departmentid`),
  CONSTRAINT `program_FK` FOREIGN KEY (`departmentid`) REFERENCES `tbldepartment` (`departmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tblprogram` (`programid`, `programname`, `departmentid`) VALUES
('BSc',	'Bachelor of Sciences',	'CSE'),
('BSc IN CSE',	'Bachelor of Sciences',	'CSE')
ON DUPLICATE KEY UPDATE `programid` = VALUES(`programid`), `programname` = VALUES(`programname`), `departmentid` = VALUES(`departmentid`);

DROP TABLE IF EXISTS `tblschool`;
CREATE TABLE `tblschool` (
  `schoolid` varchar(7) NOT NULL,
  `schoolname` varchar(30) NOT NULL,
  `universityname` varchar(30) NOT NULL,
  PRIMARY KEY (`schoolid`),
  KEY `school_FK` (`universityname`),
  CONSTRAINT `school_FK` FOREIGN KEY (`universityname`) REFERENCES `tbluniversity` (`universityname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tblschool` (`schoolid`, `schoolname`, `universityname`) VALUES
('SETS',	'School of Engineering Technolo',	'IUB')
ON DUPLICATE KEY UPDATE `schoolid` = VALUES(`schoolid`), `schoolname` = VALUES(`schoolname`), `universityname` = VALUES(`universityname`);

DROP TABLE IF EXISTS `tblsection`;
CREATE TABLE `tblsection` (
  `sectionid` varchar(10) NOT NULL,
  `courseid` char(6) DEFAULT NULL,
  `facultyid` decimal(5,0) DEFAULT NULL,
  `semestername` varchar(6) DEFAULT NULL,
  `sectioncapacity` decimal(2,0) DEFAULT NULL,
  PRIMARY KEY (`sectionid`),
  KEY `section_fk1` (`courseid`),
  KEY `section_fk2` (`facultyid`),
  CONSTRAINT `section_fk1` FOREIGN KEY (`courseid`) REFERENCES `tblcourse` (`courseid`),
  CONSTRAINT `section_fk2` FOREIGN KEY (`facultyid`) REFERENCES `tblfaculty` (`facultyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tblsection` (`sectionid`, `courseid`, `facultyid`, `semestername`, `sectioncapacity`) VALUES
('1',	'CSE303',	NULL,	'summer',	NULL),
('2',	'CSE303',	NULL,	'summer',	NULL),
('3',	'CSE303',	NULL,	'summer',	NULL)
ON DUPLICATE KEY UPDATE `sectionid` = VALUES(`sectionid`), `courseid` = VALUES(`courseid`), `facultyid` = VALUES(`facultyid`), `semestername` = VALUES(`semestername`), `sectioncapacity` = VALUES(`sectioncapacity`);

DROP TABLE IF EXISTS `tblstudent`;
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
  PRIMARY KEY (`studentid`),
  KEY `student_FK1` (`departmentid`),
  KEY `student_fk2` (`programid`),
  CONSTRAINT `student_FK1` FOREIGN KEY (`departmentid`) REFERENCES `tbldepartment` (`departmentid`),
  CONSTRAINT `student_fk2` FOREIGN KEY (`programid`) REFERENCES `tblprogram` (`programid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tblstudent` (`studentid`, `studentname`, `emailid`, `contractno`, `address`, `gender`, `enrollmentyear`, `departmentid`, `programid`) VALUES
(152882,	'S3',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1416455,	'S1',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1579288,	'S2',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1612985,	'S18',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1613273,	'S17',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1614142,	'S24',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1614733,	'S27',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1616161,	'S8',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1622731,	'S21',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1623112,	'S19',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1625654,	'S5',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1633554,	'S9',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1634352,	'S29',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1641252,	'S15',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1645333,	'S10',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1646434,	'S23',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1653725,	'S4',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1654432,	'S25',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1661638,	'S30',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1662147,	'S12',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1665491,	'S28',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1665555,	'S7',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1668314,	'S20',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1669953,	'S6',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1674181,	'S14',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1678812,	'S26',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1686272,	'S31',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1691291,	'S11',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1691483,	'S13',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1695837,	'S16',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1696326,	'S22',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1711619,	'S67',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1711729,	'S69',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1712983,	'S61',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1715578,	'S54',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1718437,	'S62',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1728125,	'S41',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1728139,	'S66',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1728439,	'S60',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1729416,	'S32',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1731817,	'S50',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1731852,	'S52',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1736425,	'S59',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1737824,	'S64',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1742892,	'S57',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1743714,	'S39',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1745484,	'S55',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1747457,	'S40',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1752538,	'S51',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1754681,	'S45',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1759787,	'S38',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1762565,	'S71',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1763881,	'S33',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1766156,	'S48',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1766176,	'S53',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1768463,	'S43',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1769463,	'S47',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1772947,	'S49',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1773277,	'S37',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1773384,	'S70',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1778274,	'S35',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1781682,	'S34',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1783512,	'S42',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1784847,	'S63',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1788337,	'S58',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1789481,	'S68',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1791753,	'S56',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1795656,	'S36',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1797625,	'S44',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1797789,	'S65',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1798883,	'S46',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1834433,	'S83',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1835298,	'S75',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1835874,	'S76',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1842666,	'S88',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1845457,	'S85',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1849651,	'S77',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1855787,	'S86',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1863951,	'S74',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1868128,	'S84',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1872128,	'S78',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1873255,	'S82',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1877262,	'S81',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1886577,	'S80',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1887973,	'S79',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1892367,	'S73',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1893863,	'S87',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE'),
(1898334,	'S72',	NULL,	NULL,	NULL,	NULL,	2020,	'CSE',	'BSc IN CSE')
ON DUPLICATE KEY UPDATE `studentid` = VALUES(`studentid`), `studentname` = VALUES(`studentname`), `emailid` = VALUES(`emailid`), `contractno` = VALUES(`contractno`), `address` = VALUES(`address`), `gender` = VALUES(`gender`), `enrollmentyear` = VALUES(`enrollmentyear`), `departmentid` = VALUES(`departmentid`), `programid` = VALUES(`programid`);

DROP TABLE IF EXISTS `tbluniversity`;
CREATE TABLE `tbluniversity` (
  `universityname` varchar(30) NOT NULL,
  `establishmentyear` decimal(4,0) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `vcname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`universityname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbluniversity` (`universityname`, `establishmentyear`, `address`, `vcname`) VALUES
('iub',	1993,	'bashundhara',	'Tanweer Hasan')
ON DUPLICATE KEY UPDATE `universityname` = VALUES(`universityname`), `establishmentyear` = VALUES(`establishmentyear`), `address` = VALUES(`address`), `vcname` = VALUES(`vcname`);

-- 2021-05-15 19:20:42
