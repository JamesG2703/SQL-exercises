-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2020 at 04:18 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment2`
--

-- --------------------------------------------------------

--
-- Table structure for table `consumer`
--

CREATE TABLE `consumer` (
  `ConsumerID` int(11) NOT NULL COMMENT 'Primary Key',
  `Fname` varchar(20) NOT NULL COMMENT 'Consumer First name',
  `Lname` varchar(30) NOT NULL COMMENT 'Consumer Last name',
  `DateofBirth` date DEFAULT NULL COMMENT 'Consumer Date of Birth',
  `Gender` enum('Male','Female','Other') DEFAULT 'Male' COMMENT 'Gender of consumer',
  `Address` varchar(40) NOT NULL COMMENT 'Address of consumer',
  `Postcode` varchar(9) NOT NULL COMMENT 'Postcode of consumer',
  `TelNo` int(12) NOT NULL COMMENT 'Phone number of consumer',
  `Email` varchar(20) NOT NULL COMMENT 'Email of consumer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `consumer`
--

INSERT INTO `consumer` (`ConsumerID`, `Fname`, `Lname`, `DateofBirth`, `Gender`, `Address`, `Postcode`, `TelNo`, `Email`) VALUES
(1, 'Jack', 'Washington', '1998-11-04', 'Male', '8 Rosemary Lane', 'CM1 3PJ', 754414899, 'jw1998@gmail.com'),
(2, 'James', 'Smith', '1995-12-04', 'Male', '11 Green Way', 'CM5 3JN', 542288992, 'js1995@gmail.com'),
(3, 'Elizabeth', 'Graham', '2000-01-19', 'Female', '19 The Meeds', 'CM9 2TY', 921158433, 'eg2000@yahoo.com'),
(4, 'Edward', 'Woodpecker', '2001-06-14', 'Male', '77 Brown Road', 'CM1 6IO', 231145699, 'ep2001@outlook.com'),
(5, 'Ann', 'Greenworth', '1990-08-26', 'Female', '32 Springfield Lane', 'CM6 1AD', 445699123, 'ag1990@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `distributor`
--

CREATE TABLE `distributor` (
  `DistributorID` int(11) NOT NULL COMMENT 'Primary Key',
  `DistributorName` varchar(20) NOT NULL COMMENT 'Name of distributor',
  `Location` varchar(16) NOT NULL COMMENT 'Location of distributor',
  `Email` varchar(30) NOT NULL COMMENT 'Email of distributor',
  `WebsiteAddress` varchar(70) NOT NULL COMMENT 'Website of distributor'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `distributor`
--

INSERT INTO `distributor` (`DistributorID`, `DistributorName`, `Location`, `Email`, `WebsiteAddress`) VALUES
(1, 'Royal Mail', 'Romford', 'royalmail@gmail.com', 'www.royalmail.com'),
(2, 'DHL', 'Cambridge', 'dhl@outlook.com', 'www.dhl.co.uk'),
(3, 'Parcelforce', 'Colchester', 'parcelforce@gmail.com', 'www.parcelforce.com'),
(4, 'DPD', 'London', 'dpd@yahoo.com', 'www.dpd.com'),
(5, 'UPS', 'Chelmsford', 'ups@gmail.com', 'www.ups.co.uk');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderNo` int(11) NOT NULL COMMENT 'No of order',
  `ProductID` int(11) NOT NULL COMMENT 'ID of product',
  `ConsumerID` int(11) NOT NULL COMMENT 'ID of consumer',
  `DateofOrder` date NOT NULL COMMENT 'The date the product was ordered on',
  `DeliveryDate` date NOT NULL COMMENT 'The date the product was delivered on',
  `EstimatedTime` varchar(12) NOT NULL COMMENT 'Amount of time estimated to be delivered on'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderNo`, `ProductID`, `ConsumerID`, `DateofOrder`, `DeliveryDate`, `EstimatedTime`) VALUES
(1, 1, 1, '2020-02-15', '2020-02-19', '3-5 days'),
(2, 2, 2, '2020-01-18', '2020-01-23', '3-5 days'),
(3, 3, 3, '2019-12-28', '2020-01-01', '3-5 days'),
(4, 4, 4, '2020-06-01', '2020-06-10', '5-10 days'),
(5, 5, 5, '2020-06-11', '2020-06-18', '5-8 days');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(11) NOT NULL COMMENT 'Primary Key',
  `Name` varchar(20) NOT NULL COMMENT 'Name of product',
  `Media` enum('Film','Music','Video Game') DEFAULT 'Film' COMMENT 'Choice of media',
  `Category` varchar(12) NOT NULL COMMENT 'Category of product',
  `AgeRating` tinyint(7) NOT NULL COMMENT 'Age rating of product',
  `Quantity` tinyint(5) NOT NULL COMMENT 'Quantity of product',
  `Price` decimal(9,0) NOT NULL COMMENT 'Price of product',
  `TypeofPayment` enum('Debit/Credit','Cash','Cryptocurrency') DEFAULT 'Debit/Credit' COMMENT 'Payment used to buy product',
  `DistributorID` int(11) NOT NULL COMMENT 'ID of distributor'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `Name`, `Media`, `Category`, `AgeRating`, `Quantity`, `Price`, `TypeofPayment`, `DistributorID`) VALUES
(1, 'Silent Hill 2', 'Video Game', 'Horror', 15, 1, '15', 'Debit/Credit', 1),
(2, 'The Great Gatsby', 'Film', 'Drama', 12, 1, '0', '', 2),
(3, 'Ghosteen', 'Music', 'Indie', 0, 2, '0', 'Debit/Credit', 3),
(4, 'Metal Gear Solid 3', 'Video Game', 'Stealth', 15, 1, '0', 'Cash', 4),
(5, 'Pulp Fiction', 'Film', 'Comedy', 18, 1, '0', 'Debit/Credit', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consumer`
--
ALTER TABLE `consumer`
  ADD PRIMARY KEY (`ConsumerID`);

--
-- Indexes for table `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`DistributorID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderNo`),
  ADD KEY `ConsumerID` (`ConsumerID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `DistributorID` (`DistributorID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consumer`
--
ALTER TABLE `consumer`
  MODIFY `ConsumerID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `distributor`
--
ALTER TABLE `distributor`
  MODIFY `DistributorID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderNo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'No of order', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`ConsumerID`) REFERENCES `consumer` (`ConsumerID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`),
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`ConsumerID`) REFERENCES `consumer` (`ConsumerID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`DistributorID`) REFERENCES `distributor` (`DistributorID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
