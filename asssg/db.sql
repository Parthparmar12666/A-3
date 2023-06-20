-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 08:58 AM
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
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `CNM` varchar(50) NOT NULL,
  `CNAME` varchar(50) NOT NULL,
  `CITY` varchar(50) NOT NULL,
  `RATING` varchar(50) NOT NULL,
  `SNO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `CNM`, `CNAME`, `CITY`, `RATING`, `SNO`) VALUES
(1, '201', 'HOFFMAN', 'LONDON', '100', '1001'),
(2, '202', 'GLOVANNE', 'ROME', '200', '1003'),
(3, '203', 'LIU', 'SANJOSE', '300', '1002'),
(4, '204', 'GRASS', 'BARCELONA', '100', '1002'),
(5, '206', 'CLEMENS', 'LONDON', '300', '1007'),
(6, '207', 'PEREIRA', 'ROME', '100', '1004');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Em_id` int(11) NOT NULL,
  `FIRST_NAME` varchar(100) DEFAULT NULL,
  `LAST_NAME` varchar(100) DEFAULT NULL,
  `SALARY` float DEFAULT NULL,
  `JOINING_DATE` date DEFAULT NULL,
  `DEPARTMENT` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Em_id`, `FIRST_NAME`, `LAST_NAME`, `SALARY`, `JOINING_DATE`, `DEPARTMENT`) VALUES
(1, 'JOHN', 'ABRAHAM', 1000000, '2013-01-01', 'BANKING'),
(2, 'MICHAEL', 'CLERK', 800000, '2013-01-01', 'INSURANCE'),
(3, 'ROY', 'THOMAS', 700000, '2013-02-01', 'BANKING'),
(4, 'TOM', 'JOSE', 600000, '2013-02-01', 'INSURANCE'),
(5, 'JERRY', 'PINTO', 650000, '2013-01-01', 'INSURANCE'),
(6, 'PHILIP', 'MATHEW', 750000, '2013-01-01', 'SERVICES'),
(7, 'TESTNAME1', '123', 650000, '2013-01-01', 'SERVICES'),
(8, 'TESTNAME2', 'LNAME%', 600000, '2013-02-01', 'INSURANCE');

-- --------------------------------------------------------

--
-- Table structure for table `incentives`
--

CREATE TABLE `incentives` (
  `Incentives_id` int(11) NOT NULL,
  `EMPLOYEE_REF_ID` int(11) DEFAULT NULL,
  `INCENTIVE_DATE` date DEFAULT NULL,
  `INCENTIVE_AMT` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `incentives`
--

INSERT INTO `incentives` (`Incentives_id`, `EMPLOYEE_REF_ID`, `INCENTIVE_DATE`, `INCENTIVE_AMT`) VALUES
(1, 1, '2013-02-01', '5000'),
(2, 2, '2013-02-01', '3000'),
(3, 3, '2013-02-01', '4000'),
(4, 1, '2013-01-01', '4500'),
(5, 2, '2013-01-01', '3500');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `oid` int(11) NOT NULL,
  `ONM` varchar(50) DEFAULT NULL,
  `AMT` varchar(50) DEFAULT NULL,
  `ODE` date DEFAULT NULL,
  `CNM` varchar(50) DEFAULT NULL,
  `SNO` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`oid`, `ONM`, `AMT`, `ODE`, `CNM`, `SNO`) VALUES
(2, '3001', '18.69', '1994-10-03', '201', '1007'),
(3, '3002', '1900.1', '1994-10-03', '207', '1004'),
(4, '3003', '767.19', '1994-10-03', '201', '1001'),
(5, '3005', '3005', '1994-10-03', '203', '1002'),
(6, '3006', '3006', '1994-10-04', '201', '1007'),
(7, '3007', '3007', '1994-10-05', '204', '1002'),
(8, '3008', '3008', '1994-10-05', '206', '1001'),
(9, '3009', '3009', '1994-10-04', '202', '1003'),
(10, '3010', '3010', '1994-10-06', '204', '1002'),
(11, '3011', '3011', '1994-10-06', '206', '1001');

-- --------------------------------------------------------

--
-- Table structure for table `sales_person`
--

CREATE TABLE `sales_person` (
  `id` int(11) NOT NULL,
  `SNO` varchar(50) DEFAULT NULL,
  `SNAME` varchar(50) DEFAULT NULL,
  `CITY` varchar(50) DEFAULT NULL,
  `COMM` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_person`
--

INSERT INTO `sales_person` (`id`, `SNO`, `SNAME`, `CITY`, `COMM`) VALUES
(202, '1001', 'PEEL', 'LONDON', '0.12'),
(203, '1002', 'SERRES', 'SAN JOSE', '0.13'),
(204, '1003', 'AXELROD', 'NEW YORK', '0.1'),
(205, '1004', 'MOTIKA', 'LONDON', '0.11'),
(206, '1007', 'RAFKIN', 'BARCELONA', '0.15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Em_id`);

--
-- Indexes for table `incentives`
--
ALTER TABLE `incentives`
  ADD PRIMARY KEY (`Incentives_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `sales_person`
--
ALTER TABLE `sales_person`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Em_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `incentives`
--
ALTER TABLE `incentives`
  MODIFY `Incentives_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sales_person`
--
ALTER TABLE `sales_person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
