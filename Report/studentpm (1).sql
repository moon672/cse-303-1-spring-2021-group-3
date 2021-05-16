-- Adminer 4.8.0 MySQL 5.5.5-10.4.18-MariaDB dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `tblassessment`;
CREATE TABLE `tblassessment` (
  `cAssessmentID` varchar(20) NOT NULL,
  `cType` varchar(50) NOT NULL,
  `nTotalMarks` int(11) NOT NULL,
  `cCoID` varchar(20) NOT NULL,
  PRIMARY KEY (`cAssessmentID`),
  KEY `cCoID` (`cCoID`),
  CONSTRAINT `tblassessment_ibfk_1` FOREIGN KEY (`cCoID`) REFERENCES `tblassessment` (`cAssessmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tblassessment` (`cAssessmentID`, `cType`, `nTotalMarks`, `cCoID`) VALUES
('1',	'1',	100,	'1');

DROP TABLE IF EXISTS `tblassessmentsubmission`;
CREATE TABLE `tblassessmentsubmission` (
  `cSubmissionID` varchar(20) NOT NULL,
  `nMarkObtained` int(11) NOT NULL,
  `cAssessmentID` varchar(20) NOT NULL,
  `cStudentID` varchar(20) NOT NULL,
  PRIMARY KEY (`cSubmissionID`),
  KEY `cAssessmentID` (`cAssessmentID`),
  KEY `cStudentID` (`cStudentID`),
  CONSTRAINT `tblassessmentsubmission_ibfk_1` FOREIGN KEY (`cAssessmentID`) REFERENCES `tblassessmentsubmission` (`cSubmissionID`),
  CONSTRAINT `tblassessmentsubmission_ibfk_2` FOREIGN KEY (`cStudentID`) REFERENCES `tblassessmentsubmission` (`cSubmissionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tblassessmentsubmission` (`cSubmissionID`, `nMarkObtained`, `cAssessmentID`, `cStudentID`) VALUES
('1',	85,	'1',	'1'),
('2',	80,	'2',	'2');

DROP TABLE IF EXISTS `tblco`;
CREATE TABLE `tblco` (
  `cCoID` varchar(20) NOT NULL,
  `cCourseID` varchar(20) NOT NULL,
  `cPloID` varchar(20) NOT NULL,
  `cDetails` varchar(500) NOT NULL,
  PRIMARY KEY (`cCoID`),
  KEY `cCourseID` (`cCourseID`),
  KEY `cPloID` (`cPloID`),
  CONSTRAINT `tblco_ibfk_1` FOREIGN KEY (`cCourseID`) REFERENCES `tblco` (`cCoID`),
  CONSTRAINT `tblco_ibfk_2` FOREIGN KEY (`cPloID`) REFERENCES `tblco` (`cCoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tblco` (`cCoID`, `cCourseID`, `cPloID`, `cDetails`) VALUES
('1',	'1',	'1',	'CSE 303 CO 1');

DROP TABLE IF EXISTS `tblcourse`;
CREATE TABLE `tblcourse` (
  `cCourseID` varchar(20) NOT NULL,
  `cCourseCode` varchar(20) NOT NULL,
  `cCourseName` varchar(100) NOT NULL,
  `nCourseCredit` int(11) NOT NULL,
  `cProgramID` varchar(20) NOT NULL,
  PRIMARY KEY (`cCourseID`),
  KEY `cProgramID` (`cProgramID`),
  CONSTRAINT `tblcourse_ibfk_1` FOREIGN KEY (`cProgramID`) REFERENCES `tblcourse` (`cCourseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tblcourse` (`cCourseID`, `cCourseCode`, `cCourseName`, `nCourseCredit`, `cProgramID`) VALUES
('1',	'CSE303',	'Database',	3,	'1'),
('2',	'CSE203',	'OOP',	3,	'2');

DROP TABLE IF EXISTS `tbldepartment`;
CREATE TABLE `tbldepartment` (
  `cDepartmentID` varchar(20) NOT NULL,
  `cDepartmentName` varchar(100) NOT NULL,
  `cSchoolID` varchar(20) NOT NULL,
  `cDepartmentHeadFacultyID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cDepartmentID`),
  KEY `cSchoolID` (`cSchoolID`),
  KEY `cDepartmentHeadFacultyID` (`cDepartmentHeadFacultyID`),
  CONSTRAINT `tbldepartment_ibfk_1` FOREIGN KEY (`cSchoolID`) REFERENCES `tbldepartment` (`cDepartmentID`),
  CONSTRAINT `tbldepartment_ibfk_2` FOREIGN KEY (`cDepartmentHeadFacultyID`) REFERENCES `tbldepartment` (`cDepartmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbldepartment` (`cDepartmentID`, `cDepartmentName`, `cSchoolID`, `cDepartmentHeadFacultyID`) VALUES
('1',	'CSE',	'1',	NULL),
('2',	'BBA',	'2',	NULL);

DROP TABLE IF EXISTS `tblfaculty`;
CREATE TABLE `tblfaculty` (
  `cFacultyID` varchar(20) NOT NULL,
  `cName` varchar(100) NOT NULL,
  `cEmail` varchar(100) NOT NULL,
  `cContactNumber` int(11) NOT NULL,
  `cAddress` varchar(400) NOT NULL,
  `cGender` varchar(20) NOT NULL,
  `dDateOfBirth` date NOT NULL,
  `dDateOfEmployment` date NOT NULL,
  `cDepartmentID` varchar(20) NOT NULL,
  PRIMARY KEY (`cFacultyID`),
  KEY `cDepartmentID` (`cDepartmentID`),
  CONSTRAINT `tblfaculty_ibfk_1` FOREIGN KEY (`cDepartmentID`) REFERENCES `tblfaculty` (`cFacultyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tblfaculty` (`cFacultyID`, `cName`, `cEmail`, `cContactNumber`, `cAddress`, `cGender`, `dDateOfBirth`, `dDateOfEmployment`, `cDepartmentID`) VALUES
('1',	'Ms sadita ahmed',	'sadita@gmail.com',	1822222222,	'dhaka,bangladesh',	'female',	'2011-05-03',	'2021-05-02',	'1');

DROP TABLE IF EXISTS `tblmarksheet`;
CREATE TABLE `tblmarksheet` (
  `cMarksheetID` varchar(20) NOT NULL,
  `cSubmissionID` varchar(20) NOT NULL,
  `cStudentID` varchar(20) NOT NULL,
  `nGradeObtained` decimal(4,2) NOT NULL,
  PRIMARY KEY (`cMarksheetID`),
  KEY `cSubmissionID` (`cSubmissionID`),
  KEY `cStudentID` (`cStudentID`),
  CONSTRAINT `tblmarksheet_ibfk_1` FOREIGN KEY (`cSubmissionID`) REFERENCES `tblmarksheet` (`cMarksheetID`),
  CONSTRAINT `tblmarksheet_ibfk_2` FOREIGN KEY (`cStudentID`) REFERENCES `tblmarksheet` (`cMarksheetID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tblmarksheet` (`cMarksheetID`, `cSubmissionID`, `cStudentID`, `nGradeObtained`) VALUES
('1',	'1',	'1',	2.80),
('2',	'2',	'2',	3.50);

DROP TABLE IF EXISTS `tblplo`;
CREATE TABLE `tblplo` (
  `cPloID` varchar(20) NOT NULL,
  `cProgramID` varchar(20) NOT NULL,
  `cDetails` varchar(500) NOT NULL,
  PRIMARY KEY (`cPloID`),
  KEY `cProgramID` (`cProgramID`),
  CONSTRAINT `tblplo_ibfk_1` FOREIGN KEY (`cProgramID`) REFERENCES `tblplo` (`cPloID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tblplo` (`cPloID`, `cProgramID`, `cDetails`) VALUES
('1',	'1',	'PLO1');

DROP TABLE IF EXISTS `tblprogram`;
CREATE TABLE `tblprogram` (
  `cProgramID` varchar(20) NOT NULL,
  `cProgramName` varchar(100) NOT NULL,
  `cDeartmentID` varchar(20) NOT NULL,
  PRIMARY KEY (`cProgramID`),
  KEY `cDeartmentID` (`cDeartmentID`),
  CONSTRAINT `tblprogram_ibfk_1` FOREIGN KEY (`cDeartmentID`) REFERENCES `tblprogram` (`cProgramID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tblprogram` (`cProgramID`, `cProgramName`, `cDeartmentID`) VALUES
('1',	'Computer Science & Engineering',	'1');

DROP TABLE IF EXISTS `tblschool`;
CREATE TABLE `tblschool` (
  `cSchoolID` varchar(20) NOT NULL,
  `cSchoolName` varchar(400) NOT NULL,
  `cUniversityID` varchar(20) NOT NULL,
  `cDeanFacultyID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cSchoolID`),
  KEY `cUniversityID` (`cUniversityID`),
  KEY `cDeanFacultyID` (`cDeanFacultyID`),
  CONSTRAINT `tblschool_ibfk_1` FOREIGN KEY (`cUniversityID`) REFERENCES `tblschool` (`cSchoolID`),
  CONSTRAINT `tblschool_ibfk_2` FOREIGN KEY (`cDeanFacultyID`) REFERENCES `tblschool` (`cSchoolID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tblschool` (`cSchoolID`, `cSchoolName`, `cUniversityID`, `cDeanFacultyID`) VALUES
('1',	'School of Engineering Technology & science',	'1',	NULL),
('2',	'School of Environment and life sciences',	'2',	NULL);

DROP TABLE IF EXISTS `tblsection`;
CREATE TABLE `tblsection` (
  `cSectionID` varchar(20) NOT NULL,
  `cSectionNumber` int(11) NOT NULL,
  `nSectionCapacity` int(11) NOT NULL,
  `cSemesterID` varchar(20) NOT NULL,
  `cFacultyID` varchar(20) NOT NULL,
  `cCourseID` varchar(20) NOT NULL,
  PRIMARY KEY (`cSectionID`),
  KEY `cSemesterID` (`cSemesterID`),
  CONSTRAINT `tblsection_ibfk_1` FOREIGN KEY (`cSemesterID`) REFERENCES `tblsection` (`cSectionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tblsection` (`cSectionID`, `cSectionNumber`, `nSectionCapacity`, `cSemesterID`, `cFacultyID`, `cCourseID`) VALUES
('1',	2,	40,	'1',	'1',	'CSE303'),
('2',	1,	45,	'2',	'1',	'CSE203');

DROP TABLE IF EXISTS `tblsemester`;
CREATE TABLE `tblsemester` (
  `cSemesterID` varchar(20) NOT NULL,
  `cSemesterName` varchar(100) NOT NULL,
  `nYear` int(11) NOT NULL,
  PRIMARY KEY (`cSemesterID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tblsemester` (`cSemesterID`, `cSemesterName`, `nYear`) VALUES
('1',	'Spring21',	2021),
('2',	'Autumn20',	2020);

DROP TABLE IF EXISTS `tblstudent`;
CREATE TABLE `tblstudent` (
  `cStudentID` varchar(20) NOT NULL,
  `cStudentName` varchar(100) NOT NULL,
  `cEmail` varchar(100) NOT NULL,
  `cContactNumber` varchar(50) NOT NULL,
  `cAddress` varchar(400) NOT NULL,
  `nGender` varchar(10) NOT NULL,
  `dDateOfBirth` date NOT NULL,
  `cDepartmentID` varchar(20) NOT NULL,
  `cProgramID` varchar(20) NOT NULL,
  `cEnrollmentSemesterID` varchar(20) NOT NULL,
  PRIMARY KEY (`cStudentID`),
  KEY `cDepartmentID` (`cDepartmentID`),
  KEY `cProgramID` (`cProgramID`),
  KEY `cEnrollmentSemesterID` (`cEnrollmentSemesterID`),
  CONSTRAINT `tblstudent_ibfk_1` FOREIGN KEY (`cDepartmentID`) REFERENCES `tblstudent` (`cStudentID`),
  CONSTRAINT `tblstudent_ibfk_2` FOREIGN KEY (`cProgramID`) REFERENCES `tblstudent` (`cStudentID`),
  CONSTRAINT `tblstudent_ibfk_3` FOREIGN KEY (`cEnrollmentSemesterID`) REFERENCES `tblstudent` (`cStudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tblstudent` (`cStudentID`, `cStudentName`, `cEmail`, `cContactNumber`, `cAddress`, `nGender`, `dDateOfBirth`, `cDepartmentID`, `cProgramID`, `cEnrollmentSemesterID`) VALUES
('',	'',	'',	'',	'',	'',	'0000-00-00',	'',	'',	''),
('1',	'zahid',	'zahid@gmail.com',	'01822222222',	'bashundhara r/a',	'male',	'2011-05-01',	'1',	'1',	'1'),
('2',	'niloy',	'niloy@gmail.com',	'01811111111',	'bashundhara r/a',	'male',	'2011-05-02',	'1',	'1',	'1');

DROP TABLE IF EXISTS `tbluniversity`;
CREATE TABLE `tbluniversity` (
  `cUniversityID` varchar(20) NOT NULL,
  `cUniversityName` varchar(100) NOT NULL,
  `cEstablishmentYear` int(11) NOT NULL,
  `cAddress` varchar(400) NOT NULL,
  `cVCName` varchar(100) NOT NULL,
  PRIMARY KEY (`cUniversityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tbluniversity` (`cUniversityID`, `cUniversityName`, `cEstablishmentYear`, `cAddress`, `cVCName`) VALUES
('1',	'Indepndent University Bangladesh',	1993,	'Bashundhara RA',	'Tanweer Hasan');

-- 2021-05-13 07:31:39
