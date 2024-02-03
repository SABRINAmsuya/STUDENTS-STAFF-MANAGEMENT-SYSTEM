-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2024 at 12:20 PM
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
-- Database: `student_staff`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `announcements_id` int(11) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`announcements_id`, `tittle`, `content`, `created_at`, `author_id`) VALUES
(1, 'deadline', 'All students are supposed to submit their cybersecuirty assignments tommorow', '2023-12-01 06:26:39', 2),
(2, 'ATTENTION', 'All students should adhere to the new timetable', '2023-12-01 06:27:22', 3),
(3, 'DSP', 'I will be at my office from 1200HRS tomorrow for assess your assignments ', '2023-12-07 00:00:00', 4);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `rooms_id` int(11) NOT NULL,
  `room_name` varchar(40) NOT NULL,
  `staffroom_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`rooms_id`, `room_name`, `staffroom_id`) VALUES
(1, 'Computer Department ROOM 1', 1),
(2, 'HOD office Computer Department', 3),
(3, 'TT-8 Office', 2);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `staff_status` varchar(40) DEFAULT NULL,
  `last_name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `first_name`, `email`, `phone_number`, `password`, `staff_status`, `last_name`) VALUES
(1, 'Finian', 'mwalong0@yahoo.com', '745362378', '6f52bf637ea4c6c893aec790bed749b3', 'Lecturer', 'Mwalongo'),
(2, 'Alfred', 'alfred9@gmail.com', '745120098', 'a69b3ff0b8f041625a3192a4eb2aefff', 'Lecturer', 'Kajirunga'),
(3, 'Joseph', 'wambura9@gmail.com', '712456701', 'c30ed92505230441172e14eaca8a0c82', 'Head of Department', 'Wambura'),
(4, 'Haji', 'haji@yahoo.com', '715432568', '4995e1897b901a514be25c17cdf36f96', 'Lecturer', 'Fimbombaya');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `students_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `reg_no` bigint(20) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`students_id`, `email`, `first_name`, `last_name`, `reg_no`, `phone_number`, `password`) VALUES
(1, 'sabrina@gmail.com', 'sabrina', 'msuya', 2102302118791, '699475356', '827ccb0eea8a706c4c34a16891f84e7b'),
(2, 'benjamin@gmail.com', 'benjamin', 'chengula', 2102302226222, '789564532', 'a13ea2a59ea1b1a5b89fcdcb201cdd71'),
(3, 'basso@gmail.com', 'elibariki', 'basso', 210230234562, '745678904', '8d2fe9d04c3475f0bd224c5106b007b8'),
(4, 'george@gmail.com', 'george', 'maduka', 21023022345962, '754123456', '1bc5ababcbd012ef3f04b1ca02cf99e6'),
(5, 'nathan@gmail.com', 'Nathan', 'Mwaipopo', 21023022225678, '763577901', '46d045ff5190f6ea93739da6c0aa19bc'),
(6, 'nikombo05@gmail.com', 'Noberth', 'Nikombolwe', 21023022987678, '743567890', '73b6d48d8414e9bdf983bfccdbf2e70b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`announcements_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`rooms_id`),
  ADD UNIQUE KEY `room_name` (`room_name`),
  ADD KEY `staffroom_id` (`staffroom_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`students_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `announcements_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `rooms_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `students_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `announcements_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `staff` (`staff_id`);

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`staffroom_id`) REFERENCES `staff` (`staff_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
