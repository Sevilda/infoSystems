-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 18, 2021 at 11:41 AM
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
-- Table structure for table `tenant`
--

CREATE TABLE IF NOT EXISTS `tenant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_hungarian_ci NOT NULL DEFAULT 'John',
  `balance` varchar(255) COLLATE utf8_hungarian_ci NOT NULL DEFAULT '0',
  `apartmentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `REL_0d7997b252d6ec3b3b50173ba0` (`apartmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `tenant`
--

INSERT INTO `tenant` (`id`, `name`, `balance`, `apartmentId`) VALUES
(1, 'John Doe', '0', 1),
(2, 'Mary Sue', '0', 2),
(3, 'Harold Park', '15000', 3),
(4, 'Karen Smith', '30000', 4),
(5, 'Christina Ward', '500', 5),
(6, 'Craig Crup', '0', NULL),
(7, 'Violet Stark', '2000', 7),
(8, 'Tom Creak', '0', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tenant`
--
ALTER TABLE `tenant`
  ADD CONSTRAINT `FK_0d7997b252d6ec3b3b50173ba07` FOREIGN KEY (`apartmentId`) REFERENCES `apartment` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
