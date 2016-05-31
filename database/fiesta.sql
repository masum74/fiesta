-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2016 at 06:35 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fiesta`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `Event_id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `year` date NOT NULL,
  `Venue` varchar(100) NOT NULL,
  `Availability` varchar(10) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Hit_count` int(11) NOT NULL,
  `Facebook_link` varchar(100) NOT NULL,
  `Short_note` varchar(100) NOT NULL,
  `Entry_fee` int(11) NOT NULL,
  `Featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`Event_id`, `Name`, `year`, `Venue`, `Availability`, `Status`, `Hit_count`, `Facebook_link`, `Short_note`, `Entry_fee`, `Featured`) VALUES
(1, 'CSE Fest 2016', '2016-04-27', 'CSE, BUET', '1', 'on', 0, 'www.facebook.com', 'this is an annual event for cse buet', 100, 1),
(2, 'CSE Fest 2015', '2016-04-27', 'CSE, BUET', '1', 'on', 0, 'www.facebook.com', 'this is an annual event for cse buet', 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `event_host`
--

CREATE TABLE `event_host` (
  `Id` int(11) NOT NULL,
  `Event_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invited_guests`
--

CREATE TABLE `invited_guests` (
  `Guests_id` int(11) NOT NULL,
  `Event_id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Details` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `Media_id` int(11) NOT NULL,
  `Image_path` varchar(100) NOT NULL,
  `Video_path` varchar(100) NOT NULL,
  `Event_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `Note_id` int(11) NOT NULL,
  `Article` varchar(10000) NOT NULL,
  `Rumor` varchar(100) NOT NULL,
  `Tag` varchar(100) NOT NULL,
  `Event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registered_user`
--

CREATE TABLE `registered_user` (
  `User_id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Contact_number` int(11) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registered_user`
--

INSERT INTO `registered_user` (`User_id`, `Name`, `Contact_number`, `Address`, `DOB`, `Gender`, `Email`, `password`) VALUES
(1, 'imtiaz', 123, '123', '2016-05-09', 'male', 'karim@gmail.com', '12'),
(2, 'nafis', 123, 'ffwf', '2016-05-03', 'male', 'imtiazkarimaz@gmail.com', '12'),
(3, 'imtiaz karim zisan', 123, '1234', '2012-06-12', 'male', 'imtiazkarimaz@gmail.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`Event_id`);

--
-- Indexes for table `event_host`
--
ALTER TABLE `event_host`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Event_id` (`Event_id`),
  ADD KEY `User_id` (`User_id`);

--
-- Indexes for table `invited_guests`
--
ALTER TABLE `invited_guests`
  ADD PRIMARY KEY (`Guests_id`),
  ADD KEY `Event_id` (`Event_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`Media_id`),
  ADD KEY `Event_id` (`Event_id`),
  ADD KEY `User_id` (`User_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`Note_id`),
  ADD KEY `Event_id` (`Event_id`);

--
-- Indexes for table `registered_user`
--
ALTER TABLE `registered_user`
  ADD PRIMARY KEY (`User_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `Event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `event_host`
--
ALTER TABLE `event_host`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invited_guests`
--
ALTER TABLE `invited_guests`
  MODIFY `Guests_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `Media_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `Note_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `registered_user`
--
ALTER TABLE `registered_user`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `event_host`
--
ALTER TABLE `event_host`
  ADD CONSTRAINT `event_host_ibfk_1` FOREIGN KEY (`Event_id`) REFERENCES `event` (`Event_id`),
  ADD CONSTRAINT `event_host_ibfk_2` FOREIGN KEY (`User_id`) REFERENCES `registered_user` (`User_id`);

--
-- Constraints for table `invited_guests`
--
ALTER TABLE `invited_guests`
  ADD CONSTRAINT `invited_guests_ibfk_1` FOREIGN KEY (`Event_id`) REFERENCES `event` (`Event_id`);

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`Event_id`) REFERENCES `event` (`Event_id`),
  ADD CONSTRAINT `media_ibfk_2` FOREIGN KEY (`User_id`) REFERENCES `registered_user` (`User_id`);

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`Event_id`) REFERENCES `event` (`Event_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
