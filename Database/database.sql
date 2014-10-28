-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 02, 2013 at 01:09 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `aa`
--

-- --------------------------------------------------------

--
-- Table structure for table `raccounts`
--

CREATE TABLE IF NOT EXISTS `raccounts` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `verification_code` varchar(100) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `raccounts`
--

INSERT INTO `raccounts` (`username`, `password`, `email`, `type`, `verification_code`, `status`) VALUES
('red', 'admin', '', 'Administrator', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rclass`
--

CREATE TABLE IF NOT EXISTS `rclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instr` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `day` varchar(100) NOT NULL,
  `start` varchar(100) NOT NULL,
  `end` varchar(100) NOT NULL,
  `room` varchar(100) NOT NULL,
  `ay` varchar(100) NOT NULL,
  `sem` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

-- --------------------------------------------------------

--
-- Table structure for table `rclassschedules`
--

CREATE TABLE IF NOT EXISTS `rclassschedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(100) NOT NULL,
  `curriculum` int(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `block` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `class` varchar(10) NOT NULL,
  `subject` varchar(10) NOT NULL,
  `day` varchar(100) NOT NULL,
  `start` varchar(100) NOT NULL,
  `end` varchar(100) NOT NULL,
  `room` varchar(100) NOT NULL,
  `instr` varchar(100) NOT NULL,
  `ay` varchar(100) NOT NULL,
  `sem` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rclassschedulestudents`
--

CREATE TABLE IF NOT EXISTS `rclassschedulestudents` (
  `class` varchar(100) NOT NULL,
  `student` varchar(100) NOT NULL,
  `ay` varchar(100) NOT NULL,
  `sem` varchar(100) NOT NULL,
  PRIMARY KEY (`class`,`student`,`ay`,`sem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rclassstudents`
--

CREATE TABLE IF NOT EXISTS `rclassstudents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `ay` varchar(100) NOT NULL,
  `sem` varchar(100) NOT NULL,
  `instr` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `rcourses`
--

CREATE TABLE IF NOT EXISTS `rcourses` (
  `course` varchar(10) NOT NULL,
  `course_title` varchar(60) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rcourses`
--

INSERT INTO `rcourses` (`course`, `course_title`, `description`) VALUES
('ACT', 'Associate in Computer Technology', ''),
('BSCS', 'Bachelor of Science in Computer Science', ''),
('BSIT', 'Bachelor of Science in Information Technology', '');

-- --------------------------------------------------------

--
-- Table structure for table `renlistments`
--

CREATE TABLE IF NOT EXISTS `renlistments` (
  `student` varchar(9) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `curriculum` varchar(20) NOT NULL,
  `course` varchar(20) NOT NULL,
  `ay` varchar(20) NOT NULL,
  `year` varchar(50) NOT NULL,
  `sem` varchar(20) NOT NULL,
  `time` varchar(100) NOT NULL,
  `enlistment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(50) NOT NULL,
  `notes` varchar(300) NOT NULL,
  PRIMARY KEY (`student`,`course_code`,`curriculum`,`course`,`ay`,`year`,`sem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `renlistmentschedule`
--

CREATE TABLE IF NOT EXISTS `renlistmentschedule` (
  `ay` varchar(100) NOT NULL,
  `sem` varchar(100) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  PRIMARY KEY (`ay`,`sem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `renlistmentschedule`
--

INSERT INTO `renlistmentschedule` (`ay`, `sem`, `start`, `end`) VALUES
('2013-2014', 'First Semester', '2013-04-01', '2013-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `rgrades`
--

CREATE TABLE IF NOT EXISTS `rgrades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `prelim` varchar(100) NOT NULL,
  `p_absent` int(10) NOT NULL,
  `midterm` varchar(100) NOT NULL,
  `m_absent` int(10) NOT NULL,
  `final` varchar(100) NOT NULL,
  `f_absent` int(10) NOT NULL,
  `ay` varchar(100) NOT NULL,
  `sem` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rgradesequivalent`
--

CREATE TABLE IF NOT EXISTS `rgradesequivalent` (
  `grade` int(3) NOT NULL,
  `equivalent` varchar(100) NOT NULL,
  PRIMARY KEY (`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rgradesequivalent`
--

INSERT INTO `rgradesequivalent` (`grade`, `equivalent`) VALUES
(75, '3.0'),
(76, '2.9'),
(77, '2.8'),
(78, '2.7'),
(79, '2.6'),
(80, '2.5'),
(81, '2.4'),
(82, '2.3'),
(83, '2.2'),
(84, '2.1'),
(85, '2.0'),
(86, '1.9'),
(87, '1.8'),
(88, '1.7'),
(89, '1.6'),
(90, '1.5'),
(91, '1.4'),
(92, '1.4'),
(93, '1.3'),
(94, '1.3'),
(95, '1.2'),
(96, '1.2'),
(97, '1.1'),
(98, '1.1'),
(99, '1.0'),
(100, '1.0');

-- --------------------------------------------------------

--
-- Table structure for table `rinstructors`
--

CREATE TABLE IF NOT EXISTS `rinstructors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instr` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `rinstructors`
--

INSERT INTO `rinstructors` (`id`, `instr`, `lastname`, `firstname`, `middlename`, `position`) VALUES
(2, 'ara', 'Armada', 'Arnie', 'De Guzman', 'BSCS Coordinator');

-- --------------------------------------------------------

--
-- Table structure for table `rstudents`
--

CREATE TABLE IF NOT EXISTS `rstudents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student` int(9) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `curriculum` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rsubjects`
--

CREATE TABLE IF NOT EXISTS `rsubjects` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `curriculum` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `lec` int(11) DEFAULT NULL,
  `lab` int(11) DEFAULT NULL,
  `prereq` varchar(100) NOT NULL,
  `year` varchar(3) NOT NULL,
  `sem` varchar(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
