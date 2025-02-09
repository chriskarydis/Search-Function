-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2025 at 09:51 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `objects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `objects` (`id`, `name`, `description`, `image`) VALUES
(1, 'Smartphone', 'Ένα σύγχρονο smartphone με επεξεργαστή Qualcomm Snapdragon 888 (8 πυρήνες, 2.84GHz), 8GB RAM, και 128GB αποθήκευσης. Διαθέτει 48MP κάμερα και υποστηρίζει 5G συνδεσιμότητα.', 'smartphone.jpg'),
(2, 'Laptop', 'Ισχυρός φορητός υπολογιστής με επεξεργαστή Intel Core i7 (8 πυρήνες, 3.8GHz), 16GB RAM, και 512GB SSD. Ιδανικός για εργασία και gaming, με οθόνη 15.6" Full HD και κάρτα γραφικών NVIDIA GTX 1660 Ti.', 'laptop.jpg'),
(3, 'Tablet', 'Φορητό tablet με επεξεργαστή Apple A12 Bionic (6 πυρήνες), 4GB RAM και 64GB αποθήκευσης. Οθόνη 10.5" Retina και δυνατότητα σύνδεσης με Apple Pencil για δημιουργία και εργασία.', 'tablet.jpg'),
(4, 'Camera', 'Επαγγελματική κάμερα DSLR με ανάλυση 24.2MP και δυνατότητα λήψης βίντεο 4K στα 60fps. Διαθέτει αισθητήρα CMOS και σύστημα αυτόματης εστίασης με 45 σημεία.', 'camera.jpg'),
(5, 'Smartwatch', 'Έξυπνο ρολόι με οθόνη AMOLED 1.4" και ανάλυση 320x320. Διαθέτει αισθητήρες καρδιοσυχνότητας, GPS, και παρακολούθηση ύπνου. Αυτονομία έως 7 ημέρες με μία φόρτιση.', 'smartwatch.jpg'),
(6, 'Headphones', 'Ασύρματα ακουστικά με τεχνολογία Active Noise Cancellation, ήχο Hi-Fi, και αυτονομία έως 30 ώρες. Υποστηρίζουν Bluetooth 5.0 και έχουν δυνατότητα γρήγορης φόρτισης.', 'headphones.jpg'),
(7, 'Gaming PC', 'Ισχυρός υπολογιστής για gaming με επεξεργαστή Intel Core i9 (10 πυρήνες, 3.6GHz), 32GB RAM, και κάρτα γραφικών NVIDIA RTX 3080.', 'gamingpc.jpg'),
(8, '4K TV', 'Τηλεόραση 4K UHD με HDR, 120Hz, και δυνατότητα αναβάθμισης λογισμικού για καλύτερη ποιότητα εικόνας.', '4ktv.jpg'),
(9, 'External SSD', 'Εξωτερικός SSD δίσκος 1TB με ταχύτητες μεταφοράς δεδομένων έως 550MB/s και υποστήριξη για USB 3.2.', 'externalssd.jpg'),
(10, 'Smart Speaker', 'Έξυπνος ηχείο με ενσωματωμένο βοηθό φωνής, δυνατότητα συνδεσιμότητας Bluetooth, και υποστήριξη για Wi-Fi 6.', 'smartspeaker.jpg'),
(11, 'Drone', 'Επαγγελματικό drone με κάμερα 12MP και δυνατότητα λήψης βίντεο 4K, 30 λεπτά αυτονομία και τεχνολογία GPS.', 'drone.jpg');

ALTER TABLE `objects`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;