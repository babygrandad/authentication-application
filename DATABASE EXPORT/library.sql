-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql7.freesqldatabase.com
-- Generation Time: Feb 06, 2023 at 07:15 AM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`author_id`, `author_name`, `age`, `genre`) VALUES
(3, 'Vikram Seth', '68', 'novelist, poet'),
(4, 'Abu\'l-Fazl ibn Mubarak', 'deceased', 'biography'),
(5, 'Philip Zimbardo', '87', 'psychologist'),
(6, 'Jane Austin', 'deceased', 'poet, novelist'),
(7, 'J.M. Coetzee', '81', 'novelist, essayist, linguist'),
(8, 'Fake Author', '99', 'Lier');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(4) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `year` int(4) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `age_group` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_name`, `year`, `genre`, `age_group`, `author_id`) VALUES
(1, 'the tale of Melon City', 1981, 'Poetry', '16', 3),
(2, 'the humble administrator\'s garden', 1985, 'Poetry', '18', 3),
(3, 'all you who sleep tonight', 1980, 'Poetry', '18', 3),
(4, 'Arkbarnama', 2011, 'Biography', '18', 4),
(5, 'the cognitive control of motivation', 1969, 'Psychology', '18', 5),
(6, 'standard prison experiment: a simulation study of psychology of imprisonment', 1972, 'Psychology', '18', 5),
(7, 'influencing attitudes and changing behavior', 1969, 'Psychology', '18', 5),
(8, 'sense and sesibility', 1811, 'Novel', '12', 6),
(9, 'pride and prejudice', 1813, 'Novel', '14', 6),
(10, 'mansfield park', 1814, 'Novel', '18', 6),
(11, 'emma', 1815, 'Novel', '5', 6),
(12, 'northanger abbey', 1818, 'Novel', '13', 6),
(13, 'persuasion', 1818, 'Novel', '18', 6),
(14, 'lady susan', 1871, 'Novel', '18', 6),
(15, 'the childhood of jesus', 2013, 'Novel', '12', 7),
(16, 'the schooldays of jesus', 2016, 'Novel', '8', 7),
(17, 'the death of jesus', 2019, 'Novel', '12', 7),
(18, 'The fake book again', 1704, 'Fiction', '38', 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `surname`, `dob`, `email`, `password`, `role`) VALUES
(1, 'test', 'user', '2022-10-11', 'test@user.com', '$2y$10$VIuhpbpdoviOodVXNDxWFex0k9bmJ6SQWQasWsWWnoZmjAxCD7XA.', 'member'),
(25, 'timy', 'young', '2022-10-13', 'test@users.com', '$2y$10$2HsQ0tMB/Wt6DEXl2m3lGOqUnrZ89UW6yAJT/jix8djsrbKgZxKkW', 'member'),
(104, 'timmy', 'young', '2022-10-13', 'timmy@user.com', '$2y$10$XVcJt2XY0csntV.PYNZ3VujL/widkxkIlxKiyr2kkOlfnmCauoyI.', 'member'),
(105, 'admin', 'admin', '2022-10-13', 'test@admin.com', '$2y$10$ieDreYUef6/G84NQniBb4ObpdiVqK.N4Sm4qfduKpITXlmSOulgZy', 'librarian'),
(106, 'jimmy', 'mendez', '2022-10-19', 'jimmy@admin.com', '$2y$10$PVQN06cSNutfqt3Nh.fFo.NHyK3s5CXiSMkUXZP6XmEbs2Gd7ywei', 'librarian'),
(107, 'Tom', 'Hansaw', '2022-10-19', 'tom@user.com', '$2y$10$YvQlB9yalhXVCv3SmhbNVeQWBSmCLKrfQrmC2RG8xiM/wVkIOo8u.', 'member'),
(108, 'fake', 'person', '2022-10-18', 'fake@email.com', '$2y$10$RUmYgmKm/Sfo1k0YZAjJF.ucOEMPmTeZVnaJBawgoEw2BSCSx8l1K', 'librarian'),
(109, 'Sam', 'Gold', '2004-05-11', 'samgold@email.com', '$2y$10$cR/ejFcBiBGgcy2HSMMyO.I22AnmDOR18arnRFdn496ilKgoGmXQ6', 'member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
