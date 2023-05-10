-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 08, 2022 at 06:34 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE
= "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone
= "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor`
(
  `id` int
(11) NOT NULL,
  `firstname` varchar
(100) NOT NULL,
  `lastname` varchar
(100) NOT NULL,
  `email` varchar
(100) NOT NULL,
  `password` varchar
(100) NOT NULL,
  `phone` varchar
(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`
id`,`firstname
`, `lastname`, `email`, `password`, `phone`) VALUES
(1, 'bhargav', 'rama', 'bhargav@gmail.com', '123456', '9898989898');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
ADD PRIMARY KEY
(`id`),
ADD UNIQUE KEY `email`
(`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int
(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

ALTER TABLE `vendor`
ADD `is_block` TINYINT NULL DEFAULT '0' AFTER `phone`;
