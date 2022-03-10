-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2022 at 10:09 AM
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
-- Database: `pessdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dispatch`
--

CREATE TABLE `dispatch` (
  `incident_id` int(11) NOT NULL,
  `patrolcar_id` varchar(10) NOT NULL,
  `time_dispatch` datetime NOT NULL,
  `time_arrive` datetime DEFAULT NULL,
  `time_completed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dispatch`
--

INSERT INTO `dispatch` (`incident_id`, `patrolcar_id`, `time_dispatch`, `time_arrive`, `time_completed`) VALUES
(1, 'QX1111A', '2022-02-03 19:18:44', '2022-02-03 19:46:26', '2022-02-10 20:12:13'),
(1, 'QX1234A', '2022-02-03 19:18:44', '2022-02-03 19:46:26', '2022-02-10 20:12:13'),
(2, 'QX0584A', '2022-02-08 13:50:41', '2022-02-08 14:11:43', '2022-02-08 14:49:53'),
(2, 'QX1111A', '2022-02-08 13:50:41', '2022-02-08 14:11:43', '2022-02-08 14:49:53'),
(3, 'QX0584A', '2022-02-16 08:04:02', '2022-02-16 08:31:33', '2022-02-16 08:45:21'),
(3, 'QX1234A', '2022-02-16 08:04:02', '2022-02-16 08:31:33', '2022-02-16 08:45:21'),
(11, 'QX1111A', '2022-03-09 16:17:50', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `incident`
--

CREATE TABLE `incident` (
  `incident_id` int(11) NOT NULL,
  `caller_name` varchar(30) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `incident_type_id` varchar(3) NOT NULL,
  `incident_locations` varchar(50) NOT NULL,
  `incident_desc` varchar(100) NOT NULL,
  `incident_status_id` varchar(1) NOT NULL,
  `time_called` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident`
--

INSERT INTO `incident` (`incident_id`, `caller_name`, `phone_number`, `incident_type_id`, `incident_locations`, `incident_desc`, `incident_status_id`, `time_called`) VALUES
(1, 'David', '12345678', '060', 'Outside ITE College West', 'Car clashed with van', '1', '2022-02-03 19:08:13'),
(2, 'Iverson', '91234567', '020', 'Jurong', 'Testing', '1', '2022-02-08 13:40:45'),
(3, 'Sasha', '09890121', '050', 'Jurong', 'Tree has fallen onto the road.', '1', '2022-02-06 11:10:14'),
(11, 'David', '91234567', '010', 'CCK', 'Fire at CCK', '1', '2022-03-09 14:12:42'),
(13, 'David', '91234567', '010', 'CCK', 'Fire at CCK', '1', '2022-03-09 14:30:39'),
(14, 'James', '8123456', '010', 'BPP', 'Fire at BBP', '1', '2022-03-09 14:36:38'),
(15, 'James', '8123456', '010', 'BPP', 'Fire at BBP', '1', '2022-03-09 14:40:50'),
(16, 'James', '8123456', '010', 'BPP', 'Fire at BPP', '1', '2022-03-09 14:41:16'),
(17, 'James', '8123456', '010', 'BPP', 'Fire at BPP', '1', '2022-03-09 14:54:58'),
(18, 'James', '8123456', '010', 'BPP', 'Fire at BPP', '1', '2022-03-09 15:05:22'),
(19, 'James', '8123456', '010', 'BPP', 'Fire at BPP', '1', '2022-03-09 15:06:58'),
(20, 'James', '8123456', '010', 'BPP', 'Fire at BPP', '1', '2022-03-09 15:12:41'),
(21, 'David', '91234567', '010', 'CCK', 'Fire at CCK', '1', '2022-03-09 15:14:40'),
(22, 'David', '91234567', '010', 'CCK', 'Fire at CCK', '1', '2022-03-09 15:19:27'),
(23, 'Glenn', '91234433', '050', 'Yew Tee', 'Fallen Tree', '1', '2022-03-09 16:10:39'),
(24, 'Glenn', '91234433', '050', 'Yew Tee', 'Fallen Tree', '1', '2022-03-09 16:11:58'),
(25, 'Thomas', '81231242', '070', 'Tampines', 'Painting outside house', '1', '2022-03-09 16:22:27'),
(26, 'Fanny', '8123456', '080', 'Pasir Ris', 'Flooding', '1', '2022-03-09 16:26:35');

-- --------------------------------------------------------

--
-- Table structure for table `incident_status`
--

CREATE TABLE `incident_status` (
  `incident_status_id` varchar(1) NOT NULL,
  `incident_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident_status`
--

INSERT INTO `incident_status` (`incident_status_id`, `incident_status_desc`) VALUES
('1', 'Pending '),
('2', 'Dispatched'),
('3', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `incident_type`
--

CREATE TABLE `incident_type` (
  `incident_type_id` varchar(3) NOT NULL,
  `incident_type_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident_type`
--

INSERT INTO `incident_type` (`incident_type_id`, `incident_type_desc`) VALUES
('010', 'Fire'),
('020', 'Riot'),
('030', 'Burglary'),
('040', 'Domestic Violence'),
('050', 'Fallen Tree'),
('060', 'Traffic Accident'),
('070', 'Loan Shark'),
('080', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar`
--

CREATE TABLE `patrolcar` (
  `patrolcar_id` varchar(10) NOT NULL,
  `patrolcar_status_id` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patrolcar`
--

INSERT INTO `patrolcar` (`patrolcar_id`, `patrolcar_status_id`) VALUES
('QX1111A', '1'),
('QX0584A', '3'),
('QX1234A', '3'),
('QX3456A', '3'),
('QX4296A', '3'),
('QX4312A', '3'),
('QX6789A', '3'),
('QX7184A', '3'),
('QX7654A', '3'),
('QX9876A', '3');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar_status`
--

CREATE TABLE `patrolcar_status` (
  `patrolcar_status_id` varchar(1) NOT NULL,
  `patrolcar_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patrolcar_status`
--

INSERT INTO `patrolcar_status` (`patrolcar_status_id`, `patrolcar_status_desc`) VALUES
('4', 'Arrived'),
('1', 'Dispatched'),
('3', 'Free'),
('2', 'Patrol');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD PRIMARY KEY (`incident_id`,`patrolcar_id`),
  ADD KEY `patrolcar_id` (`patrolcar_id`);

--
-- Indexes for table `incident`
--
ALTER TABLE `incident`
  ADD PRIMARY KEY (`incident_id`),
  ADD KEY `incident_type_id` (`incident_type_id`,`incident_status_id`),
  ADD KEY `incident_status_id` (`incident_status_id`);

--
-- Indexes for table `incident_status`
--
ALTER TABLE `incident_status`
  ADD PRIMARY KEY (`incident_status_id`);

--
-- Indexes for table `incident_type`
--
ALTER TABLE `incident_type`
  ADD PRIMARY KEY (`incident_type_id`);

--
-- Indexes for table `patrolcar`
--
ALTER TABLE `patrolcar`
  ADD PRIMARY KEY (`patrolcar_id`),
  ADD KEY `patrolcar_status_id` (`patrolcar_status_id`);

--
-- Indexes for table `patrolcar_status`
--
ALTER TABLE `patrolcar_status`
  ADD PRIMARY KEY (`patrolcar_status_id`),
  ADD KEY `patrolcar_status_desc` (`patrolcar_status_desc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `incident`
--
ALTER TABLE `incident`
  MODIFY `incident_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD CONSTRAINT `dispatch_ibfk_1` FOREIGN KEY (`patrolcar_id`) REFERENCES `patrolcar` (`patrolcar_id`),
  ADD CONSTRAINT `dispatch_ibfk_2` FOREIGN KEY (`incident_id`) REFERENCES `incident` (`incident_id`);

--
-- Constraints for table `incident`
--
ALTER TABLE `incident`
  ADD CONSTRAINT `incident_ibfk_1` FOREIGN KEY (`incident_type_id`) REFERENCES `incident_type` (`incident_type_id`),
  ADD CONSTRAINT `incident_ibfk_2` FOREIGN KEY (`incident_status_id`) REFERENCES `incident_status` (`incident_status_id`);

--
-- Constraints for table `patrolcar`
--
ALTER TABLE `patrolcar`
  ADD CONSTRAINT `patrolcar_ibfk_1` FOREIGN KEY (`patrolcar_status_id`) REFERENCES `patrolcar_status` (`patrolcar_status_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
