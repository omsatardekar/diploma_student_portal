-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2025 at 08:00 AM
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
-- Database: `sms_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `type`, `email`, `password`, `name`) VALUES
(1, 'teacher', 'teacher.1@example.com', '25f9e794323b453885f5181f1b624d0b', 'Teacher 1'),
(2, 'teacher', 'teacher.2@example.com', 'adsfasdfdsfasdfaqsd', 'Teacher 2'),
(15, 'admin', 'omkar@123gmail.com', '25f9e794323b453885f5181f1b624d0b', 'Omkar Satardekar'),
(16, 'teacher', 'teacher@sms.com', '25f9e794323b453885f5181f1b624d0b', 'Teacher 3'),
(17, 'counseller', 'counseller@example.com', '25f9e794323b453885f5181f1b624d0b', 'Counseller'),
(25, 'student', 'omkarsatardekar27@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'Omkar Satardekar'),
(26, 'parent', 'parent.1@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'Ravindra nath'),
(27, 'student', 'abhishek@student.com', '1d8419608fa09bb75ea05ddf3b91e194', 'Abhishek Kumar'),
(28, 'student', 'abhishek2@student.com', '1d8419608fa09bb75ea05ddf3b91e194', 'Abhishek Kumar'),
(29, 'student', 'abhishek3@student.com', '1d8419608fa09bb75ea05ddf3b91e194', 'Abhishek Kumar'),
(30, 'student', 'abhishek4@student.com', '1d8419608fa09bb75ea05ddf3b91e194', 'Abhishek Kumar'),
(31, 'student', 'abhishek5@student.com', '1d8419608fa09bb75ea05ddf3b91e194', 'Abhishek Kumar'),
(32, 'student', 'abhishek@student.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'Abhishek Kumar'),
(34, 'student', 'Parag@gmail.com', '658d7a8d149768a1943201963144cdc6', 'Parag'),
(35, 'parent', '09762707607', '74b304f580f3c6e8e43d2d8366ecdb5b', 'rakesh'),
(36, 'librarian', 'librarian.3@example.com', '25f9e794323b453885f5181f1b624d0b', 'Librarian 3');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `attendance_month` text NOT NULL,
  `attendance_value` longtext NOT NULL,
  `modified_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `std_id` int(11) NOT NULL,
  `current_session` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `attendance_month`, `attendance_value`, `modified_date`, `std_id`, `current_session`) VALUES
(1, 'september', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";i:1695757080;s:10:\"signout_at\";i:1695757080;s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";i:1695759821;s:10:\"signout_at\";i:1695759848;s:4:\"date\";s:2:\"27\";}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-09-27 01:54:08', 20, '2024-09-26 19:33:23'),
(2, 'january', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-10-15 02:04:39', 24, '2024-10-14 20:34:39'),
(3, 'fabruary', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-10-15 02:04:39', 24, '2024-10-14 20:34:39'),
(4, 'march', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-10-15 02:04:39', 24, '2024-10-14 20:34:39'),
(5, 'april', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-10-15 02:04:39', 24, '2024-10-14 20:34:39'),
(6, 'may', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-10-15 02:04:39', 24, '2024-10-14 20:34:34'),
(7, 'june', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-10-15 02:04:39', 24, '2024-10-14 20:34:39'),
(8, 'july', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-10-15 02:04:39', 24, '2024-10-14 20:34:39'),
(9, 'august', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-10-15 02:04:39', 24, '2024-10-14 20:34:39'),
(10, 'september', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-10-15 02:04:39', 24, '2024-10-14 20:34:39'),
(11, 'october', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";i:1697315791;s:10:\"signout_at\";i:1697315795;s:4:\"date\";s:2:\"15\";}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-10-15 02:06:35', 24, '2024-10-14 20:34:39'),
(12, 'november', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-10-15 02:04:39', 24, '2024-10-14 20:34:39'),
(13, 'december', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-10-15 02:04:39', 24, '2024-10-14 20:34:39'),
(14, 'january', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-10-17 01:03:23', 25, '2024-10-16 19:33:23'),
(15, 'fabruary', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-10-17 01:03:24', 25, '2024-10-16 19:33:23'),
(16, 'march', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-10-17 01:03:23', 25, '2024-10-16 19:33:23'),
(17, 'april', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-10-17 01:03:23', 25, '2024-10-16 19:33:23'),
(18, 'may', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-10-17 01:03:23', 25, '2024-10-16 19:33:23');
INSERT INTO `attendance` (`id`, `attendance_month`, `attendance_value`, `modified_date`, `std_id`, `current_session`) VALUES
(19, 'june', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-10-17 01:03:23', 25, '2024-10-16 19:33:23'),
(20, 'july', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-10-17 01:03:23', 25, '2024-10-16 19:33:23'),
(21, 'august', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-10-17 01:03:23', 25, '2024-10-16 19:33:23'),
(22, 'september', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-10-17 01:03:23', 25, '2024-10-16 19:33:23'),
(23, 'october', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-10-17 01:03:23', 25, '2024-10-16 19:33:23'),
(24, 'november', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-10-17 01:03:23', 25, '2024-10-16 19:33:23'),
(25, 'december', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-10-17 01:03:23', 25, '2024-10-16 19:33:23'),
(26, 'january', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:17:03', 27, '2023-10-16 19:47:03'),
(27, 'fabruary', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:17:03', 27, '2023-10-16 19:47:03'),
(28, 'march', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:17:03', 27, '2023-10-16 19:47:03'),
(29, 'april', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:17:03', 27, '2023-10-16 19:47:03'),
(30, 'may', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:17:03', 27, '2023-10-16 19:47:03'),
(31, 'june', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:17:03', 27, '2023-10-16 19:47:03'),
(32, 'july', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:17:03', 27, '2023-10-16 19:47:03'),
(33, 'august', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:17:03', 27, '2023-10-16 19:47:03'),
(34, 'september', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:17:03', 27, '2023-10-16 19:47:03'),
(35, 'october', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:17:03', 27, '2023-10-16 19:47:03'),
(36, 'november', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:17:03', 27, '2023-10-16 19:47:03');
INSERT INTO `attendance` (`id`, `attendance_month`, `attendance_value`, `modified_date`, `std_id`, `current_session`) VALUES
(37, 'december', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:17:03', 27, '2023-10-16 19:47:03'),
(38, 'january', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:18:42', 28, '2023-10-16 19:48:42'),
(39, 'fabruary', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:18:42', 28, '2023-10-16 19:48:42'),
(40, 'march', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:18:42', 28, '2023-10-16 19:48:42'),
(41, 'april', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:18:42', 28, '2023-10-16 19:48:42'),
(42, 'may', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:18:42', 28, '2023-10-16 19:48:42'),
(43, 'june', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:18:42', 28, '2023-10-16 19:48:42'),
(44, 'july', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:18:42', 28, '2023-10-16 19:48:42'),
(45, 'august', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:18:42', 28, '2023-10-16 19:48:42'),
(46, 'september', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:18:42', 28, '2023-10-16 19:48:42'),
(47, 'october', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:18:42', 28, '2023-10-16 19:48:42'),
(48, 'november', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:18:42', 28, '2023-10-16 19:48:42'),
(49, 'december', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:18:42', 28, '2023-10-16 19:48:42'),
(50, 'january', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:21:15', 29, '2023-10-16 19:51:15'),
(51, 'fabruary', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:21:15', 29, '2023-10-16 19:51:15'),
(52, 'march', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:21:15', 29, '2023-10-16 19:51:15'),
(53, 'april', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:21:15', 29, '2023-10-16 19:51:15'),
(54, 'may', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:21:15', 29, '2023-10-16 19:51:15');
INSERT INTO `attendance` (`id`, `attendance_month`, `attendance_value`, `modified_date`, `std_id`, `current_session`) VALUES
(55, 'june', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:21:15', 29, '2023-10-16 19:51:15'),
(56, 'july', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:21:15', 29, '2023-10-16 19:51:15'),
(57, 'august', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:21:15', 29, '2023-10-16 19:51:15'),
(58, 'september', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:21:15', 29, '2023-10-16 19:51:15'),
(59, 'october', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:21:15', 29, '2023-10-16 19:51:15'),
(60, 'november', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:21:15', 29, '2023-10-16 19:51:15'),
(61, 'december', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:21:15', 29, '2023-10-16 19:51:15'),
(62, 'january', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:22:09', 30, '2023-10-16 19:52:09'),
(63, 'fabruary', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:22:09', 30, '2023-10-16 19:52:09'),
(64, 'march', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:22:09', 30, '2023-10-16 19:52:09'),
(65, 'april', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:22:09', 30, '2023-10-16 19:52:09'),
(66, 'may', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:22:09', 30, '2023-10-16 19:52:09'),
(67, 'june', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:22:09', 30, '2023-10-16 19:52:09'),
(68, 'july', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:22:09', 30, '2023-10-16 19:52:09'),
(69, 'august', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:22:09', 30, '2023-10-16 19:52:09'),
(70, 'september', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:22:09', 30, '2023-10-16 19:52:09'),
(71, 'october', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:22:09', 30, '2023-10-16 19:52:09'),
(72, 'november', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:22:09', 30, '2023-10-16 19:52:09');
INSERT INTO `attendance` (`id`, `attendance_month`, `attendance_value`, `modified_date`, `std_id`, `current_session`) VALUES
(73, 'december', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:22:09', 30, '2023-10-16 19:52:09'),
(74, 'january', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:22:49', 31, '2023-10-16 19:52:49'),
(75, 'fabruary', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:22:49', 31, '2023-10-16 19:52:49'),
(76, 'march', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:22:49', 31, '2023-10-16 19:52:49'),
(77, 'april', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:22:49', 31, '2023-10-16 19:52:49'),
(78, 'may', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:22:49', 31, '2023-10-16 19:52:49'),
(79, 'june', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:22:49', 31, '2023-10-16 19:52:49'),
(80, 'july', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:22:49', 31, '2023-10-16 19:52:49'),
(81, 'august', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:22:49', 31, '2023-10-16 19:52:49'),
(82, 'september', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:22:49', 31, '2023-10-16 19:52:49'),
(83, 'october', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:22:49', 31, '2023-10-16 19:52:49'),
(84, 'november', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:22:49', 31, '2023-10-16 19:52:49'),
(85, 'december', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2023-10-17 01:22:49', 31, '2023-10-16 19:52:49'),
(86, 'january', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-12-28 00:15:39', 34, '2024-12-27 18:45:39'),
(87, 'fabruary', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-12-28 00:15:39', 34, '2024-12-27 18:45:39'),
(88, 'march', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-12-28 00:15:39', 34, '2024-12-27 18:45:39'),
(89, 'april', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-12-28 00:15:39', 34, '2024-12-27 18:45:39'),
(90, 'may', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-12-28 00:15:40', 34, '2024-12-27 18:45:40');
INSERT INTO `attendance` (`id`, `attendance_month`, `attendance_value`, `modified_date`, `std_id`, `current_session`) VALUES
(91, 'june', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-12-28 00:15:40', 34, '2024-12-27 18:45:40'),
(92, 'july', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-12-28 00:15:40', 34, '2024-12-27 18:45:40'),
(93, 'august', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-12-28 00:15:41', 34, '2024-12-27 18:45:41'),
(94, 'september', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-12-28 00:15:41', 34, '2024-12-27 18:45:41'),
(95, 'october', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-12-28 00:15:41', 34, '2024-12-27 18:45:41'),
(96, 'november', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-12-28 00:15:41', 34, '2024-12-27 18:45:41'),
(97, 'december', 'a:31:{i:1;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:1;}i:2;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:2;}i:3;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:3;}i:4;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:4;}i:5;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:5;}i:6;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:6;}i:7;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:7;}i:8;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:8;}i:9;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:9;}i:10;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:10;}i:11;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:11;}i:12;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:12;}i:13;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:13;}i:14;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:14;}i:15;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:15;}i:16;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:16;}i:17;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:17;}i:18;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:18;}i:19;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:19;}i:20;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:20;}i:21;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:21;}i:22;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:22;}i:23;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:23;}i:24;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:24;}i:25;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:25;}i:26;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:26;}i:27;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:27;}i:28;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:28;}i:29;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:29;}i:30;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:30;}i:31;a:3:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";s:4:\"date\";i:31;}}', '2024-12-28 00:15:42', 34, '2024-12-27 18:45:42');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `category`, `isbn`, `image`, `added_date`) VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', '9780743273565', 'WhatsApp Image 2024-09-17 at 8.35.22 PM.jpeg', '2024-12-28');

-- --------------------------------------------------------

--
-- Table structure for table `book_issues`
--

CREATE TABLE `book_issues` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `issue_status` enum('Issued','Available') NOT NULL DEFAULT 'Available',
  `issue_date` datetime DEFAULT current_timestamp(),
  `book_name` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_issues`
--

INSERT INTO `book_issues` (`id`, `student_id`, `issue_status`, `issue_date`, `book_name`, `start_date`, `end_date`) VALUES
(11, 30, '', '2024-12-30 23:44:48', 'The Great Gatsby', '2024-12-30', '2025-01-14'),
(12, 30, '', '2025-01-04 21:39:01', 'The Great Gatsby', '2024-12-30', '2025-01-14');

-- --------------------------------------------------------

--
-- Table structure for table `campus_functions`
--

CREATE TABLE `campus_functions` (
  `id` int(11) NOT NULL,
  `function_name` varchar(255) NOT NULL,
  `function_date` date NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `campus_functions`
--

INSERT INTO `campus_functions` (`id`, `function_name`, `function_date`, `description`) VALUES
(2, 'Training and placement', '2025-01-15', 'Training and placement session by board of director');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `section` varchar(50) NOT NULL,
  `added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `title`, `section`, `added_date`) VALUES
(1, 'Class-1', '1', '2024-10-03'),
(2, 'Class-2', '1', '2024-10-03'),
(3, 'Class-3', '1,2,3', '2024-10-03'),
(4, 'dsafsd', '1,2', '2024-02-06'),
(5, 'sadsad', '2', '2024-02-06'),
(6, '3', '1', '2024-10-19'),
(7, '4', '1,2', '2024-10-19'),
(8, '5', '1,2,3,4', '2024-10-19'),
(9, '6', '1,2', '2024-10-19'),
(10, '7', '1', '2024-10-19'),
(11, '8', '1', '2024-10-19'),
(12, '9', '1,2', '2024-10-19'),
(13, '10', '1,2', '2024-10-19'),
(14, '11', '1,2,3,4', '2024-10-19'),
(15, '12', '1,2,3,4', '2024-10-19');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `category` text NOT NULL,
  `duration` text NOT NULL,
  `date` datetime NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `category`, `duration`, `date`, `image`) VALUES
(1, 'Web Desing & Development', 'Programming', '45 hours', '2024-11-16 21:32:04', 'kisspng-health-care-medicine-hospital-physician-pharmacy-laptop-and-stethoscope-5a84e9a14344a2.4705808715186600012755.png'),
(3, 'HTML', 'web-design-and-development', '2 Hour', '2024-02-02 00:00:00', 'kisspng-web-development-responsive-web-design-search-engin-software-5ac4e9b074aed9.8952166715228543204779.png'),
(4, 'CSS', 'web-design-and-development', '2 Hour', '2024-02-02 00:00:00', 'screen.png'),
(5, 'JS', 'web-design-and-development', '2 Hour', '2024-02-02 00:00:00', 'layout.png'),
(6, 'Bootstrap', 'web-design-and-development', '2 Hour', '2024-02-02 00:00:00', 'kisspng-web-development-responsive-web-design-digital-mark-web-design-5acb1289875160.7034743315232579935543.png'),
(7, 'CSS', '', '2 Hour', '2024-02-02 00:00:00', 'business-1031754_1280.jpg'),
(8, 'Python', 'web-design-and-development', '30 Hours', '2024-12-20 00:00:00', 'images 1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `exam_fees`
--

CREATE TABLE `exam_fees` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `course_id` int(11) NOT NULL,
  `fee_amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_fees`
--

INSERT INTO `exam_fees` (`id`, `student_name`, `course_id`, `fee_amount`, `payment_method`, `transaction_id`, `created_at`) VALUES
(1, 'omkar', 5, 500.00, 'UPI', '123456789', '2024-12-26 15:35:51');

-- --------------------------------------------------------

--
-- Table structure for table `exam_registrations`
--

CREATE TABLE `exam_registrations` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `course_id` int(11) NOT NULL,
  `exam_date` date NOT NULL,
  `exam_time` time NOT NULL,
  `id_proof` varchar(255) NOT NULL,
  `comments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_registrations`
--

INSERT INTO `exam_registrations` (`id`, `student_name`, `course_id`, `exam_date`, `exam_time`, `id_proof`, `comments`) VALUES
(1, 'omkar', 8, '2024-12-29', '10:00:00', 'images 1.jpg', 'no'),
(2, 'omkar', 8, '2024-12-29', '10:00:00', 'images 1.jpg', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `function_registrations`
--

CREATE TABLE `function_registrations` (
  `id` int(11) NOT NULL,
  `function_id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_email` varchar(255) NOT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `function_registrations`
--

INSERT INTO `function_registrations` (`id`, `function_id`, `student_name`, `student_email`, `registration_date`) VALUES
(1, 2, 'omkar', 'omkar@example.com', '2024-12-21 06:30:49'),
(2, 2, 'omkar', 'omkar@example.com', '2024-12-21 06:32:17'),
(3, 2, 'atharv', 'atharv@example.com', '2024-12-21 06:32:35'),
(4, 2, 'atharv', 'atharv@example.com', '2024-12-21 06:32:43'),
(5, 2, 'atharv', 'atharv@example.com', '2024-12-21 06:33:49');

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inquiries`
--

INSERT INTO `inquiries` (`id`, `name`, `email`, `mobile`, `message`, `created_at`) VALUES
(3, 'Parag Satardekar', 'omkar.satardekar23@pccoepune.org', '09762707607', 'Hello World', '2024-12-25 17:41:20');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(11) NOT NULL,
  `employee_name` varchar(255) NOT NULL,
  `leave_type` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` enum('Pending','Approved','Rejected') DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `employee_name`, `leave_type`, `start_date`, `end_date`, `status`, `created_at`, `student_id`) VALUES
(4, 'Bob Brown', 'Paternity Leave', '2024-12-05', '2024-12-07', 'Rejected', '2024-12-20 15:15:42', 0),
(5, 'Charlie White', 'Annual Leave', '2024-12-20', '2024-12-25', '', '2024-12-20 15:15:42', 0),
(31, '32', 'Casual Leave', '2025-02-02', '2025-02-03', 'Approved', '2024-12-21 07:29:28', 32);

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `duration` time NOT NULL,
  `date` date NOT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lessonss`
--

CREATE TABLE `lessonss` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `duration` time NOT NULL,
  `date` date NOT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `metadata`
--

CREATE TABLE `metadata` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `metadata`
--

INSERT INTO `metadata` (`id`, `item_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'section', '3'),
(2, 2, 'section', '4'),
(3, 7, 'day_name', 'monday'),
(4, 7, 'teacher_id', '2'),
(5, 7, 'subject_id', '19'),
(6, 7, 'period_id', '5'),
(23, 16, 'from', '08:30'),
(24, 16, 'to', '09:15'),
(25, 17, 'from', '09:15'),
(26, 17, 'to', '10:00'),
(27, 5, 'from', '07:00'),
(28, 5, 'to', '07:45'),
(29, 6, 'from', '07:45'),
(30, 6, 'to', '08:30'),
(31, 18, 'class_id', '1'),
(32, 18, 'section_id', '4'),
(33, 18, 'teacher_id', '2'),
(34, 18, 'period_id', '5'),
(35, 18, 'day_name', 'tuesday'),
(36, 18, 'subject_id', '19'),
(37, 7, 'class_id', '1'),
(38, 7, 'section_id', '4'),
(39, 20, 'class_id', '1'),
(40, 20, 'section_id', '4'),
(41, 20, 'teacher_id', '1'),
(42, 20, 'period_id', '16'),
(43, 20, 'day_name', 'wednesday'),
(44, 20, 'subject_id', '19'),
(45, 21, 'class_id', '2'),
(46, 21, 'section_id', '3'),
(47, 21, 'teacher_id', '2'),
(48, 21, 'period_id', '17'),
(49, 21, 'day_name', 'sunday'),
(50, 21, 'subject_id', '20'),
(51, 22, 'class_id', '2'),
(52, 22, 'section_id', '4'),
(53, 22, 'teacher_id', '2'),
(54, 22, 'period_id', '6'),
(55, 22, 'day_name', 'tuesday'),
(56, 22, 'subject_id', '19'),
(57, 23, 'class_id', '2'),
(58, 23, 'section_id', '3'),
(59, 23, 'teacher_id', '2'),
(60, 23, 'period_id', '17'),
(61, 23, 'day_name', 'monday'),
(62, 23, 'subject_id', '19'),
(63, 26, 'amount', '500'),
(64, 26, 'status', 'success'),
(65, 26, 'student_id', '20'),
(66, 26, 'month', 'September'),
(67, 27, 'amount', '500'),
(68, 27, 'status', 'success'),
(69, 27, 'student_id', '20'),
(70, 27, 'month', 'October'),
(71, 28, 'class', '1'),
(72, 28, 'subject', '19'),
(73, 28, 'file_attachment', 'login.php'),
(74, 29, 'class', '2'),
(75, 29, 'subject', '19'),
(76, 29, 'file_attachment', 'index.php'),
(77, 31, 'section', '30'),
(78, 32, 'amount', '500'),
(79, 32, 'status', 'success'),
(80, 32, 'student_id', '32'),
(81, 32, 'month', 'July'),
(82, 33, 'amount', '500'),
(83, 33, 'status', 'success'),
(84, 33, 'student_id', '32'),
(85, 33, 'month', 'July'),
(86, 34, 'amount', '500'),
(87, 34, 'status', 'paid'),
(88, 34, 'student_id', '32'),
(89, 34, 'month', 'JAN'),
(90, 35, 'amount', '500'),
(91, 35, 'status', 'success'),
(92, 35, 'student_id', '32'),
(93, 35, 'month', ''),
(94, 36, 'amount', '500'),
(95, 36, 'status', 'success'),
(96, 36, 'student_id', '32'),
(97, 36, 'month', ''),
(98, 37, 'amount', '500'),
(99, 37, 'status', 'pending'),
(100, 37, 'student_id', '32'),
(101, 37, 'month', 'june'),
(102, 38, 'amount', '500'),
(103, 38, 'status', 'pending'),
(104, 38, 'student_id', '32'),
(105, 38, 'month', 'june'),
(106, 39, 'amount', '500'),
(107, 39, 'status', 'pending'),
(108, 39, 'student_id', '32'),
(109, 39, 'month', 'june'),
(110, 40, 'amount', '500'),
(111, 40, 'status', 'pending'),
(112, 40, 'student_id', '32'),
(113, 40, 'month', 'june'),
(114, 41, 'amount', '500'),
(115, 41, 'status', 'pending'),
(116, 41, 'student_id', '32'),
(117, 41, 'month', 'june'),
(118, 42, 'amount', '500'),
(119, 42, 'status', 'pending'),
(120, 42, 'student_id', '32'),
(121, 42, 'month', 'june'),
(122, 43, 'amount', '500'),
(123, 43, 'status', 'pending'),
(124, 43, 'student_id', '32'),
(125, 43, 'month', 'june'),
(126, 44, 'amount', '500'),
(127, 44, 'status', 'success'),
(128, 44, 'student_id', '32'),
(129, 44, 'month', 'March'),
(130, 45, 'amount', '500'),
(131, 45, 'status', 'success'),
(132, 45, 'student_id', '32'),
(133, 45, 'month', 'July'),
(134, 46, 'amount', '500'),
(135, 46, 'status', 'success'),
(136, 46, 'student_id', '32'),
(137, 46, 'month', 'July'),
(138, 47, 'amount', '500'),
(139, 47, 'status', 'success'),
(140, 47, 'student_id', '32'),
(141, 47, 'month', 'March'),
(142, 48, 'amount', '500'),
(143, 48, 'status', 'success'),
(144, 48, 'student_id', '32'),
(145, 48, 'month', 'March'),
(146, 49, 'amount', '500'),
(147, 49, 'status', 'success'),
(148, 49, 'student_id', '32'),
(149, 49, 'month', 'March'),
(150, 50, 'amount', '500'),
(151, 50, 'status', 'success'),
(152, 50, 'student_id', '32'),
(153, 50, 'month', 'March'),
(154, 51, 'amount', '500'),
(155, 51, 'status', 'success'),
(156, 51, 'student_id', '32'),
(157, 51, 'month', 'August'),
(158, 52, 'amount', '500'),
(159, 52, 'status', 'success'),
(160, 52, 'student_id', '32'),
(161, 52, 'month', 'August'),
(162, 53, 'amount', '500'),
(163, 53, 'status', 'success'),
(164, 53, 'student_id', '32'),
(165, 53, 'month', 'August'),
(166, 54, 'amount', '500'),
(167, 54, 'status', 'success'),
(168, 54, 'student_id', '32'),
(169, 54, 'month', 'June'),
(170, 55, 'amount', '500'),
(171, 55, 'status', 'success'),
(172, 55, 'student_id', '32'),
(173, 55, 'month', 'November'),
(174, 56, 'amount', '500'),
(175, 56, 'status', 'success'),
(176, 56, 'student_id', '32'),
(177, 56, 'month', 'January'),
(178, 57, 'amount', '500'),
(179, 57, 'status', 'success'),
(180, 57, 'student_id', '32'),
(181, 57, 'month', 'March'),
(182, 58, 'amount', '500'),
(183, 58, 'status', 'success'),
(184, 58, 'student_id', '32'),
(185, 58, 'month', 'March'),
(186, 59, 'amount', '500'),
(187, 59, 'status', 'success'),
(188, 59, 'student_id', '32'),
(189, 59, 'month', 'October'),
(190, 60, 'amount', '500'),
(191, 60, 'status', 'success'),
(192, 60, 'student_id', '32'),
(193, 60, 'month', 'October'),
(194, 61, 'amount', '500'),
(195, 61, 'status', 'success'),
(196, 61, 'student_id', '32'),
(197, 61, 'month', 'September'),
(198, 62, 'amount', '500'),
(199, 62, 'status', 'success'),
(200, 62, 'student_id', '32'),
(201, 62, 'month', 'September'),
(202, 63, 'amount', '500'),
(203, 63, 'status', 'success'),
(204, 63, 'student_id', '32'),
(205, 63, 'month', 'September'),
(206, 64, 'amount', '500'),
(207, 64, 'status', 'success'),
(208, 64, 'student_id', '32'),
(209, 64, 'month', 'January'),
(210, 65, 'amount', '500'),
(211, 65, 'status', 'success'),
(212, 65, 'student_id', '32'),
(213, 65, 'month', 'January'),
(214, 66, 'amount', '500'),
(215, 66, 'status', 'success'),
(216, 66, 'student_id', '32'),
(217, 66, 'month', 'November'),
(218, 67, 'amount', '500'),
(219, 67, 'status', 'success'),
(220, 67, 'student_id', '32'),
(221, 67, 'month', 'November'),
(222, 68, 'amount', ''),
(223, 68, 'status', 'success'),
(224, 68, 'student_id', '32'),
(225, 68, 'month', 'january'),
(226, 69, 'amount', '500'),
(227, 69, 'status', 'success'),
(228, 69, 'student_id', '32'),
(229, 69, 'month', 'September'),
(230, 70, 'amount', '500'),
(231, 70, 'status', 'success'),
(232, 70, 'student_id', '32'),
(233, 70, 'month', 'September'),
(234, 71, 'amount', '500'),
(235, 71, 'status', 'success'),
(236, 71, 'student_id', '32'),
(237, 71, 'month', 'September'),
(238, 72, 'amount', '500'),
(239, 72, 'status', 'success'),
(240, 72, 'student_id', '32'),
(241, 72, 'month', 'September'),
(242, 73, 'amount', '500'),
(243, 73, 'status', 'success'),
(244, 73, 'student_id', '32'),
(245, 73, 'month', 'September'),
(246, 74, 'amount', '500'),
(247, 74, 'status', 'success'),
(248, 74, 'student_id', '32'),
(249, 74, 'month', 'September'),
(250, 75, 'amount', '500'),
(251, 75, 'status', 'success'),
(252, 75, 'student_id', '32'),
(253, 75, 'month', 'September'),
(254, 76, 'amount', '500'),
(255, 76, 'status', 'success'),
(256, 76, 'student_id', '32'),
(257, 76, 'month', 'September');

-- --------------------------------------------------------

--
-- Table structure for table `paper_schedule`
--

CREATE TABLE `paper_schedule` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `exam_date` date NOT NULL,
  `exam_time` time NOT NULL,
  `room_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paper_schedule`
--

INSERT INTO `paper_schedule` (`id`, `subject`, `exam_date`, `exam_time`, `room_number`) VALUES
(1, 'Mathematics', '2024-12-25', '10:00:00', 'Room 101'),
(2, 'Physics', '2024-12-26', '14:00:00', 'Room 102');

-- --------------------------------------------------------

--
-- Table structure for table `parent_meetings`
--

CREATE TABLE `parent_meetings` (
  `id` int(11) NOT NULL,
  `meeting_name` varchar(255) NOT NULL,
  `meeting_date` date NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parent_meetings`
--

INSERT INTO `parent_meetings` (`id`, `meeting_name`, `meeting_date`, `description`, `created_at`) VALUES
(1, 'PTM', '2025-01-21', 'Parents Teacher Meeting scheduled', '2024-12-20 15:57:39');

-- --------------------------------------------------------

--
-- Table structure for table `paymentss`
--

CREATE TABLE `paymentss` (
  `id` int(11) NOT NULL,
  `std_id` int(11) NOT NULL,
  `month` varchar(20) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_status` enum('pending','paid') DEFAULT 'paid',
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `author` int(11) NOT NULL DEFAULT 1,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `type` varchar(100) NOT NULL,
  `publish_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `status` varchar(50) NOT NULL,
  `parent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author`, `title`, `description`, `type`, `publish_date`, `modified_date`, `status`, `parent`) VALUES
(1, 1, 'Class -1', 'Class -1 Description', 'class', '2025-02-02 06:55:57', '2024-06-20 08:02:16', 'publish', 0),
(2, 1, 'Class -2', 'Class -2 Description', 'class', '2025-02-02 06:56:08', '2024-06-20 08:02:16', 'publish', 0),
(3, 1, 'Section A', 'Section A Description', 'section', '2025-02-02 06:56:18', '2024-06-20 08:03:48', 'publish', 0),
(4, 1, 'Section B', 'Section B Description', 'section', '2025-02-02 06:56:29', '2024-06-20 08:03:48', 'publish', 0),
(5, 1, 'First Period', 'First Period Description', 'period', '2025-02-02 06:56:39', '2024-07-23 14:23:34', 'publish', 0),
(6, 1, 'Second Period', 'Second Period Description', 'period', '2025-02-02 06:56:47', '2024-07-23 14:23:34', 'publish', 0),
(7, 1, 'Monday - First Period', 'Monday - First Period Descrioption', 'timetable', '2025-02-02 06:56:57', '2024-07-23 14:36:38', 'publish', 0),
(16, 1, 'Third Period', '', 'period', '2025-02-02 06:57:07', '2024-07-24 14:22:35', 'publish', 0),
(17, 1, 'Fourth', '', 'period', '2025-02-02 06:57:16', '2024-07-24 14:23:56', 'publish', 0),
(18, 1, '', '', 'timetable', '2025-02-02 06:57:26', '2024-07-25 14:17:42', 'publish', 0),
(19, 1, 'Mathematics', '', 'subject', '2025-02-02 06:57:35', '2024-07-25 14:29:09', 'publish', 0),
(20, 1, '', '', 'timetable', '2025-02-02 06:57:45', '2024-07-25 14:31:44', 'publish', 0),
(21, 1, '', '', 'timetable', '2021-08-01 00:21:24', '2021-08-01 15:51:24', 'publish', 0),
(22, 1, '', '', 'timetable', '2025-02-02 06:57:54', '2024-08-01 15:58:15', 'publish', 0),
(23, 1, '', '', 'timetable', '2025-02-02 06:58:05', '2024-08-01 16:02:32', 'publish', 0),
(26, 20, 'September - Fee', '', 'payment', '2024-09-21 20:11:58', '2025-02-02 06:58:11', 'success', 0),
(27, 20, 'October - Fee', '', 'payment', '2024-09-23 18:53:49', '2025-02-02 06:58:18', 'success', 0),
(28, 1, 'PDF for algebra', 'PDF for algebra', 'study-material', '2024-09-26 20:55:40', '2025-02-02 06:58:22', 'publish', 0),
(29, 1, 'PDF for english', 'PDF for english', 'study-material', '2024-09-26 20:57:21', '2025-02-02 06:58:27', 'publish', 0),
(30, 1, 'Section C', 'description', 'section', '2024-12-20 16:06:34', '0000-00-00 00:00:00', 'publish', 0),
(31, 1, 'Class C', 'description', 'class', '2024-12-20 16:06:51', '0000-00-00 00:00:00', 'publish', 0),
(33, 32, 'July - Fee', '', 'payment', '2024-12-20 19:53:03', '0000-00-00 00:00:00', 'success', 0),
(40, 32, 'june - Fee', '', 'payment', '2024-12-20 20:13:40', '0000-00-00 00:00:00', 'pending', 0),
(41, 32, 'june - Fee', '', 'payment', '2024-12-20 20:13:59', '0000-00-00 00:00:00', 'pending', 0),
(42, 32, 'june - Fee', '', 'payment', '2024-12-20 20:14:09', '0000-00-00 00:00:00', 'pending', 0),
(43, 32, 'june - Fee', '', 'payment', '2024-12-20 20:14:25', '0000-00-00 00:00:00', 'pending', 0),
(44, 32, 'March - Fee', '', 'payment', '2024-12-20 20:14:32', '0000-00-00 00:00:00', 'success', 0),
(45, 32, 'July - Fee', '', 'payment', '2024-12-20 20:15:20', '0000-00-00 00:00:00', 'success', 0),
(46, 32, 'July - Fee', '', 'payment', '2024-12-20 20:16:50', '0000-00-00 00:00:00', 'success', 0),
(47, 32, 'March - Fee', '', 'payment', '2024-12-20 20:16:56', '0000-00-00 00:00:00', 'success', 0),
(48, 32, 'March - Fee', '', 'payment', '2024-12-20 20:19:40', '0000-00-00 00:00:00', 'success', 0),
(49, 32, 'March - Fee', '', 'payment', '2024-12-20 20:19:48', '0000-00-00 00:00:00', 'success', 0),
(50, 32, 'March - Fee', '', 'payment', '2024-12-20 20:20:11', '0000-00-00 00:00:00', 'success', 0),
(51, 32, 'August - Fee', '', 'payment', '2024-12-20 20:20:34', '0000-00-00 00:00:00', 'success', 0),
(52, 32, 'August - Fee', '', 'payment', '2024-12-21 04:56:16', '0000-00-00 00:00:00', 'success', 0),
(53, 32, 'August - Fee', '', 'payment', '2024-12-21 04:58:42', '0000-00-00 00:00:00', 'success', 0),
(54, 32, 'June - Fee', '', 'payment', '2024-12-21 04:58:50', '0000-00-00 00:00:00', 'success', 0),
(55, 32, 'November - Fee', '', 'payment', '2024-12-21 04:59:39', '0000-00-00 00:00:00', 'success', 0),
(56, 32, 'January - Fee', '', 'payment', '2024-12-21 05:12:23', '0000-00-00 00:00:00', 'success', 0),
(57, 32, 'March - Fee', '', 'payment', '2024-12-21 05:13:12', '0000-00-00 00:00:00', 'success', 0),
(58, 32, 'March - Fee', '', 'payment', '2024-12-21 05:30:36', '0000-00-00 00:00:00', 'success', 0),
(59, 32, 'October - Fee', '', 'payment', '2024-12-21 05:33:25', '0000-00-00 00:00:00', 'success', 0),
(60, 32, 'October - Fee', '', 'payment', '2024-12-21 05:42:29', '0000-00-00 00:00:00', 'success', 0),
(61, 32, 'September - Fee', '', 'payment', '2024-12-21 05:42:39', '0000-00-00 00:00:00', 'success', 0),
(62, 32, 'September - Fee', '', 'payment', '2024-12-21 05:43:47', '0000-00-00 00:00:00', 'success', 0),
(63, 32, 'September - Fee', '', 'payment', '2024-12-21 05:53:25', '0000-00-00 00:00:00', 'success', 0),
(64, 32, 'January - Fee', '', 'payment', '2024-12-26 15:35:14', '0000-00-00 00:00:00', 'success', 0),
(65, 32, 'January - Fee', '', 'payment', '2024-12-26 17:12:15', '0000-00-00 00:00:00', 'success', 0),
(66, 32, 'November - Fee', '', 'payment', '2024-12-26 17:12:27', '0000-00-00 00:00:00', 'success', 0),
(67, 32, 'November - Fee', '', 'payment', '2024-12-26 17:14:43', '0000-00-00 00:00:00', 'success', 0),
(68, 32, 'january - Fee', '', 'payment', '2024-12-26 17:14:58', '0000-00-00 00:00:00', 'success', 0),
(69, 32, 'September - Fee', '', 'payment', '2024-12-27 14:07:00', '0000-00-00 00:00:00', 'success', 0),
(70, 32, 'September - Fee', '', 'payment', '2024-12-27 14:15:16', '0000-00-00 00:00:00', 'success', 0),
(71, 32, 'September - Fee', '', 'payment', '2024-12-27 14:16:48', '0000-00-00 00:00:00', 'success', 0),
(72, 32, 'September - Fee', '', 'payment', '2024-12-27 14:17:20', '0000-00-00 00:00:00', 'success', 0),
(73, 32, 'September - Fee', '', 'payment', '2024-12-27 14:25:23', '0000-00-00 00:00:00', 'success', 0),
(74, 32, 'September - Fee', '', 'payment', '2024-12-27 14:26:18', '0000-00-00 00:00:00', 'success', 0),
(75, 32, 'September - Fee', '', 'payment', '2024-12-27 14:26:47', '0000-00-00 00:00:00', 'success', 0),
(76, 32, 'September - Fee', '', 'payment', '2024-12-27 14:27:56', '0000-00-00 00:00:00', 'success', 0);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `academic_year` varchar(20) NOT NULL,
  `semester` int(1) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `marks_obtained` int(11) NOT NULL,
  `max_marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `student_id`, `academic_year`, `semester`, `subject`, `marks_obtained`, `max_marks`) VALUES
(1, 101, '2023-24', 1, 'Mathematics', 75, 100),
(2, 101, '2023-24', 1, 'Physics', 68, 100),
(3, 101, '2023-24', 1, 'Chemistry', 85, 100),
(4, 101, '2023-24', 1, 'Biology', 40, 100),
(5, 101, '2023-24', 2, 'Mathematics', 88, 100),
(6, 101, '2023-24', 2, 'Physics', 78, 100),
(7, 101, '2023-24', 2, 'Chemistry', 92, 100),
(8, 101, '2023-24', 2, 'Computer Science', 85, 100),
(9, 102, '2022-23', 1, 'Mathematics', 56, 100),
(10, 102, '2022-23', 1, 'Physics', 65, 100),
(11, 102, '2022-23', 1, 'Chemistry', 80, 100),
(12, 102, '2022-23', 1, 'Biology', 35, 100),
(13, 102, '2022-23', 2, 'Mathematics', 72, 100),
(14, 102, '2022-23', 2, 'Physics', 78, 100),
(15, 102, '2022-23', 2, 'Chemistry', 88, 100),
(16, 102, '2022-23', 2, 'Computer Science', 90, 100),
(17, 103, '2021-22', 1, 'Mathematics', 60, 100),
(18, 103, '2021-22', 1, 'Physics', 55, 100),
(19, 103, '2021-22', 1, 'Chemistry', 70, 100),
(20, 103, '2021-22', 1, 'Biology', 50, 100),
(21, 103, '2021-22', 2, 'Mathematics', 80, 100),
(22, 103, '2021-22', 2, 'Physics', 72, 100),
(23, 103, '2021-22', 2, 'Chemistry', 85, 100),
(24, 103, '2021-22', 2, 'Computer Science', 78, 100);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `title`) VALUES
(1, 'Section A'),
(2, 'Seciton B'),
(3, 'Section C'),
(4, 'Section D');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `subject_code` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_name`, `subject_code`, `created_at`, `updated_at`) VALUES
(1, 'Theory of Computation', 'BC134NE', '2024-12-20 16:14:09', '2024-12-20 16:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `specialty` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `date_created` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `designation`, `specialty`, `profile_image`, `date_created`) VALUES
(2, 'Mrs. Swati Gaikwad', 'Senior Executive', 'Machine Learning', 'images.jpg', '2024-12-23');

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_classes`
--

CREATE TABLE `upcoming_classes` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `class_time` varchar(100) NOT NULL,
  `class_room` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `upcoming_classes`
--

INSERT INTO `upcoming_classes` (`id`, `teacher_id`, `class_name`, `class_time`, `class_room`) VALUES
(1, 0, 'Class B', '7.00 AM', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `usermeta`
--

CREATE TABLE `usermeta` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usermeta`
--

INSERT INTO `usermeta` (`id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 25, 'dob', '1997-09-27'),
(2, 25, 'mobile', '1234567891'),
(3, 25, 'payment_method', 'online'),
(4, 25, 'class', '2'),
(5, 25, 'address', 'Gomitnagar, Lucknow'),
(6, 25, 'country', 'India'),
(7, 25, 'state', 'UP'),
(8, 25, 'zip', '226010'),
(9, 25, 'father_name', 'Ravindra nath'),
(10, 25, 'father_mobile', '1234567890'),
(11, 25, 'mother_name', 'Savitri devi'),
(12, 25, 'mother_mobile', '0987654321'),
(13, 25, 'parents_address', 'Robertsganj, Sonebhadra'),
(14, 25, 'parents_country', 'India'),
(15, 25, 'parents_state', 'UP'),
(16, 25, 'parents_zip', '231216'),
(17, 25, 'school_name', 'MCLKP'),
(18, 25, 'previous_class', '1'),
(19, 25, 'status', 'Passed'),
(20, 25, 'total_marks', '500'),
(21, 25, 'obtain_mark', '445'),
(22, 25, 'previous_percentage', '89'),
(23, 25, 'section', '3'),
(24, 25, 'subject_streem', 'PCM'),
(25, 25, 'doa', '2023-10-17'),
(26, 26, 'children', 'a:2:{i:0;i:25;i:1;i:31;}'),
(27, 27, 'dob', '1112-09-12'),
(28, 27, 'mobile', '1234456727'),
(29, 27, 'payment_method', 'online'),
(30, 27, 'class', '1'),
(31, 27, 'address', 'asdf'),
(32, 27, 'country', 'asdf'),
(33, 27, 'state', 'asdf'),
(34, 27, 'zip', 'asdf'),
(35, 27, 'father_name', 'ABCD'),
(36, 27, 'father_mobile', '1234567890'),
(37, 27, 'mother_name', 'asdfasdf'),
(38, 27, 'mother_mobile', '1234567891'),
(39, 27, 'parents_address', 'asdfasdf'),
(40, 27, 'parents_country', 'asdfasdf'),
(41, 27, 'parents_state', 'asdfasdf'),
(42, 27, 'parents_zip', 'asdfasdf'),
(43, 27, 'school_name', 'asdfadsf'),
(44, 27, 'previous_class', '1'),
(45, 27, 'status', 'Failed'),
(46, 27, 'total_marks', '500'),
(47, 27, 'obtain_mark', '100'),
(48, 27, 'previous_percentage', '12'),
(49, 27, 'section', ''),
(50, 27, 'subject_streem', 'sdfs'),
(51, 27, 'doa', '2023-10-17'),
(52, 28, 'dob', '1112-09-12'),
(53, 28, 'mobile', '1234456727'),
(54, 28, 'payment_method', 'online'),
(55, 28, 'class', '1'),
(56, 28, 'address', 'asdf'),
(57, 28, 'country', 'asdf'),
(58, 28, 'state', 'asdf'),
(59, 28, 'zip', 'asdf'),
(60, 28, 'father_name', 'ABCD'),
(61, 28, 'father_mobile', '1234567890'),
(62, 28, 'mother_name', 'asdfasdf'),
(63, 28, 'mother_mobile', '1234567891'),
(64, 28, 'parents_address', 'asdfasdf'),
(65, 28, 'parents_country', 'asdfasdf'),
(66, 28, 'parents_state', 'asdfasdf'),
(67, 28, 'parents_zip', 'asdfasdf'),
(68, 28, 'school_name', 'asdfadsf'),
(69, 28, 'previous_class', '1'),
(70, 28, 'status', 'Failed'),
(71, 28, 'total_marks', '500'),
(72, 28, 'obtain_mark', '100'),
(73, 28, 'previous_percentage', '12'),
(74, 28, 'section', ''),
(75, 28, 'subject_streem', 'sdfs'),
(76, 28, 'doa', '2023-10-17'),
(77, 29, 'dob', '1112-09-12'),
(78, 29, 'mobile', '1234456727'),
(79, 29, 'payment_method', 'online'),
(80, 29, 'class', '1'),
(81, 29, 'address', 'asdf'),
(82, 29, 'country', 'asdf'),
(83, 29, 'state', 'asdf'),
(84, 29, 'zip', 'asdf'),
(85, 29, 'father_name', 'ABCD'),
(86, 29, 'father_mobile', '1234567890'),
(87, 29, 'mother_name', 'asdfasdf'),
(88, 29, 'mother_mobile', '1234567891'),
(89, 29, 'parents_address', 'asdfasdf'),
(90, 29, 'parents_country', 'asdfasdf'),
(91, 29, 'parents_state', 'asdfasdf'),
(92, 29, 'parents_zip', 'asdfasdf'),
(93, 29, 'school_name', 'asdfadsf'),
(94, 29, 'previous_class', '1'),
(95, 29, 'status', 'Failed'),
(96, 29, 'total_marks', '500'),
(97, 29, 'obtain_mark', '100'),
(98, 29, 'previous_percentage', '12'),
(99, 29, 'section', ''),
(100, 29, 'subject_streem', 'sdfs'),
(101, 29, 'doa', '2023-10-17'),
(102, 30, 'dob', '1112-09-12'),
(103, 30, 'mobile', '1234456727'),
(104, 30, 'payment_method', 'online'),
(105, 30, 'class', '1'),
(106, 30, 'address', 'asdf'),
(107, 30, 'country', 'asdf'),
(108, 30, 'state', 'asdf'),
(109, 30, 'zip', 'asdf'),
(110, 30, 'father_name', 'ABCD'),
(111, 30, 'father_mobile', '1234567890'),
(112, 30, 'mother_name', 'asdfasdf'),
(113, 30, 'mother_mobile', '1234567891'),
(114, 30, 'parents_address', 'asdfasdf'),
(115, 30, 'parents_country', 'asdfasdf'),
(116, 30, 'parents_state', 'asdfasdf'),
(117, 30, 'parents_zip', 'asdfasdf'),
(118, 30, 'school_name', 'asdfadsf'),
(119, 30, 'previous_class', '1'),
(120, 30, 'status', 'Failed'),
(121, 30, 'total_marks', '500'),
(122, 30, 'obtain_mark', '100'),
(123, 30, 'previous_percentage', '12'),
(124, 30, 'section', ''),
(125, 30, 'subject_streem', 'sdfs'),
(126, 30, 'doa', '2023-10-17'),
(127, 31, 'dob', '1112-09-12'),
(128, 31, 'mobile', '1234456727'),
(129, 31, 'payment_method', 'online'),
(130, 31, 'class', '1'),
(131, 31, 'address', 'asdf'),
(132, 31, 'country', 'asdf'),
(133, 31, 'state', 'asdf'),
(134, 31, 'zip', 'asdf'),
(135, 31, 'father_name', 'ABCD'),
(136, 31, 'father_mobile', '1234567890'),
(137, 31, 'mother_name', 'asdfasdf'),
(138, 31, 'mother_mobile', '1234567891'),
(139, 31, 'parents_address', 'asdfasdf'),
(140, 31, 'parents_country', 'asdfasdf'),
(141, 31, 'parents_state', 'asdfasdf'),
(142, 31, 'parents_zip', 'asdfasdf'),
(143, 31, 'school_name', 'asdfadsf'),
(144, 31, 'previous_class', '1'),
(145, 31, 'status', 'Failed'),
(146, 31, 'total_marks', '500'),
(147, 31, 'obtain_mark', '100'),
(148, 31, 'previous_percentage', '12'),
(149, 31, 'section', ''),
(150, 31, 'subject_streem', 'sdfs'),
(151, 31, 'doa', '2023-10-17'),
(152, 34, 'dob', '2004-05-03'),
(153, 34, 'mobile', '09762707607'),
(154, 34, 'payment_method', 'online'),
(155, 34, 'class', '2'),
(156, 34, 'address', 'RH134 Flat No 14 Chichwad,Pune'),
(157, 34, 'country', 'India'),
(158, 34, 'state', 'Maharashtra'),
(159, 34, 'zip', '411019'),
(160, 34, 'father_name', 'rakesh'),
(161, 34, 'father_mobile', '09762707607'),
(162, 34, 'mother_name', 'rena'),
(163, 34, 'mother_mobile', '09762707607'),
(164, 34, 'parents_address', 'RH134 Flat No 14 Chichwad,Pune'),
(165, 34, 'parents_country', 'India'),
(166, 34, 'parents_state', 'Maharashtra'),
(167, 34, 'parents_zip', '411019'),
(168, 34, 'school_name', 'VIDYA NIKETAN'),
(169, 34, 'previous_class', ''),
(170, 34, 'status', ''),
(171, 34, 'total_marks', ''),
(172, 34, 'obtain_mark', ''),
(173, 34, 'previous_percentage', ''),
(174, 34, 'section', '4'),
(175, 34, 'subject_streem', 'Computer'),
(176, 34, 'doa', '2024-12-19'),
(177, 35, 'children', 'a:1:{i:0;i:34;}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `campus_functions`
--
ALTER TABLE `campus_functions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_fees`
--
ALTER TABLE `exam_fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `exam_registrations`
--
ALTER TABLE `exam_registrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `function_registrations`
--
ALTER TABLE `function_registrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `function_id` (`function_id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `lessonss`
--
ALTER TABLE `lessonss`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `metadata`
--
ALTER TABLE `metadata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paper_schedule`
--
ALTER TABLE `paper_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent_meetings`
--
ALTER TABLE `parent_meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentss`
--
ALTER TABLE `paymentss`
  ADD PRIMARY KEY (`id`),
  ADD KEY `std_id` (`std_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subject_code` (`subject_code`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upcoming_classes`
--
ALTER TABLE `upcoming_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usermeta`
--
ALTER TABLE `usermeta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `campus_functions`
--
ALTER TABLE `campus_functions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `exam_fees`
--
ALTER TABLE `exam_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam_registrations`
--
ALTER TABLE `exam_registrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `function_registrations`
--
ALTER TABLE `function_registrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lessonss`
--
ALTER TABLE `lessonss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `metadata`
--
ALTER TABLE `metadata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `paper_schedule`
--
ALTER TABLE `paper_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `parent_meetings`
--
ALTER TABLE `parent_meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paymentss`
--
ALTER TABLE `paymentss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `upcoming_classes`
--
ALTER TABLE `upcoming_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usermeta`
--
ALTER TABLE `usermeta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD CONSTRAINT `book_issues_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `accounts` (`id`);

--
-- Constraints for table `exam_fees`
--
ALTER TABLE `exam_fees`
  ADD CONSTRAINT `exam_fees_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `exam_registrations`
--
ALTER TABLE `exam_registrations`
  ADD CONSTRAINT `exam_registrations_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `function_registrations`
--
ALTER TABLE `function_registrations`
  ADD CONSTRAINT `function_registrations_ibfk_1` FOREIGN KEY (`function_id`) REFERENCES `campus_functions` (`id`);

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lessonss`
--
ALTER TABLE `lessonss`
  ADD CONSTRAINT `lessonss_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `paymentss`
--
ALTER TABLE `paymentss`
  ADD CONSTRAINT `paymentss_ibfk_1` FOREIGN KEY (`std_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
