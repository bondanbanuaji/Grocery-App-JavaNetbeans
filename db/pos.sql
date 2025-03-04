-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2025 at 09:54 AM
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
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `INID` varchar(50) NOT NULL,
  `Product_Name` varchar(100) NOT NULL,
  `Bar_code` varchar(50) NOT NULL,
  `qty` int(11) NOT NULL,
  `Unit_Price` decimal(10,2) NOT NULL,
  `Total_Price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartid`, `INID`, `Product_Name`, `Bar_code`, `qty`, `Unit_Price`, `Total_Price`) VALUES
(1, 'INV001', 'Laptop Asus ROG', '1234567890123', 2, 15000000.00, 30000000.00),
(2, 'INV002', 'Mouse Logitech G502', '9876543210987', 1, 750000.00, 750000.00),
(3, 'INV003', 'Keyboard Razer BlackWidow', '1928374650912', 3, 2000000.00, 6000000.00);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `Tp_Number` varchar(50) NOT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `bank` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `person_name` varchar(100) DEFAULT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `person_tp` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `online` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `customer_name`, `Tp_Number`, `billing_address`, `shipping_address`, `bank`, `city`, `person_name`, `contact_person`, `person_tp`, `email`, `online`) VALUES
(2, '', '', '', '', '', '', '', '', '', '', ''),
(3, 'Andi Saputra', '08123456789', 'Jl. Merdeka No.10', 'Jl. Sudirman No.5', 'BCA 123456', 'Jakarta', 'Andi', 'Budi', '08129876543', 'andi@example.com', 'yes'),
(4, 'Rina Kartika', '08234567890', 'Jl. Diponegoro No.3', 'Jl. MH Thamrin No.7', 'Mandiri 987654', 'Bandung', 'Rina', 'Citra', '08233445566', 'rina@example.com', 'yes'),
(5, 'Andi Wijaya', '081234567890', 'Jl. Merdeka No. 10, Jakarta', 'Jl. Sudirman No. 15, Jakarta', 'Bank BCA', 'Jakarta', 'Andi Wijaya', 'Manager Sales', '081234567890', 'andi.wijaya@email.com', 'Yes'),
(6, 'Budi Santoso', '082233445566', 'Jl. Malioboro No. 20, Yogyakarta', 'Jl. Magelang No. 5, Yogyakarta', 'Bank Mandiri', 'Yogyakarta', 'Budi Santoso', 'CEO', '082233445566', 'budi.santoso@email.com', 'No'),
(7, 'Citra Lestari', '081998877665', 'Jl. Asia Afrika No. 30, Bandung', 'Jl. Cihampelas No. 25, Bandung', 'Bank BRI', 'Bandung', 'Citra Lestari', 'Owner', '081998877665', 'citra.lestari@email.com', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(11) NOT NULL,
  `employee_name` varchar(100) NOT NULL,
  `Tp_Number` varchar(50) NOT NULL,
  `main_address` varchar(255) DEFAULT NULL,
  `temp_address` varchar(255) DEFAULT NULL,
  `bank` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `person_name` varchar(100) DEFAULT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `person_tp` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `online` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `employee_name`, `Tp_Number`, `main_address`, `temp_address`, `bank`, `city`, `person_name`, `contact_person`, `person_tp`, `email`, `online`) VALUES
(1, 'Siti Hasanah', '085677889900', 'Jl. Merdeka No.1, Jakarta', 'Jl. Alternatif No.5, Jakarta', 'Bank BCA', 'Jakarta', 'Budi Santoso', 'Rina Kartika', '081122334455', 'siti@example.com', 'Online'),
(3, 'Siti Hasanah', '085677889900', 'Jl. Merdeka No.1, Jakarta', 'Jl. Alternatif No.5, Jakarta', 'Bank BCA', 'Jakarta', 'Budi Santoso', 'Rina Kartika', '081122334455', 'siti@example.com', 'Online'),
(5, 'Siti Hasanah', '085677889900', 'Jl. Merdeka No.1, Jakarta', 'Jl. Alternatif No.5, Jakarta', 'Bank BCA', 'Jakarta', 'Budi Santoso', 'Rina Kartika', '081122334455', 'siti@example.com', 'Online'),
(6, '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `extra`
--

CREATE TABLE `extra` (
  `exid` int(11) NOT NULL,
  `val` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `extra`
--

INSERT INTO `extra` (`exid`, `val`) VALUES
(1, 'Diskon Member 10%'),
(2, 'Gratis Ongkir Min. 100K'),
(3, 'Voucher Cashback 5%'),
(4, 'Poin Reward 2x Lipat'),
(5, 'Promo Spesial Akhir Tahun');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `Product_Name` varchar(100) NOT NULL,
  `Bar_code` varchar(50) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Qty` int(11) NOT NULL,
  `Sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `Product_Name`, `Bar_code`, `Price`, `Qty`, `Sid`) VALUES
(1, 'Gitar Akustik Yamaha', 'BAR001', 1500000.00, 10, 1),
(2, 'Drum Set Pearl', 'BAR002', 5000000.00, 5, 2),
(3, 'Keyboard Roland', 'BAR003', 3500000.00, 7, 3),
(4, 'Bass Fender', 'BAR004', 2800000.00, 8, 1),
(5, 'Microphone Shure', 'BAR005', 750000.00, 20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `SaleID` int(11) NOT NULL,
  `INID` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL,
  `Total_Qty` int(11) NOT NULL,
  `Total_Bill` decimal(10,2) NOT NULL,
  `Status` varchar(20) NOT NULL CHECK (`Status` in ('UnPaid','Partial','Paid')),
  `Balance` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `sid` int(11) NOT NULL,
  `supplier_name` varchar(100) DEFAULT NULL,
  `supplier_phone` varchar(50) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `bank` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `person_name` varchar(100) DEFAULT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `contact_phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `online` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`sid`, `supplier_name`, `supplier_phone`, `billing_address`, `shipping_address`, `bank`, `city`, `person_name`, `contact_person`, `contact_phone`, `email`, `online`) VALUES
(1, 'PT Sumber Makmur', '08123456789', 'Jl. Industri No.1', 'Jl. Sudirman No.5', 'BNI 654321', 'Jakarta', 'Wahyu', 'Joko', '0812456789', 'supplier@example.com', 'yes'),
(2, 'PT Maju Bersama', '08123456789', 'Jl. Sudirman No. 10', 'Jl. Sudirman No. 10', 'Bank Mandiri', 'Jakarta', 'Budi Santoso', 'Andi Wijaya', '08234567890', 'info@majubersama.com', 'www.majubersama.com'),
(3, 'CV Sumber Rezeki', '08129876543', 'Jl. Diponegoro No. 5', 'Jl. Diponegoro No. 5', 'BCA', 'Surabaya', 'Siti Aminah', 'Joko Prasetyo', '08345678901', 'cs@sumberrezeki.co.id', 'www.sumberrezeki.co.id'),
(4, 'UD Berkah Jaya', '08213456789', 'Jl. Merdeka No. 15', 'Jl. Merdeka No. 15', 'BNI', 'Bandung', 'Hendro Wijaya', 'Tina Kusuma', '08567890123', 'sales@berkahjaya.com', 'www.berkahjaya.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `extra`
--
ALTER TABLE `extra`
  ADD PRIMARY KEY (`exid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`SaleID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `extra`
--
ALTER TABLE `extra`
  MODIFY `exid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `SaleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
