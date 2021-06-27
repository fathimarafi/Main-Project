-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2021 at 09:32 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vegdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(20) NOT NULL,
  `veg_id` int(20) NOT NULL,
  `veg_name` varchar(40) NOT NULL,
  `quantity` int(20) NOT NULL,
  `price` int(20) NOT NULL,
  `image` varchar(500) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `cart` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `veg_id`, `veg_name`, `quantity`, `price`, `image`, `status`, `cart`) VALUES
(1, 32, 'Bitter Guard', 3, 25, 'bitter guard.jpg', 1, 0),
(2, 18, 'Onion', 2, 30, 'fresho-onion.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `ch_id` int(10) NOT NULL,
  `reg_id` int(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `town` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `pincode` int(6) NOT NULL,
  `landmark` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`ch_id`, `reg_id`, `address`, `town`, `district`, `pincode`, `landmark`, `status`) VALUES
(1, 17, 'Manakkatt', 'Puthuppally', 'Kottayam', 686519, 'Near SBI', 1),
(2, 18, 'Ponmalakkunnel(H)', 'Kodungoor', 'Kottayam', 686504, 'Near KSRTC Bus Stand', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_addvegetable`
--

CREATE TABLE `tbl_addvegetable` (
  `veg_id` int(10) NOT NULL,
  `veg_name` varchar(50) NOT NULL,
  `quantity` int(10) NOT NULL,
  `price` int(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_addvegetable`
--

INSERT INTO `tbl_addvegetable` (`veg_id`, `veg_name`, `quantity`, `price`, `image`, `status`) VALUES
(9, 'Carrot', 10, -20, 'carrot.jpg', 1),
(16, 'Lettuce', 10, -30, 'lettuce.jpg', 1),
(17, 'Shallet', 12, 34, 'shallet.jpg', 1),
(18, 'Onion', 23, 30, 'fresho-onion.jpg', 1),
(19, 'Asparagus', 5, 40, 'asparagus.jpg', 1),
(30, 'Brinjal', 4, 25, 'brinjal.jpg', 1),
(32, 'Bitter Guard', 2, 25, 'bitter guard.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `login_id` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_type` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`login_id`, `username`, `password`, `user_type`, `status`) VALUES
(16, 'admin@gmail.com', '0e7517141fb53f21ee439b355b5a1d0a', 'admin', 1),
(17, 'siji@gmail.com', '16c7a4f9c80a41a7b8aa61be05ec62ca', 'user', 1),
(19, 'karthika@gmail.com', 'bdb530745970dc912ecdf12e286615c9', 'user', 1),
(20, 'neethu@gmail.com', 'a7c826bac01e6d314c23d9c70873aa41', 'user', 1),
(21, 'honey@gmail.com', 'bd0591c775f72caa900a1a63c02ee5f4', 'user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reg`
--

CREATE TABLE `tbl_reg` (
  `reg_id` int(10) NOT NULL,
  `login_id` int(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_reg`
--

INSERT INTO `tbl_reg` (`reg_id`, `login_id`, `fname`, `lname`, `phone_no`, `status`) VALUES
(13, 15, 'tinu', 'thomas', '7558084952', 1),
(15, 17, 'sijimol', 'cyriac', '7558084952', 1),
(16, 18, 'fathima', 'shafeek', '9856235689', 1),
(17, 19, 'karthika', 'suresh', '7558084952', 1),
(18, 20, 'neethu', 'babu', '8281713238', 1),
(19, 21, 'Honey', 'Kuriakose', '9447149516', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vegorder`
--

CREATE TABLE `tbl_vegorder` (
  `oid` int(10) NOT NULL,
  `odate` date NOT NULL DEFAULT current_timestamp(),
  `reg_id` int(10) NOT NULL,
  `veg_id` int(10) NOT NULL,
  `price` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_vegorder`
--

INSERT INTO `tbl_vegorder` (`oid`, `odate`, `reg_id`, `veg_id`, `price`, `status`) VALUES
(40, '2021-06-19', 17, 32, '75', 1),
(41, '2021-06-19', 18, 18, '60', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`ch_id`);

--
-- Indexes for table `tbl_addvegetable`
--
ALTER TABLE `tbl_addvegetable`
  ADD PRIMARY KEY (`veg_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `tbl_reg`
--
ALTER TABLE `tbl_reg`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `tbl_vegorder`
--
ALTER TABLE `tbl_vegorder`
  ADD PRIMARY KEY (`oid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `ch_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_addvegetable`
--
ALTER TABLE `tbl_addvegetable`
  MODIFY `veg_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `login_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_reg`
--
ALTER TABLE `tbl_reg`
  MODIFY `reg_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_vegorder`
--
ALTER TABLE `tbl_vegorder`
  MODIFY `oid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
