-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2022 at 06:57 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medismart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'admin123', '');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'Medicine', 1, 1, 800, '2022-02-24', '6:00 PM', '2022-02-20 06:46:48', 1, 1, NULL),
(2, 'Medicine', 2, 2, 800, '2022-02-28', '10:00 PM', '2022-02-24 15:50:55', 1, 1, NULL),
(3, 'Nose-Ear-Throat', 3, 3, 600, '2022-02-28', '8:00 PM', '2022-02-24 15:51:57', 1, 1, NULL),
(4, 'Nose-Ear-Throat', 4, 4, 600, '2022-02-27', '11:00 PM', '2022-02-24 15:54:12', 1, 1, NULL),
(5, 'Medicine', 1, 1, 800, '2022-03-24', '11:00 PM', '2022-03-02 16:47:18', 1, 0, '2022-03-04 11:20:39'),
(6, 'Medicine', 1, 1, 800, '2022-03-24', '11:00 PM', '2022-03-02 17:21:04', 0, 1, '2022-03-02 17:21:13'),
(7, 'Medicine', 1, 1, 800, '2022-03-16', '5:30 PM', '2022-03-04 11:19:04', 1, 1, NULL),
(8, 'Gastroenterology', 20, 2, 800, '2022-03-25', '2pm - 5pm', '2022-03-25 12:33:45', 1, 1, NULL),
(9, 'Cardiologist', 18, 4, 1000, '2022-03-23', '2pm - 5pm', '2022-03-25 13:00:43', 1, 1, NULL),
(10, 'CHILD/PAEDIATRICS', 19, 5, 800, '2022-03-24', '6pm - 9pm', '2022-03-25 13:33:56', 1, 1, NULL),
(11, 'Medicine', 1, 6, 800, '2022-03-25', '2pm - 5pm', '2022-03-25 13:54:03', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `docgender` varchar(10) NOT NULL,
  `docdegree` varchar(255) NOT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `practicedays` varchar(30) NOT NULL,
  `practicetime` varchar(30) NOT NULL,
  `contactno` varchar(13) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `profile_pic`, `docgender`, `docdegree`, `address`, `docFees`, `practicedays`, `practicetime`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Medicine', 'DR. MD. ZAKIR HOSSAIN', '1648101106_zakir.jpg', 'Male', 'MBBS, FCPS (Medicine), MD (Internal Medicine) Ex- Shaheed Ziaur Rahman Medical College & Hospital, Bogura.', 'Sheba Diagnostic Centre Ltd. (Bogra Branch)', '800', 'Saturday - Thursday', '2pm - 5pm', '01778897931', 'zakir@gmail.com', '83f399ed140b122791b15f01b4b3d4e0', '2022-02-20 06:12:39', '2022-03-25 14:58:34'),
(2, 'Medicine', 'DR. MD. RAFIQUL ISLAM', '1648101120_rafiq.jpg', 'Male', 'FCPS (Medicine), MBBS', 'Sheba Diagnostic Centre Ltd. (Bogra Branch)', '800', 'Friday', '6pm - 9pm', '01350897999', 'rafiqul@gmail.com', '3ab9cd9170823691d6734c0a80f82eb3', '2022-02-20 06:17:14', '2022-03-25 14:59:12'),
(3, 'Ear-Nose-Throat', 'Dr. Hasan Ali', '1648207168_hasan.jpg', 'Male', 'FCPS (Medicine), MBBS', 'Sheba Diagnostic Centre Ltd. (Bogra Branch)', '600', 'Friday', '6pm - 9pm', '01950777788', 'hasan@gmail.com', 'f690d3b8d4b51c1f189d886b7bab26b7', '2022-02-20 06:22:12', '2022-03-25 14:59:34'),
(4, 'Ear-Nose-Throat', 'MD. ABDUL GAFFAR', '1648207334_abdul.jpg', 'Male', 'MBBS', 'Sheba Diagnostic Centre Ltd. (Bogra Branch)', '800', 'Saturday - Thursday', '6pm - 9pm', '01788897931', 'abdul@gmail.com', '428a78b4fee47253898d7918c0a09160', '2022-02-20 06:25:53', '2022-03-25 14:59:51'),
(5, 'Gynecologist', 'DR. SULTANA RAZIA', '1648101134_rajia.jpg', 'Female', 'MBBS, DGO, MCPS, FCPS (Gynae) Shaheed Ziaur Rahman Medical College & Hospital, Bogura.', 'Sheba Diagnostic Centre Ltd. (Bogra Branch)', '600', 'Saturday - Thursday', '2pm - 5pm', '01333897931', 'sultana@gmail.com', '8c2a804932c40968823558dd3c81dc20', '2022-02-20 06:28:31', '2022-03-25 15:00:08'),
(6, 'Gynecologist', 'Dr. Mafruha Jahan', '1648101168_mafruha.jpg', 'Female', 'MBBS, FCPS (Gynae). Shaheed Ziaur Rahman Medical College & Hospital, Bogura.', 'Sheba Diagnostic Centre Ltd. (Bogra Branch)', '500', 'Saturday - Thursday', '10pm - 1am', '01368112255', 'mafruha@gmail.com', 'd083603d9b8a7858c57618ab478437e6', '2022-02-20 06:30:19', '2022-03-25 15:01:00'),
(7, 'Dentist', 'Dr. Alraji Rumman', '1648207538_alraji.jpg', 'Male', 'MBBS, FCPS ', 'Sheba Diagnostic Centre Ltd. (Bogra Branch)', '500', 'Friday', '6pm - 9pm', '01950777736', 'alraji@gmail.com', '1422d9fc12aea8ba6545a63da06db7bd', '2022-02-24 16:00:16', '2022-03-25 15:01:59'),
(8, 'Neurology', 'DR. MD. ZAKIRUL ISLAM', '1648206831_zakirul.jpg', 'Male', 'MBBS(Gold Medalist) FCPS (Medicine) ,MD (Neurologist) National Institute Of Neuro Science & Hospital, Dhaka', 'Sheba Diagnostic Centre Ltd. (Bogra Branch)', '1000', 'Friday', '6pm - 9pm', '01733897931', 'zakirul@gmail.com', 'bba1de36c5c7b723949fca73f58ed7af', '2022-02-24 16:04:08', '2022-03-25 15:02:21'),
(10, 'Cardiologist', 'DR. MD. ARIF RAHMAN', '1648208978_arif.jpg', 'Male', 'MBBS, FCPS ', 'Sheba Diagnostic Centre Ltd. (Bogra Branch)', '600', 'Saturday - Thursday', '6pm - 9pm', '01778898888', 'arif@gmail.com', 'd53d757c0f838ea49fb46e09cbcc3cb1', '2022-02-24 16:08:19', '2022-03-25 15:02:46'),
(14, 'Medicine', 'Assoc. Prof. Dr. Md. Halimur Rashid', '1648204377_halimur.jpg', 'Male', 'MBBS, FCPS (Medicine). Shaheed Ziaur Rahman Medical College & Hospital, Bogura.', 'Sheba Diagnostic Centre Ltd. (Bogra Branch)', '600', 'Saturday - Thursday', '2pm - 5pm', '01882345678', 'halimur@gmail.com', '40ca2097d7b3fbde516a331b395ec5ea', '2022-03-25 10:32:57', '2022-03-25 15:03:44'),
(15, 'Orthopaedic Surgery', 'Asstt. Prof. Dr. Md. Rezaul Karim', '1648205039_rezaul.jpg', 'Male', 'MBBS, BCS (Heaith),MS (Ortho Surgery) Shaheed Ziaur Rahman Medical College & Hospital,Bogura', 'Sheba Diagnostic Centre Ltd. (Bogra Branch)\r\n\r\n', '800', 'Saturday - Thursday', '6pm - 9pm', '01717345678', 'rezaul@gmail.com', 'd9a3ca6550d64e7eb059632984985f55', '2022-03-25 10:43:59', '2022-03-25 15:04:06'),
(16, 'Orthopaedic Surgery', ' Asstt Prof. Dr. Syed Shamsul Arefin ( Jewel )', '1648205500_samsul.jpg', 'Male', 'MBBS, BCS (Heaith),MS (Ortho Surgery) Shaheed Ziaur Rahman Medical College & Hospital,Bogura', 'Sheba Diagnostic Centre Ltd. (Bogra Branch)\r\n\r\n', '900', 'Saturday - Thursday', '2pm - 5pm', '01712897653', 'sayed@gmail.com', '4f90718bc1a7ee98cdedfdabd68ab333', '2022-03-25 10:51:40', '2022-03-25 15:04:27'),
(17, 'Cardiologist', 'Prof. Dr. Md. Majibar Rahman (Salim)', '1648205758_majibar.jpg', 'Male', 'MBBS, DTCD, MD (Cardiology), Ph.D WHO Fellow Shaheed Ziaur Rahman Medical College & Hospital, Bogura.', 'Sheba Diagnostic Centre Ltd. (Bogra Branch)', '600', 'Friday', '6pm - 9pm', '01992234541', 'majibar@gmail.com', '07886f9e9682aacc817b784c64835a83', '2022-03-25 10:55:58', '2022-03-25 15:04:47'),
(18, 'Cardiologist', 'Assoc. Prof. Dr. Md. Arifur Rahman', '1648205981_arifur.jpg', 'Male', 'MBBS, D-Card, FCCP, FACC, FRCP (Glasco-UK)', 'Sheba Diagnostic Centre Ltd. (Bogra Branch)\r\n\r\n', '1000', 'Saturday - Thursday', '2pm - 5pm', '01779097656', 'arifur@gmail.com', '7de7fc54cc8b68a5d94f0d876cb0a001', '2022-03-25 10:59:41', '2022-03-25 15:05:06'),
(19, 'CHILD/PAEDIATRICS', 'Dr. Sharmin Afrozi (Shilpi)', '1648206316_shilpi.jpg', 'Female', 'MBBS, DCH, FCPS (Chaild) Mohammad Ali Hospital, Bogura.  ', 'Sheba Diagnostic Centre Ltd. (Bogra Branch)', '800', 'Saturday - Thursday', '6pm - 9pm', '01798456543', 'sharmin@gmail.com', '27bac70f192f873895a85cb489061d31', '2022-03-25 11:05:16', '2022-03-25 15:05:50'),
(20, 'Gastroenterology', 'ASSOC. PROF. DR. MD. MAKHSUDUL ALAM', '1648207746_makhsudul.jpg', 'Male', 'MBBS, MD (Gastroenterologist) Shaheed Ziaur Rahman Medical College & Hospital, Bogura.', 'Sheba Diagnostic Centre Ltd. (Bogra Branch)', '800', 'Saturday - Thursday', '2pm - 5pm', '01765348790', 'makhsudul@gmail.com', '9c96e0053982db746b05a112dd88ab1d', '2022-03-25 11:29:06', '2022-03-25 15:06:31'),
(21, 'Dermatologist', 'Prof. Dr Col. Quazi Salim Yazdi', '1648207976_quazi.jpg', 'Male', 'MBBS, FCPS (Dermatologist), MCPS, DDV,Skin,VD, Sex & Allergy Specialist CMH, Bogura', 'Sheba Diagnostic Centre Ltd. (Bogra Branch)', '1000', 'Friday', '6pm - 9pm', '01712998756', 'quazi@gmail.com', '7b6bb64441233909bac15a7b4c88e379', '2022-03-25 11:32:56', '2022-03-25 15:07:11'),
(22, 'EYE / OPHTHALMOLOGY', 'Asstt. Prof. Dr. Md. Sahin', '1648208261_sahin.jpg', 'Male', 'MBBS, MCPS (Eye), MS (Eye). SZMC&H, Bogura', 'Sheba Diagnostic Centre Ltd. (Bogra Branch)\r\n\r\n', '600', 'Saturday - Thursday', '2pm - 5pm', '01712011024', 'sahin@gmail.com', '399103aa6219f16ad3621554c2dbc8c7', '2022-03-25 11:37:41', '2022-03-25 15:07:43'),
(23, 'UROLOGY SURGERY', 'Assoc. Prof. Dr. Md. Ahsan Habib', '1648208708_ahsan.jpg', 'Male', 'MBBS, BCS, MS (Urology) SZMC&H, Bogura', 'Sheba Diagnostic Centre Ltd. (Bogra Branch)\r\n\r\n', '600', 'Saturday - Thursday', '6pm - 9pm', '01771452198', 'ahsan@gmail.com', '3d68b18bd9042ad3dc79643bde1ff351', '2022-03-25 11:45:08', '2022-03-25 15:08:16');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, NULL, 'mafruza@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-20 06:42:47', NULL, 0),
(2, 6, 'mafruha@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-20 06:43:12', '20-02-2022 12:13:39 PM', 1),
(3, 1, 'zakir@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-20 06:44:08', '20-02-2022 01:05:22 PM', 1),
(4, 6, 'mafruha@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-23 18:55:04', '24-02-2022 12:28:16 AM', 1),
(5, NULL, 'tanvir@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-24 10:08:27', NULL, 0),
(6, NULL, 'mafruza@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-24 10:57:42', NULL, 0),
(7, NULL, 'mafruza@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-24 10:58:00', NULL, 0),
(8, 6, 'mafruha@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-24 10:58:31', '24-02-2022 04:48:49 PM', 1),
(9, NULL, 'mafruha@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-24 11:40:52', NULL, 0),
(10, 6, 'mafruha@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-24 11:41:03', '24-02-2022 05:17:35 PM', 1),
(11, 1, 'zakir@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-25 09:13:02', '25-02-2022 03:44:15 PM', 1),
(12, 1, 'zakir@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-02 16:43:20', NULL, 1),
(13, NULL, 'jakir@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-04 11:07:16', NULL, 0),
(14, 1, 'zakir@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-04 11:07:26', '04-03-2022 05:01:13 PM', 1),
(15, NULL, 'afiya@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-07 05:47:49', NULL, 0),
(16, 1, 'zakir@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-07 05:48:12', NULL, 1),
(17, 1, 'zakir@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-09 15:19:37', '09-03-2022 08:54:30 PM', 1),
(18, 1, 'zakir@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-10 02:56:41', '10-03-2022 08:54:02 AM', 1),
(19, 1, 'zakir@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-10 10:46:23', '10-03-2022 04:26:50 PM', 1),
(20, 1, 'zakir@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-10 10:58:25', '10-03-2022 04:29:23 PM', 1),
(21, 1, 'zakir@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-10 11:49:06', '10-03-2022 05:27:15 PM', 1),
(22, 1, 'zakir@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-13 15:47:08', '13-03-2022 09:17:49 PM', 1),
(23, 1, 'zakir@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-17 07:22:10', '17-03-2022 01:33:18 PM', 1),
(24, 1, 'zakir@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-24 03:41:41', '24-03-2022 10:07:16 AM', 1),
(25, 13, 'tanvir@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-24 04:37:32', '24-03-2022 10:07:44 AM', 1),
(26, 13, 'tanvir@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-24 04:38:22', '24-03-2022 10:17:54 AM', 1),
(27, 1, 'zakir@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-24 05:42:46', '24-03-2022 11:18:43 AM', 1),
(28, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2022-03-24 05:48:53', NULL, 0),
(29, 3, 'hasan@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-24 14:45:04', '24-03-2022 08:16:54 PM', 1),
(30, 1, 'zakir@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-25 12:29:38', NULL, 1),
(31, 20, 'makhsudul@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-25 12:35:05', NULL, 1),
(32, 1, 'zakir@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-25 12:42:37', '25-03-2022 06:55:37 PM', 1),
(33, 20, 'makhsudul@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-25 12:46:37', '25-03-2022 06:17:16 PM', 1),
(34, NULL, 'makhsudul@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-25 12:51:36', NULL, 0),
(35, 20, 'makhsudul@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-25 12:51:56', '25-03-2022 06:25:54 PM', 1),
(36, 18, 'arifur@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-25 13:01:33', NULL, 1),
(37, 19, 'sharmin@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-25 13:36:29', '25-03-2022 07:14:22 PM', 1),
(38, 19, 'sharmin@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-25 13:44:36', '25-03-2022 07:15:36 PM', 1),
(39, 1, 'zakir@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-25 13:45:45', '25-03-2022 07:23:10 PM', 1),
(40, 1, 'zakir@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-25 13:54:18', '25-03-2022 07:27:34 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist', '2022-02-20 05:51:23', NULL),
(2, 'General Physician\r\n', '2022-02-20 05:51:23', NULL),
(3, 'Dermatologist', '2022-02-20 05:51:23', NULL),
(4, 'EYE / OPHTHALMOLOGY', '2022-02-20 05:51:23', '2022-03-25 11:35:21'),
(5, 'UROLOGY SURGERY', '2022-02-20 05:51:23', '2022-03-25 11:41:05'),
(6, 'Dentist', '2022-02-20 05:51:23', NULL),
(7, 'Ear-Nose-Throat', '2022-02-20 05:51:23', '2022-03-25 11:15:47'),
(8, 'Orthopaedic Surgery', '2022-02-20 05:51:23', '2022-03-25 10:40:25'),
(9, 'Medicine', '2022-02-20 06:00:42', NULL),
(10, 'Gastroenterology', '2022-02-20 06:01:47', NULL),
(11, 'CHILD/PAEDIATRICS', '2022-02-20 06:02:11', '2022-03-25 11:02:05'),
(12, 'Cardiologist', '2022-02-20 06:03:27', NULL),
(13, 'Neurology', '2022-02-20 06:04:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` varchar(13) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'Muntasir Ahmed', 'muntasir@gmail.com', '01555-222333', ' Hello, I previously registered on the system. But now I am facing problem to sign in again. Please check the issue and inform me.', '2022-02-20 07:29:00', '55', '2022-03-02 17:30:13', 1),
(2, 'Muntasir Ahmed', 'demo@gmail.com', '01789999999', ' Hello', '2022-03-02 17:31:12', '555', '2022-03-02 17:32:21', 1),
(3, 'Afiya', 'demo2@gmail.com', '01789999998', 'HHHHHHHHHH ', '2022-03-02 17:31:52', 'ok', '2022-03-02 17:32:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(1, 1, '120/80', '4.7', '55', '102', 'Remdesivir  - 0 + 0 + 1,\r\nTake rest, Sound sleep', '2022-02-20 07:19:55'),
(2, 2, '140/80', '5.6', '53', '98', 'Medicine Doges', '2022-03-04 11:22:35'),
(3, 3, '120/60', '4', '50', '98', '1.tab.Seclo 20mg 1+0+1\r\n2.Avoid alcohol\r\n3.', '2022-03-25 12:46:01'),
(4, 5, '120/60', '6', '65', '98', '1.tab-bitacore 10mg 1+0+1\r\n2.tab-olmesan 20mg 0+0+1', '2022-03-25 13:13:09'),
(5, 6, '0', '0', '3', '101', '1.syrup-napa \r\n2.syrup-alatrol\r\n', '2022-03-25 13:41:59'),
(6, 1, '120/60', '6', '50', '98', 'jhagck,j', '2022-03-25 13:47:32'),
(7, 7, '120/60', '4', '65', '98', 'something', '2022-03-25 13:57:19');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` varchar(13) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Afiya Humyra', '01788996633', 'afiya@gmail.com', 'Female', 'Khandar, Bogura', 23, 'Fatigue, Cough, Headache, Fever', '2022-02-20 06:58:01', '2022-03-04 11:14:38'),
(2, 1, 'Afiya Humyra', '01555555554', 'afiya@gmail.com', 'Female', 'Bogura', 25, 'Something', '2022-03-04 11:13:59', '2022-03-25 13:48:13'),
(3, 2, 'Sahela Rahman', '01777142453', 'sahela@gmail.com', 'female', 'Baghopara', 22, 'Acidity,Indigestion,Stomach bloating', '2022-03-25 12:39:32', NULL),
(4, 0, 'Sahela Rahman', '01777142453', 'sahela@gmail.com', 'female', 'Baghopara', 22, 'gastrisis', '2022-03-25 12:49:53', NULL),
(5, 18, 'Rifat Habib', '01711101024', 'rifat@gmail.com', 'male', 'Satmatha', 29, 'chest pain', '2022-03-25 13:03:37', NULL),
(6, 19, 'Nira Fahmida', '01712997165', 'nira@gmail.com', 'female', 'Thengamara', 1, 'fever,cough', '2022-03-25 13:38:52', NULL),
(7, 1, 'Azfar Habib', '01712310312', 'azfar@gmail.com', 'male', 'Sylhet', 29, 'something', '2022-03-25 13:56:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'afiya@gmail.com', 0x3132372e302e302e3100000000000000, '2022-02-20 06:46:22', '20-02-2022 12:52:03 PM', 1),
(2, 1, 'afiya@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-23 18:50:04', '24-02-2022 12:22:52 AM', 1),
(3, 1, 'afiya@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-23 18:53:16', NULL, 1),
(4, 1, 'afiya@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-23 18:54:02', '24-02-2022 12:24:12 AM', 1),
(5, 1, 'afiya@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-23 18:59:58', '24-02-2022 12:37:43 AM', 1),
(6, 1, 'afiya@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-24 02:50:40', NULL, 1),
(7, 1, 'afiya@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-24 03:51:27', NULL, 1),
(8, 1, 'afiya@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-24 04:12:46', '24-02-2022 09:45:03 AM', 1),
(9, 1, 'afiya@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-24 04:15:22', '24-02-2022 09:48:50 AM', 1),
(10, 1, 'afiya@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-24 04:19:12', NULL, 1),
(13, 1, 'afiya@gmail.com', 0x3132372e302e302e3100000000000000, '2022-02-24 04:26:56', '24-02-2022 10:14:59 AM', 1),
(14, 1, 'afiya@gmail.com', 0x3132372e302e302e3100000000000000, '2022-02-24 11:05:28', NULL, 1),
(15, 1, 'afiya@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-24 11:19:12', '24-02-2022 05:09:52 PM', 1),
(16, 2, 'sahela@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-24 15:49:59', '24-02-2022 09:21:11 PM', 1),
(17, 3, 'sadek@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-24 15:51:33', '24-02-2022 09:23:03 PM', 1),
(18, 4, 'rifat@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-24 15:53:22', '24-02-2022 09:24:16 PM', 1),
(19, 1, 'afiya@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-25 09:09:55', '25-02-2022 02:42:04 PM', 1),
(20, 1, 'afiya@gmail.com', 0x3132372e302e302e3100000000000000, '2022-03-02 16:45:33', '02-03-2022 11:00:36 PM', 1),
(21, 1, 'afiya@gmail.com', 0x3132372e302e302e3100000000000000, '2022-03-04 11:08:27', NULL, 1),
(22, 1, 'afiya@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-10 03:24:34', '10-03-2022 08:54:44 AM', 1),
(23, 1, 'afiya@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-10 03:25:12', '10-03-2022 09:09:12 AM', 1),
(24, 1, 'afiya@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-10 10:26:46', '10-03-2022 03:57:17 PM', 1),
(25, 1, 'afiya@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-10 11:01:36', '10-03-2022 04:41:25 PM', 1),
(26, 1, 'afiya@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-13 15:48:02', '13-03-2022 09:19:15 PM', 1),
(27, 1, 'afiya@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-17 07:13:55', '17-03-2022 12:48:21 PM', 1),
(28, 1, 'afiya@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-24 05:00:07', '24-03-2022 10:53:26 AM', 1),
(29, 1, 'afiya@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-24 05:23:49', '24-03-2022 10:58:12 AM', 1),
(30, 1, 'afiya@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-24 14:54:11', '25-03-2022 05:57:54 PM', 1),
(31, 2, 'sahela@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-25 12:25:16', NULL, 1),
(32, 2, 'sahela@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-25 12:28:38', NULL, 1),
(33, 2, 'sahela@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-25 12:30:52', NULL, 1),
(34, 2, 'sahela@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-25 12:35:53', NULL, 1),
(35, 4, 'rifat@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-25 12:58:21', NULL, 1),
(36, 5, 'nira@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-25 13:31:08', '25-03-2022 07:04:30 PM', 1),
(37, 2, 'sahela@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-25 13:34:57', '25-03-2022 07:05:04 PM', 1),
(38, 6, 'azfar@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-25 13:53:35', '25-03-2022 07:24:09 PM', 1),
(39, 6, 'azfar@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-25 13:57:47', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `profile_pic`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(1, 'Afiya Humyra', '1648099395_afiya.jpg', 'Khandar', 'Bogura', 'female', 'afiya@gmail.com', '97d18c1b8a8579f31a6f1ac3b15fb671', '2022-02-20 06:46:03', '2022-03-24 05:23:15'),
(2, 'Sahela Rahman', '1648211519_sahela.jpg', 'Baghopara', 'Bogra', 'female', 'sahela@gmail.com', 'a6b9746d9ff79a5941b4071e8e75ae83', '2022-02-24 14:55:24', '2022-03-25 12:31:59'),
(3, 'Sadek Islam', '', 'Shahjahanpur', 'Bogra', 'male', 'sadek@gmail.com', '076c6ec6edcc4f195a113cfbdf7036ea', '2022-02-24 15:00:40', '2022-02-24 15:28:56'),
(4, 'Rifat Habib', '1648213143_rifat.jpg', 'Satmatha', 'Bogra', 'male', 'rifat@gmail.com', '2e1e5ce47d4b17e67b3d6b01edc01efc', '2022-02-24 15:03:07', '2022-03-25 12:59:03'),
(5, 'Nira Fahmida', '1648215113_nira.jpg', 'Thengamara', 'Bogra', 'female', 'nira@gmail.com', '52ebe237c42891d907901b721e245230', '2022-02-24 15:04:47', '2022-03-25 13:31:53'),
(6, 'Azfar Habib', '1648216682_azfar.jpg', 'Chunarughat', 'Sylhet', 'male', 'azfar@gmail.com', '0d1f613511c190a795a29787c293ec3d', '2022-02-24 15:08:27', '2022-03-25 13:58:02'),
(7, 'Lina Tazalla', '', 'Pirgacha', 'Rangpur', 'female', 'lina@gmail.com', '528a3c500e49e8d14159dd2935ee36a1', '2022-02-24 15:17:27', NULL),
(8, 'Rashi Rokshana', '', 'Satmatha', 'Bogra', 'female', 'rashi@gmail.com', '10d0688cd80691eb06fd912793332c46', '2022-02-24 15:18:38', NULL),
(11, 'Suhi Akter', '', 'Satmatha', 'Bogra', 'female', 'suhi@gmail.com', '31217d1e304aeadb5ae682be76729ff3', '2022-02-24 15:21:36', NULL),
(12, 'Sabrina Sultana', '', 'TMSS', 'Bogra', 'female', 'sabrina@gmail.com', '67fc4ee9d64a4fee0f99ad4b65a95074', '2022-02-24 15:23:21', NULL),
(13, 'Asmaul Husna', '', 'Satmatha', 'Bogra', 'female', 'asmaul@gmail.com', 'ae4650418ffc4ce527361e207bfb23ad', '2022-02-24 15:24:26', NULL),
(14, 'Mohaiminul Islam', '', 'Shahjahanpur', 'Bogra', 'male', 'mohaiminul@gmail.com', 'ad6ddfa7d2fcefc4b49cea43b769215d', '2022-02-24 15:25:58', NULL),
(15, 'Sadiq Islam', '', 'Kalimondir', 'Bogra', 'male', 'sadiq@gmail.com', '61785a8e996a36a23d1b346e28f5f816', '2022-02-24 15:26:53', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
