-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 26, 2024 at 04:29 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cpms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `is_ban` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=not ban & 1=banned',
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `is_ban`, `created_at`) VALUES
(12, 'Binod Pokhrel', 'lilbp221@gmail.com', '$2y$10$N92aZjkLdPSAfEIs2Hj4b.8ntRlzX.Px00o7ZBQWE6GNV5n0WIq52', '0982 731 2086', 0, '2024-01-02'),
(16, 'Unish', 'unish@gmail.com', '$2y$10$uZ96qctg.ShyGrnWgHgI4u5DPGijzhjUfD9rJKV9GKE5Ni1U0WHPm', '1111111111', 1, '2024-01-04'),
(20, 'Dinesh Gurung', 'dinesh@gmail.com', '$2y$10$bShMQtw6MSPDw1EbaPC2Fe7NS8UZdKEZjsO42RJr3KDZlOVH/C96O', '9827312086', 0, '2024-01-11'),
(21, 'sanskar shrestha', 'shresthasanskar95@yahoo.com', '$2y$10$UdDS7WiwAyW3ON2TYcd07.L8ghMiw2w7VZjtunf0XfpRrTlDVXLHG', '9814351861', 0, '2024-01-19');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=visible, 1=hidden'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `status`) VALUES
(1, 'Dalmoth', 'This category contains all the products under dalmoth category', 0),
(2, 'Chiya Patti', 'This category contains all the chiya patti products', 0),
(14, 'Soya Bean', 'This category contains all soyabean products', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `status`, `created_at`) VALUES
(1, 'Binod', 'lilbp221@gmail.com', '9827312086', 'itahari-08,sunsari,province 01,Nepal', 0, '2024-01-21'),
(2, 'Binod Pokhrel', 'lilbp2211@gmail.com', '9827312086', 'itahari-08,sunsari,province 01,Nepal', 0, '2024-01-21'),
(3, 'sssd Pokhrel', 'lbp221@gmail.com', '9827312086', 'itahari-08,sunsari,province 01,Nepal', 0, '2024-01-21'),
(5, 'Binod Pokhrel', 'lilbp221111@gmail.com', '9827312086', 'itahari-08,sunsari,province 01,Nepal', 0, '2024-01-26');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=visible, 1=hidden',
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `price`, `quantity`, `image`, `status`, `created_at`) VALUES
(1, 1, '200GM Mixture', 'Bimal Sp Dalmoth', 'RS 60 per packet', '30 packet / cartoon', 'assets/uploads/products/1705823578.JPG', 0, '2024-01-19'),
(28, 2, '500 GM Chiya Patti', 'This is chiya patti', 'RS 200 per packet', '20 packet / Bag', 'assets/uploads/products/1705631480.png', 0, '2024-01-19'),
(30, 1, '100GM Dalmoth', 'Bimal Special', 'RS 60 per packet', '30 packet / cartoon', 'assets/uploads/products/1705651855.png', 0, '2024-01-19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
