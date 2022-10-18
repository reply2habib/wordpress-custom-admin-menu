-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 18, 2022 at 07:24 PM
-- Server version: 5.7.40
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sxraobako62b_wp180`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp1i_bins`
--

CREATE TABLE `wp1i_bins` (
  `id` bigint(20) NOT NULL,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_code` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `refuse_site` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `skip_bin1_price` float(100,0) DEFAULT NULL,
  `skip_bin2_price` float(100,0) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp1i_bins`
--

INSERT INTO `wp1i_bins` (`id`, `suburb`, `post_code`, `refuse_site`, `skip_bin1_price`, `skip_bin2_price`, `updated_at`, `status`) VALUES
(106, 'Akatarawa', '5018', 'Silverstream', 400, 450, '2022-10-12 12:33:53', 1),
(107, 'Alicetown', '5010', 'Seaview', 400, 450, '2022-10-12 12:33:53', 1),
(108, 'Aro Valley', '6012', 'Porirua', 400, 450, '2022-10-12 12:33:53', 1),
(109, 'Ascot Park', '5024', 'Wellington', 400, 450, '2022-10-12 12:33:53', 1),
(110, 'Belmont', '5011', 'Porirua', 400, 450, '2022-10-12 12:33:53', 1),
(111, 'Berhampore', '5010', 'Seaview', 400, 450, '2022-10-12 12:33:53', 1),
(112, 'Birch ville', '5018', 'Seaview', 400, 450, '2022-10-12 12:33:53', 1),
(113, 'Blue Mountains', '5019', 'Wellington', 400, 450, '2022-10-12 12:33:53', 1),
(114, 'Boulcott', '5011', 'Silverstream', 400, 450, '2022-10-12 12:33:53', 1),
(115, 'Breaker Bay', '6022', 'Si Iverstrea m', 400, 450, '2022-10-12 12:33:53', 1),
(116, 'Broadmeadows', '6035', 'Seaview', 400, 450, '2022-10-12 12:33:53', 1),
(117, 'Broken Hill', '5022', 'Wellington', 400, 450, '2022-10-12 12:33:53', 1),
(118, 'Broklvn', '6021', 'Porirua', 350, 450, '2022-10-12 12:33:53', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp1i_bins`
--
ALTER TABLE `wp1i_bins`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp1i_bins`
--
ALTER TABLE `wp1i_bins`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
