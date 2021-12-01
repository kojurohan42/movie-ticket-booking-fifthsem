-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 01, 2021 at 09:57 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `esewa`
--

DROP TABLE IF EXISTS `esewa`;
CREATE TABLE IF NOT EXISTS `esewa` (
  `pid` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `t_seat` int(100) NOT NULL,
  `amt` int(30) NOT NULL,
  `tx_amt` int(20) NOT NULL,
  `psd` int(10) NOT NULL,
  `pdc` int(23) DEFAULT 0,
  `t_amt` int(30) NOT NULL,
  `tm` varchar(11) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4;

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
-- Table structure for table `hall`
--

DROP TABLE IF EXISTS `hall`;
CREATE TABLE IF NOT EXISTS `hall` (
  `seat|_id` int(100) NOT NULL AUTO_INCREMENT,
  `showOrderId` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `seat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`seat|_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall`
--

INSERT INTO `hall` (`seat|_id`, `showOrderId`, `username`, `seat`) VALUES
(1, 21, 'user', 'A6'),
(2, 21, 'user', 'B6'),
(3, 21, 'user', 'B5');

-- --------------------------------------------------------

--
-- Table structure for table `movielist`
--

DROP TABLE IF EXISTS `movielist`;
CREATE TABLE IF NOT EXISTS `movielist` (
  `movieId` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  `Genre` varchar(100) NOT NULL,
  `Director` varchar(100) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `image` varchar(200) NOT NULL,
  `imdb` varchar(100) NOT NULL,
  `image2` varchar(50) NOT NULL,
  `trailerLink` varchar(100) NOT NULL,
  PRIMARY KEY (`movieId`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

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

DROP TABLE IF EXISTS `showorder`;
CREATE TABLE IF NOT EXISTS `showorder` (
  `showOrderId` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `timeslot` varchar(255) NOT NULL,
  `theater` varchar(255) NOT NULL,
  `movieName` varchar(255) NOT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`showOrderId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

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

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
