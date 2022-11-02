-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 02, 2022 at 03:47 PM
-- Server version: 10.3.36-MariaDB-log-cll-lve
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
-- Database: `studdgqz_studentcounselling`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', '08-05-2022 07:23:45 PM'),
(2, 'adminstrator', '58c1961c95b5aba3969eb4c9ef6d39de', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Counselling', '', '2022-10-05 13:09:05', ''),
(2, 'Therapy', '', '2022-10-05 13:09:18', ''),
(3, 'stupid maulana', 'problem solver', '2022-10-30 23:19:49', '');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) NOT NULL,
  `stateDescription` tinytext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(1, 'High priority', '', '2022-10-05 13:14:14', ''),
(2, 'Medium priority', '', '2022-10-05 13:14:25', ''),
(3, 'Low priority', '', '2022-10-05 13:14:35', '');

-- --------------------------------------------------------

--
-- Table structure for table `studentlog`
--

CREATE TABLE `studentlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentlog`
--

INSERT INTO `studentlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 0, 'abiola@gmail.com', 0x3139372e3231302e37382e3432000000, '2020-05-08 14:14:43', '', 0),
(2, 1, 'abiola@gmail.com', 0x3139372e3231302e37382e3432000000, '2020-05-08 14:14:50', '08-05-2020 07:44:51 PM', 1),
(3, 1, 'abiola@gmail.com', 0x3139372e3231302e37382e3432000000, '2022-10-09 08:56:16', '', 1),
(4, 0, 'princess', 0x3139372e3231302e35352e3135370000, '2022-10-05 12:37:14', '', 0),
(5, 1, 'success@gmail.com', 0x3139372e3231302e35352e3135370000, '2022-10-05 12:37:32', '05-10-2022 06:09:13 PM', 1),
(6, 1, 'Godpower@gmail.com', 0x3139372e3231302e35352e3135370000, '2022-10-05 13:19:00', '', 1),
(7, 1, 'Temi@gmail.com', 0x3139372e3231302e35352e3135370000, '2022-10-05 14:26:54', '05-10-2022 08:22:55 PM', 1),
(8, 1, 'david@gmail.com', 0x3139372e3231302e35352e3135370000, '2022-10-05 14:58:25', '', 1),
(9, 0, 'Rachel', 0x3130352e3131332e31322e3136340000, '2022-10-05 21:22:07', '', 0),
(10, 0, 'tope@gmail.com', 0x3130352e3131332e31322e3136340000, '2022-10-05 21:22:32', '', 0),
(11, 1, 'cynthia@gmail.com', 0x3130352e3131332e31322e3136340000, '2022-10-05 21:22:53', '', 1),
(12, 0, 'Sophia', 0x3139372e3231302e38352e3135300000, '2022-10-06 08:58:07', '', 0),
(13, 1, 'precious@gmail.com', 0x3139372e3231302e38352e3135300000, '2022-10-06 08:58:10', '06-10-2022 02:28:56 PM', 1),
(14, 1, 'raymond@gmail.com', 0x3139372e3231302e38352e3135300000, '2022-10-06 11:51:22', '', 1),
(15, 1, 'sophiaa@gmail.com', 0x3139372e3231302e38352e3135300000, '2022-10-06 13:38:35', '06-10-2022 07:31:32 PM', 1),
(16, 1, 'dorcas@gmail.com', 0x3139372e3231302e38352e3135300000, '2022-10-06 14:36:40', '06-10-2022 08:13:26 PM', 1),
(17, 1, 'maulexing@gmail.com', 0x3139372e3231302e38352e3135300000, '2022-10-06 14:55:50', '06-10-2022 08:26:02 PM', 1),
(18, 1, 'Maulexing@gmail.com', 0x3134382e3235322e3133332e31330000, '2022-10-08 10:14:09', '', 1),
(19, 0, 'Maulexing@gmail.com', 0x3134382e3235322e3133332e31330000, '2022-10-08 10:14:31', '', 0),
(20, 1, 'Maulexing@gmail.com', 0x3134382e3235322e3133332e31330000, '2022-10-08 10:14:49', '', 1),
(21, 1, 'maulexing@gmail.com', 0x3139372e3231302e37382e3432000000, '2022-10-09 08:17:57', '', 1),
(22, 0, 'maulexing@gmail.com', 0x3139372e3231302e37382e3432000000, '2022-10-09 08:18:31', '', 0),
(23, 1, 'maulexing@gmail.com', 0x3139372e3231302e37382e3432000000, '2022-10-09 08:18:42', '', 1),
(24, 1, 'maulexing@gmail.com', 0x3139372e3231302e37382e3432000000, '2022-10-09 08:19:14', '', 1),
(25, 1, 'maulexing@gmail.com', 0x3139372e3231302e37382e3432000000, '2022-10-09 08:56:16', '', 1),
(26, 1, 'maulexing@gmail.com', 0x3139372e3231302e37382e3432000000, '2022-10-09 09:31:49', '', 1),
(27, 0, 'admin', 0x3139372e3231302e37382e3432000000, '2022-10-09 09:32:02', '', 0),
(28, 1, 'maulexing@gmail.com', 0x3139372e3231302e37382e3432000000, '2022-10-09 11:44:49', '', 1),
(29, 1, 'maulexing@gmail.com', 0x3139372e3231302e37382e3432000000, '2022-10-09 11:45:09', '', 1),
(30, 2, 'abiola@gmail.com', 0x3139372e3231302e37382e3432000000, '2022-10-09 11:46:27', '', 1),
(31, 2, 'abiola@gmail.com', 0x3139372e3231302e37382e3432000000, '2022-10-09 11:52:03', '09-10-2022 05:28:03 PM', 1),
(32, 2, 'abiola@gmail.com', 0x3139372e3231302e37382e3432000000, '2022-10-09 11:58:16', '', 1),
(33, 2, 'abiola@gmail.com', 0x3139372e3231302e37382e3432000000, '2022-10-09 12:01:11', '09-10-2022 05:33:25 PM', 1),
(34, 2, 'abiola@gmail.com', 0x3139372e3231302e37382e3432000000, '2022-10-09 12:03:37', '', 1),
(35, 2, 'abiola@gmail.com', 0x3139372e3231302e37382e3432000000, '2022-10-09 12:06:35', '09-10-2022 05:36:45 PM', 1),
(36, 0, 'maulexing@gmail.com', 0x3139372e3231302e37382e3432000000, '2022-10-09 12:06:54', '', 0),
(37, 0, 'abiola@gmail.com', 0x3139372e3231302e37382e3432000000, '2022-10-09 12:07:07', '', 0),
(38, 2, 'abiola@gmail.com', 0x3139372e3231302e37382e3432000000, '2022-10-09 12:07:17', '', 1),
(39, 2, 'abiola@gmail.com', 0x3139372e3231302e37382e3432000000, '2022-10-09 12:31:03', '', 1),
(40, 2, 'abiola@gmail.com', 0x3139372e3231302e37382e3432000000, '2022-10-09 19:57:57', '', 1),
(41, 2, 'abiola@gmail.com', 0x3139372e3231302e37382e3432000000, '2022-10-09 19:58:06', '10-10-2022 01:28:27 AM', 1),
(42, 2, 'abiola@gmail.com', 0x3139372e3231302e37382e3432000000, '2022-10-09 20:15:42', '', 1),
(43, 2, 'abiola@gmail.com', 0x3139372e3231302e37382e3432000000, '2022-10-09 20:15:47', '10-10-2022 01:47:24 AM', 1),
(44, 2, 'abiola@gmail.com', 0x38352e3235352e3233342e3431000000, '2022-10-11 13:12:21', '', 1),
(45, 2, 'abiola@gmail.com', 0x3139372e3231302e38342e3233370000, '2022-10-18 22:27:02', '19-10-2022 03:57:52 AM', 1),
(46, 2, 'abiola@gmail.com', 0x3139372e3231302e38342e3233370000, '2022-10-19 01:15:24', '19-10-2022 06:45:57 AM', 1),
(47, 1, 'maulexing@gmail.com', 0x3139372e3231302e38342e3134320000, '2022-10-19 16:14:35', '', 1),
(48, 2, 'abiola@gmail.com', 0x3139372e3231302e37382e3135000000, '2022-10-23 12:38:05', '', 1),
(49, 2, 'abiola@gmail.com', 0x38312e33312e3132322e323434000000, '2022-10-24 10:25:11', '', 1),
(50, 2, 'abiola@gmail.com', 0x3130352e3131332e31302e3137320000, '2022-10-26 21:41:00', '', 1),
(51, 2, 'abiola@gmail.com', 0x3130322e39312e342e37350000000000, '2022-10-29 07:28:52', '29-10-2022 01:02:38 PM', 1),
(52, 2, 'abiola@gmail.com', 0x3139372e3231302e37372e3135340000, '2022-10-29 22:07:01', '', 1),
(53, 3, 'abisco65@yahoo.com', 0x3139372e3231302e37372e3934000000, '2022-10-29 22:10:51', '30-10-2022 03:44:10 AM', 1),
(54, 2, 'abiola@gmail.com', 0x3139372e3231302e37372e3135340000, '2022-10-29 22:30:37', '', 1),
(55, 3, 'abisco65@yahoo.com', 0x3139372e3231302e38342e3231000000, '2022-10-30 07:55:48', '30-10-2022 01:26:25 PM', 1),
(56, 2, 'abiola@gmail.com', 0x3139372e3231302e38342e3231000000, '2022-10-30 11:07:25', '', 1),
(57, 11, 'green@gmail.com', 0x3139372e3231302e38342e3231000000, '2022-10-30 17:40:21', '', 1),
(58, 11, 'green@gmail.com', 0x3139372e3231302e38342e3231000000, '2022-10-30 18:13:23', '', 1),
(59, 11, 'green@gmail.com', 0x3139372e3231302e37392e3139300000, '2022-10-30 23:01:49', '31-10-2022 04:35:16 AM', 1),
(60, 2, 'abiola@gmail.com', 0x38312e33312e3132322e323434000000, '2022-10-31 00:29:03', '', 1),
(61, 2, 'abiola@gmail.com', 0x38312e33312e3132322e323434000000, '2022-10-31 00:29:59', '', 1),
(62, 2, 'abiola@gmail.com', 0x38312e33312e3132322e323434000000, '2022-10-31 00:37:48', '', 1),
(63, 2, 'abiola@gmail.com', 0x38312e33312e3132322e323434000000, '2022-10-31 00:44:51', '31-10-2022 06:25:01 AM', 1),
(64, 2, 'abiola@gmail.com', 0x38312e33312e3132322e323434000000, '2022-10-31 00:55:09', '', 1),
(65, 2, 'abiola@gmail.com', 0x38312e33312e3132322e323434000000, '2022-10-31 00:56:30', '31-10-2022 06:26:36 AM', 1),
(66, 2, 'abiola@gmail.com', 0x38312e33312e3132322e323434000000, '2022-10-31 00:56:41', '', 1),
(67, 2, 'abiola@gmail.com', 0x38312e33312e3132322e323434000000, '2022-10-31 11:14:46', '', 1),
(68, 0, 'admin', 0x38312e33312e3132322e323434000000, '2022-10-31 14:07:18', '', 0),
(69, 0, 'admin', 0x38312e33312e3132322e323434000000, '2022-10-31 14:07:22', '', 0),
(70, 2, 'abiola@gmail.com', 0x38312e33312e3132322e323434000000, '2022-10-31 14:07:33', '', 1),
(71, 2, 'abiola@gmail.com', 0x3139372e3231302e3232372e31383600, '2022-10-31 23:00:15', '', 1),
(72, 2, 'abiola@gmail.com', 0x38312e33312e3132322e323434000000, '2022-11-02 15:56:44', '', 1),
(73, 14, 'debby@gmail.com', 0x38312e33312e3132322e323434000000, '2022-11-02 18:40:04', '03-11-2022 12:10:48 AM', 1),
(74, 14, 'debby@gmail.com', 0x38312e33312e3132322e323434000000, '2022-11-02 18:41:02', '03-11-2022 12:11:13 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `studentremark`
--

CREATE TABLE `studentremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentremark`
--

INSERT INTO `studentremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 1, 'in process', 'read your books in library', '2022-10-05 14:57:35'),
(2, 1, 'closed', 'welldone', '2022-10-06 09:06:53'),
(3, 3, 'in process', 'read your books, we should discuss via zoom meeting\r\n\r\n', '2022-10-29 22:17:32'),
(4, 4, 'closed', 'school successful ', '2022-10-31 21:45:57');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `regNo` varchar(255) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `regNo`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(2, 'Abiola Blessing', 'abiola@gmail.com', '23830bbaf1b8c1e4b8e0f93df30ef08a', 0, NULL, NULL, NULL, NULL, NULL, '2022-10-09 11:46:07', '0000-00-00 00:00:00', 1),
(3, 'Abiola Blessing', 'abisco65@yahoo.com', 'd8b905d61f62feb6cca297cd9f594a07', 234568789, NULL, 'Lagos', 'Nigeria', '7324500', NULL, '2022-10-29 22:10:16', '2022-10-31 11:24:33', 1),
(4, 'john Doe', 'john@hotmail.com', '6e0b7076126a29d5dfcbd54835387b7b', 234567890, NULL, NULL, NULL, NULL, NULL, '2022-09-08 14:10:50', '2022-09-08 14:16:22', 1),
(5, 'abigal', 'abigail@gmail.com', 'ec6a6536ca304edf844d1d248a4f08dc', 222222222222222, NULL, NULL, NULL, '919600', NULL, '2022-10-30 12:36:26', '2022-11-01 15:12:49', 1),
(6, 'joy', 'joy@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 333333333, NULL, NULL, NULL, '9877656', NULL, '2022-10-30 12:36:35', '2022-11-01 15:08:29', 1),
(10, 'Sophia destiny', 'sophia@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 2348175747516, NULL, NULL, NULL, NULL, NULL, '2022-10-30 12:47:56', '2022-11-01 15:12:30', 1),
(11, 'Patrick Vera', 'patrick@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 88888888888, NULL, 'Harare', 'Zimbabwe', '98998867', '', '2022-10-20 17:37:37', '2022-11-01 15:19:06', 1),
(12, 'Sandra', 'sandra@gmail.com', 'd8b905d61f62feb6cca297cd9f594a07', 7438921354, NULL, NULL, NULL, '916009', NULL, '2022-10-30 23:16:55', '2022-10-30 23:18:35', 1),
(13, 'usman', 'usman@gmail.com', '4e88a91dd1fc01410d1bbbb96815d6cf', 7438921354, NULL, NULL, NULL, NULL, NULL, '2022-11-01 16:15:26', '0000-00-00 00:00:00', 1),
(14, 'debby debby', 'debby@gmail.com', '178f7858210a9d6b0d68f5c0b12ef292', 743892135, NULL, NULL, NULL, NULL, NULL, '2022-11-02 18:38:43', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Education counselling', '2022-10-05 13:09:41', ''),
(2, 1, 'Mental health counselling', '2022-10-05 13:10:19', ''),
(3, 2, 'Behavior therapy', '2022-10-05 13:12:30', ''),
(4, 2, 'Cognitive therapy', '2022-10-05 13:12:49', ''),
(5, 2, 'Holistic therapy', '2022-10-05 13:13:07', '05-10-2022 06:43:35 PM'),
(6, 1, 'Human counselling', '2022-10-29 22:20:23', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `complaintType` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `noc` varchar(255) NOT NULL,
  `complaintDetails` mediumtext NOT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(1, 1, 1, 'Mental health counselling', ' Complaint', 'Medium priority', 'how to improve my result', 'please exam is coming', '', '2022-10-05 13:29:49', 'closed', '2022-10-06 09:06:53'),
(2, 2, 1, 'Mental health counselling', ' Complaint', 'Low priority', 'depress', 'hardly sleep, what can i do', '', '2022-10-09 20:17:09', NULL, '0000-00-00 00:00:00'),
(3, 3, 1, 'Education counselling', ' Complaint', 'Medium priority', 'issue with my grades', 'since 2 semesters you grades, family issue you', '', '2022-10-29 22:13:06', 'in process', '2022-10-29 22:17:32'),
(4, 2, 1, 'Mental health counselling', 'General Query', 'Medium priority', 'peer pressure', 'I am going through a lot', '', '2022-10-31 00:58:20', 'closed', '2022-10-31 21:45:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentlog`
--
ALTER TABLE `studentlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentremark`
--
ALTER TABLE `studentremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `studentlog`
--
ALTER TABLE `studentlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `studentremark`
--
ALTER TABLE `studentremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
