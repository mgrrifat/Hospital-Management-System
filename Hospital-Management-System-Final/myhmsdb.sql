-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2020 at 02:34 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(4, 1, 'Rifat', 'Rahman', 'Male', 'mgrrifat@gmail.com', '01717437405', 'Rahim', 550, '2022-02-14', '10:00:00', 1, 0),
(4, 2, 'Anjan', 'Datta', 'Male', 'anjandatta@gmail.com', '01717437401', 'Karim', 700, '2022-02-28', '10:00:00', 0, 1),
(4, 3, 'Anjan', 'Datta', 'Male', 'anjandatta@gmail.com', '017174374052', 'Abdul', 1000, '2022-02-19', '03:00:00', 0, 1),
(11, 4, 'Rockey', 'KGF', 'Male', 'rockey@gmail.com', '01717437403', 'Rakib', 500, '2022-02-29', '20:00:00', 1, 1),
(4, 5, 'Anjan', 'Datta', 'Male', 'anjandatta@gmail.com', '01717437404', 'Karim', 700, '2022-02-28', '12:00:00', 1, 1),
(4, 6, 'Anjan', 'Datta', 'Male', 'anjandatta@gmail.com', '01717437406', 'Rahim', 550, '2022-02-26', '15:00:00', 0, 1),
(2, 8, 'Sabiha', 'Tasnim', 'Female', 'sabiha@gmail.com', '01717437407', 'Rahim', 550, '2022-03-21', '10:00:00', 1, 1),
(5, 9, 'Sabbir', 'Rahman', 'Male', 'aabbir@gmail.com', '01717437408', 'Rahim', 550, '2022-03-19', '20:00:00', 1, 0),
(4, 10, 'Anjan', 'Datta', 'Male', 'anjandatta@gmail.com', '01717437409', 'Rahim', 550, '2022-03-25', '14:00:00', 1, 0),
(4, 11, 'Anjan', 'Datta', 'Male', 'anjandatta@gmail.com', '01717437410', 'Karim', 700, '2022-03-27', '15:00:00', 1, 1),
(9, 12, 'Sadhin', 'Rahman', 'Male', 'sadhin@gmail.com', '01717437411', 'Rauf', 800, '2022-03-26', '12:00:00', 1, 1),
(9, 13, 'Sadhin', 'Rahman', 'Male', 'sadhin@gmail.com', '01717437412', 'Mithun', 450, '2022-03-26', '14:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Anu', 'anu@gmail.com', '+8801840006081', 'Hey Admin'),
('Viki', 'viki@gmail.com', '+8801840006082', 'Good Job, Pal'),
('Ananya', 'ananya@gmail.com', '+8801840006083', 'How can I reach you?'),
('Akash', 'akash@gmail.com', '+8801840006084', 'Love your site'),
('Mani', 'mani@gmail.com', '+8801840006085', 'Want some coffee?'),
('Karthick', 'karthi@gmail.com', '+8801840006086', 'Good service'),
('Atonu', 'atonu@gmail.com', '+8801840006087', 'Love your service'),
('Asiq', 'asiq@gmail.com', '+8801840006088', 'Love your service. Thank you!'),
('Jane', 'jane@gmail.com', '+8801840006089', 'I love your service!');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('Rakib', 'Rakib123', 'rakib@gmail.com', 'General', 500),
('Soikot', 'Soikot123', 'soikot@gmail.com', 'Cardiologist', 600),
('Karim', 'Karim123', 'karim@gmail.com', 'General', 700),
('Rahim', 'rahim123', 'rahim@gmail.com', 'Pediatrician', 550),
('Rauf', 'Rauf123', 'rauf@gmail.com', 'Pediatrician', 800),
('Abdul', 'Abdul123', 'abdul@gmail.com', 'Cardiologist', 1000),
('Atonu', 'Atonu123', 'atonu@gmail.com', 'Neurologist', 1500),
('Mithun', 'Mithun123', 'mithun@gmail.com', 'Pediatrician', 450);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(1, 'Abdullah', 'Rauf', 'Male', 'rauf@gmail.com', '01717437413', 'rauf123', 'rauf123'),
(2, 'Sabiha', 'Bhatt', 'Female', 'sabiha@gmail.com', '01717437414', 'Sabiha123', 'Sabiha123'),
(3, 'Shahrukh', 'khan', 'Male', 'shahrukh@gmail.com', '01717437415', 'shahrukh123', 'shahrukh123'),
(5, 'Sabbir', 'Rahman', 'Male', 'sabbir@gmail.com', '01717437417', 'Sabbir123', 'Sabbir123'),
(6, 'Abu', 'Said', 'Male', 'abusaid@gmail.com', '01717437418', 'sushant123', 'sushant123'),
(7, 'Nancy', 'Akther', 'Female', 'nancy@gmail.com', '01717437419', 'nancy123', 'nancy123'),
(8, 'Kenny', 'Lim', 'Male', 'kenny@gmail.com', '01717437420', 'kenny123', 'kenny123'),
(9, 'Sadhin', 'Rahman', 'Male', 'Sadhin@gmail.com', '01717437421', 'Sadhin123', 'Sadhin123'),
(10, 'Peter', 'Bose', 'Male', 'peter@gmail.com', '01717437422', 'peter123', 'peter123'),
(11, 'Rockey', 'KGF', 'Male', 'rockey@gmail.com', '01717437423', 'Rockey123', 'Rockey123');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Karim', 4, 11, 'Anjan', 'Datta', '2022-03-23', '15:00:00', 'Cough', 'Nothing', 'Just take a teaspoon of Benadryl every night'),
('Rahim', 2, 8, 'Sabiha', 'Bhatt', '2022-03-27', '10:00:00', 'Severe Fever', 'Nothing', 'Take bed rest'),
('Rauf', 9, 12, 'Sadhin', 'Rahman', '202-03-28', '12:00:00', 'Sever fever', 'nothing', 'Paracetamol -> 1 every morning and night'),
('Mithun', 9, 13, 'Sadhin', 'Rahman', '2022-04-06', '14:00:00', 'Cough', 'Skin dryness', 'Intake fruits with more water content');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
