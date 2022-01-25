-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2022 at 01:10 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinebookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `barcode` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `author` varchar(25) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`barcode`, `name`, `author`, `price`, `quantity`) VALUES
('10101', 'Programming in C', 'James k Wick', 500, 18),
('10102', 'Learn Java', 'Scott Mayers', 150, 19),
('10103', 'Database Knowledge', 'Charles Pettzoid', 124, 353),
('10104', 'Let us c++', 'Steve Macclen', 90, 103),
('10105', 'Success Key', 'Shashi Raj', 5000, 49),
('10106', 'Database Management Systems', 'Johannes Gehrke and Raghu', 100, 49),
('10107', 'Mobile Computing', 'Raj Kamal', 500, 49),
('10108', 'The 3 Mistakes of My Life', ' Chetan Bhagat', 160, 499);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `username` varchar(25) NOT NULL,
  `barcode` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`username`, `barcode`, `quantity`) VALUES
('Jigyasu2001', 10101, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) DEFAULT NULL,
  `firstname` varchar(25) DEFAULT NULL,
  `lastname` varchar(25) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `mailid` varchar(50) DEFAULT NULL,
  `usertype` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `firstname`, `lastname`, `address`, `phone`, `mailid`, `usertype`) VALUES
('Admin', 'Admin', 'Mr.', 'Admin', 'Haldia WB', '9587458962', 'admin@gmail.com', 1),
('Demo', 'Demo', 'Demo', 'Demo', 'Demo', '9999999999', 'Demo@gmail.com', 2),
('Jigyasu2001', 'Jigs', 'Jigyasu', 'singh', 'Shastri nagar Sirohi', '9414673244', 'jigyashu2001@gmail.com', 2),
('Rajesh', 'Rajesh', 'Rajesh', 'jain', 'Sirohi', '9632581036', 'Rajesh@gmail.com', 2),
('sahilkhan', 'sahilkhan', 'sahil', 'khan', 'rampura', '7665772740', 'sahilkhan123@gmail.com', 2),
('Shara', 'Shara', 'Shara', 'Shara', 'Mumbai', '7415865459', 'Shara@gmail.com', 2),
('yogesh', 'raj1234', 'yogesh', 'rj', 'sirohi', '9784650679', 'yogesh@sirohieducation.com', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`barcode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
