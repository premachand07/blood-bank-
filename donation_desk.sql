-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2023 at 09:11 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donation_desk`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank`
--

CREATE TABLE `blood_bank` (
  `Blood_Bank_id` varchar(100) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Contact_No` bigint(10) NOT NULL,
  `SMCOM_Approved` enum('Yes','No') NOT NULL,
  `Vehicle_Available` enum('Yes','No') NOT NULL,
  `Password` varchar(200) NOT NULL,
  `BMC_Certificate` varbinary(200) DEFAULT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_bank`
--

INSERT INTO `blood_bank` (`Blood_Bank_id`, `Name`, `Email`, `Address`, `Contact_No`, `SMCOM_Approved`, `Vehicle_Available`, `Password`, `BMC_Certificate`, `create_datetime`) VALUES
('alandibb123', 'MITAOE Blood Bank', 'mitaoe@gmail.com', 'Alandi', 8975678565, 'Yes', 'Yes', '4dba3bf6a1c31f1f603079bde84f2fce', 0x494d475f32303232303430345f3134313534392e6a7067, '2022-04-16 14:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `blood_request`
--

CREATE TABLE `blood_request` (
  `Full_Name` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Blood_Group` varchar(50) NOT NULL,
  `Contact` bigint(10) NOT NULL,
  `Gender` enum('Male','Female','Other') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_request`
--

INSERT INTO `blood_request` (`Full_Name`, `Email`, `Location`, `City`, `Blood_Group`, `Contact`, `Gender`) VALUES
('Sarthak Dnyaneshwar Wakchaure', 'sarthakwakchaure88@gmail.com', 'Mumbai', 'Akole', 'A', 9850852297, 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `Hospital_id` varchar(200) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Incharge_Name` varchar(200) NOT NULL,
  `Incharge_Contact` bigint(10) NOT NULL,
  `Nationality_of_incharge` varchar(200) NOT NULL,
  `No_of_Beds` int(20) NOT NULL,
  `No_of_Wards` int(20) NOT NULL,
  `ICU_Units` int(20) NOT NULL,
  `Approved_by_SMCOM` enum('Yes','No') NOT NULL,
  `Password` varchar(200) NOT NULL,
  `BMC_Certificate` varbinary(200) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`Hospital_id`, `Name`, `Email`, `Address`, `Incharge_Name`, `Incharge_Contact`, `Nationality_of_incharge`, `No_of_Beds`, `No_of_Wards`, `ICU_Units`, `Approved_by_SMCOM`, `Password`, `BMC_Certificate`, `create_datetime`) VALUES
('abc100', 'Apollo Hospital', 'apollo120@gmail.com', 'Mumbai', 'Raj Patil', 8937456786, 'Indian', 20, 10, 5, 'Yes', '3acf5d9362280a2bd6adfc5acb731cf0', 0x494d475f32303232303430345f3134313534392e6a7067, '2022-04-16 14:26:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Age` int(5) NOT NULL,
  `Weight` int(10) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Mobile_No` bigint(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Gender` enum('Male','Female','Other') NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_bank`
--
ALTER TABLE `blood_bank`
  ADD PRIMARY KEY (`Blood_Bank_id`);

--
-- Indexes for table `blood_request`
--
ALTER TABLE `blood_request`
  ADD PRIMARY KEY (`Full_Name`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`Hospital_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
