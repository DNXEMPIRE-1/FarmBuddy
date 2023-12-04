-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 20. Jul 2023 um 23:32
-- Server-Version: 10.4.22-MariaDB
-- PHP-Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `farm`
--
CREATE DATABASE IF NOT EXISTS `farm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `farm`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cmps`
--

CREATE TABLE `cmps` (
  `id` int(11) NOT NULL,
  `cropname` varchar(100) DEFAULT NULL,
  `cmp` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `city` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `cmps`
--

INSERT INTO `cmps` (`id`, `cropname`, `cmp`, `username`, `fullname`, `city`) VALUES
(1, 'White Bean', 'Not working\r\n', 'admin', 'bev', 'Rongai'),
(2, 'Maize', 'its not working', NULL, 'Dennis Nzioki', 'Ruaka'),
(3, 'sweet potato', 'not suitable', NULL, 'Eston Maxwell', 'kinagop');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Anu', 'anu@gmail.com', '7896677554', 'Hey Admin'),
(' Viki', 'viki@gmail.com', '9899778865', 'Good Job, Pal'),
('Ananya', 'ananya@gmail.com', '9997888879', 'How can I reach you?'),
('Aakash', 'aakash@gmail.com', '8788979967', 'Love your site'),
('Mani', 'mani@gmail.com', '8977768978', 'Want some coffee?'),
('Karthick', 'karthi@gmail.com', '9898989898', 'Good service'),
('Abbis', 'abbis@gmail.com', '8979776868', 'Love your service'),
('Asiq', 'asiq@gmail.com', '9087897564', 'Love your service. Thank you!'),
('Jane', 'jane@gmail.com', '7869869757', 'I love your service!'),
('Dennis Nzioki', 'dennisnzioki019@gmail.com', '0717783146', 'log in issue'),
('Dennis Nzioki', 'dennisnzioki019@gmail.com', '0717783146', 'Hi \r\ni want to be a farmer'),
('john', 'john@gmail.com', '0111111111', 'Can you find the best crop to be grown in Kakamega');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `crop_nature`
--

CREATE TABLE `crop_nature` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternat_mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `user_id` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `crop_nature`
--

INSERT INTO `crop_nature` (`id`, `fullname`, `mobile`, `alternat_mobile`, `email`, `country`, `state`, `city`, `description`, `image`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Mary', '2345676567', '', 'mary@admddin.com', 'kenya', 'Turkana', 'Bela', 'surviving ', 'uploads/Jellyfish.jpg', '2018-04-04 08:20:56', '2018-04-04 08:20:56', 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `crop_registrations`
--

CREATE TABLE `crop_registrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternat_mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `crop_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `user_id` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `crop_registrations`
--

INSERT INTO `crop_registrations` (`id`, `fullname`, `mobile`, `alternat_mobile`, `email`, `crop_name`, `country`, `state`, `city`, `description`, `image`, `created_at`, `updated_at`, `user_id`) VALUES
(13, 'Beans', '2345676567', '98888787', 'admin@admin.com', 'beans', 'kenya', 'Kiambu', 'Ruaka', 'dssd', 'uploads/', '2018-02-16 12:21:43', '2018-02-16 12:21:43', 1),
(14, 'jelly fish', '2345676997', '', 'chet@gmrail.com', 'banana', 'Kenya', 'Nairobi', 'Rongai', '', 'uploads/', '2018-03-09 05:06:43', '2018-03-09 05:06:43', 2),
(15, 'aaa', '2222222222', '', 'admin@admmmin.com', 'maize', 'Kenya', 'Mombasa', 'Belagavi', 'good to see', 'uploads/Penguins.jpg', '2018-04-04 11:19:09', '2018-04-04 11:19:09', 1),
(20, 'w34er wetry', '0732435435', '0707650404', 'deenewsd@jjkedsf', 'Carrot', 'Jamaica', 'Kilifi', 'mada', 'carrot', 'uploads/logo3.jpeg', '2023-07-20 20:52:52', '2023-07-20 20:52:52', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `farmers`
--

CREATE TABLE `farmers` (
  `eid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `salary` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `farmers`
--

INSERT INTO `farmers` (`eid`, `username`, `password`, `email`, `phone`, `salary`) VALUES
(1, 'ashok', 'ashok123', 'ashok@gmail.com', '9900000001', 500),
(2, 'arun', 'arun123', 'arun@gmail.com', '9900000002', 600);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `medicines`
--

CREATE TABLE `medicines` (
  `plant_id` varchar(10) NOT NULL,
  `med_id` varchar(10) NOT NULL,
  `med_name` varchar(20) NOT NULL,
  `med_type` varchar(20) DEFAULT NULL,
  `med_cost` varchar(20) DEFAULT NULL,
  `med_desc` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `medicines`
--

INSERT INTO `medicines` (`plant_id`, `med_id`, `med_name`, `med_type`, `med_cost`, `med_desc`) VALUES
('P001', 'M001', 'Tafaban', 'Insecticide', '450rs/l', 'Chloropyriphos 20% EC'),
('P001', 'M002', 'Fame', 'Insecticide', '600rs/30ml', 'Fluendiamide 39.35% SC'),
('P001', 'M003', 'Sectin', 'Fungicide', '450rs/100g', 'Fenamidone 10% + mancozeb 50% WG'),
('P002', 'M004', 'Atrataf', 'Herbicide', '500rs/kg', 'Atrazine 50% Wp'),
('P002', 'M005', 'Tata Metri', 'Herbicide', '1000rs/kg', 'Metribuzin 70% Wp');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `method`
--

CREATE TABLE `method` (
  `method_id` varchar(10) NOT NULL,
  `method_name` varchar(20) NOT NULL,
  `method_type` text DEFAULT NULL,
  `method_desc` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `method`
--

INSERT INTO `method` (`method_id`, `method_name`, `method_type`, `method_desc`) VALUES
('Md001', 'Traditional Method', 'Check basin method', 'Used in level fields'),
('Md002', 'Traditional Method', 'Furrow Irrigation method', 'Cheap labour'),
('Md003', 'Traditional Method', 'Strip Irrigation method', 'Used in raise platform'),
('Md004', 'Modern Method', 'Sprinkler system', 'Used in uneven lands'),
('Md005', 'Modern Method', 'Drip irrigation method', 'Used when there is scarcity of water');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `plant`
--

CREATE TABLE `plant` (
  `plant_id` varchar(10) NOT NULL,
  `plant_name` varchar(20) NOT NULL,
  `plant_type` varchar(20) DEFAULT NULL,
  `plant_desc` text DEFAULT NULL,
  `soil_type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `plant`
--

INSERT INTO `plant` (`plant_id`, `plant_name`, `plant_type`, `plant_desc`, `soil_type`) VALUES
('006', 'Orange', 'fruit', 'grows in 2 years', 'volcanic'),
('P001', 'Tomato', 'Food crop', 'Requires 10 months to grow', 'Red loam soil'),
('P002', 'Sugarcane', 'Food crop', 'Requires 1 year to grow', 'Black soil'),
('P003', 'Paddy', 'Feed and Food crop', 'Requires 4 months to grow', 'Alluvium soil'),
('P004', 'Sunflower', 'Oil crop', 'Requires 3 months to grow', 'Sandy loam soil'),
('P005', 'Cotton', 'Fiber crop', 'Requires 5 months to grow', 'Black soil');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `userreg`
--

CREATE TABLE `userreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `userreg`
--

INSERT INTO `userreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(7, 'Nancy', 'Deborah', 'Female', 'nancy@gmail.com', '9128972454', 'nancy123', 'nancy123'),
(10, 'Peter', 'Norvig', 'Male', 'peter@gmail.com', '9609362815', 'peter123', 'peter123');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `role` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `fullname`, `mobile`, `username`, `email`, `password`, `created_at`, `updated_at`, `role`, `status`) VALUES
(1, 'Bev\r\n', '9879879787', 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', NULL, NULL, 'admin', 1),
(2, 'user1', '56456565', 'user', 'user@gmail.com', '24c9e15e52afc47c225b757e7bee1f9d', '2018-02-08 06:53:53', '2018-02-08 06:53:53', 'user', 1);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `cmps`
--
ALTER TABLE `cmps`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `crop_registrations`
--
ALTER TABLE `crop_registrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `room_rental_registrations_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `room_rental_registrations_email_unique` (`email`);

--
-- Indizes für die Tabelle `farmers`
--
ALTER TABLE `farmers`
  ADD PRIMARY KEY (`eid`);

--
-- Indizes für die Tabelle `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`med_id`),
  ADD KEY `plant_id` (`plant_id`);

--
-- Indizes für die Tabelle `method`
--
ALTER TABLE `method`
  ADD PRIMARY KEY (`method_id`);

--
-- Indizes für die Tabelle `plant`
--
ALTER TABLE `plant`
  ADD PRIMARY KEY (`plant_id`);

--
-- Indizes für die Tabelle `userreg`
--
ALTER TABLE `userreg`
  ADD PRIMARY KEY (`pid`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `cmps`
--
ALTER TABLE `cmps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `crop_registrations`
--
ALTER TABLE `crop_registrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT für Tabelle `farmers`
--
ALTER TABLE `farmers`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `userreg`
--
ALTER TABLE `userreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `medicines`
--
ALTER TABLE `medicines`
  ADD CONSTRAINT `medicines_ibfk_1` FOREIGN KEY (`plant_id`) REFERENCES `plant` (`plant_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
