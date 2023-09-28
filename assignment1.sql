-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2020 at 02:29 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment1`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DepartmentNo` int(11) NOT NULL COMMENT 'Primary Key',
  `DepartmentName` varchar(16) NOT NULL COMMENT 'Name of department',
  `HeadofDepartment` int(12) NOT NULL COMMENT 'ID of Employee',
  `DepartmentLocation` varchar(16) NOT NULL COMMENT 'Location of Department'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DepartmentNo`, `DepartmentName`, `HeadofDepartment`, `DepartmentLocation`) VALUES
(1, 'Headquarters', 1, 'Marks Tey'),
(3, 'Administartion', 2, 'Clacton-on-Sea'),
(8, 'Research', 4, 'Colchester');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeID` int(11) NOT NULL COMMENT 'Primary Key',
  `Fname` varchar(20) NOT NULL COMMENT 'First name',
  `Lname` varchar(30) NOT NULL COMMENT 'Last name',
  `DOB` date NOT NULL COMMENT 'Date of birth',
  `Gender` enum('Male','Female','Other') DEFAULT 'Male',
  `Address` varchar(40) NOT NULL COMMENT 'Employee Address',
  `Postcode` varchar(9) NOT NULL COMMENT 'Employee Postcode',
  `NiNo` varchar(12) NOT NULL COMMENT 'National insurence number',
  `Salary` decimal(10,0) NOT NULL COMMENT 'Employee Salary',
  `DepartmentNo` int(11) NOT NULL COMMENT 'Department Number'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeID`, `Fname`, `Lname`, `DOB`, `Gender`, `Address`, `Postcode`, `NiNo`, `Salary`, `DepartmentNo`) VALUES
(1, 'James', 'Borg', '1972-09-18', 'Male', '3 Oyster Reach', 'CO7 0HY', 'WC606946C', '50000', 1),
(2, 'Franklin', 'Wong', '1991-12-24', 'Female', '165 Meadow Way', 'CO15 2HS', 'WC606946C', '45000', 3),
(3, 'John', 'Smith', '1978-12-26', 'Male', '4 Silk Factory Row', 'CO10 7PY', 'YW158722D', '38000', 3),
(4, 'Lily', 'Lei', '1989-06-24', 'Female', '2A Sherwood Way', 'CO5 9LJ', 'BY564429C', '43000', 8),
(5, 'Kareen', 'Keegan', '1983-05-04', 'Female', '3 Almond Close', 'CO7 9HE', 'TP687053B', '35000', 8),
(6, 'Ramesh', 'Narayan', '1983-02-07', 'Male', '46-48 Hilman Avenue', 'CO15 2JL', 'MR247379A', '30000', 8),
(7, 'Ahmad', 'Jabbar', '1973-08-09', 'Male', '42 Perry Road', 'CO5 0UB', 'WL848296A', '25000', 8),
(8, 'Elliot', 'Everts', '1990-02-15', 'Other', '31 Lymington Avenue', 'CO15 4PJ', 'ON863877C', '33000', 3),
(9, 'David', 'Dowdy', '1973-09-21', 'Other', '19 Lexden Road', 'CO3 3PW', 'LE823841D', '23000', 8),
(10, 'Clarissa', 'Cage', '1978-06-13', 'Female', '3 The Street', 'CO6 1JX', 'NX171960C', '25000', 3);

-- --------------------------------------------------------

--
-- Table structure for table `jobassignment`
--

CREATE TABLE `jobassignment` (
  `JobNo` int(11) NOT NULL COMMENT 'Primary Key',
  `EmployeeID` int(12) NOT NULL COMMENT 'ID of employee',
  `ProjectCode` int(12) NOT NULL COMMENT 'Code of Project',
  `Hours` tinyint(7) NOT NULL COMMENT 'Number of hours worked on'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `ProjectCode` int(11) NOT NULL COMMENT 'Primary Key',
  `Description` text NOT NULL COMMENT 'Description of project',
  `NoOfDays` tinyint(5) NOT NULL COMMENT 'Days worked on project',
  `NoOfEmployees` tinyint(5) NOT NULL COMMENT 'Employees worked on project'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `question 15`
-- (See below for the actual view)
--
CREATE TABLE `question 15` (
`EmployeeID` int(11)
,`Fname` varchar(20)
,`Lname` varchar(30)
,`DOB` date
,`Gender` enum('Male','Female','Other')
,`Address` varchar(40)
,`Postcode` varchar(9)
,`NiNo` varchar(12)
,`Salary` decimal(10,0)
,`DepartmentNo` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `question 16`
-- (See below for the actual view)
--
CREATE TABLE `question 16` (
`EmployeeID` int(11)
,`Fname` varchar(20)
,`Lname` varchar(30)
,`DOB` date
,`Gender` enum('Male','Female','Other')
,`Address` varchar(40)
,`Postcode` varchar(9)
,`NiNo` varchar(12)
,`Salary` decimal(10,0)
,`DepartmentNo` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `question 17`
-- (See below for the actual view)
--
CREATE TABLE `question 17` (
`EmployeeID` int(11)
,`Name` varchar(51)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `question 18`
-- (See below for the actual view)
--
CREATE TABLE `question 18` (
`Salary` decimal(10,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `question 19`
-- (See below for the actual view)
--
CREATE TABLE `question 19` (
`Fname` varchar(20)
,`Lname` varchar(30)
,`AGE` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `question 20`
-- (See below for the actual view)
--
CREATE TABLE `question 20` (
`Fname` varchar(20)
,`Lname` varchar(30)
,`DepartmentLocation` varchar(16)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `question 21`
-- (See below for the actual view)
--
CREATE TABLE `question 21` (
`Fname` varchar(20)
,`Lname` varchar(30)
,`Address` varchar(40)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `question 22`
-- (See below for the actual view)
--
CREATE TABLE `question 22` (
`DepartmentNo` int(11)
,`Number of Employee` bigint(21)
,`Average Salary` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Structure for view `question 15`
--
DROP TABLE IF EXISTS `question 15`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `question 15`  AS  select `employee`.`EmployeeID` AS `EmployeeID`,`employee`.`Fname` AS `Fname`,`employee`.`Lname` AS `Lname`,`employee`.`DOB` AS `DOB`,`employee`.`Gender` AS `Gender`,`employee`.`Address` AS `Address`,`employee`.`Postcode` AS `Postcode`,`employee`.`NiNo` AS `NiNo`,`employee`.`Salary` AS `Salary`,`employee`.`DepartmentNo` AS `DepartmentNo` from `employee` order by `employee`.`Lname`,`employee`.`Fname` ;

-- --------------------------------------------------------

--
-- Structure for view `question 16`
--
DROP TABLE IF EXISTS `question 16`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `question 16`  AS  select `employee`.`EmployeeID` AS `EmployeeID`,`employee`.`Fname` AS `Fname`,`employee`.`Lname` AS `Lname`,`employee`.`DOB` AS `DOB`,`employee`.`Gender` AS `Gender`,`employee`.`Address` AS `Address`,`employee`.`Postcode` AS `Postcode`,`employee`.`NiNo` AS `NiNo`,`employee`.`Salary` AS `Salary`,`employee`.`DepartmentNo` AS `DepartmentNo` from `employee` where year(`employee`.`DOB`) < 1990 order by `employee`.`Lname`,`employee`.`Fname` ;

-- --------------------------------------------------------

--
-- Structure for view `question 17`
--
DROP TABLE IF EXISTS `question 17`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `question 17`  AS  select `employee`.`EmployeeID` AS `EmployeeID`,concat(`employee`.`Fname`,'-',`employee`.`Lname`) AS `Name` from `employee` order by `employee`.`Lname` ;

-- --------------------------------------------------------

--
-- Structure for view `question 18`
--
DROP TABLE IF EXISTS `question 18`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `question 18`  AS  select distinct `employee`.`Salary` AS `Salary` from `employee` order by `employee`.`Salary` ;

-- --------------------------------------------------------

--
-- Structure for view `question 19`
--
DROP TABLE IF EXISTS `question 19`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `question 19`  AS  select `employee`.`Fname` AS `Fname`,`employee`.`Lname` AS `Lname`,timestampdiff(YEAR,`employee`.`DOB`,curdate()) AS `AGE` from `employee` order by timestampdiff(YEAR,`employee`.`DOB`,curdate()) ;

-- --------------------------------------------------------

--
-- Structure for view `question 20`
--
DROP TABLE IF EXISTS `question 20`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `question 20`  AS  select `employee`.`Fname` AS `Fname`,`employee`.`Lname` AS `Lname`,`department`.`DepartmentLocation` AS `DepartmentLocation` from (`employee` join `department` on(`employee`.`DepartmentNo` = `department`.`DepartmentNo`)) ;

-- --------------------------------------------------------

--
-- Structure for view `question 21`
--
DROP TABLE IF EXISTS `question 21`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `question 21`  AS  select `employee`.`Fname` AS `Fname`,`employee`.`Lname` AS `Lname`,`employee`.`Address` AS `Address` from `employee` where `employee`.`Fname` like 'J%' or `employee`.`Lname` like 'J%' ;

-- --------------------------------------------------------

--
-- Structure for view `question 22`
--
DROP TABLE IF EXISTS `question 22`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `question 22`  AS  select `department`.`DepartmentNo` AS `DepartmentNo`,count(`employee`.`EmployeeID`) AS `Number of Employee`,avg(`employee`.`Salary`) AS `Average Salary` from (`department` left join `employee` on(`department`.`DepartmentNo` = `employee`.`DepartmentNo`)) group by `department`.`DepartmentName` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DepartmentNo`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeID`),
  ADD KEY `DepartmentNo` (`DepartmentNo`);

--
-- Indexes for table `jobassignment`
--
ALTER TABLE `jobassignment`
  ADD PRIMARY KEY (`JobNo`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`ProjectCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `DepartmentNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobassignment`
--
ALTER TABLE `jobassignment`
  MODIFY `JobNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `ProjectCode` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`DepartmentNo`) REFERENCES `department` (`DepartmentNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
