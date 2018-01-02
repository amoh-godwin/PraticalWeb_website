-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 02, 2018 at 11:22 AM
-- Server version: 5.7.16
-- PHP Version: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `praticalweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `analytics`
--

CREATE TABLE `analytics` (
  `id` int(7) NOT NULL,
  `ipaddress` int(15) NOT NULL,
  `sign_in_time` int(15) NOT NULL,
  `sign_out_time` int(15) NOT NULL,
  `username` varchar(512) NOT NULL,
  `country` varchar(128) NOT NULL,
  `browser` varchar(24) NOT NULL,
  `os` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `assignments_instruc`
--

CREATE TABLE `assignments_instruc` (
  `id` int(7) NOT NULL,
  `supervisor` varchar(512) NOT NULL,
  `course_id` int(10) NOT NULL,
  `date` int(12) NOT NULL,
  `position` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `assignments_stud`
--

CREATE TABLE `assignments_stud` (
  `id` int(7) NOT NULL,
  `assign_id` int(7) NOT NULL,
  `username` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `submitted_date` int(15) NOT NULL,
  `format` varchar(15) NOT NULL,
  `edit` int(4) NOT NULL,
  `passed` tinyint(1) NOT NULL,
  `correction` tinyint(1) NOT NULL,
  `score` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `id` int(7) NOT NULL,
  `value` varchar(15) NOT NULL,
  `expiry` int(15) NOT NULL,
  `issuer` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(7) NOT NULL,
  `name` varchar(1024) NOT NULL,
  `guide` varchar(512) NOT NULL,
  `roll` int(10) NOT NULL,
  `starting_date` int(14) NOT NULL,
  `closing_date` int(14) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c_analytics`
--

CREATE TABLE `c_analytics` (
  `id` int(8) NOT NULL,
  `course_name` varchar(512) NOT NULL,
  `ip` int(15) NOT NULL,
  `time` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `monetary`
--

CREATE TABLE `monetary` (
  `id` int(11) NOT NULL,
  `username` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pages_analytics`
--

CREATE TABLE `pages_analytics` (
  `id` int(7) NOT NULL,
  `url` varchar(1024) NOT NULL,
  `ip` int(15) NOT NULL,
  `time` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(7) NOT NULL,
  `ocupation` varchar(12) NOT NULL,
  `email` varchar(512) NOT NULL,
  `username` varchar(50) NOT NULL,
  `profile_pic` text NOT NULL,
  `password_hash` text NOT NULL,
  `registration_date` blob,
  `stworsrd` blob,
  `password_length` int(128) NOT NULL,
  `online` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analytics`
--
ALTER TABLE `analytics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignments_instruc`
--
ALTER TABLE `assignments_instruc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignments_stud`
--
ALTER TABLE `assignments_stud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_analytics`
--
ALTER TABLE `c_analytics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_analytics`
--
ALTER TABLE `pages_analytics`
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
-- AUTO_INCREMENT for table `analytics`
--
ALTER TABLE `analytics`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `assignments_instruc`
--
ALTER TABLE `assignments_instruc`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `assignments_stud`
--
ALTER TABLE `assignments_stud`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_analytics`
--
ALTER TABLE `c_analytics`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages_analytics`
--
ALTER TABLE `pages_analytics`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
