-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2022 at 09:15 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `applied`
--

CREATE TABLE `applied` (
  `S. No` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `jobid` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `contact` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `compid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `location` varchar(10) NOT NULL,
  `contact` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`compid`, `name`, `location`, `contact`) VALUES
(101, 'Newton School', 'Bangalore', 7004395760);

-- --------------------------------------------------------

--
-- Table structure for table `job-post`
--

CREATE TABLE `job-post` (
  `jobid` int(11) NOT NULL,
  `recid` int(11) NOT NULL,
  `compid` int(11) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `company` varchar(10) NOT NULL,
  `location` varchar(10) NOT NULL,
  `salary` int(11) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job-post`
--

INSERT INTO `job-post` (`jobid`, `recid`, `compid`, `designation`, `company`, `location`, `salary`, `description`) VALUES
(1, 2, 101, 'Software Engineer', 'Newton Sch', 'Bangalore', 1010101254, 'Lorem Ipsum is simply dum.');

-- --------------------------------------------------------

--
-- Table structure for table `recruiter`
--

CREATE TABLE `recruiter` (
  `recid` int(4) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recruiter`
--

INSERT INTO `recruiter` (`recid`, `username`, `password`, `email`) VALUES
(2, 'prashant12', 'prashant12', 'prashantk@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(4) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `email`) VALUES
(3, 'rithikrajy', 'Rithik@805', 'rrpandey@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applied`
--
ALTER TABLE `applied`
  ADD PRIMARY KEY (`S. No`),
  ADD KEY `new3` (`userid`),
  ADD KEY `new4` (`jobid`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`compid`);

--
-- Indexes for table `job-post`
--
ALTER TABLE `job-post`
  ADD PRIMARY KEY (`jobid`),
  ADD KEY `new` (`compid`),
  ADD KEY `new2` (`recid`);

--
-- Indexes for table `recruiter`
--
ALTER TABLE `recruiter`
  ADD PRIMARY KEY (`recid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`,`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applied`
--
ALTER TABLE `applied`
  MODIFY `S. No` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job-post`
--
ALTER TABLE `job-post`
  MODIFY `jobid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `recruiter`
--
ALTER TABLE `recruiter`
  MODIFY `recid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applied`
--
ALTER TABLE `applied`
  ADD CONSTRAINT `new3` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`),
  ADD CONSTRAINT `new4` FOREIGN KEY (`jobid`) REFERENCES `job-post` (`jobid`);

--
-- Constraints for table `job-post`
--
ALTER TABLE `job-post`
  ADD CONSTRAINT `new` FOREIGN KEY (`compid`) REFERENCES `company` (`compid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
