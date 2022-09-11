-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220910.a8421efd56
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2022 at 04:54 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tree_view`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `catid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `catid`) VALUES
(1, 'Car', 0),
(2, 'Fruits ', 0),
(3, 'Dress', 0),
(4, 'T-Shirt', 3),
(5, 'Pants', 3),
(6, 'Blue Jeans', 5),
(7, 'Shoes', 3),
(8, 'Buttons', 6),
(9, 'Banana', 2),
(10, 'Apple', 2),
(11, 'Orange', 2),
(12, 'red', 10),
(13, 'AirPlane', 0),
(14, 'Bmw', 1),
(15, 'Mercedes-Benz', 1),
(16, 'Volvo', 1),
(17, 'Toyota', 1),
(18, 'car wheel', 14),
(19, 'car wheel', 16),
(20, 'tire', 18),
(21, 'Car wheels cover', 20),
(22, 'Car hood screw', 21);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
