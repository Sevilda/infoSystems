-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 18, 2021 at 11:40 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `info_rendszerek_beadando`
--

-- --------------------------------------------------------

--
-- Table structure for table `apartment`
--

CREATE TABLE IF NOT EXISTS `apartment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) COLLATE utf8_hungarian_ci NOT NULL DEFAULT '2/1',
  `floorArea` int(11) NOT NULL DEFAULT '100',
  `airSpace` int(11) NOT NULL DEFAULT '200',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `apartment`
--

INSERT INTO `apartment` (`id`, `number`, `floorArea`, `airSpace`) VALUES
(1, '1/A', 100, 200),
(2, '1/B', 150, 300),
(3, '2/A', 100, 200),
(4, '2/B', 150, 300),
(5, '3/A', 100, 200),
(6, '3/B', 150, 300),
(7, '4/A', 100, 200);
(8, '4/B', 150, 300);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
