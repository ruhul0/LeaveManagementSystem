-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2019 at 06:50 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leaveapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `employeeblood`
--

CREATE TABLE `employeeblood` (
  `bId` int(11) NOT NULL,
  `bName` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employeeblood`
--

INSERT INTO `employeeblood` (`bId`, `bName`) VALUES
(1, 'AB+'),
(2, 'AB-'),
(3, 'A+'),
(4, 'A-'),
(5, 'B+'),
(6, 'B-'),
(7, 'O+'),
(8, 'O-');

-- --------------------------------------------------------

--
-- Table structure for table `employeedepartment`
--

CREATE TABLE `employeedepartment` (
  `dptId` int(11) NOT NULL,
  `dptName` varchar(100) DEFAULT NULL,
  `dptEmployeeCodeNumberWhoAddDept` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employeedepartment`
--

INSERT INTO `employeedepartment` (`dptId`, `dptName`, `dptEmployeeCodeNumberWhoAddDept`) VALUES
(1, 'BOE', 'BOE0001'),
(2, 'Presentation', 'BOE0001');

-- --------------------------------------------------------

--
-- Table structure for table `employeedesignation`
--

CREATE TABLE `employeedesignation` (
  `desiId` int(11) NOT NULL,
  `desiDptId` int(11) DEFAULT NULL,
  `desiDesignationName` varchar(100) DEFAULT NULL,
  `desiEmployeeCodeNumberWhoAddDesi` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employeedesignation`
--

INSERT INTO `employeedesignation` (`desiId`, `desiDptId`, `desiDesignationName`, `desiEmployeeCodeNumberWhoAddDesi`) VALUES
(1, 1, 'Software Developer', 'BOE0001'),
(2, 2, 'Sr. Executive', 'BOE0001'),
(3, 2, 'Executive', 'BOE0001'),
(4, 2, 'Jr. Executive', 'BOE0001');

-- --------------------------------------------------------

--
-- Table structure for table `employeeinfo`
--

CREATE TABLE `employeeinfo` (
  `eId` int(11) NOT NULL,
  `eEmployeeCodeNumber` varchar(100) DEFAULT NULL,
  `eFirstName` varchar(45) DEFAULT NULL,
  `eLastName` varchar(45) DEFAULT NULL,
  `eDateOfBirth` date DEFAULT NULL,
  `eBloodGroup` int(11) DEFAULT NULL,
  `eGender` varchar(10) DEFAULT NULL,
  `ePhoneNumberPersonal` varchar(20) DEFAULT NULL,
  `ePhoneNumberOffice` varchar(20) DEFAULT NULL,
  `eParmanentAddress` varchar(255) DEFAULT NULL,
  `ePresentAddress` varchar(255) DEFAULT NULL,
  `eDptId` int(11) DEFAULT NULL,
  `eDesignationId` int(11) DEFAULT NULL,
  `eEmailAddress` varchar(100) DEFAULT NULL,
  `ePassword` varchar(255) DEFAULT NULL,
  `eEmployeeCodeNumberWhoAddEmployee` varchar(45) DEFAULT NULL,
  `eEmployeeVerification` int(11) DEFAULT NULL,
  `eWhoVerifytheEmployee` varchar(45) DEFAULT NULL,
  `eLastLogin` datetime DEFAULT NULL,
  `eEmpType` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employeeinfo`
--

INSERT INTO `employeeinfo` (`eId`, `eEmployeeCodeNumber`, `eFirstName`, `eLastName`, `eDateOfBirth`, `eBloodGroup`, `eGender`, `ePhoneNumberPersonal`, `ePhoneNumberOffice`, `eParmanentAddress`, `ePresentAddress`, `eDptId`, `eDesignationId`, `eEmailAddress`, `ePassword`, `eEmployeeCodeNumberWhoAddEmployee`, `eEmployeeVerification`, `eWhoVerifytheEmployee`, `eLastLogin`, `eEmpType`) VALUES
(1, 'BOE0001', 'Mohammad Ruhul', 'Amin', '1996-02-18', 1, 'Male', '+8801688137799', '+8801000000000', 'test Parmanent Address', 'test Present Address', 1, 1, 'ruhul20@gmail.com', '123', 'BOE0001', 1, 'BOE0001', '2019-04-19 22:43:28', 1),
(17, 'abc', 'aa', 'bb', '1996-02-21', 1, 'Male', '123', '123', '123', '123', 1, 1, 'a@a.com', '123', 'BOE0001', 1, 'BOE0001', '2019-04-19 22:47:14', 3);

-- --------------------------------------------------------

--
-- Table structure for table `employeeleaveapplicationdetails`
--

CREATE TABLE `employeeleaveapplicationdetails` (
  `lId` int(11) NOT NULL,
  `lEmployeeCodeNumberWhoApply` varchar(45) DEFAULT NULL,
  `lApplyDate` date DEFAULT NULL,
  `lLeaveId` tinyint(4) DEFAULT NULL,
  `lEmployeeImargencyAddress` varchar(255) DEFAULT NULL,
  `lLeaveFromDate` date DEFAULT NULL,
  `lLeaveToDate` date DEFAULT NULL,
  `lTotalLeaveDays` int(11) DEFAULT NULL,
  `lTotalLeaveDaysRemain` int(11) DEFAULT NULL,
  `lLeaveReason` varchar(255) DEFAULT NULL,
  `lAlternativeEmployeeCardNumber` varchar(45) DEFAULT NULL,
  `lIsApproved` tinyint(4) DEFAULT NULL,
  `lIsRecomanded` tinyint(4) DEFAULT NULL,
  `lWhoRecomand` varchar(100) DEFAULT NULL,
  `lWhoApproved` varchar(100) DEFAULT NULL,
  `lWhoEdit` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employeeleaveapplicationdetails`
--

INSERT INTO `employeeleaveapplicationdetails` (`lId`, `lEmployeeCodeNumberWhoApply`, `lApplyDate`, `lLeaveId`, `lEmployeeImargencyAddress`, `lLeaveFromDate`, `lLeaveToDate`, `lTotalLeaveDays`, `lTotalLeaveDaysRemain`, `lLeaveReason`, `lAlternativeEmployeeCardNumber`, `lIsApproved`, `lIsRecomanded`, `lWhoRecomand`, `lWhoApproved`, `lWhoEdit`) VALUES
(1, 'BOE0001', '2015-08-24', 2, 'sfsadf', '2015-08-24', '2015-08-27', 3, 12, 'fsdfaf', 'BOE0012', 1, 1, 'BOE0001', 'BOE0001', NULL),
(2, 'abc', '2019-04-19', 1, '123', '2019-04-19', '2019-04-26', 7, 11, 'NULL', 'abc', 1, 1, 'BOE0001', 'BOE0001', NULL),
(3, 'abc', '2019-04-19', 1, '123', '2019-04-20', '2019-04-27', 7, 4, 'null', 'abc', 0, 0, NULL, NULL, NULL),
(4, 'abc', '2019-04-19', 2, 'abc', '2019-04-27', '2019-04-30', 3, 12, 'asd', 'abc', 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leavedetails`
--

CREATE TABLE `leavedetails` (
  `lId` tinyint(4) NOT NULL,
  `lType` varchar(30) DEFAULT NULL,
  `lTotalDays` int(11) DEFAULT NULL,
  `lEmployeeCodeNumberWhoAddLeave` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leavedetails`
--

INSERT INTO `leavedetails` (`lId`, `lType`, `lTotalDays`, `lEmployeeCodeNumberWhoAddLeave`) VALUES
(1, 'Casual Leave', 18, NULL),
(2, 'Sick Leave', 15, NULL),
(3, 'Earn Leave', 12, NULL),
(4, 'Maternity Leave', 180, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employeeblood`
--
ALTER TABLE `employeeblood`
  ADD PRIMARY KEY (`bId`);

--
-- Indexes for table `employeedepartment`
--
ALTER TABLE `employeedepartment`
  ADD PRIMARY KEY (`dptId`),
  ADD KEY `employeedepartment_ibfk_1` (`dptEmployeeCodeNumberWhoAddDept`);

--
-- Indexes for table `employeedesignation`
--
ALTER TABLE `employeedesignation`
  ADD PRIMARY KEY (`desiId`),
  ADD KEY `desiDptId` (`desiDptId`) USING BTREE,
  ADD KEY `desiDesignationName` (`desiDesignationName`),
  ADD KEY `employeedesignation_ibfk_1` (`desiEmployeeCodeNumberWhoAddDesi`);

--
-- Indexes for table `employeeinfo`
--
ALTER TABLE `employeeinfo`
  ADD PRIMARY KEY (`eId`),
  ADD UNIQUE KEY `eCodeNumber_UNIQUE` (`eEmployeeCodeNumber`);

--
-- Indexes for table `employeeleaveapplicationdetails`
--
ALTER TABLE `employeeleaveapplicationdetails`
  ADD PRIMARY KEY (`lId`),
  ADD KEY `lEmployeeLeaveType_fk_lType` (`lLeaveId`),
  ADD KEY `lEmployeeCodeNumberWhoApply` (`lEmployeeCodeNumberWhoApply`),
  ADD KEY `lWhoRecomand` (`lWhoRecomand`),
  ADD KEY `lWhoApproved` (`lWhoApproved`);

--
-- Indexes for table `leavedetails`
--
ALTER TABLE `leavedetails`
  ADD PRIMARY KEY (`lId`),
  ADD KEY `lType` (`lType`),
  ADD KEY `employeeleave_ibfk_1` (`lEmployeeCodeNumberWhoAddLeave`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employeeblood`
--
ALTER TABLE `employeeblood`
  MODIFY `bId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employeedepartment`
--
ALTER TABLE `employeedepartment`
  MODIFY `dptId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employeedesignation`
--
ALTER TABLE `employeedesignation`
  MODIFY `desiId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employeeinfo`
--
ALTER TABLE `employeeinfo`
  MODIFY `eId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `employeeleaveapplicationdetails`
--
ALTER TABLE `employeeleaveapplicationdetails`
  MODIFY `lId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `leavedetails`
--
ALTER TABLE `leavedetails`
  MODIFY `lId` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employeedepartment`
--
ALTER TABLE `employeedepartment`
  ADD CONSTRAINT `employeedepartment_ibfk_1` FOREIGN KEY (`dptEmployeeCodeNumberWhoAddDept`) REFERENCES `employeeinfo` (`eEmployeeCodeNumber`);

--
-- Constraints for table `employeedesignation`
--
ALTER TABLE `employeedesignation`
  ADD CONSTRAINT `desiDeptId_fk_dptId` FOREIGN KEY (`desiDptId`) REFERENCES `employeedepartment` (`dptId`),
  ADD CONSTRAINT `employeedesignation_ibfk_1` FOREIGN KEY (`desiEmployeeCodeNumberWhoAddDesi`) REFERENCES `employeeinfo` (`eEmployeeCodeNumber`);

--
-- Constraints for table `employeeleaveapplicationdetails`
--
ALTER TABLE `employeeleaveapplicationdetails`
  ADD CONSTRAINT `employeeleaveapplicationdetails_ibfk_1` FOREIGN KEY (`lEmployeeCodeNumberWhoApply`) REFERENCES `employeeinfo` (`eEmployeeCodeNumber`),
  ADD CONSTRAINT `employeeleaveapplicationdetails_ibfk_2` FOREIGN KEY (`lLeaveId`) REFERENCES `leavedetails` (`lId`),
  ADD CONSTRAINT `employeeleaveapplicationdetails_ibfk_3` FOREIGN KEY (`lWhoRecomand`) REFERENCES `employeeinfo` (`eEmployeeCodeNumber`),
  ADD CONSTRAINT `employeeleaveapplicationdetails_ibfk_4` FOREIGN KEY (`lWhoApproved`) REFERENCES `employeeinfo` (`eEmployeeCodeNumber`);

--
-- Constraints for table `leavedetails`
--
ALTER TABLE `leavedetails`
  ADD CONSTRAINT `leavedetails_ibfk_1` FOREIGN KEY (`lEmployeeCodeNumberWhoAddLeave`) REFERENCES `employeeinfo` (`eEmployeeCodeNumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
