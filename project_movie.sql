-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2021 at 09:16 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `esewa`
--

CREATE TABLE `esewa` (
  `pid` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `t_seat` int(100) NOT NULL,
  `amt` int(30) NOT NULL,
  `tx_amt` int(20) NOT NULL,
  `psd` int(10) NOT NULL,
  `pdc` int(23) DEFAULT 0,
  `t_amt` int(30) NOT NULL,
  `tm` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `esewa`
--

INSERT INTO `esewa` (`pid`, `username`, `t_seat`, `amt`, `tx_amt`, `psd`, `pdc`, `t_amt`, `tm`) VALUES
(1, 'admin', 2, 600, 78, 6, 0, 684, ''),
(2, 'admin', 3, 900, 117, 9, 0, 1026, ''),
(9, 'admin', 4, 1200, 156, 12, 0, 1368, ''),
(15, 'admin', 5, 1500, 195, 15, 0, 1710, ''),
(17, 'admin', 6, 1800, 234, 18, 0, 2052, ''),
(20, 'this', 1, 300, 39, 3, 0, 342, ''),
(26, 'admin', 6, 1800, 234, 18, 0, 2052, ''),
(41, 'admin', 7, 2100, 273, 21, 0, 2394, ''),
(55, 'dummy', 0, 0, 0, 0, 0, 0, ''),
(58, 'admin', 7, 2100, 273, 21, 0, 2394, ''),
(59, 'dummy', 1, 300, 39, 3, 0, 342, ''),
(60, 'admin', 7, 2100, 273, 21, 0, 2394, ''),
(61, 'dummy', 1, 300, 39, 3, 0, 342, ''),
(63, 'admin', 7, 2100, 273, 21, 0, 2394, ''),
(65, 'dummy', 1, 300, 39, 3, 0, 342, ''),
(68, 'ram', 1, 300, 39, 3, 0, 342, '18:16'),
(69, 'ram', 2, 600, 78, 6, 0, 684, '18:18'),
(71, 'ram', 2, 600, 78, 6, 0, 684, '18:20'),
(72, 'ram', 2, 600, 78, 6, 0, 684, '18:21'),
(73, 'admin', 7, 2100, 273, 21, 0, 2394, '14:14'),
(74, 'admin', 7, 2100, 273, 21, 0, 2394, '16:45'),
(75, 'admin', 7, 2100, 273, 21, 0, 2394, '16:46'),
(76, 'ram', 2, 600, 78, 6, 0, 684, '16:58'),
(77, 'ram', 2, 600, 78, 6, 0, 684, '17:11'),
(78, 'admin', 7, 2100, 273, 21, 0, 2394, '17:13'),
(79, 'admin', 7, 2100, 273, 21, 0, 2394, '17:19'),
(80, 'admin', 7, 2100, 273, 21, 0, 2394, '17:57'),
(81, 'admin', 7, 2100, 273, 21, 0, 2394, '18:04'),
(82, 'admin', 7, 2100, 273, 21, 0, 2394, '18:22'),
(83, 'admin', 7, 2100, 273, 21, 0, 2394, '12:51'),
(84, 'admin', 7, 2100, 273, 21, 0, 2394, '12:59'),
(85, 'admin', 7, 2100, 273, 21, 0, 2394, '13:40'),
(86, 'admin', 7, 2100, 273, 21, 0, 2394, '13:44'),
(87, 'admin', 7, 2100, 273, 21, 0, 2394, '16:42'),
(88, 'admin', 7, 2100, 273, 21, 0, 2394, '16:51'),
(89, 'admin', 7, 2100, 273, 21, 0, 2394, '16:53'),
(90, 'admin', 7, 2100, 273, 21, 0, 2394, '13:54');

-- --------------------------------------------------------

--
-- Table structure for table `hall2`
--

CREATE TABLE `hall2` (
  `seatnumber` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall2`
--

INSERT INTO `hall2` (`seatnumber`, `name`, `email`, `date`) VALUES
('A1', 'notbooked', NULL, NULL),
('A2', 'rock', 'khususujan000@gmail.com', '2021/10/29'),
('A3', 'notbooked', NULL, NULL),
('A4', 'ram', 'ram123@gmail.com', '2021/11/19'),
('A5', 'notbooked', NULL, NULL),
('A6', 'notbooked', NULL, NULL),
('A7', 'notbooked', NULL, NULL),
('A8', 'notbooked', NULL, NULL),
('A9', 'notbooked', NULL, NULL),
('B1', 'notbooked', NULL, NULL),
('B2', 'admin', 'rozanrock12@gmail.com', '2021/11/04'),
('B3', 'admin', 'rozanrock12@gmail.com', '2021/11/03'),
('B4', 'admin', 'rozanrock12@gmail.com', '2021/11/09'),
('B5', 'notbooked', NULL, NULL),
('B6', 'notbooked', NULL, NULL),
('B7', 'notbooked', NULL, NULL),
('B8', 'notbooked', NULL, NULL),
('B9', 'notbooked', NULL, NULL),
('C1', 'admin', 'rozanrock12@gmail.com', '2021/11/16'),
('C2', 'rock', 'khususujan000@gmail.com', '2021/10/29'),
('C3', 'admin', 'rozanrock12@gmail.com', '2021/11/03'),
('C4', 'notbooked', NULL, NULL),
('C5', 'notbooked', NULL, NULL),
('C6', 'notbooked', NULL, NULL),
('C7', 'notbooked', NULL, NULL),
('C8', 'notbooked', NULL, NULL),
('C9', 'notbooked', NULL, NULL),
('D1', 'admin', 'rozanrock12@gmail.com', '2021/11/09'),
('D2', 'admin', 'rozanrock12@gmail.com', '2021/11/09'),
('D3', 'dummy', 'Dummy123@gmail.com', '2021/11/19'),
('D4', 'this', 'this123@gmail.com', '2021/11/10'),
('D5', 'ram', 'ram123@gmail.com', '2021/11/19'),
('D6', 'notbooked', NULL, NULL),
('D7', 'notbooked', NULL, NULL),
('D8', 'notbooked', NULL, NULL),
('D9', 'notbooked', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hall11`
--

CREATE TABLE `hall11` (
  `seatnumber` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall11`
--

INSERT INTO `hall11` (`seatnumber`, `name`, `email`, `date`) VALUES
('A1', 'notbooked', NULL, NULL),
('A2', 'notbooked', NULL, NULL),
('A3', 'notbooked', NULL, NULL),
('A4', 'notbooked', NULL, NULL),
('A5', 'notbooked', NULL, NULL),
('A6', 'notbooked', NULL, NULL),
('A7', 'notbooked', NULL, NULL),
('A8', 'notbooked', NULL, NULL),
('A9', 'notbooked', NULL, NULL),
('B1', 'notbooked', NULL, NULL),
('B2', 'notbooked', NULL, NULL),
('B3', 'notbooked', NULL, NULL),
('B4', 'notbooked', NULL, NULL),
('B5', 'notbooked', NULL, NULL),
('B6', 'notbooked', NULL, NULL),
('B7', 'notbooked', NULL, NULL),
('B8', 'notbooked', NULL, NULL),
('B9', 'notbooked', NULL, NULL),
('C1', 'notbooked', NULL, NULL),
('C2', 'notbooked', NULL, NULL),
('C3', 'notbooked', NULL, NULL),
('C4', 'notbooked', NULL, NULL),
('C5', 'notbooked', NULL, NULL),
('C6', 'notbooked', NULL, NULL),
('C7', 'notbooked', NULL, NULL),
('C8', 'notbooked', NULL, NULL),
('C9', 'notbooked', NULL, NULL),
('D1', 'notbooked', NULL, NULL),
('D2', 'notbooked', NULL, NULL),
('D3', 'notbooked', NULL, NULL),
('D4', 'notbooked', NULL, NULL),
('D5', 'notbooked', NULL, NULL),
('D6', 'notbooked', NULL, NULL),
('D7', 'notbooked', NULL, NULL),
('D8', 'notbooked', NULL, NULL),
('D9', 'notbooked', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hall12`
--

CREATE TABLE `hall12` (
  `seatnumber` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall12`
--

INSERT INTO `hall12` (`seatnumber`, `name`, `email`, `date`) VALUES
('A1', 'notbooked', NULL, NULL),
('A2', 'notbooked', NULL, NULL),
('A3', 'notbooked', NULL, NULL),
('A4', 'notbooked', NULL, NULL),
('A5', 'notbooked', NULL, NULL),
('A6', 'notbooked', NULL, NULL),
('A7', 'notbooked', NULL, NULL),
('A8', 'notbooked', NULL, NULL),
('A9', 'notbooked', NULL, NULL),
('B1', 'notbooked', NULL, NULL),
('B2', 'notbooked', NULL, NULL),
('B3', 'notbooked', NULL, NULL),
('B4', 'notbooked', NULL, NULL),
('B5', 'notbooked', NULL, NULL),
('B6', 'notbooked', NULL, NULL),
('B7', 'notbooked', NULL, NULL),
('B8', 'notbooked', NULL, NULL),
('B9', 'notbooked', NULL, NULL),
('C1', 'notbooked', NULL, NULL),
('C2', 'notbooked', NULL, NULL),
('C3', 'notbooked', NULL, NULL),
('C4', 'notbooked', NULL, NULL),
('C5', 'notbooked', NULL, NULL),
('C6', 'notbooked', NULL, NULL),
('C7', 'notbooked', NULL, NULL),
('C8', 'notbooked', NULL, NULL),
('C9', 'notbooked', NULL, NULL),
('D1', 'notbooked', NULL, NULL),
('D2', 'notbooked', NULL, NULL),
('D3', 'notbooked', NULL, NULL),
('D4', 'notbooked', NULL, NULL),
('D5', 'notbooked', NULL, NULL),
('D6', 'notbooked', NULL, NULL),
('D7', 'notbooked', NULL, NULL),
('D8', 'notbooked', NULL, NULL),
('D9', 'notbooked', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hall13`
--

CREATE TABLE `hall13` (
  `seatnumber` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall13`
--

INSERT INTO `hall13` (`seatnumber`, `name`, `email`, `date`) VALUES
('A1', 'notbooked', NULL, NULL),
('A2', 'notbooked', NULL, NULL),
('A3', 'notbooked', NULL, NULL),
('A4', 'notbooked', NULL, NULL),
('A5', 'notbooked', NULL, NULL),
('A6', 'notbooked', NULL, NULL),
('A7', 'notbooked', NULL, NULL),
('A8', 'notbooked', NULL, NULL),
('A9', 'notbooked', NULL, NULL),
('B1', 'notbooked', NULL, NULL),
('B2', 'notbooked', NULL, NULL),
('B3', 'notbooked', NULL, NULL),
('B4', 'notbooked', NULL, NULL),
('B5', 'notbooked', NULL, NULL),
('B6', 'notbooked', NULL, NULL),
('B7', 'notbooked', NULL, NULL),
('B8', 'notbooked', NULL, NULL),
('B9', 'notbooked', NULL, NULL),
('C1', 'notbooked', NULL, NULL),
('C2', 'notbooked', NULL, NULL),
('C3', 'notbooked', NULL, NULL),
('C4', 'notbooked', NULL, NULL),
('C5', 'notbooked', NULL, NULL),
('C6', 'notbooked', NULL, NULL),
('C7', 'notbooked', NULL, NULL),
('C8', 'notbooked', NULL, NULL),
('C9', 'notbooked', NULL, NULL),
('D1', 'notbooked', NULL, NULL),
('D2', 'notbooked', NULL, NULL),
('D3', 'notbooked', NULL, NULL),
('D4', 'notbooked', NULL, NULL),
('D5', 'notbooked', NULL, NULL),
('D6', 'notbooked', NULL, NULL),
('D7', 'notbooked', NULL, NULL),
('D8', 'notbooked', NULL, NULL),
('D9', 'notbooked', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hall21`
--

CREATE TABLE `hall21` (
  `seatnumber` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall21`
--

INSERT INTO `hall21` (`seatnumber`, `name`, `email`, `date`) VALUES
('A1', 'notbooked', NULL, NULL),
('A2', 'notbooked', NULL, NULL),
('A3', 'notbooked', NULL, NULL),
('A4', 'notbooked', NULL, NULL),
('A5', 'notbooked', NULL, NULL),
('A6', 'notbooked', NULL, NULL),
('A7', 'notbooked', NULL, NULL),
('A8', 'notbooked', NULL, NULL),
('A9', 'notbooked', NULL, NULL),
('B1', 'notbooked', NULL, NULL),
('B2', 'notbooked', NULL, NULL),
('B3', 'notbooked', NULL, NULL),
('B4', 'notbooked', NULL, NULL),
('B5', 'notbooked', NULL, NULL),
('B6', 'notbooked', NULL, NULL),
('B7', 'notbooked', NULL, NULL),
('B8', 'notbooked', NULL, NULL),
('B9', 'notbooked', NULL, NULL),
('C1', 'notbooked', NULL, NULL),
('C2', 'notbooked', NULL, NULL),
('C3', 'notbooked', NULL, NULL),
('C4', 'notbooked', NULL, NULL),
('C5', 'notbooked', NULL, NULL),
('C6', 'notbooked', NULL, NULL),
('C7', 'notbooked', NULL, NULL),
('C8', 'notbooked', NULL, NULL),
('C9', 'notbooked', NULL, NULL),
('D1', 'notbooked', NULL, NULL),
('D2', 'notbooked', NULL, NULL),
('D3', 'notbooked', NULL, NULL),
('D4', 'notbooked', NULL, NULL),
('D5', 'notbooked', NULL, NULL),
('D6', 'notbooked', NULL, NULL),
('D7', 'notbooked', NULL, NULL),
('D8', 'notbooked', NULL, NULL),
('D9', 'notbooked', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hall22`
--

CREATE TABLE `hall22` (
  `seatnumber` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall22`
--

INSERT INTO `hall22` (`seatnumber`, `name`, `email`, `date`) VALUES
('A1', 'notbooked', NULL, NULL),
('A2', 'notbooked', NULL, NULL),
('A3', 'notbooked', NULL, NULL),
('A4', 'notbooked', NULL, NULL),
('A5', 'notbooked', NULL, NULL),
('A6', 'notbooked', NULL, NULL),
('A7', 'notbooked', NULL, NULL),
('A8', 'notbooked', NULL, NULL),
('A9', 'notbooked', NULL, NULL),
('B1', 'notbooked', NULL, NULL),
('B2', 'notbooked', NULL, NULL),
('B3', 'notbooked', NULL, NULL),
('B4', 'notbooked', NULL, NULL),
('B5', 'notbooked', NULL, NULL),
('B6', 'notbooked', NULL, NULL),
('B7', 'notbooked', NULL, NULL),
('B8', 'notbooked', NULL, NULL),
('B9', 'notbooked', NULL, NULL),
('C1', 'notbooked', NULL, NULL),
('C2', 'notbooked', NULL, NULL),
('C3', 'notbooked', NULL, NULL),
('C4', 'notbooked', NULL, NULL),
('C5', 'notbooked', NULL, NULL),
('C6', 'notbooked', NULL, NULL),
('C7', 'notbooked', NULL, NULL),
('C8', 'notbooked', NULL, NULL),
('C9', 'notbooked', NULL, NULL),
('D1', 'notbooked', NULL, NULL),
('D2', 'notbooked', NULL, NULL),
('D3', 'notbooked', NULL, NULL),
('D4', 'notbooked', NULL, NULL),
('D5', 'notbooked', NULL, NULL),
('D6', 'notbooked', NULL, NULL),
('D7', 'notbooked', NULL, NULL),
('D8', 'notbooked', NULL, NULL),
('D9', 'notbooked', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hall23`
--

CREATE TABLE `hall23` (
  `seatnumber` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall23`
--

INSERT INTO `hall23` (`seatnumber`, `name`, `email`, `date`) VALUES
('A1', 'notbooked', NULL, NULL),
('A2', 'notbooked', NULL, NULL),
('A3', 'notbooked', NULL, NULL),
('A4', 'notbooked', NULL, NULL),
('A5', 'notbooked', NULL, NULL),
('A6', 'notbooked', NULL, NULL),
('A7', 'notbooked', NULL, NULL),
('A8', 'notbooked', NULL, NULL),
('A9', 'notbooked', NULL, NULL),
('B1', 'notbooked', NULL, NULL),
('B2', 'notbooked', NULL, NULL),
('B3', 'notbooked', NULL, NULL),
('B4', 'notbooked', NULL, NULL),
('B5', 'notbooked', NULL, NULL),
('B6', 'notbooked', NULL, NULL),
('B7', 'notbooked', NULL, NULL),
('B8', 'notbooked', NULL, NULL),
('B9', 'notbooked', NULL, NULL),
('C1', 'notbooked', NULL, NULL),
('C2', 'notbooked', NULL, NULL),
('C3', 'notbooked', NULL, NULL),
('C4', 'notbooked', NULL, NULL),
('C5', 'notbooked', NULL, NULL),
('C6', 'notbooked', NULL, NULL),
('C7', 'notbooked', NULL, NULL),
('C8', 'notbooked', NULL, NULL),
('C9', 'notbooked', NULL, NULL),
('D1', 'notbooked', NULL, NULL),
('D2', 'notbooked', NULL, NULL),
('D3', 'notbooked', NULL, NULL),
('D4', 'notbooked', NULL, NULL),
('D5', 'notbooked', NULL, NULL),
('D6', 'notbooked', NULL, NULL),
('D7', 'notbooked', NULL, NULL),
('D8', 'notbooked', NULL, NULL),
('D9', 'notbooked', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hall31`
--

CREATE TABLE `hall31` (
  `seatnumber` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall31`
--

INSERT INTO `hall31` (`seatnumber`, `name`, `email`, `date`) VALUES
('A1', 'notbooked', NULL, NULL),
('A2', 'notbooked', NULL, NULL),
('A3', 'notbooked', NULL, NULL),
('A4', 'notbooked', NULL, NULL),
('A5', 'notbooked', NULL, NULL),
('A6', 'notbooked', NULL, NULL),
('A7', 'notbooked', NULL, NULL),
('A8', 'notbooked', NULL, NULL),
('A9', 'notbooked', NULL, NULL),
('B1', 'notbooked', NULL, NULL),
('B2', 'notbooked', NULL, NULL),
('B3', 'notbooked', NULL, NULL),
('B4', 'notbooked', NULL, NULL),
('B5', 'notbooked', NULL, NULL),
('B6', 'notbooked', NULL, NULL),
('B7', 'notbooked', NULL, NULL),
('B8', 'notbooked', NULL, NULL),
('B9', 'notbooked', NULL, NULL),
('C1', 'notbooked', NULL, NULL),
('C2', 'notbooked', NULL, NULL),
('C3', 'notbooked', NULL, NULL),
('C4', 'notbooked', NULL, NULL),
('C5', 'notbooked', NULL, NULL),
('C6', 'notbooked', NULL, NULL),
('C7', 'notbooked', NULL, NULL),
('C8', 'notbooked', NULL, NULL),
('C9', 'notbooked', NULL, NULL),
('D1', 'notbooked', NULL, NULL),
('D2', 'notbooked', NULL, NULL),
('D3', 'notbooked', NULL, NULL),
('D4', 'notbooked', NULL, NULL),
('D5', 'notbooked', NULL, NULL),
('D6', 'notbooked', NULL, NULL),
('D7', 'notbooked', NULL, NULL),
('D8', 'notbooked', NULL, NULL),
('D9', 'notbooked', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hall32`
--

CREATE TABLE `hall32` (
  `seatnumber` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall32`
--

INSERT INTO `hall32` (`seatnumber`, `name`, `email`, `date`) VALUES
('A1', 'notbooked', NULL, NULL),
('A2', 'notbooked', NULL, NULL),
('A3', 'notbooked', NULL, NULL),
('A4', 'notbooked', NULL, NULL),
('A5', 'notbooked', NULL, NULL),
('A6', 'notbooked', NULL, NULL),
('A7', 'notbooked', NULL, NULL),
('A8', 'notbooked', NULL, NULL),
('A9', 'notbooked', NULL, NULL),
('B1', 'notbooked', NULL, NULL),
('B2', 'notbooked', NULL, NULL),
('B3', 'notbooked', NULL, NULL),
('B4', 'notbooked', NULL, NULL),
('B5', 'notbooked', NULL, NULL),
('B6', 'notbooked', NULL, NULL),
('B7', 'notbooked', NULL, NULL),
('B8', 'notbooked', NULL, NULL),
('B9', 'notbooked', NULL, NULL),
('C1', 'notbooked', NULL, NULL),
('C2', 'notbooked', NULL, NULL),
('C3', 'notbooked', NULL, NULL),
('C4', 'notbooked', NULL, NULL),
('C5', 'notbooked', NULL, NULL),
('C6', 'notbooked', NULL, NULL),
('C7', 'notbooked', NULL, NULL),
('C8', 'notbooked', NULL, NULL),
('C9', 'notbooked', NULL, NULL),
('D1', 'notbooked', NULL, NULL),
('D2', 'notbooked', NULL, NULL),
('D3', 'notbooked', NULL, NULL),
('D4', 'notbooked', NULL, NULL),
('D5', 'notbooked', NULL, NULL),
('D6', 'notbooked', NULL, NULL),
('D7', 'notbooked', NULL, NULL),
('D8', 'notbooked', NULL, NULL),
('D9', 'notbooked', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hall33`
--

CREATE TABLE `hall33` (
  `seatnumber` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall33`
--

INSERT INTO `hall33` (`seatnumber`, `name`, `email`, `date`) VALUES
('A1', 'notbooked', NULL, NULL),
('A2', 'notbooked', NULL, NULL),
('A3', 'notbooked', NULL, NULL),
('A4', 'notbooked', NULL, NULL),
('A5', 'notbooked', NULL, NULL),
('A6', 'notbooked', NULL, NULL),
('A7', 'notbooked', NULL, NULL),
('A8', 'notbooked', NULL, NULL),
('A9', 'notbooked', NULL, NULL),
('B1', 'notbooked', NULL, NULL),
('B2', 'notbooked', NULL, NULL),
('B3', 'notbooked', NULL, NULL),
('B4', 'notbooked', NULL, NULL),
('B5', 'notbooked', NULL, NULL),
('B6', 'notbooked', NULL, NULL),
('B7', 'notbooked', NULL, NULL),
('B8', 'notbooked', NULL, NULL),
('B9', 'notbooked', NULL, NULL),
('C1', 'notbooked', NULL, NULL),
('C2', 'notbooked', NULL, NULL),
('C3', 'notbooked', NULL, NULL),
('C4', 'notbooked', NULL, NULL),
('C5', 'notbooked', NULL, NULL),
('C6', 'notbooked', NULL, NULL),
('C7', 'notbooked', NULL, NULL),
('C8', 'notbooked', NULL, NULL),
('C9', 'notbooked', NULL, NULL),
('D1', 'notbooked', NULL, NULL),
('D2', 'notbooked', NULL, NULL),
('D3', 'notbooked', NULL, NULL),
('D4', 'notbooked', NULL, NULL),
('D5', 'notbooked', NULL, NULL),
('D6', 'notbooked', NULL, NULL),
('D7', 'notbooked', NULL, NULL),
('D8', 'notbooked', NULL, NULL),
('D9', 'notbooked', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hall41`
--

CREATE TABLE `hall41` (
  `seatnumber` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall41`
--

INSERT INTO `hall41` (`seatnumber`, `name`, `email`, `date`) VALUES
('A1', 'notbooked', NULL, NULL),
('A2', 'notbooked', NULL, NULL),
('A3', 'notbooked', NULL, NULL),
('A4', 'notbooked', NULL, NULL),
('A5', 'notbooked', NULL, NULL),
('A6', 'notbooked', NULL, NULL),
('A7', 'notbooked', NULL, NULL),
('A8', 'notbooked', NULL, NULL),
('A9', 'notbooked', NULL, NULL),
('B1', 'notbooked', NULL, NULL),
('B2', 'notbooked', NULL, NULL),
('B3', 'notbooked', NULL, NULL),
('B4', 'notbooked', NULL, NULL),
('B5', 'notbooked', NULL, NULL),
('B6', 'notbooked', NULL, NULL),
('B7', 'notbooked', NULL, NULL),
('B8', 'notbooked', NULL, NULL),
('B9', 'notbooked', NULL, NULL),
('C1', 'notbooked', NULL, NULL),
('C2', 'notbooked', NULL, NULL),
('C3', 'notbooked', NULL, NULL),
('C4', 'notbooked', NULL, NULL),
('C5', 'notbooked', NULL, NULL),
('C6', 'notbooked', NULL, NULL),
('C7', 'notbooked', NULL, NULL),
('C8', 'notbooked', NULL, NULL),
('C9', 'notbooked', NULL, NULL),
('D1', 'notbooked', NULL, NULL),
('D2', 'notbooked', NULL, NULL),
('D3', 'notbooked', NULL, NULL),
('D4', 'notbooked', NULL, NULL),
('D5', 'notbooked', NULL, NULL),
('D6', 'notbooked', NULL, NULL),
('D7', 'notbooked', NULL, NULL),
('D8', 'notbooked', NULL, NULL),
('D9', 'notbooked', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hall42`
--

CREATE TABLE `hall42` (
  `seatnumber` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall42`
--

INSERT INTO `hall42` (`seatnumber`, `name`, `email`, `date`) VALUES
('A1', 'notbooked', NULL, NULL),
('A2', 'notbooked', NULL, NULL),
('A3', 'notbooked', NULL, NULL),
('A4', 'notbooked', NULL, NULL),
('A5', 'notbooked', NULL, NULL),
('A6', 'notbooked', NULL, NULL),
('A7', 'notbooked', NULL, NULL),
('A8', 'notbooked', NULL, NULL),
('A9', 'notbooked', NULL, NULL),
('B1', 'notbooked', NULL, NULL),
('B2', 'notbooked', NULL, NULL),
('B3', 'notbooked', NULL, NULL),
('B4', 'notbooked', NULL, NULL),
('B5', 'notbooked', NULL, NULL),
('B6', 'notbooked', NULL, NULL),
('B7', 'notbooked', NULL, NULL),
('B8', 'notbooked', NULL, NULL),
('B9', 'notbooked', NULL, NULL),
('C1', 'notbooked', NULL, NULL),
('C2', 'notbooked', NULL, NULL),
('C3', 'notbooked', NULL, NULL),
('C4', 'notbooked', NULL, NULL),
('C5', 'notbooked', NULL, NULL),
('C6', 'notbooked', NULL, NULL),
('C7', 'notbooked', NULL, NULL),
('C8', 'notbooked', NULL, NULL),
('C9', 'notbooked', NULL, NULL),
('D1', 'notbooked', NULL, NULL),
('D2', 'notbooked', NULL, NULL),
('D3', 'notbooked', NULL, NULL),
('D4', 'notbooked', NULL, NULL),
('D5', 'notbooked', NULL, NULL),
('D6', 'notbooked', NULL, NULL),
('D7', 'notbooked', NULL, NULL),
('D8', 'notbooked', NULL, NULL),
('D9', 'notbooked', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hall43`
--

CREATE TABLE `hall43` (
  `seatnumber` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall43`
--

INSERT INTO `hall43` (`seatnumber`, `name`, `email`, `date`) VALUES
('A1', 'notbooked', NULL, NULL),
('A2', 'notbooked', NULL, NULL),
('A3', 'notbooked', NULL, NULL),
('A4', 'notbooked', NULL, NULL),
('A5', 'notbooked', NULL, NULL),
('A6', 'notbooked', NULL, NULL),
('A7', 'notbooked', NULL, NULL),
('A8', 'notbooked', NULL, NULL),
('A9', 'notbooked', NULL, NULL),
('B1', 'notbooked', NULL, NULL),
('B2', 'notbooked', NULL, NULL),
('B3', 'notbooked', NULL, NULL),
('B4', 'notbooked', NULL, NULL),
('B5', 'notbooked', NULL, NULL),
('B6', 'notbooked', NULL, NULL),
('B7', 'notbooked', NULL, NULL),
('B8', 'notbooked', NULL, NULL),
('B9', 'notbooked', NULL, NULL),
('C1', 'notbooked', NULL, NULL),
('C2', 'notbooked', NULL, NULL),
('C3', 'notbooked', NULL, NULL),
('C4', 'notbooked', NULL, NULL),
('C5', 'notbooked', NULL, NULL),
('C6', 'notbooked', NULL, NULL),
('C7', 'notbooked', NULL, NULL),
('C8', 'notbooked', NULL, NULL),
('C9', 'notbooked', NULL, NULL),
('D1', 'notbooked', NULL, NULL),
('D2', 'notbooked', NULL, NULL),
('D3', 'notbooked', NULL, NULL),
('D4', 'notbooked', NULL, NULL),
('D5', 'notbooked', NULL, NULL),
('D6', 'notbooked', NULL, NULL),
('D7', 'notbooked', NULL, NULL),
('D8', 'notbooked', NULL, NULL),
('D9', 'notbooked', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hall51`
--

CREATE TABLE `hall51` (
  `seatnumber` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall51`
--

INSERT INTO `hall51` (`seatnumber`, `name`, `email`, `date`) VALUES
('A1', 'notbooked', NULL, NULL),
('A2', 'notbooked', NULL, NULL),
('A3', 'notbooked', NULL, NULL),
('A4', 'notbooked', NULL, NULL),
('A5', 'notbooked', NULL, NULL),
('A6', 'notbooked', NULL, NULL),
('A7', 'notbooked', NULL, NULL),
('A8', 'notbooked', NULL, NULL),
('A9', 'notbooked', NULL, NULL),
('B1', 'notbooked', NULL, NULL),
('B2', 'notbooked', NULL, NULL),
('B3', 'notbooked', NULL, NULL),
('B4', 'notbooked', NULL, NULL),
('B5', 'notbooked', NULL, NULL),
('B6', 'notbooked', NULL, NULL),
('B7', 'notbooked', NULL, NULL),
('B8', 'notbooked', NULL, NULL),
('B9', 'notbooked', NULL, NULL),
('C1', 'notbooked', NULL, NULL),
('C2', 'notbooked', NULL, NULL),
('C3', 'notbooked', NULL, NULL),
('C4', 'notbooked', NULL, NULL),
('C5', 'notbooked', NULL, NULL),
('C6', 'notbooked', NULL, NULL),
('C7', 'notbooked', NULL, NULL),
('C8', 'notbooked', NULL, NULL),
('C9', 'notbooked', NULL, NULL),
('D1', 'notbooked', NULL, NULL),
('D2', 'notbooked', NULL, NULL),
('D3', 'notbooked', NULL, NULL),
('D4', 'notbooked', NULL, NULL),
('D5', 'notbooked', NULL, NULL),
('D6', 'notbooked', NULL, NULL),
('D7', 'notbooked', NULL, NULL),
('D8', 'notbooked', NULL, NULL),
('D9', 'notbooked', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hall52`
--

CREATE TABLE `hall52` (
  `seatnumber` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall52`
--

INSERT INTO `hall52` (`seatnumber`, `name`, `email`, `date`) VALUES
('A1', 'notbooked', NULL, NULL),
('A2', 'notbooked', NULL, NULL),
('A3', 'notbooked', NULL, NULL),
('A4', 'notbooked', NULL, NULL),
('A5', 'notbooked', NULL, NULL),
('A6', 'notbooked', NULL, NULL),
('A7', 'notbooked', NULL, NULL),
('A8', 'notbooked', NULL, NULL),
('A9', 'notbooked', NULL, NULL),
('B1', 'notbooked', NULL, NULL),
('B2', 'notbooked', NULL, NULL),
('B3', 'notbooked', NULL, NULL),
('B4', 'notbooked', NULL, NULL),
('B5', 'notbooked', NULL, NULL),
('B6', 'notbooked', NULL, NULL),
('B7', 'notbooked', NULL, NULL),
('B8', 'notbooked', NULL, NULL),
('B9', 'notbooked', NULL, NULL),
('C1', 'notbooked', NULL, NULL),
('C2', 'notbooked', NULL, NULL),
('C3', 'notbooked', NULL, NULL),
('C4', 'notbooked', NULL, NULL),
('C5', 'notbooked', NULL, NULL),
('C6', 'notbooked', NULL, NULL),
('C7', 'notbooked', NULL, NULL),
('C8', 'notbooked', NULL, NULL),
('C9', 'notbooked', NULL, NULL),
('D1', 'notbooked', NULL, NULL),
('D2', 'notbooked', NULL, NULL),
('D3', 'notbooked', NULL, NULL),
('D4', 'notbooked', NULL, NULL),
('D5', 'notbooked', NULL, NULL),
('D6', 'notbooked', NULL, NULL),
('D7', 'notbooked', NULL, NULL),
('D8', 'notbooked', NULL, NULL),
('D9', 'notbooked', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hall53`
--

CREATE TABLE `hall53` (
  `seatnumber` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall53`
--

INSERT INTO `hall53` (`seatnumber`, `name`, `email`, `date`) VALUES
('A1', 'notbooked', NULL, NULL),
('A2', 'notbooked', NULL, NULL),
('A3', 'notbooked', NULL, NULL),
('A4', 'notbooked', NULL, NULL),
('A5', 'notbooked', NULL, NULL),
('A6', 'notbooked', NULL, NULL),
('A7', 'notbooked', NULL, NULL),
('A8', 'notbooked', NULL, NULL),
('A9', 'notbooked', NULL, NULL),
('B1', 'notbooked', NULL, NULL),
('B2', 'notbooked', NULL, NULL),
('B3', 'notbooked', NULL, NULL),
('B4', 'notbooked', NULL, NULL),
('B5', 'notbooked', NULL, NULL),
('B6', 'notbooked', NULL, NULL),
('B7', 'notbooked', NULL, NULL),
('B8', 'notbooked', NULL, NULL),
('B9', 'notbooked', NULL, NULL),
('C1', 'notbooked', NULL, NULL),
('C2', 'notbooked', NULL, NULL),
('C3', 'notbooked', NULL, NULL),
('C4', 'notbooked', NULL, NULL),
('C5', 'notbooked', NULL, NULL),
('C6', 'notbooked', NULL, NULL),
('C7', 'notbooked', NULL, NULL),
('C8', 'notbooked', NULL, NULL),
('C9', 'notbooked', NULL, NULL),
('D1', 'notbooked', NULL, NULL),
('D2', 'notbooked', NULL, NULL),
('D3', 'notbooked', NULL, NULL),
('D4', 'notbooked', NULL, NULL),
('D5', 'notbooked', NULL, NULL),
('D6', 'notbooked', NULL, NULL),
('D7', 'notbooked', NULL, NULL),
('D8', 'notbooked', NULL, NULL),
('D9', 'notbooked', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hall61`
--

CREATE TABLE `hall61` (
  `seatnumber` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall61`
--

INSERT INTO `hall61` (`seatnumber`, `name`, `email`, `date`) VALUES
('A1', 'notbooked', NULL, NULL),
('A2', 'notbooked', NULL, NULL),
('A3', 'notbooked', NULL, NULL),
('A4', 'notbooked', NULL, NULL),
('A5', 'notbooked', NULL, NULL),
('A6', 'notbooked', NULL, NULL),
('A7', 'notbooked', NULL, NULL),
('A8', 'notbooked', NULL, NULL),
('A9', 'notbooked', NULL, NULL),
('B1', 'notbooked', NULL, NULL),
('B2', 'notbooked', NULL, NULL),
('B3', 'notbooked', NULL, NULL),
('B4', 'notbooked', NULL, NULL),
('B5', 'notbooked', NULL, NULL),
('B6', 'notbooked', NULL, NULL),
('B7', 'notbooked', NULL, NULL),
('B8', 'notbooked', NULL, NULL),
('B9', 'notbooked', NULL, NULL),
('C1', 'notbooked', NULL, NULL),
('C2', 'notbooked', NULL, NULL),
('C3', 'notbooked', NULL, NULL),
('C4', 'notbooked', NULL, NULL),
('C5', 'notbooked', NULL, NULL),
('C6', 'notbooked', NULL, NULL),
('C7', 'notbooked', NULL, NULL),
('C8', 'notbooked', NULL, NULL),
('C9', 'notbooked', NULL, NULL),
('D1', 'notbooked', NULL, NULL),
('D2', 'notbooked', NULL, NULL),
('D3', 'notbooked', NULL, NULL),
('D4', 'notbooked', NULL, NULL),
('D5', 'notbooked', NULL, NULL),
('D6', 'notbooked', NULL, NULL),
('D7', 'notbooked', NULL, NULL),
('D8', 'notbooked', NULL, NULL),
('D9', 'notbooked', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hall62`
--

CREATE TABLE `hall62` (
  `seatnumber` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall62`
--

INSERT INTO `hall62` (`seatnumber`, `name`, `email`, `date`) VALUES
('A1', 'notbooked', NULL, NULL),
('A2', 'notbooked', NULL, NULL),
('A3', 'notbooked', NULL, NULL),
('A4', 'notbooked', NULL, NULL),
('A5', 'notbooked', NULL, NULL),
('A6', 'notbooked', NULL, NULL),
('A7', 'notbooked', NULL, NULL),
('A8', 'notbooked', NULL, NULL),
('A9', 'notbooked', NULL, NULL),
('B1', 'notbooked', NULL, NULL),
('B2', 'notbooked', NULL, NULL),
('B3', 'notbooked', NULL, NULL),
('B4', 'notbooked', NULL, NULL),
('B5', 'notbooked', NULL, NULL),
('B6', 'notbooked', NULL, NULL),
('B7', 'notbooked', NULL, NULL),
('B8', 'notbooked', NULL, NULL),
('B9', 'notbooked', NULL, NULL),
('C1', 'notbooked', NULL, NULL),
('C2', 'notbooked', NULL, NULL),
('C3', 'notbooked', NULL, NULL),
('C4', 'notbooked', NULL, NULL),
('C5', 'notbooked', NULL, NULL),
('C6', 'notbooked', NULL, NULL),
('C7', 'notbooked', NULL, NULL),
('C8', 'notbooked', NULL, NULL),
('C9', 'notbooked', NULL, NULL),
('D1', 'notbooked', NULL, NULL),
('D2', 'notbooked', NULL, NULL),
('D3', 'notbooked', NULL, NULL),
('D4', 'notbooked', NULL, NULL),
('D5', 'notbooked', NULL, NULL),
('D6', 'notbooked', NULL, NULL),
('D7', 'notbooked', NULL, NULL),
('D8', 'notbooked', NULL, NULL),
('D9', 'notbooked', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hall63`
--

CREATE TABLE `hall63` (
  `seatnumber` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall63`
--

INSERT INTO `hall63` (`seatnumber`, `name`, `email`, `date`) VALUES
('A1', 'notbooked', NULL, NULL),
('A2', 'notbooked', NULL, NULL),
('A3', 'notbooked', NULL, NULL),
('A4', 'notbooked', NULL, NULL),
('A5', 'notbooked', NULL, NULL),
('A6', 'notbooked', NULL, NULL),
('A7', 'notbooked', NULL, NULL),
('A8', 'notbooked', NULL, NULL),
('A9', 'notbooked', NULL, NULL),
('B1', 'notbooked', NULL, NULL),
('B2', 'notbooked', NULL, NULL),
('B3', 'notbooked', NULL, NULL),
('B4', 'notbooked', NULL, NULL),
('B5', 'notbooked', NULL, NULL),
('B6', 'notbooked', NULL, NULL),
('B7', 'notbooked', NULL, NULL),
('B8', 'notbooked', NULL, NULL),
('B9', 'notbooked', NULL, NULL),
('C1', 'notbooked', NULL, NULL),
('C2', 'notbooked', NULL, NULL),
('C3', 'notbooked', NULL, NULL),
('C4', 'notbooked', NULL, NULL),
('C5', 'notbooked', NULL, NULL),
('C6', 'notbooked', NULL, NULL),
('C7', 'notbooked', NULL, NULL),
('C8', 'notbooked', NULL, NULL),
('C9', 'notbooked', NULL, NULL),
('D1', 'notbooked', NULL, NULL),
('D2', 'notbooked', NULL, NULL),
('D3', 'notbooked', NULL, NULL),
('D4', 'notbooked', NULL, NULL),
('D5', 'notbooked', NULL, NULL),
('D6', 'notbooked', NULL, NULL),
('D7', 'notbooked', NULL, NULL),
('D8', 'notbooked', NULL, NULL),
('D9', 'notbooked', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hall71`
--

CREATE TABLE `hall71` (
  `seatnumber` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall71`
--

INSERT INTO `hall71` (`seatnumber`, `name`, `email`, `date`) VALUES
('A1', 'notbooked', NULL, NULL),
('A2', 'notbooked', NULL, NULL),
('A3', 'notbooked', NULL, NULL),
('A4', 'notbooked', NULL, NULL),
('A5', 'notbooked', NULL, NULL),
('A6', 'notbooked', NULL, NULL),
('A7', 'notbooked', NULL, NULL),
('A8', 'notbooked', NULL, NULL),
('A9', 'notbooked', NULL, NULL),
('B1', 'notbooked', NULL, NULL),
('B2', 'notbooked', NULL, NULL),
('B3', 'notbooked', NULL, NULL),
('B4', 'notbooked', NULL, NULL),
('B5', 'notbooked', NULL, NULL),
('B6', 'notbooked', NULL, NULL),
('B7', 'notbooked', NULL, NULL),
('B8', 'notbooked', NULL, NULL),
('B9', 'notbooked', NULL, NULL),
('C1', 'notbooked', NULL, NULL),
('C2', 'notbooked', NULL, NULL),
('C3', 'notbooked', NULL, NULL),
('C4', 'notbooked', NULL, NULL),
('C5', 'notbooked', NULL, NULL),
('C6', 'notbooked', NULL, NULL),
('C7', 'notbooked', NULL, NULL),
('C8', 'notbooked', NULL, NULL),
('C9', 'notbooked', NULL, NULL),
('D1', 'notbooked', NULL, NULL),
('D2', 'notbooked', NULL, NULL),
('D3', 'notbooked', NULL, NULL),
('D4', 'notbooked', NULL, NULL),
('D5', 'notbooked', NULL, NULL),
('D6', 'notbooked', NULL, NULL),
('D7', 'notbooked', NULL, NULL),
('D8', 'notbooked', NULL, NULL),
('D9', 'notbooked', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hall72`
--

CREATE TABLE `hall72` (
  `seatnumber` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall72`
--

INSERT INTO `hall72` (`seatnumber`, `name`, `email`, `date`) VALUES
('A1', 'notbooked', NULL, NULL),
('A2', 'notbooked', NULL, NULL),
('A3', 'notbooked', NULL, NULL),
('A4', 'notbooked', NULL, NULL),
('A5', 'notbooked', NULL, NULL),
('A6', 'notbooked', NULL, NULL),
('A7', 'notbooked', NULL, NULL),
('A8', 'notbooked', NULL, NULL),
('A9', 'notbooked', NULL, NULL),
('B1', 'notbooked', NULL, NULL),
('B2', 'notbooked', NULL, NULL),
('B3', 'notbooked', NULL, NULL),
('B4', 'notbooked', NULL, NULL),
('B5', 'notbooked', NULL, NULL),
('B6', 'notbooked', NULL, NULL),
('B7', 'notbooked', NULL, NULL),
('B8', 'notbooked', NULL, NULL),
('B9', 'notbooked', NULL, NULL),
('C1', 'notbooked', NULL, NULL),
('C2', 'notbooked', NULL, NULL),
('C3', 'notbooked', NULL, NULL),
('C4', 'notbooked', NULL, NULL),
('C5', 'notbooked', NULL, NULL),
('C6', 'notbooked', NULL, NULL),
('C7', 'notbooked', NULL, NULL),
('C8', 'notbooked', NULL, NULL),
('C9', 'notbooked', NULL, NULL),
('D1', 'notbooked', NULL, NULL),
('D2', 'notbooked', NULL, NULL),
('D3', 'notbooked', NULL, NULL),
('D4', 'notbooked', NULL, NULL),
('D5', 'notbooked', NULL, NULL),
('D6', 'notbooked', NULL, NULL),
('D7', 'notbooked', NULL, NULL),
('D8', 'notbooked', NULL, NULL),
('D9', 'notbooked', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hall73`
--

CREATE TABLE `hall73` (
  `seatnumber` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall73`
--

INSERT INTO `hall73` (`seatnumber`, `name`, `email`, `date`) VALUES
('A1', 'notbooked', NULL, NULL),
('A2', 'notbooked', NULL, NULL),
('A3', 'notbooked', NULL, NULL),
('A4', 'notbooked', NULL, NULL),
('A5', 'notbooked', NULL, NULL),
('A6', 'notbooked', NULL, NULL),
('A7', 'notbooked', NULL, NULL),
('A8', 'notbooked', NULL, NULL),
('A9', 'notbooked', NULL, NULL),
('B1', 'notbooked', NULL, NULL),
('B2', 'notbooked', NULL, NULL),
('B3', 'notbooked', NULL, NULL),
('B4', 'notbooked', NULL, NULL),
('B5', 'notbooked', NULL, NULL),
('B6', 'notbooked', NULL, NULL),
('B7', 'notbooked', NULL, NULL),
('B8', 'notbooked', NULL, NULL),
('B9', 'notbooked', NULL, NULL),
('C1', 'notbooked', NULL, NULL),
('C2', 'notbooked', NULL, NULL),
('C3', 'notbooked', NULL, NULL),
('C4', 'notbooked', NULL, NULL),
('C5', 'notbooked', NULL, NULL),
('C6', 'notbooked', NULL, NULL),
('C7', 'notbooked', NULL, NULL),
('C8', 'notbooked', NULL, NULL),
('C9', 'notbooked', NULL, NULL),
('D1', 'notbooked', NULL, NULL),
('D2', 'notbooked', NULL, NULL),
('D3', 'notbooked', NULL, NULL),
('D4', 'notbooked', NULL, NULL),
('D5', 'notbooked', NULL, NULL),
('D6', 'notbooked', NULL, NULL),
('D7', 'notbooked', NULL, NULL),
('D8', 'notbooked', NULL, NULL),
('D9', 'notbooked', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `movielist`
--

CREATE TABLE `movielist` (
  `movieId` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Genre` varchar(100) NOT NULL,
  `Director` varchar(100) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `image` varchar(200) NOT NULL,
  `imdb` varchar(100) NOT NULL,
  `image2` varchar(50) NOT NULL,
  `trailerLink` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movielist`
--

INSERT INTO `movielist` (`movieId`, `Name`, `Genre`, `Director`, `Description`, `image`, `imdb`, `image2`, `trailerLink`) VALUES
(14, 'Cherry', 'Action', 'Joe Russo, Anthony Russo', 'Cherry (Tom Holland) drifts from college dropout to army medic in Iraq-anchored only by his one true love, Emily (Ciara Bravo). But after returning from the war with PTSD, his life spirals into drugs.', 'cherry.jfif', '6.6', '', ''),
(13, 'Godzilla vs Kong', 'Action', 'Adam Wingard', 'Fearsome monsters Godzilla and King Kong square off in an epic battle for the ages, while humanity looks to wipe out both of the creatures and take back the planet once and for all.', 'godzilla vs. kong.jfif', '7.9', '', ''),
(15, 'The Old Guard', 'Action', 'Gina Prince-Bythewood', 'A group of mercenaries, all centuries-old immortals with the ablity to heal themselves, discover someone is onto their secret, and they must fight to protect their freedom.', 'oldguard.jfif', '6.6', '', ''),
(16, 'Free Guy', 'Comedy', 'Shawn Levy', 'A bank teller called Guy realizes he is a background character in an open world video game called Free City that will soon go offline.', 'freeguy.jfif', '7.5', '', ''),
(19, 'Venom 2', 'Action', 'Andy Serkis', 'Venom: Let There Be Carnage is an upcoming American superhero film based on the Marvel Comics character Venom, produced by Columbia Pictures in association with Marvel and Tencent Pictures', 'venom2.jfif', '7.5', '', ''),
(26, 'Spider-Man: No Way Home', 'Action', 'Jon Watts', 'Spider-Man: No Way Home is an upcoming American superhero film based on the Marvel Comics character Spider-Man, co-produced by Columbia Pictures and Marvel Studios, and distributed by Sony Pictures Releasing', 'sp.jpg', '7.5', 'spiderman.jpg', 'https://youtu.be/rt-2cxAiPJk');

-- --------------------------------------------------------

--
-- Table structure for table `showorder`
--

CREATE TABLE `showorder` (
  `showOrderId` int(11) NOT NULL,
  `date` date NOT NULL,
  `timeslot` varchar(255) NOT NULL,
  `theater` varchar(255) NOT NULL,
  `movieName` varchar(255) NOT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showorder`
--

INSERT INTO `showorder` (`showOrderId`, `date`, `timeslot`, `theater`, `movieName`, `price`) VALUES
(19, '2021-09-01', '8:00am', 'hall1', 'Godzilla vs Kong', 500),
(21, '2021-08-31', '8:00am', 'hall2', 'Cherry', 700);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'mrsolo42', 'kojurohan42@gmail.com', '6dbb6190153131470d701c8c2fe19db7'),
(2, 'user', 'kojurohan42@gmil.com', 'ee11cbb19052e40b07aac0ca060c23ee'),
(3, 'user2', 'user2@gmail.com', '7e58d63b60197ceb55a1c487989a3720'),
(4, 'Sujan_khusu', 'khususujan00@gmail.com', '271e7c94716d4e800829c6affe68e866'),
(5, 'rock', 'khususujan000@gmail.com', 'ed1f9f0a72aab5a39c34f2626519f2c2'),
(6, 'admin', 'rozanrock12@gmail.com', '47558c0c6cbe52bb3c48ee8b985d6ea7'),
(7, 'this', 'this123@gmail.com', '472432dfe0a9cdcb9846da71098c6ddc'),
(8, 'that', 'that123@gmail.com', 'ee43c2eea2d6a24278db8ebc02efae84'),
(9, 'Dummy', 'Dummy123@gmail.com', '851fdee206c1eec10cee5ec8e8962af2'),
(10, 'ram', 'ram123@gmail.com', '6a557ed1005dddd940595b8fc6ed47b2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `esewa`
--
ALTER TABLE `esewa`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `hall2`
--
ALTER TABLE `hall2`
  ADD PRIMARY KEY (`seatnumber`);

--
-- Indexes for table `hall11`
--
ALTER TABLE `hall11`
  ADD PRIMARY KEY (`seatnumber`);

--
-- Indexes for table `hall12`
--
ALTER TABLE `hall12`
  ADD PRIMARY KEY (`seatnumber`);

--
-- Indexes for table `hall13`
--
ALTER TABLE `hall13`
  ADD PRIMARY KEY (`seatnumber`);

--
-- Indexes for table `hall21`
--
ALTER TABLE `hall21`
  ADD PRIMARY KEY (`seatnumber`);

--
-- Indexes for table `hall22`
--
ALTER TABLE `hall22`
  ADD PRIMARY KEY (`seatnumber`);

--
-- Indexes for table `hall23`
--
ALTER TABLE `hall23`
  ADD PRIMARY KEY (`seatnumber`);

--
-- Indexes for table `hall31`
--
ALTER TABLE `hall31`
  ADD PRIMARY KEY (`seatnumber`);

--
-- Indexes for table `hall32`
--
ALTER TABLE `hall32`
  ADD PRIMARY KEY (`seatnumber`);

--
-- Indexes for table `hall33`
--
ALTER TABLE `hall33`
  ADD PRIMARY KEY (`seatnumber`);

--
-- Indexes for table `hall41`
--
ALTER TABLE `hall41`
  ADD PRIMARY KEY (`seatnumber`);

--
-- Indexes for table `hall42`
--
ALTER TABLE `hall42`
  ADD PRIMARY KEY (`seatnumber`);

--
-- Indexes for table `hall43`
--
ALTER TABLE `hall43`
  ADD PRIMARY KEY (`seatnumber`);

--
-- Indexes for table `hall51`
--
ALTER TABLE `hall51`
  ADD PRIMARY KEY (`seatnumber`);

--
-- Indexes for table `hall52`
--
ALTER TABLE `hall52`
  ADD PRIMARY KEY (`seatnumber`);

--
-- Indexes for table `hall53`
--
ALTER TABLE `hall53`
  ADD PRIMARY KEY (`seatnumber`);

--
-- Indexes for table `hall61`
--
ALTER TABLE `hall61`
  ADD PRIMARY KEY (`seatnumber`);

--
-- Indexes for table `hall62`
--
ALTER TABLE `hall62`
  ADD PRIMARY KEY (`seatnumber`);

--
-- Indexes for table `hall63`
--
ALTER TABLE `hall63`
  ADD PRIMARY KEY (`seatnumber`);

--
-- Indexes for table `hall71`
--
ALTER TABLE `hall71`
  ADD PRIMARY KEY (`seatnumber`);

--
-- Indexes for table `hall72`
--
ALTER TABLE `hall72`
  ADD PRIMARY KEY (`seatnumber`);

--
-- Indexes for table `hall73`
--
ALTER TABLE `hall73`
  ADD PRIMARY KEY (`seatnumber`);

--
-- Indexes for table `movielist`
--
ALTER TABLE `movielist`
  ADD PRIMARY KEY (`movieId`);

--
-- Indexes for table `showorder`
--
ALTER TABLE `showorder`
  ADD PRIMARY KEY (`showOrderId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `esewa`
--
ALTER TABLE `esewa`
  MODIFY `pid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `movielist`
--
ALTER TABLE `movielist`
  MODIFY `movieId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `showorder`
--
ALTER TABLE `showorder`
  MODIFY `showOrderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
