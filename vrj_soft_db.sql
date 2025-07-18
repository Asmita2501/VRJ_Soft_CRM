-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2025 at 10:17 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vrj_soft_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_ticketing`
--

CREATE TABLE `add_ticketing` (
  `TICKETING_ID` int(11) NOT NULL,
  `ENTRY_DATE` varchar(25) NOT NULL,
  `DEPARTMENT_NAME` varchar(25) NOT NULL,
  `CLIENT_NAME` varchar(20) NOT NULL,
  `PROJECT` varchar(25) NOT NULL,
  `ISSUE` varchar(25) NOT NULL,
  `HANDOVER` varchar(25) NOT NULL,
  `REMARK` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_ticketing`
--

INSERT INTO `add_ticketing` (`TICKETING_ID`, `ENTRY_DATE`, `DEPARTMENT_NAME`, `CLIENT_NAME`, `PROJECT`, `ISSUE`, `HANDOVER`, `REMARK`) VALUES
(1, '18/MAR/2024', 'Marketing', 'Mohan', 'CRM', 'kjhgfdssdfghjkl', 'Prisha', 'Issue Resolve'),
(2, '18/MAR/2024', 'IT', 'Vishal', 'CRM', 'kjhgfdsfhk', 'Adhira', 'Issue On Hold'),
(3, '22/MAR/2024', 'Marketing', 'Arati', 'AITS', 'asjkklds', 'Alpesh', 'Issue In Progress'),
(5, '2/APR/2024', 'Marketing', 'Mahesh', 'CRM', 'gfsdfghjkl', 'Samrudhi', 'Issue Resolve'),
(6, '2/APR/2024', 'IT', 'Nehal', 'AITS', 'sdfghjk', 'Samrudhi', 'Issue In Progress'),
(7, '14/FEB/2025', 'IT', 'Aniket', 'Construction', 'database', 'Shubham', 'Issue Resolve');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `ID` int(10) NOT NULL,
  `USERNAME` varchar(20) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `client_enquiry`
--

CREATE TABLE `client_enquiry` (
  `CLIENT_ID` int(10) NOT NULL,
  `ENQUIRY_DATE` varchar(20) NOT NULL,
  `FIRST_NAME` varchar(20) NOT NULL,
  `LAST_NAME` varchar(20) NOT NULL,
  `PHONE_NUMBER` varchar(10) NOT NULL,
  `EMAIL` varchar(20) NOT NULL,
  `PROFESSION` varchar(20) NOT NULL,
  `CLIENT_INFORMATION` varchar(50) NOT NULL,
  `CLIENT_SUGGESTED_INFORMATION` varchar(50) NOT NULL,
  `STATUS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_enquiry`
--

INSERT INTO `client_enquiry` (`CLIENT_ID`, `ENQUIRY_DATE`, `FIRST_NAME`, `LAST_NAME`, `PHONE_NUMBER`, `EMAIL`, `PROFESSION`, `CLIENT_INFORMATION`, `CLIENT_SUGGESTED_INFORMATION`, `STATUS`) VALUES
(1, '2/APR/2024', 'Sagar', 'Pawar', '1234567890', 'sagar@gmail.com', 'JOB', 'Alpesh', 'Accenture', 'Lead'),
(2, '2/APR/2024', 'Rushikesh', 'Lokhande', '0987654321', 'rushi123@gmail.com', 'Bussiness', 'Narayan', 'Cognizant', 'FollowUp'),
(3, '2/APR/2024', 'Vidya', 'Yeole', '1122334455', 'vidya@gmail.com', 'Self Employee', 'Aishwarya', 'Tech Mahindra', 'FollowUp'),
(4, '2/APR/2024', 'Mohan', 'Devarshi', '7744963222', 'mohan123@gmail.com', 'JOB', 'Prisha', 'TATA', 'Lead'),
(14, '2/APR/2024', 'Sagar', 'Pawar', '9172922696', 'sagar@gmail.com', 'Self Employee', 'Foriegn Client', 'Tech Mahindra', 'FollowUp');

-- --------------------------------------------------------

--
-- Table structure for table `client_payment_entry`
--

CREATE TABLE `client_payment_entry` (
  `CLIENT_ID` int(11) NOT NULL,
  `ENTRY_DATE` varchar(20) NOT NULL,
  `FIRST_NAME` varchar(20) NOT NULL,
  `LAST_NAME` varchar(20) NOT NULL,
  `PHONE_NO` varchar(10) NOT NULL,
  `BUSINESS_NATURE` varchar(30) NOT NULL,
  `PAYMENT_AMOUNT` int(10) NOT NULL,
  `PAYMENT_MODE` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_payment_entry`
--

INSERT INTO `client_payment_entry` (`CLIENT_ID`, `ENTRY_DATE`, `FIRST_NAME`, `LAST_NAME`, `PHONE_NO`, `BUSINESS_NATURE`, `PAYMENT_AMOUNT`, `PAYMENT_MODE`) VALUES
(1, '1/APR/2024', 'Sangita', 'Devarshi', '9172922696', 'Development', 40000, 'Netbanking'),
(2, '2/APR/2024', 'Poonam', 'Mohalkar', '1122334455', 'Development', 50000, 'UPI');

-- --------------------------------------------------------

--
-- Table structure for table `client_registration`
--

CREATE TABLE `client_registration` (
  `CLIENT_ID` int(5) NOT NULL,
  `REG_DATE` varchar(20) NOT NULL,
  `FIRST_NAME` varchar(20) NOT NULL,
  `LAST_NAME` varchar(20) NOT NULL,
  `PHONE_NO` varchar(20) NOT NULL,
  `EMAIL` varchar(20) NOT NULL,
  `PROFESSION` varchar(20) NOT NULL,
  `CLIENT_INFO` varchar(20) NOT NULL,
  `COMPANY_NAME` varchar(20) NOT NULL,
  `COMPANY_ADDRESS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_registration`
--

INSERT INTO `client_registration` (`CLIENT_ID`, `REG_DATE`, `FIRST_NAME`, `LAST_NAME`, `PHONE_NO`, `EMAIL`, `PROFESSION`, `CLIENT_INFO`, `COMPANY_NAME`, `COMPANY_ADDRESS`) VALUES
(1, '1/APR/2024', 'Sangita', 'Padolkar', '9172922696', 'sangita@gmail.com', 'JOB', 'Developer', 'Accenture', 'Pune'),
(2, '2/APR/2024', 'Prisha', 'Devarshi', '9172922696', 'prisha123@gmail.com', 'JOB', 'Foriegn Client', 'Deloitee', 'American'),
(3, '2/APR/2024', 'Adhira', 'Pujari', '0987654321', 'adhira123@gmail.com', 'BUSINESS', 'International Client', 'Persistent', 'German'),
(4, '2/APR/2024', 'Gayatri', 'Dharmale', '1234567890', 'gayatri123@gmail.com', 'SELF EMPLOYEE', 'Aishwarya', 'Cognizant', 'England');

-- --------------------------------------------------------

--
-- Table structure for table `day_plan_entry`
--

CREATE TABLE `day_plan_entry` (
  `PLAN_ID` int(11) NOT NULL,
  `DATE` varchar(25) NOT NULL,
  `DAY` varchar(20) NOT NULL,
  `TIME` varchar(25) NOT NULL,
  `DETAILS` varchar(50) NOT NULL,
  `STATUS` varchar(50) NOT NULL,
  `REMARK` varchar(40) NOT NULL,
  `PLAN_BY` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `day_plan_entry`
--

INSERT INTO `day_plan_entry` (`PLAN_ID`, `DATE`, `DAY`, `TIME`, `DETAILS`, `STATUS`, `REMARK`, `PLAN_BY`) VALUES
(1, '20/MAR/2024', 'Wednsday', '16:49', 'Login Page', 'Not Urgent But Important', 'In Progress', 'Prisha'),
(2, '20/MAR/2024', 'Wednsday', '16:49', 'Employee Dashboard', 'Urgent And Important', 'Completed Task', 'Sangita'),
(3, '20/MAR/2024', 'Wednsday', '16:49', 'Admin dashboard', 'Urgent And Important', 'On Hold', 'Mohan');

-- --------------------------------------------------------

--
-- Table structure for table `employee_payment_entry`
--

CREATE TABLE `employee_payment_entry` (
  `EMP_ID` int(11) NOT NULL,
  `DATE` varchar(20) NOT NULL,
  `TIME` varchar(20) NOT NULL,
  `FIRST_NAME` varchar(20) NOT NULL,
  `LAST_NAME` varchar(20) NOT NULL,
  `AMOUNT` int(20) NOT NULL,
  `JOB` varchar(20) NOT NULL,
  `PAYMENT_MODE` varchar(15) NOT NULL,
  `INCENTIVE` varchar(11) NOT NULL,
  `FINAL_AMOUNT` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_payment_entry`
--

INSERT INTO `employee_payment_entry` (`EMP_ID`, `DATE`, `TIME`, `FIRST_NAME`, `LAST_NAME`, `AMOUNT`, `JOB`, `PAYMENT_MODE`, `INCENTIVE`, `FINAL_AMOUNT`) VALUES
(1, '8/APR/2024', '15:39', 'sangita', 'padolkar', 50000, 'Manager', 'Netbanking', '0.10', 55000);

-- --------------------------------------------------------

--
-- Table structure for table `petty_cash`
--

CREATE TABLE `petty_cash` (
  `PID` int(11) NOT NULL,
  `PURCHASE_DATE` varchar(20) NOT NULL,
  `DEPARTMENT_NAME` varchar(20) NOT NULL,
  `PRODUCT_NAME` varchar(20) NOT NULL,
  `RATE` int(7) NOT NULL,
  `QUANTITY` int(7) NOT NULL,
  `BILL` int(7) NOT NULL,
  `ENTRY_BY` varchar(20) NOT NULL,
  `PURPOSE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petty_cash`
--

INSERT INTO `petty_cash` (`PID`, `PURCHASE_DATE`, `DEPARTMENT_NAME`, `PRODUCT_NAME`, `RATE`, `QUANTITY`, `BILL`, `ENTRY_BY`, `PURPOSE`) VALUES
(1, '15/MAR/2024', 'HR', 'software', 10000, 2, 20000, 'sangita', 'For Events'),
(2, '15/MAR/2024', 'IT', 'software', 5000, 4, 20000, 'arati', 'for business'),
(3, '15/MAR/2024', 'IT', 'software', 5000, 4, 20000, 'arati', 'for business'),
(4, '15/MAR/2024', 'Marketing', 'table', 500, 10, 5000, 'alpesh', 'for office'),
(5, '16/MAR/2024', 'Sales', 'pen', 40, 40, 1600, 'dhanashree', 'For Office'),
(6, '18/MAR/2024', 'Marketing', 'steel', 10000, 2, 20000, 'vidya', 'For Business'),
(8, '21/MAR/2024', 'HR', 'Motherboard', 10000, 10, 100000, 'Adhira', 'For Business'),
(9, '2/APR/2024', 'IT', 'computer', 10000, 2, 20000, 'Prisha', 'Office Work');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `fname` varchar(10) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `phoneno` varchar(10) NOT NULL,
  `email` varchar(150) NOT NULL,
  `uname` varchar(10) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `fname`, `lname`, `phoneno`, `email`, `uname`, `pass`) VALUES
(1, 'Sahil', 'Panmand', '1234567890', 'sahil@gmail.com', 'sahil', 'sahil@123'),
(2, 'Alpesh', 'Dhoke', '0987654321', 'alpesh@gmail.com', 'alpesh', 'alpesh@123'),
(3, 'Vidya', 'Yeole', '1234567890', 'vidya@gmail.com', 'vidya', 'vidya@123'),
(4, 'Sangita', 'Devarshi', '9172922696', 'sangitadpadolkar@gmail.com', 'sangita', 'sang@123'),
(13, 'Dhanu', 'Jadhav', '0987653211', 'dhanu@gmail.com', 'dhanushree', 'dhanu@123'),
(22, 'shubham', 'lohar', '8928517749', 'shubhamlohar@gmail.com', 'Shubham', '1234567');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_payment_entry`
--

CREATE TABLE `vendor_payment_entry` (
  `VENDOR_ID` int(10) NOT NULL,
  `VENDOR_NAME` varchar(20) NOT NULL,
  `PAYMENT_DATE` varchar(20) NOT NULL,
  `PAYMENT_AMOUNT` int(30) NOT NULL,
  `PAYMENT_MODE` varchar(20) NOT NULL,
  `PAYMENT_BY` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_payment_entry`
--

INSERT INTO `vendor_payment_entry` (`VENDOR_ID`, `VENDOR_NAME`, `PAYMENT_DATE`, `PAYMENT_AMOUNT`, `PAYMENT_MODE`, `PAYMENT_BY`) VALUES
(1, 'Mohan', '1/APR/2024', 50000, 'By Cheque', 'Sangita'),
(2, 'Hentash', '2/APR/2024', 200000, 'By Cheque', 'Aditi'),
(3, 'Pranav', '2/APR/2024', 100000, 'UPI', 'Rasika'),
(4, 'Shraddha', '2/APR/2024', 300000, 'By Cheque', 'Rutuja');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_ticketing`
--
ALTER TABLE `add_ticketing`
  ADD PRIMARY KEY (`TICKETING_ID`);

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `client_enquiry`
--
ALTER TABLE `client_enquiry`
  ADD PRIMARY KEY (`CLIENT_ID`);

--
-- Indexes for table `client_payment_entry`
--
ALTER TABLE `client_payment_entry`
  ADD PRIMARY KEY (`CLIENT_ID`);

--
-- Indexes for table `client_registration`
--
ALTER TABLE `client_registration`
  ADD PRIMARY KEY (`CLIENT_ID`);

--
-- Indexes for table `day_plan_entry`
--
ALTER TABLE `day_plan_entry`
  ADD PRIMARY KEY (`PLAN_ID`);

--
-- Indexes for table `employee_payment_entry`
--
ALTER TABLE `employee_payment_entry`
  ADD PRIMARY KEY (`EMP_ID`);

--
-- Indexes for table `petty_cash`
--
ALTER TABLE `petty_cash`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `vendor_payment_entry`
--
ALTER TABLE `vendor_payment_entry`
  ADD PRIMARY KEY (`VENDOR_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_ticketing`
--
ALTER TABLE `add_ticketing`
  MODIFY `TICKETING_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_enquiry`
--
ALTER TABLE `client_enquiry`
  MODIFY `CLIENT_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `client_payment_entry`
--
ALTER TABLE `client_payment_entry`
  MODIFY `CLIENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `client_registration`
--
ALTER TABLE `client_registration`
  MODIFY `CLIENT_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `day_plan_entry`
--
ALTER TABLE `day_plan_entry`
  MODIFY `PLAN_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_payment_entry`
--
ALTER TABLE `employee_payment_entry`
  MODIFY `EMP_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `petty_cash`
--
ALTER TABLE `petty_cash`
  MODIFY `PID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `vendor_payment_entry`
--
ALTER TABLE `vendor_payment_entry`
  MODIFY `VENDOR_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
