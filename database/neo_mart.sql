-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2025 at 05:31 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `neo mart`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `order_date` date NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `product_id`, `vendor_id`, `client_name`, `city`, `phone`, `order_date`, `quantity`, `status`) VALUES
(38, 43, 12, 'chiheb abiza', 'Bougaa', '0657842205', '2024-04-27', 3, 'shipped'),
(39, 43, 16, 'saadoudi idris', 'bab ezzouar', '0567230912', '2024-04-27', 1, 'cancelled'),
(40, 52, 16, 'chiheb abiza', 'Bougaa', '0657842205', '2024-04-29', 2, 'pending'),
(41, 43, 12, 'saadoudi idris', 'bab ezzouar', '0567230912', '2024-04-27', 1, 'cancelled'),
(42, 43, 12, 'belkis hamza', 'bejaia', '0567230912', '2024-04-27', 1, 'pending'),
(43, 3, 16, 'Vaibhav Savaliya', 'wewe', '9925541803', '2025-05-28', 1, 'shipped');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int(100) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `status` varchar(256) NOT NULL,
  `create_date` date NOT NULL,
  `update_date` date NOT NULL,
  `quantity` int(100) UNSIGNED NOT NULL DEFAULT 0,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `vendor_id`, `product_name`, `description`, `price`, `image`, `status`, `create_date`, `update_date`, `quantity`, `category`) VALUES
(3, 16, 'shoes', 'white', 1000, '68374ceeb1d29_whiteshoes1.png', 'awaiting', '2025-05-28', '2025-05-28', 9, 'Shoes'),
(4, 16, 'hard disk', '1tb', 5000, '68374d087a80a_why-choose-us-img (copy).jpg', 'awaiting', '2025-05-28', '2025-05-28', 100, 'Computer Components'),
(5, 12, 'boat pro 3', 'a boat pro 3 smart watch with touch screen display ,12+ sport modes, health meters, and colorful wallpaper', 1499, '683758cad3df2_watch.png', 'Awaiting', '2025-05-29', '2025-05-29', 7, 'watch'),
(6, 16, 'i phone 16 pro max', 'The iPhone 16 Pro models continue the edge-to-edge display design but introduce thinner display borders, giving them the thinnest borders of any Apple product to date; iPhone 16 Pro and iPhone 16 Pro Max feature larger 6.3-inch and 6.9-inch Super Retina XDR OLED displays, respectively, with iPhone 16 Pro Max offering the largest iPhone display ever.[5] Both models have always-on 13:6 aspect ratio displays, with 460 ppi density from a 2622?×?1206 (Pro) and 2868?×?1320 (Pro Max) resolution. Both include a dynamic refresh rate of up to 120 Hz, HDR10, with 1000 nits brightness typical and 2000 nits at peak.', 135000, '68375e1c57fed_iPhone-16-Pro-Max-Latest-Apple-Smartphone.png', 'awaiting', '2025-05-29', '2025-05-29', 23, 'Mobile'),
(7, 12, 'black hoodie', 'black hoodie full with l size', 899, '68376468409da_hoody.png', 'awaiting', '2025-05-29', '2025-05-29', 50, 'clothes');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `vendor_email` varchar(255) NOT NULL,
  `register_date` date NOT NULL,
  `vendor_status` varchar(100) NOT NULL,
  `vendor_password` varchar(256) NOT NULL,
  `points` int(255) UNSIGNED NOT NULL DEFAULT 0,
  `balance` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `vendor_name`, `vendor_email`, `register_date`, `vendor_status`, `vendor_password`, `points`, `balance`, `role`) VALUES
(15, 'rushi', 'r@gmail.com', '2024-04-15', 'active', '$2y$10$0738gp2xr9UGVj7fg0p/be2K1LC4Xb9yL5q1YaOC4d/3iq.QfF0Dy', 0, 0, 'admin'),
(12, 'vipul', 'vipul@gmail.com', '2024-04-06', 'active', '$2y$10$7vt9sz08wHnWu/HDLKS7g.WBol76XnfWFS64zvVk3op1eCyP68MBa', 5, 10, 'vendor'),
(16, 'savan bhut', 'savan@gmail.com', '2024-04-16', 'active', '$2y$10$7vt9sz08wHnWu/HDLKS7g.WBol76XnfWFS64zvVk3op1eCyP68MBa', 0, 15, 'vendor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
