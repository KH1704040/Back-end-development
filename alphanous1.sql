-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2023 at 06:43 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alphanous1`
--

-- --------------------------------------------------------

--
-- Table structure for table `assisgnmentid`
--

CREATE TABLE `assisgnmentid` (
  `AssignmentID` int(20) NOT NULL,
  `Subject` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `File` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `CID` int(20) NOT NULL,
  `ClassYear` varchar(255) NOT NULL,
  `ClassRoom` varchar(255) NOT NULL,
  `Capacity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`CID`, `ClassYear`, `ClassRoom`, `Capacity`) VALUES
(2, 'year1', '204', '26');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` int(20) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phonenumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `PID` int(20) NOT NULL,
  `Pname` varchar(255) NOT NULL,
  `Pemail` varchar(255) NOT NULL,
  `Paddress` varchar(255) NOT NULL,
  `Age` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`PID`, `Pname`, `Pemail`, `Paddress`, `Age`) VALUES
(2, 'faris', '', '203 west street', '35'),
(4, 'kal', 'kaleem@gmail.com', '203 green st', '44');

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `SID` int(11) NOT NULL,
  `SName` varchar(255) NOT NULL,
  `Salary` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Job` varchar(255) NOT NULL,
  `TID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`SID`, `SName`, `Salary`, `Address`, `Job`, `TID`) VALUES
(2, 'kal', '34k', '203 green st', 'year 6 teacher', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sassignment`
--

CREATE TABLE `sassignment` (
  `HomeworkID` int(20) NOT NULL,
  `subject` int(255) NOT NULL,
  `file` blob NOT NULL,
  `AssignmentID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `SID` int(20) NOT NULL,
  `SName` varchar(255) NOT NULL,
  `Semail` varchar(255) NOT NULL,
  `grades` varchar(255) NOT NULL,
  `med` varchar(255) NOT NULL,
  `PID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`SID`, `SName`, `Semail`, `grades`, `med`, `PID`) VALUES
(1, 'imaani', 'Imaani@gmail.com', 'year 5', 'eye sight', 0);

-- --------------------------------------------------------

--
-- Table structure for table `susers`
--

CREATE TABLE `susers` (
  `ID` int(20) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Create_DateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `susers`
--

INSERT INTO `susers` (`ID`, `Username`, `Email`, `Password`, `Create_DateTime`) VALUES
(0, 'kaleem', 'kaleemhb2004@gmail.com', 'b65cb28b7c2569d90631cef9c8a8c29e', '2023-12-15 18:27:42');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `TID` int(20) NOT NULL,
  `Tname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Phonenumber` varchar(25) NOT NULL,
  `ClassID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tregister`
--

CREATE TABLE `tregister` (
  `ID` int(20) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Create_DateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tregister`
--

INSERT INTO `tregister` (`ID`, `Username`, `Email`, `Password`, `Create_DateTime`) VALUES
(0, 'kaleem', 'kaleem@gmail.com', 'b65cb28b7c2569d90631cef9c8a8c29e', '2023-12-15 18:28:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(20) NOT NULL,
  `Username` int(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Create_DateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Username`, `Email`, `Password`, `Create_DateTime`) VALUES
(0, 0, 'kaleem@gmail.com', 'b65cb28b7c2569d90631cef9c8a8c29e', '2023-12-15 18:27:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assisgnmentid`
--
ALTER TABLE `assisgnmentid`
  ADD PRIMARY KEY (`AssignmentID`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `sassignment`
--
ALTER TABLE `sassignment`
  ADD PRIMARY KEY (`HomeworkID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `susers`
--
ALTER TABLE `susers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tregister`
--
ALTER TABLE `tregister`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
