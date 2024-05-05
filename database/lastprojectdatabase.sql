-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2024 at 01:05 PM
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
-- Database: `lastprojectdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(6) UNSIGNED NOT NULL,
  `feedbackerName` varchar(50) NOT NULL,
  `feedbackerEmail` varchar(50) NOT NULL,
  `feedbackDescription` text DEFAULT NULL,
  `feedbackForProductCode` int UNSIGNED NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productCode` int UNSIGNED NOT NULL,
  `productName` varchar(70) NOT NULL,
  `productCategory` varchar(50) NOT NULL,
  `productGender` varchar(6) DEFAULT NULL CHECK (`productGender` in ('Male','Female')),
  `productBrand` varchar(50) NOT NULL,
  `productIntroduction` text DEFAULT NULL,
  `productDescription` text DEFAULT NULL,
  `buyPrice` decimal(10,2) NOT NULL,
  `productAvailability` tinyint(1) NOT NULL,
  `productDiscount` int DEFAULT 0 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productCode`, `productName`, `productCategory`, `productGender`, `productBrand`, `productIntroduction`, `productDescription`, `buyPrice`, `productAvailability`) VALUES
(1, 'Outdoor Adventure Backpack', 'Backpack', 'Male', 'AdventureGear', 'Gear up for your next outdoor expedition with our versatile backpack.', 'This durable backpack is designed for outdoor enthusiasts, featuring multiple compartments and adjustable straps for maximum comfort and convenience.', 79.99, 1, 20),
(2, 'City Explorer Backpack', 'Backpack', 'Female', 'UrbanTrek', 'Navigate urban landscapes in style with our sleek and functional backpack.', 'Ideal for daily commuting or city exploration, this backpack offers ample storage space and a modern design.', 69.99, 1, 25),
(3, 'Traveler\'s Backpack', 'Backpack', 'Male', 'Nomad', 'Embark on your journey with confidence using our reliable traveler\'s backpack.', 'With its rugged construction and travel-friendly features, this backpack is your perfect companion for globetrotting adventures.', 89.99, 1, 30),
(4, 'Student Essentials Backpack', 'Backpack', 'Female', 'AdventureGear', 'Stay organized and stylish on campus with our student essentials backpack.', 'Designed with students in mind, this backpack offers dedicated compartments for laptops, books, and other essentials.', 49.99, 1, 35),
(5, 'Tech Enthusiast Backpack', 'Backpack', 'Male', 'UrbanTrek', 'Carry your tech gear in style with our innovative tech enthusiast backpack.', 'Featuring built-in charging ports and padded compartments, this backpack keeps your gadgets safe and charged on the go.', 99.99, 1, 40),
(6, 'Weekend Explorer Backpack', 'Backpack', 'Female', 'Nomad', 'Plan your weekend getaways with our versatile weekend explorer backpack.', 'Whether you are hiking in the mountains or exploring the city, this backpack has you covered with its durable design and spacious compartments.', 79.99, 1, 15),
(7, 'Fashion Forward Backpack', 'Backpack', 'Male', 'UrbanTrek', 'Make a fashion statement wherever you go with our trendsetting fashion forward backpack.', 'Combining style and functionality, this backpack is perfect for urban adventurers who appreciate chic design.', 59.99, 1, 20),
(8, 'Urban Chic Handbag', 'Handbag', 'Female', 'AdventureGear', 'Add a touch of urban chic to your ensemble with our stylish handbag.', 'This versatile handbag is perfect for everyday use, offering both style and functionality.', 59.99, 1, 25),
(9, 'Nomad Traveler Handbag', 'Handbag', 'Female', 'Nomad', 'Travel in style with our Nomad traveler handbag.', 'With its spacious compartments and durable construction, this handbag is ideal for globetrotters.', 79.99, 1, 30),
(10, 'Tech Savvy Handbag', 'Handbag', 'Female', 'UrbanTrek', 'Stay connected on the go with our tech-savvy handbag.', 'Featuring built-in charging ports and RFID-blocking technology, this handbag combines fashion with functionality.', 89.99, 1, 35),
(11, 'Adventure Crossbody Bag', 'Handbag', 'Male', 'AdventureGear', 'Embrace adventure with our rugged crossbody bag.', 'Designed for outdoor enthusiasts, this crossbody bag offers durability and convenience for your outdoor excursions.', 49.99, 1, 40),
(12, 'City Explorer Tote', 'Handbag', 'Female', 'UrbanTrek', 'Explore the city in style with our City Explorer tote.', 'With its spacious interior and sleek design, this tote is perfect for urban adventures.', 69.99, 1, 15),
(13, 'Urban Adventure Crossbody Bag', 'Crossbody', 'Male', 'AdventureGear', 'Embark on urban adventures with our versatile crossbody bag.', 'Designed for the modern explorer, this crossbody bag offers functionality and style for your daily excursions.', 69.99, 1, 20),
(14, 'Nomad Traveler Crossbody Bag', 'Crossbody', 'Female', 'Nomad', 'Travel light with our Nomad traveler crossbody bag.', 'With its compact design and durable construction, this crossbody bag is perfect for your travels.', 59.99, 1, 25),
(15, 'Tech Explorer Crossbody Bag', 'Crossbody', 'Male', 'UrbanTrek', 'Stay connected on the go with our tech explorer crossbody bag.', 'Featuring built-in USB charging ports and water-resistant material, this crossbody bag is perfect for tech-savvy adventurers.', 79.99, 1, 30),
(16, 'Urban Utility Crossbody Bag', 'Crossbody', 'Female', 'AdventureGear', 'Stay organized in the city with our urban utility crossbody bag.', 'With its multiple compartments and adjustable strap, this crossbody bag offers practicality and style.', 49.99, 1, 35),
(17, 'Nomad Explorer Crossbody Bag', 'Crossbody', 'Male', 'Nomad', 'Explore new horizons with our Nomad explorer crossbody bag.', 'Designed for outdoor enthusiasts, this crossbody bag combines durability with functionality for your adventures.', 89.99, 1, 40),
(18, 'Tech Traveler Crossbody Bag', 'Crossbody', 'Female', 'UrbanTrek', 'Travel smart with our tech traveler crossbody bag.', 'Featuring RFID-blocking technology and padded compartments, this crossbody bag keeps your essentials secure and organized.', 99.99, 1, 15),
(19, 'Adventure Utility Crossbody Bag', 'Crossbody', 'Male', 'AdventureGear', 'Conquer any terrain with our adventure utility crossbody bag.', 'Built for rugged conditions, this crossbody bag offers durability and versatility for your outdoor pursuits.', 79.99, 1, 20),
(20, 'City Explorer Crossbody Bag', 'Crossbody', 'Female', 'UrbanTrek', 'Discover the city in style with our city explorer crossbody bag.', 'With its sleek design and ample storage space, this crossbody bag is perfect for urban explorers.', 69.99, 1, 25),
(21, 'Nomad Adventurer Crossbody Bag', 'Crossbody', 'Male', 'Nomad', 'Embark on adventures with our Nomad adventurer crossbody bag.', 'Featuring a rugged exterior and spacious interior, this crossbody bag is built for exploration.', 89.99, 1, 30),
(22, 'Tech Trailblazer Crossbody Bag', 'Crossbody', 'Female', 'UrbanTrek', 'Blaze new trails with our tech trailblazer crossbody bag.', 'With its innovative features and modern design, this crossbody bag is perfect for tech-savvy travelers.', 109.99, 1, 35),
(23, 'Adventure Seeker Crossbody Bag', 'Crossbody', 'Male', 'AdventureGear', 'Seek new adventures with our adventure seeker crossbody bag.', 'Designed for outdoor enthusiasts, this crossbody bag offers durability and functionality for your expeditions.', 69.99, 1, 40),
(24, 'Adventure Shoulder Bag', 'Shoulder', 'Male', 'AdventureGear', 'Gear up for your next adventure with our rugged shoulder bag.', 'Designed for outdoor enthusiasts, this shoulder bag offers durability and convenience for your outdoor pursuits.', 59.99, 1, 15),
(25, 'Urban Explorer Shoulder Bag', 'Shoulder', 'Female', 'UrbanTrek', 'Explore the urban jungle with our urban explorer shoulder bag.', 'With its spacious compartments and stylish design, this shoulder bag is perfect for city exploration.', 69.99, 1, 20),
(26, 'Nomad Traveler Shoulder Bag', 'Shoulder', 'Male', 'Nomad', 'Travel in style with our Nomad traveler shoulder bag.', 'Featuring a compact design and durable construction, this shoulder bag is perfect for your travels.', 49.99, 1, 25),
(27, 'Tech Savvy Shoulder Bag', 'Shoulder', 'Female', 'UrbanTrek', 'Stay connected on the go with our tech-savvy shoulder bag.', 'Featuring built-in charging ports and RFID-blocking technology, this shoulder bag keeps your gadgets secure and charged.', 89.99, 1, 30),
(28, 'Adventure Utility Shoulder Bag', 'Shoulder', 'Male', 'AdventureGear', 'Conquer any terrain with our adventure utility shoulder bag.', 'Built for rugged conditions, this shoulder bag offers durability and functionality for your outdoor adventures.', 79.99, 1, 35),
(29, 'City Chic Shoulder Bag', 'Shoulder', 'Female', 'UrbanTrek', 'Add a touch of chic to your ensemble with our city chic shoulder bag.', 'With its sleek design and versatile style, this shoulder bag is perfect for urban fashionistas.', 59.99, 1, 40),
(30, 'Nomad Explorer Shoulder Bag', 'Shoulder', 'Male', 'Nomad', 'Explore new horizons with our Nomad explorer shoulder bag.', 'Featuring ample storage space and rugged construction, this shoulder bag is built for adventure.', 99.99, 1, 15),
(31, 'Urban Chic Purse', 'Purse', 'Female', 'UrbanTrek', 'Elevate your style with our urban chic purse.', 'With its sleek design and luxurious materials, this purse is perfect for any occasion.', 49.99, 1, 20),
(32, 'Nomad Traveler Purse', 'Purse', 'Female', 'Nomad', 'Travel in style with our Nomad traveler purse.', 'Featuring multiple compartments and RFID-blocking technology, this purse keeps your essentials secure during your travels.', 59.99, 1, 25),
(33, 'Tech Enthusiast Purse', 'Purse', 'Female', 'UrbanTrek', 'Carry your tech gear with ease using our tech enthusiast purse.', 'With padded compartments and USB charging ports, this purse keeps your devices safe and charged.', 79.99, 1, 30),
(34, 'Adventure Utility Purse', 'Purse', 'Female', 'AdventureGear', 'Stay organized on your adventures with our adventure utility purse.', 'Featuring durable materials and multiple pockets, this purse is perfect for outdoor excursions.', 69.99, 1, 35),
(35, 'City Explorer Purse', 'Purse', 'Female', 'UrbanTrek', 'Explore the city in style with our city explorer purse.', 'With its spacious interior and modern design, this purse is perfect for urban adventurers.', 59.99, 1, 40),
(36, 'Nomad Explorer Purse', 'Purse', 'Female', 'Nomad', 'Discover new horizons with our Nomad explorer purse.', 'With its versatile style and durable construction, this purse is ideal for everyday use or travel.', 69.99, 1, 15),
(37, 'Explorer Backpack', 'Backpack', 'Male', 'AdventureGear', 'Perfect for outdoor adventures', 'Take on any terrain with confidence using this rugged backpack, designed for outdoor enthusiasts.', 59.99, 1, 20),
(38, 'Urban Trek Voyager', 'Backpack', 'Male', 'UrbanTrek', 'Designed for urban commuters', 'Discover the city in style with this versatile urban explorer pack, featuring a sleek design and smart organization.', 79.99, 1, 25),
(39, 'Nomad Expedition Pack', 'Backpack', 'Male', 'Nomad', 'Embark on your next journey with confidence', 'Forge your own path with this extra-large backpack, offering ample storage space and durable construction for extended adventures.', 109.99, 1, 30),
(40, 'Trailblazer Backpack', 'Backpack', 'Male', 'AdventureGear', 'Blaze your own trail with this versatile backpack', 'Equipped with all the essentials for your next adventure, this backpack is your trusted companion for exploring the great outdoors.', 89.99, 1, 35),
(41, 'Urban Trek Cityscape', 'Backpack', 'Male', 'UrbanTrek', 'Navigate the city streets in style', 'Navigate city streets with ease using this commuter pack, designed for urban professionals seeking style and functionality.', 69.99, 1, 40),
(42, 'Nomad Stealth Pack', 'Backpack', 'Male', 'Nomad', 'Stay under the radar with this tactical backpack', 'Conquer any mission with this tactical recon pack, featuring tactical organization and rugged durability.', 129.99, 1, 15),
(43, 'Urban Chic Backpack', 'Backpack', 'Female', 'UrbanTrek', 'Stylish and practical for urban life', 'Make a fashion statement while staying organized with this chic urban backpack, perfect for city dwellers.', 69.99, 1, 20),
(44, 'Nomad Wanderlust Pack', 'Backpack', 'Female', 'Nomad', 'Designed for wanderers and adventurers', 'Embrace your wanderlust with this versatile backpack, featuring a feminine design and functional features for exploring the world.', 99.99, 1, 25),
(45, 'Adventure Essentials Backpack', 'Backpack', 'Female', 'AdventureGear', 'Essential gear for outdoor enthusiasts', 'Gear up for your next adventure with this rugged backpack, designed to handle the toughest trails and expeditions.', 79.99, 1, 30),
(46, 'Cityscape Explorer Pack', 'Backpack', 'Female', 'UrbanTrek', 'Explore the city in style and comfort', 'Navigate urban landscapes with ease using this stylish and functional cityscape explorer pack, designed for modern women on the go.', 89.99, 1, 35),
(47, 'Nomad Odyssey Pack', 'Backpack', 'Female', 'Nomad', 'Embark on epic journeys with confidence', 'Set out on epic journeys with this spacious and durable backpack, crafted to accompany you on your wildest adventures.', 119.99, 1, 40),
(48, 'Urban Explorer Crossbody', 'Crossbody', 'Male', 'UrbanTrek', 'Practical and stylish for urban living', 'Navigate city streets with ease using this sleek and versatile crossbody bag, designed for the modern urban explorer.', 49.99, 1, 15),
(49, 'Nomad Commuter Sling', 'Crossbody', 'Male', 'Nomad', 'Effortlessly carry your essentials', 'Streamline your commute with this practical commuter sling, offering easy access to your belongings and all-day comfort.', 59.99, 1, 20),
(50, 'Adventure Essential Crossbody', 'Crossbody', 'Male', 'AdventureGear', 'Essential gear for outdoor adventures', 'Stay organized on your outdoor excursions with this durable and functional crossbody bag, designed to withstand rugged terrain.', 39.99, 1, 25),
(51, 'Cityscape Messenger Bag', 'Crossbody', 'Male', 'UrbanTrek', 'Modern design for urban professionals', 'Make a statement in the office or on the go with this stylish messenger bag, featuring a sleek design and ample storage space for your essentials.', 69.99, 1, 30),
(52, 'Nomad Tactical Sling', 'Crossbody', 'Male', 'Nomad', 'Tactical organization for urban missions', 'Keep your gear secure and organized with this tactical sling, designed for urban adventurers and outdoor enthusiasts alike.', 79.99, 1, 35),
(53, 'Urban Chic Crossbody', 'Crossbody', 'Female', 'UrbanTrek', 'Stylish and practical for urban life', 'Complete your urban look with this chic crossbody bag, perfect for carrying your essentials in style.', 59.99, 1, 40),
(54, 'Nomad Wanderlust Sling', 'Crossbody', 'Female', 'Nomad', 'Designed for wanderers and adventurers', 'Embrace your wanderlust with this versatile sling bag, featuring a feminine design and functional features for exploring the world.', 69.99, 1, 15),
(55, 'Adventure Essentials Crossbody', 'Crossbody', 'Female', 'AdventureGear', 'Essential gear for outdoor enthusiasts', 'Stay organized on your outdoor adventures with this durable and functional crossbody bag, designed for women on the move.', 49.99, 1, 20),
(56, 'Cityscape Explorer Crossbody', 'Crossbody', 'Female', 'UrbanTrek', 'Explore the city in style and comfort', 'Navigate urban landscapes with ease using this stylish and functional crossbody bag, designed for modern women on the go.', 79.99, 1, 25),
(57, 'Urban Executive Briefcase', 'Handbag', 'Male', 'UrbanTrek', 'Sophisticated and functional for professionals', 'Elevate your professional look with this executive briefcase, featuring a sleek design and ample storage space for all your essentials.', 89.99, 1, 30),
(58, 'Nomad Explorer Tote', 'Handbag', 'Male', 'Nomad', 'Versatile and durable for everyday use', 'From the office to weekend adventures, this explorer tote is designed to keep up with your busy lifestyle.', 79.99, 1, 35),
(59, 'Adventure Essentials Messenger Bag', 'Handbag', 'Male', 'AdventureGear', 'Functional and rugged for outdoor adventures', 'Stay organized on the go with this durable messenger bag, equipped with multiple compartments and pockets for your essentials.', 69.99, 1, 40),
(60, 'Cityscape Commuter Tote', 'Handbag', 'Male', 'UrbanTrek', 'Stylish and practical for urban commuting', 'Navigate city streets with ease using this commuter tote, designed to keep your belongings secure and accessible while on the move.', 99.99, 1, 15),
(61, 'Urban Chic Tote', 'Handbag', 'Female', 'UrbanTrek', 'Stylish and practical for urban life', 'Complete your look with this chic tote bag, perfect for carrying your essentials in style.', 79.99, 1, 20),
(62, 'Nomad Wanderlust Purse', 'Handbag', 'Female', 'Nomad', 'Designed for wanderers and adventurers', 'Embrace your wanderlust with this versatile purse, featuring a feminine design and functional features for exploring the world.', 89.99, 1, 25),
(63, 'Adventure Essentials Satchel', 'Handbag', 'Female', 'AdventureGear', 'Essential gear for outdoor enthusiasts', 'Stay organized on your outdoor adventures with this durable and functional satchel, designed for women on the move.', 59.99, 1, 30),
(64, 'Cityscape Explorer Tote', 'Handbag', 'Female', 'UrbanTrek', 'Explore the city in style and comfort', 'Navigate urban landscapes with ease using this stylish and functional tote bag, designed for modern women on the go.', 99.99, 1, 35),
(65, 'Nomad Odyssey Purse', 'Handbag', 'Female', 'Nomad', 'Embark on epic journeys with confidence', 'Set out on epic journeys with this spacious and durable purse, crafted to accompany you on your wildest adventures.', 119.99, 1, 40),
(66, 'Urban Executive Clutch', 'Purse', 'Male', 'UrbanTrek', 'Compact and stylish for urban professionals', 'Carry your essentials with sophistication using this executive clutch, perfect for formal occasions and everyday use.', 49.99, 1, 15),
(67, 'Nomad Explorer Wallet', 'Purse', 'Male', 'Nomad', 'Durable and versatile for everyday use', 'Keep your cards and cash organized with this rugged explorer wallet, designed to withstand the demands of daily life.', 39.99, 1, 20),
(68, 'Adventure Essentials Cardholder', 'Purse', 'Male', 'AdventureGear', 'Compact and functional for outdoor adventures', 'Streamline your essentials with this durable cardholder, ideal for outdoor excursions and travel.', 29.99, 1, 25),
(69, 'Cityscape Commuter Pouch', 'Purse', 'Male', 'UrbanTrek', 'Practical and stylish for urban commuting', 'Stay organized on the go with this commuter pouch, featuring multiple compartments for your cards, keys, and other small essentials.', 34.99, 1, 30),
(70, 'Nomad Tactical Wallet', 'Purse', 'Male', 'Nomad', 'Tactical organization for urban missions', 'Keep your essentials secure and accessible with this tactical wallet, featuring a rugged design and strategic compartments.', 59.99, 1, 35),
(71, 'Urban Chic Money Clip', 'Purse', 'Male', 'UrbanTrek', 'Sleek and minimalist for modern living', 'Streamline your wallet with this chic money clip, perfect for carrying cash and cards in style.', 24.99, 1, 40),
(72, 'Nomad Expedition Coin Pouch', 'Purse', 'Male', 'Nomad', 'Compact and versatile for everyday use', 'Keep your loose change organized with this durable coin pouch, designed to accompany you on your daily adventures.', 19.99, 1, 15),
(73, 'Adventure Essentials Passport Holder', 'Purse', 'Male', 'AdventureGear', 'Secure and convenient for travel', 'Protect your passport and travel documents with this essential passport holder, featuring RFID-blocking technology for added security.', 39.99, 1, 20),
(74, 'Cityscape Slim Wallet', 'Purse', 'Male', 'UrbanTrek', 'Slim and stylish for urban living', 'Carry your cards and cash with ease using this slim wallet, designed for urban professionals and city dwellers.', 44.99, 1, 25),
(75, 'Nomad Tactical Coin Purse', 'Purse', 'Male', 'Nomad', 'Compact organization for urban missions', 'Keep your coins and small essentials secure with this tactical coin purse, featuring a rugged design and durable construction.', 29.99, 1, 30),
(76, 'Urban Chic Clutch', 'Purse', 'Female', 'UrbanTrek', 'Elegant and practical for urban life', 'Complete your evening look with this chic clutch, perfect for carrying your essentials in style.', 59.99, 1, 35),
(77, 'Nomad Wanderlust Wallet', 'Purse', 'Female', 'Nomad', 'Designed for wanderers and adventurers', 'Stay organized on your travels with this versatile wallet, featuring a feminine design and functional features for exploring the world.', 69.99, 1, 40),
(78, 'Adventure Essentials Crossbody Wallet', 'Purse', 'Female', 'AdventureGear', 'Functional and stylish for outdoor adventures', 'Keep your essentials close at hand with this durable crossbody wallet, designed for women on the move.', 49.99, 1, 15),
(79, 'Cityscape Explorer Clutch', 'Purse', 'Female', 'UrbanTrek', 'Explore the city in style and comfort', 'Navigate urban landscapes with ease using this stylish and functional clutch, designed for modern women on the go.', 79.99, 1, 20),
(80, 'Nomad Odyssey Wallet', 'Purse', 'Female', 'Nomad', 'Embark on epic journeys with confidence', 'Set out on epic journeys with this spacious and durable wallet, crafted to accompany you on your wildest adventures.', 99.99, 1, 25),
(81, 'Urban Executive Shoulder Bag', 'Shoulder', 'Male', 'UrbanTrek', 'Stylish and practical for urban professionals', 'Carry your essentials with sophistication using this executive shoulder bag, perfect for work and travel.', 79.99, 1, 30),
(82, 'Nomad Explorer Messenger Bag', 'Shoulder', 'Male', 'Nomad', 'Durable and versatile for everyday use', 'Stay organized on the go with this rugged messenger bag, featuring ample storage space and strategic compartments.', 89.99, 1, 35),
(83, 'Adventure Essentials Crossbody Messenger', 'Shoulder', 'Male', 'AdventureGear', 'Functional and rugged for outdoor adventures', 'Take on any adventure with this durable crossbody messenger bag, designed to withstand the demands of the outdoors.', 69.99, 1, 40),
(84, 'Urban Chic Shoulder Bag', 'Shoulder', 'Female', 'UrbanTrek', 'Stylish and practical for urban life', 'Complete your look with this chic shoulder bag, perfect for carrying your essentials in style.', 69.99, 1, 15),
(85, 'Nomad Wanderlust Messenger Bag', 'Shoulder', 'Female', 'Nomad', 'Designed for wanderers and adventurers', 'Embrace your wanderlust with this versatile messenger bag, featuring a feminine design and functional features for exploring the world.', 79.99, 1, 20),
(86, 'Adventure Essentials Crossbody Tote', 'Shoulder', 'Female', 'AdventureGear', 'Essential gear for outdoor enthusiasts', 'Stay organized on your outdoor adventures with this durable and functional crossbody tote, designed for women on the move.', 59.99, 1, 25);


--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `feedbackerName`, `feedbackerEmail`, `feedbackDescription`, `feedbackForProductCode`, `reg_date`) VALUES
(1, 'John Doe', 'john.doe@example.com', 'Great product! Very durable and stylish.', 1, '2024-05-02 08:30:00'),
(2, 'Jane Smith', 'jane.smith@example.com', 'Excellent backpack! Perfect for hiking.', 1, '2024-05-02 09:15:00'),
(3, 'Michael Brown', 'michael.brown@example.com', 'Highly recommended. Spacious and comfortable to wear.', 1, '2024-05-02 10:00:00'),
(4, 'Emily Davis', 'emily.davis@example.com', 'Love the design! Perfect size for everyday use.', 2, '2024-05-02 10:45:00'),
(5, 'David Wilson', 'david.wilson@example.com', 'Sturdy construction. Exactly what I needed for work.', 2, '2024-05-02 11:30:00'),
(6, 'Olivia Taylor', 'olivia.taylor@example.com', 'Great purchase! Fast delivery and excellent quality.', 2, '2024-05-02 12:15:00'),
(7, 'Ethan Garcia', 'ethan.garcia@example.com', 'Fantastic handbag! Looks even better in person.', 3, '2024-05-02 13:00:00'),
(8, 'Sophia Hernandez', 'sophia.hernandez@example.com', 'Love the color! Fits all my essentials perfectly.', 3, '2024-05-02 13:45:00'),
(9, 'Noah Martinez', 'noah.martinez@example.com', 'Very satisfied with the purchase. Great value for money.', 3, '2024-05-02 14:30:00'),
(10, 'Ava Lopez', 'ava.lopez@example.com', 'Perfect size for travel. Durable and functional.', 4, '2024-05-02 15:15:00'),
(11, 'Mia Adams', 'mia.adams@example.com', 'Love the compartments! Keeps everything organized.', 4, '2024-05-02 16:00:00'),
(12, 'James Rodriguez', 'james.rodriguez@example.com', 'Great quality. Very impressed with the design.', 4, '2024-05-02 16:45:00'),
(13, 'Sophia Wilson', 'sophia.wilson@example.com', 'Excellent crossbody bag! Perfect for everyday use.', 5, '2024-05-02 17:30:00'),
(14, 'Lucas Thompson', 'lucas.thompson@example.com', 'Stylish and practical. Highly recommend it!', 5, '2024-05-02 18:15:00'),
(15, 'Ava White', 'ava.white@example.com', 'Exactly what I needed. Fits all my essentials.', 5, '2024-05-02 19:00:00'),
(16, 'Liam Robinson', 'liam.robinson@example.com', 'Love the design! Very comfortable to carry around.', 6, '2024-05-02 19:45:00'),
(17, 'Isabella Scott', 'isabella.scott@example.com', 'Perfect for everyday use. Great quality materials.', 6, '2024-05-02 20:30:00'),
(18, 'Benjamin Perez', 'benjamin.perez@example.com', 'Excellent customer service. Fast shipping.', 6, '2024-05-02 21:15:00'),
(19, 'Charlotte Green', 'charlotte.green@example.com', 'Highly recommended! Perfect for outdoor activities.', 7, '2024-05-02 22:00:00'),
(20, 'Daniel Hill', 'daniel.hill@example.com', 'Great shoulder bag! Very durable and stylish.', 7, '2024-05-02 22:45:00'),
(21, 'Amelia Baker', 'amelia.baker@example.com', 'Love the color and design. Fits all my essentials.', 7, '2024-05-02 23:30:00'),
(22, 'Harper Evans', 'harper.evans@example.com', 'Exactly what I needed for my hikes. Highly recommend it!', 8, '2024-05-03 00:15:00'),
(23, 'William Turner', 'william.turner@example.com', 'Excellent backpack! Very sturdy and comfortable to wear.', 8, '2024-05-03 01:00:00'),
(24, 'Scarlett Collins', 'scarlett.collins@example.com', 'Great handbag! Love the compartments and design.', 8, '2024-05-03 01:45:00'),
(25, 'Henry Hall', 'henry.hall@example.com', 'Perfect size for travel. Stylish and functional.', 9, '2024-05-03 02:30:00'),
(26, 'Evelyn Young', 'evelyn.young@example.com', 'Love the tech features! Keeps my gadgets charged on the go.', 9, '2024-05-03 03:15:00'),
(27, 'Alexander Martinez', 'alexander.martinez@example.com', 'Very satisfied with my purchase. Excellent quality!', 9, '2024-05-03 04:00:00'),
(28, 'Madison Cooper', 'madison.cooper@example.com', 'Great crossbody bag! Perfect for everyday use.', 10, '2024-05-03 04:45:00'),
(29, 'Jackson Morgan', 'jackson.morgan@example.com', 'Love the design and functionality. Highly recommend it!', 10, '2024-05-03 05:30:00'),
(30, 'Chloe King', 'chloe.king@example.com', 'Excellent customer service. Very responsive and helpful.', 10, '2024-05-03 06:15:00'),
(31, 'Lucas Rodriguez', 'lucas.rodriguez@example.com', 'Fantastic purse! Fits all my essentials perfectly.', 11, '2024-05-03 07:00:00'),
(32, 'Ella Martinez', 'ella.martinez@example.com', 'Great quality and design. Very happy with my purchase.', 11, '2024-05-03 07:45:00'),
(33, 'Gabriel Rivera', 'gabriel.rivera@example.com', 'Love the color and style. Highly recommend it!', 11, '2024-05-03 08:30:00'),
(34, 'Lily Carter', 'lily.carter@example.com', 'Perfect size for travel. Durable and practical.', 12, '2024-05-03 09:15:00'),
(35, 'Ryan Hill', 'ryan.hill@example.com', 'Exactly what I was looking for. Great value for money.', 12, '2024-05-03 10:00:00'),
(36, 'Grace Flores', 'grace.flores@example.com', 'Love the design! Stylish and functional.', 12, '2024-05-03 10:45:00'),
(37, 'Mateo Stewart', 'mateo.stewart@example.com', 'Excellent shoulder bag! Very durable and practical.', 13, '2024-05-03 11:30:00'),
(38, 'Sophie Mitchell', 'sophie.mitchell@example.com', 'Great quality materials. Perfect for everyday use.', 13, '2024-05-03 12:15:00'),
(39, 'Daniel Turner', 'daniel.turner@example.com', 'Love the size and design. Fits all my essentials.', 13, '2024-05-03 13:00:00'),
(40, 'Natalie Perez', 'natalie.perez@example.com', 'Excellent customer service. Fast delivery.', 14, '2024-05-03 13:45:00'),
(41, 'Lucas Wright', 'lucas.wright@example.com', 'Fantastic crossbody bag! Very durable and stylish.', 14, '2024-05-03 14:30:00'),
(42, 'Emma Bailey', 'emma.bailey@example.com', 'Love the color and design. Fits all my essentials perfectly.', 14, '2024-05-03 15:15:00'),
(43, 'Aiden Stewart', 'aiden.stewart@example.com', 'Excellent purchase! Perfect for everyday use.', 15, '2024-05-03 16:00:00'),
(44, 'Zoe Murphy', 'zoe.murphy@example.com', 'Very satisfied with my order. Great quality materials.', 15, '2024-05-03 16:45:00'),
(45, 'Eliana Wright', 'eliana.wright@example.com', 'Fantastic shoulder bag! Love the design.', 15, '2024-05-03 17:30:00'),
(46, 'Nicholas Scott', 'nicholas.scott@example.com', 'Love the design and functionality. Perfect for everyday use.', 16, '2024-05-03 18:15:00'),
(47, 'Mila Gonzalez', 'mila.gonzalez@example.com', 'Very satisfied with my purchase. Excellent quality!', 16, '2024-05-03 19:00:00'),
(48, 'Sebastian Ramirez', 'sebastian.ramirez@example.com', 'Great value for money. Exactly what I needed.', 16, '2024-05-03 19:45:00'),
(49, 'Abigail Perez', 'abigail.perez@example.com', 'Excellent purse! Very stylish and practical.', 17, '2024-05-03 20:30:00'),
(50, 'Logan Hill', 'logan.hill@example.com', 'Love the color and design. Fits all my essentials perfectly.', 17, '2024-05-03 21:15:00'),
(51, 'Sofia Carter', 'sofia.carter@example.com', 'Great quality materials. Perfect for everyday use.', 17, '2024-05-03 22:00:00'),
(52, 'Elijah Scott', 'elijah.scott@example.com', 'Excellent purchase! Very satisfied with my order.', 18, '2024-05-03 22:45:00'),
(53, 'Avery White', 'avery.white@example.com', 'Fantastic shoulder bag! Love the design.', 18, '2024-05-03 23:30:00'),
(54, 'Harper Evans', 'harper.evans@example.com', 'Very stylish and practical. Highly recommend it!', 18, '2024-05-04 00:15:00'),
(55, 'Landon Thompson', 'landon.thompson@example.com', 'Love the design! Very comfortable to carry around.', 19, '2024-05-04 01:00:00'),
(56, 'Madison Cooper', 'madison.cooper@example.com', 'Perfect for everyday use. Great quality materials.', 19, '2024-05-04 01:45:00'),
(57, 'Brooklyn Rodriguez', 'brooklyn.rodriguez@example.com', 'Excellent shoulder bag! Very durable and stylish.', 19, '2024-05-04 02:30:00'),
(58, 'Grayson Lee', 'grayson.lee@example.com', 'Love the color and design. Fits all my essentials perfectly.', 20, '2024-05-04 03:15:00'),
(59, 'Hannah Martinez', 'hannah.martinez@example.com', 'Great quality materials. Perfect for everyday use.', 20, '2024-05-04 04:00:00'),
(60, 'Cameron Baker', 'cameron.baker@example.com', 'Excellent purchase! Very satisfied with my order.', 20, '2024-05-04 04:45:00'),
(61, 'Eliana Hall', 'eliana.hall@example.com', 'Fantastic crossbody bag! Love the design.', 21, '2024-05-04 05:30:00'),
(62, 'Henry Turner', 'henry.turner@example.com', 'Very stylish and practical. Highly recommend it!', 21, '2024-05-04 06:15:00'),
(63, 'Chloe Green', 'chloe.green@example.com', 'Love the design! Very comfortable to carry around.', 21, '2024-05-04 07:00:00'),
(64, 'Liam Baker', 'liam.baker@example.com', 'Excellent customer service. Fast delivery.', 22, '2024-05-04 07:45:00'),
(65, 'Mia Scott', 'mia.scott@example.com', 'Fantastic shoulder bag! Very durable and stylish.', 22, '2024-05-04 08:30:00'),
(66, 'Jackson Perez', 'jackson.perez@example.com', 'Love the color and design. Fits all my essentials perfectly.', 22, '2024-05-04 09:15:00'),
(67, 'Ava Wright', 'ava.wright@example.com', 'Love the size and design. Fits all my essentials.', 23, '2024-05-04 10:00:00'),
(68, 'Daniel Murphy', 'daniel.murphy@example.com', 'Excellent customer service. Very responsive and helpful.', 23, '2024-05-04 10:45:00'),
(69, 'Zoe Turner', 'zoe.turner@example.com', 'Fantastic purse! Very stylish and practical.', 23, '2024-05-04 11:30:00'),
(70, 'Sophie Gonzalez', 'sophie.gonzalez@example.com', 'Great value for money. Exactly what I needed.', 24, '2024-05-04 12:15:00'),
(71, 'Lucas Hill', 'lucas.hill@example.com', 'Love the color and design. Fits all my essentials perfectly.', 24, '2024-05-04 13:00:00'),
(72, 'Chloe Carter', 'chloe.carter@example.com', 'Great quality materials. Perfect for everyday use.', 24, '2024-05-04 13:45:00'),
(73, 'Ethan Perez', 'ethan.perez@example.com', 'Excellent purchase! Very satisfied with my order.', 25, '2024-05-04 14:30:00'),
(74, 'Olivia Baker', 'olivia.baker@example.com', 'Fantastic shoulder bag! Love the design.', 25, '2024-05-04 15:15:00'),
(75, 'Noah Evans', 'noah.evans@example.com', 'Very stylish and practical. Highly recommend it!', 25, '2024-05-04 16:00:00'),
(76, 'Ava Martinez', 'ava.martinez@example.com', 'Love the design! Very comfortable to carry around.', 26, '2024-05-04 16:45:00'),
(77, 'William Thompson', 'william.thompson@example.com', 'Perfect for everyday use. Great quality materials.', 26, '2024-05-04 17:30:00'),
(78, 'Isabella Rodriguez', 'isabella.rodriguez@example.com', 'Excellent shoulder bag! Very durable and stylish.', 26, '2024-05-04 18:15:00'),
(79, 'Alexander Young', 'alexander.young@example.com', 'Love the color and design. Fits all my essentials perfectly.', 27, '2024-05-04 19:00:00'),
(80, 'Mia Mitchell', 'mia.mitchell@example.com', 'Great quality materials. Perfect for everyday use.', 27, '2024-05-04 19:45:00'),
(81, 'James Scott', 'james.scott@example.com', 'Excellent purchase! Very satisfied with my order.', 27, '2024-05-04 20:30:00'),
(82, 'Emma Turner', 'emma.turner@example.com', 'Fantastic crossbody bag! Love the design.', 28, '2024-05-04 21:15:00'),
(83, 'Lucas White', 'lucas.white@example.com', 'Very stylish and practical. Highly recommend it!', 28, '2024-05-04 22:00:00'),
(84, 'Olivia Baker', 'olivia.baker@example.com', 'Love the design! Very comfortable to carry around.', 28, '2024-05-04 22:45:00'),
(85, 'Chloe Hall', 'chloe.hall@example.com', 'Excellent customer service. Fast delivery.', 29, '2024-05-04 23:30:00'),
(86, 'Ethan Hernandez', 'ethan.hernandez@example.com', 'Fantastic shoulder bag! Very durable and stylish.', 29, '2024-05-05 00:15:00'),
(87, 'Sophia Brown', 'sophia.brown@example.com', 'Love the color and design. Fits all my essentials perfectly.', 29, '2024-05-05 01:00:00'),
(88, 'Ella Perez', 'ella.perez@example.com', 'Love the size and design. Fits all my essentials.', 30, '2024-05-05 01:45:00'),
(89, 'Jack Smith', 'jack.smith@example.com', 'Excellent customer service. Very responsive and helpful.', 30, '2024-05-05 02:30:00'),
(90, 'Mia Hernandez', 'mia.hernandez@example.com', 'Fantastic purse! Very stylish and practical.', 30, '2024-05-05 03:15:00'),
(91, 'William Lee', 'william.lee@example.com', 'Great value for money. Exactly what I needed.', 31, '2024-05-05 04:00:00'),
(92, 'Sophia Perez', 'sophia.perez@example.com', 'Love the color and design. Fits all my essentials perfectly.', 31, '2024-05-05 04:45:00'),
(93, 'Oliver Wilson', 'oliver.wilson@example.com', 'Great quality materials. Perfect for everyday use.', 31, '2024-05-05 05:30:00'),
(94, 'Mia Hall', 'mia.hall@example.com', 'Excellent purchase! Very satisfied with my order.', 32, '2024-05-05 06:15:00'),
(95, 'Lucas Thompson', 'lucas.thompson@example.com', 'Fantastic shoulder bag! Love the design.', 32, '2024-05-05 07:00:00'),
(96, 'Sophie Hernandez', 'sophie.hernandez@example.com', 'Very stylish and practical. Highly recommend it!', 32, '2024-05-05 07:45:00'),
(97, 'Aiden Brown', 'aiden.brown@example.com', 'Love the design! Very comfortable to carry around.', 33, '2024-05-05 08:30:00'),
(98, 'Amelia Garcia', 'amelia.garcia@example.com', 'Perfect for everyday use. Great quality materials.', 33, '2024-05-05 09:15:00'),
(99, 'Daniel Perez', 'daniel.perez@example.com', 'Excellent shoulder bag! Very durable and stylish.', 33, '2024-05-05 10:00:00'),
(100, 'Emma White', 'emma.white@example.com', 'Love the color and design. Fits all my essentials perfectly.', 34, '2024-05-05 10:45:00'),
(101, 'Lucas Rodriguez', 'lucas.rodriguez@example.com', 'Great quality materials. Perfect for everyday use.', 34, '2024-05-05 11:30:00'),
(102, 'Isabella Brown', 'isabella.brown@example.com', 'Excellent purchase! Very satisfied with my order.', 34, '2024-05-05 12:15:00'),
(103, 'Jack Hernandez', 'jack.hernandez@example.com', 'Fantastic crossbody bag! Love the design.', 35, '2024-05-05 13:00:00'),
(104, 'Mia Perez', 'mia.perez@example.com', 'Very stylish and practical. Highly recommend it!', 35, '2024-05-05 13:45:00'),
(105, 'Oliver Garcia', 'oliver.garcia@example.com', 'Love the color and design. Fits all my essentials perfectly.', 35, '2024-05-05 14:30:00'),
(106, 'Sophie Thompson', 'sophie.thompson@example.com', 'Excellent customer service. Fast delivery.', 36, '2024-05-05 15:15:00'),
(107, 'William Harris', 'william.harris@example.com', 'Fantastic shoulder bag! Very durable and stylish.', 36, '2024-05-05 16:00:00'),
(108, 'Olivia Scott', 'olivia.scott@example.com', 'Love the color and design. Fits all my essentials perfectly.', 36, '2024-05-05 16:45:00'),
(109, 'Alice Johnson', 'alice.johnson@example.com', 'Excellent product! Very satisfied with the quality.', 37, '2024-05-02 08:30:00'),
(110, 'Matthew Thompson', 'matthew.thompson@example.com', 'Great value for money. Highly recommended!', 37, '2024-05-02 09:15:00'),
(111, 'Samantha White', 'samantha.white@example.com', 'Love the design and functionality. Perfect for travel.', 37, '2024-05-02 10:00:00'),
(112, 'Daniel Clark', 'daniel.clark@example.com', 'Very stylish and comfortable to wear. Impressed with the quality.', 38, '2024-05-02 10:45:00'),
(113, 'Isabella Rodriguez', 'isabella.rodriguez@example.com', 'Exactly what I was looking for! Fits all my essentials.', 38, '2024-05-02 11:30:00'),
(114, 'Elijah Lewis', 'elijah.lewis@example.com', 'Fast delivery and excellent customer service. Highly recommended.', 38, '2024-05-02 12:15:00'),
(115, 'Charlotte Hall', 'charlotte.hall@example.com', 'Beautiful design and great quality. Very happy with my purchase.', 39, '2024-05-02 13:00:00'),
(116, 'James Lee', 'james.lee@example.com', 'Functional and stylish. Perfect for everyday use.', 39, '2024-05-02 13:45:00'),
(117, 'Emily Scott', 'emily.scott@example.com', 'Love the color and size. Great for work and travel.', 39, '2024-05-02 14:30:00'),
(118, 'Mason Green', 'mason.green@example.com', 'Highly satisfied with the product. Exactly as described.', 40, '2024-05-02 15:15:00'),
(119, 'Madison Evans', 'madison.evans@example.com', 'Very comfortable to wear and spacious. Great for outdoor activities.', 40, '2024-05-02 16:00:00'),
(120, 'Logan Martinez', 'logan.martinez@example.com', 'Excellent customer service and fast shipping. Very pleased with my purchase.', 40, '2024-05-02 16:45:00'),
(121, 'Avery Adams', 'avery.adams@example.com', 'Highly recommended! Great quality and stylish design.', 41, '2024-05-02 17:30:00'),
(122, 'Evelyn Campbell', 'evelyn.campbell@example.com', 'Love the functionality and durability. Perfect for everyday use.', 41, '2024-05-02 18:15:00'),
(123, 'Jack Hill', 'jack.hill@example.com', 'Impressed with the quality and design. Very happy with my purchase.', 41, '2024-05-02 19:00:00'),
(124, 'Scarlett Parker', 'scarlett.parker@example.com', 'Great value for money. Very satisfied with the product.', 42, '2024-05-02 19:45:00'),
(125, 'William Morris', 'william.morris@example.com', 'Stylish and practical. Perfect for everyday use.', 42, '2024-05-02 20:30:00'),
(126, 'Abigail Wood', 'abigail.wood@example.com', 'Love the design and color. Fits all my essentials perfectly.', 42, '2024-05-02 21:15:00'),
(127, 'Benjamin Bennett', 'benjamin.bennett@example.com', 'Highly satisfied with my purchase. Great customer service!', 43, '2024-05-02 22:00:00'),
(128, 'Chloe Cooper', 'chloe.cooper@example.com', 'Functional and stylish. Perfect for work and travel.', 43, '2024-05-02 22:45:00'),
(129, 'Gabriel Reed', 'gabriel.reed@example.com', 'Very comfortable to wear and spacious. Great value for money.', 43, '2024-05-02 23:30:00'),
(130, 'Lily Hayes', 'lily.hayes@example.com', 'Excellent product! Exactly as described. Highly recommended.', 44, '2024-05-03 00:15:00'),
(131, 'Jackson Rivera', 'jackson.rivera@example.com', 'Love the functionality and design. Very satisfied with my purchase.', 44, '2024-05-03 01:00:00'),
(132, 'Zoe Ward', 'zoe.ward@example.com', 'Great quality and durability. Perfect for outdoor activities.', 44, '2024-05-03 01:45:00'),
(133, 'Lucas Cooper', 'lucas.cooper@example.com', 'Highly recommended! Great value for money. Very pleased with my purchase.', 45, '2024-05-03 02:30:00'),
(134, 'Natalie Reed', 'natalie.reed@example.com', 'Very stylish and practical. Fits all my essentials perfectly.', 45, '2024-05-03 03:15:00'),
(135, 'Carter Ward', 'carter.ward@example.com', 'Love the design and color. Great for everyday use.', 45, '2024-05-03 04:00:00'),
(136, 'Harper Bailey', 'harper.bailey@example.com', 'Excellent customer service and fast shipping. Very happy with my purchase.', 46, '2024-05-03 04:45:00'),
(137, 'Michael Cox', 'michael.cox@example.com', 'Stylish and practical. Perfect for travel.', 46, '2024-05-03 05:30:00'),
(138, 'Sophia Ward', 'sophia.ward@example.com', 'Very satisfied with my purchase. Great value for money.', 46, '2024-05-03 06:15:00'),
(139, 'Ethan Perez', 'ethan.perez@example.com', 'Excellent product! Very satisfied with the quality.', 47, '2024-05-03 08:30:00'),
(140, 'Ava Turner', 'ava.turner@example.com', 'Great value for money. Highly recommended!', 47, '2024-05-03 09:15:00'),
(141, 'Joseph Ross', 'joseph.ross@example.com', 'Love the design and functionality. Perfect for travel.', 47, '2024-05-03 10:00:00'),
(142, 'Avery Wood', 'avery.wood@example.com', 'Very stylish and comfortable to wear. Impressed with the quality.', 48, '2024-05-03 10:45:00'),
(143, 'Madison Bennett', 'madison.bennett@example.com', 'Exactly what I was looking for! Fits all my essentials.', 48, '2024-05-03 11:30:00'),
(144, 'Samuel Gray', 'samuel.gray@example.com', 'Fast delivery and excellent customer service. Highly recommended.', 48, '2024-05-03 12:15:00'),
(145, 'Scarlett Kelly', 'scarlett.kelly@example.com', 'Beautiful design and great quality. Very happy with my purchase.', 49, '2024-05-03 13:00:00'),
(146, 'Jonathan Butler', 'jonathan.butler@example.com', 'Functional and stylish. Perfect for everyday use.', 49, '2024-05-03 13:45:00'),
(147, 'Grace Coleman', 'grace.coleman@example.com', 'Love the color and size. Great for work and travel.', 49, '2024-05-03 14:30:00'),
(148, 'Logan Richardson', 'logan.richardson@example.com', 'Highly satisfied with the product. Exactly as described.', 50, '2024-05-03 15:15:00'),
(149, 'Chloe Cooper', 'chloe.cooper@example.com', 'Very comfortable to wear and spacious. Great for outdoor activities.', 50, '2024-05-03 16:00:00'),
(150, 'Zoey Howard', 'zoey.howard@example.com', 'Excellent customer service and fast shipping. Very pleased with my purchase.', 50, '2024-05-03 16:45:00'),
(151, 'Elijah Baker', 'elijah.baker@example.com', 'Highly recommended! Great quality and stylish design.', 51, '2024-05-03 17:30:00'),
(152, 'Emma Bailey', 'emma.bailey@example.com', 'Love the functionality and durability. Perfect for everyday use.', 51, '2024-05-03 18:15:00'),
(153, 'Liam Diaz', 'liam.diaz@example.com', 'Impressed with the quality and design. Very happy with my purchase.', 51, '2024-05-03 19:00:00'),
(154, 'Mia Fisher', 'mia.fisher@example.com', 'Great value for money. Very satisfied with the product.', 52, '2024-05-03 19:45:00'),
(155, 'Lucas Reed', 'lucas.reed@example.com', 'Stylish and practical. Perfect for everyday use.', 52, '2024-05-03 20:30:00'),
(156, 'Sophia Ward', 'sophia.ward@example.com', 'Love the design and color. Fits all my essentials perfectly.', 52, '2024-05-03 21:15:00'),
(157, 'Aiden Cox', 'aiden.cox@example.com', 'Highly satisfied with my purchase. Great customer service!', 53, '2024-05-03 22:00:00'),
(158, 'Ella Myers', 'ella.myers@example.com', 'Functional and stylish. Perfect for work and travel.', 53, '2024-05-03 22:45:00'),
(159, 'Jackson Webb', 'jackson.webb@example.com', 'Very comfortable to wear and spacious. Great value for money.', 53, '2024-05-03 23:30:00'),
(160, 'Avery Cole', 'avery.cole@example.com', 'Excellent product! Exactly as described. Highly recommended.', 54, '2024-05-04 00:15:00'),
(161, 'Olivia Rivera', 'olivia.rivera@example.com', 'Love the functionality and design. Very satisfied with my purchase.', 54, '2024-05-04 01:00:00'),
(162, 'Carter Ward', 'carter.ward@example.com', 'Great quality and durability. Perfect for outdoor activities.', 54, '2024-05-04 01:45:00'),
(163, 'Evelyn Ellis', 'evelyn.ellis@example.com', 'Highly recommended! Great value for money. Very pleased with my purchase.', 55, '2024-05-04 02:30:00'),
(164, 'Ethan Butler', 'ethan.butler@example.com', 'Very stylish and practical. Fits all my essentials perfectly.', 55, '2024-05-04 03:15:00'),
(165, 'Luna Peterson', 'luna.peterson@example.com', 'Love the design and color. Great for everyday use.', 55, '2024-05-04 04:00:00'),
(166, 'Nolan Young', 'nolan.young@example.com', 'Excellent customer service and fast shipping. Very happy with my purchase.', 56, '2024-05-04 04:45:00'),
(167, 'Scarlett Simmons', 'scarlett.simmons@example.com', 'Stylish and practical. Perfect for travel.', 56, '2024-05-04 05:30:00'),
(168, 'Henry Martinez', 'henry.martinez@example.com', 'Very satisfied with my purchase. Great value for money.', 56, '2024-05-04 06:15:00'),
(169, 'Addison Hughes', 'addison.hughes@example.com', 'Excellent product! Very satisfied with the quality.', 57, '2024-05-04 07:00:00'),
(170, 'Grace Watson', 'grace.watson@example.com', 'Great value for money. Highly recommended!', 57, '2024-05-04 07:45:00'),
(171, 'Ian Russell', 'ian.russell@example.com', 'Love the design and functionality. Perfect for travel.', 57, '2024-05-04 08:30:00'),
(172, 'Natalie Foster', 'natalie.foster@example.com', 'Very stylish and comfortable to wear. Impressed with the quality.', 58, '2024-05-04 09:15:00'),
(173, 'Luke Powell', 'luke.powell@example.com', 'Exactly what I was looking for! Fits all my essentials.', 58, '2024-05-04 10:00:00'),
(174, 'Peyton Long', 'peyton.long@example.com', 'Fast delivery and excellent customer service. Highly recommended.', 58, '2024-05-04 10:45:00'),
(175, 'Alexis Cole', 'alexis.cole@example.com', 'Beautiful design and great quality. Very happy with my purchase.', 59, '2024-05-04 11:30:00'),
(176, 'James Foster', 'james.foster@example.com', 'Functional and stylish. Perfect for everyday use.', 59, '2024-05-04 12:15:00'),
(177, 'Brooklyn Hayes', 'brooklyn.hayes@example.com', 'Love the color and size. Great for work and travel.', 59, '2024-05-04 13:00:00'),
(178, 'Gabriel Ramirez', 'gabriel.ramirez@example.com', 'Highly satisfied with the product. Exactly as described.', 60, '2024-05-04 13:45:00'),
(179, 'Alyssa Bryant', 'alyssa.bryant@example.com', 'Very comfortable to wear and spacious. Great for outdoor activities.', 60, '2024-05-04 14:30:00'),
(180, 'David Flores', 'david.flores@example.com', 'Excellent customer service and fast shipping. Very pleased with my purchase.', 60, '2024-05-04 15:15:00'),
(181, 'Leah Dunn', 'leah.dunn@example.com', 'Highly recommended! Great quality and stylish design.', 61, '2024-05-04 16:00:00'),
(182, 'Nathan Andrews', 'nathan.andrews@example.com', 'Love the functionality and durability. Perfect for everyday use.', 61, '2024-05-04 16:45:00'),
(183, 'Brooklyn Simmons', 'brooklyn.simmons@example.com', 'Impressed with the quality and design. Very happy with my purchase.', 61, '2024-05-04 17:30:00'),
(184, 'Kaylee Morris', 'kaylee.morris@example.com', 'Great value for money. Very satisfied with the product.', 62, '2024-05-04 18:15:00'),
(185, 'Evan Cooper', 'evan.cooper@example.com', 'Stylish and practical. Perfect for everyday use.', 62, '2024-05-04 19:00:00'),
(186, 'Audrey Hayes', 'audrey.hayes@example.com', 'Love the design and color. Fits all my essentials perfectly.', 62, '2024-05-04 19:45:00'),
(187, 'Owen Torres', 'owen.torres@example.com', 'Highly satisfied with my purchase. Great customer service!', 63, '2024-05-04 20:30:00'),
(188, 'Aria Peterson', 'aria.peterson@example.com', 'Functional and stylish. Perfect for work and travel.', 63, '2024-05-04 21:15:00'),
(189, 'Isaac Howard', 'isaac.howard@example.com', 'Very comfortable to wear and spacious. Great value for money.', 63, '2024-05-04 22:00:00'),
(190, 'Eleanor Richardson', 'eleanor.richardson@example.com', 'Excellent product! Exactly as described. Highly recommended.', 64, '2024-05-04 22:45:00'),
(191, 'Oscar Cooper', 'oscar.cooper@example.com', 'Love the functionality and design. Very satisfied with my purchase.', 64, '2024-05-04 23:30:00'),
(192, 'Violet Watson', 'violet.watson@example.com', 'Great quality and durability. Perfect for outdoor activities.', 64, '2024-05-05 00:15:00'),
(193, 'Grayson Russell', 'grayson.russell@example.com', 'Highly recommended! Great value for money. Very pleased with my purchase.', 65, '2024-05-05 01:00:00'),
(194, 'Leah Martinez', 'leah.martinez@example.com', 'Very stylish and practical. Fits all my essentials perfectly.', 65, '2024-05-05 01:45:00'),
(195, 'Liam Rodriguez', 'liam.rodriguez@example.com', 'Love the design and color. Great for everyday use.', 65, '2024-05-05 02:30:00'),
(196, 'Avery Stewart', 'avery.stewart@example.com', 'Excellent customer service and fast shipping. Very happy with my purchase.', 66, '2024-05-05 03:15:00'),
(197, 'Zoe Brooks', 'zoe.brooks@example.com', 'Stylish and practical. Perfect for travel.', 66, '2024-05-05 04:00:00'),
(198, 'Daniel Walker', 'daniel.walker@example.com', 'Very satisfied with my purchase. Great value for money.', 66, '2024-05-05 04:45:00'),
(199, 'Sophie Jenkins', 'sophie.jenkins@example.com', 'Great quality and durability. Perfect for outdoor activities.', 67, '2024-05-05 05:30:00'),
(200, 'Jackson Bennett', 'jackson.bennett@example.com', 'Highly recommended! Great value for money. Very pleased with my purchase.', 67, '2024-05-05 06:15:00'),
(201, 'Ella Perry', 'ella.perry@example.com', 'Very stylish and practical. Fits all my essentials perfectly.', 67, '2024-05-05 07:00:00'),
(202, 'Lucas Bell', 'lucas.bell@example.com', 'Love the design and color. Great for everyday use.', 68, '2024-05-05 07:45:00'),
(203, 'Charlotte Murphy', 'charlotte.murphy@example.com', 'Excellent customer service and fast shipping. Very happy with my purchase.', 68, '2024-05-05 08:30:00'),
(204, 'Jack Gray', 'jack.gray@example.com', 'Stylish and practical. Perfect for travel.', 68, '2024-05-05 09:15:00'),
(205, 'Grace Scott', 'grace.scott@example.com', 'Very satisfied with my purchase. Great value for money.', 69, '2024-05-05 10:00:00'),
(206, 'Benjamin Rodriguez', 'benjamin.rodriguez@example.com', 'Functional and stylish. Perfect for everyday use.', 69, '2024-05-05 10:45:00'),
(207, 'Lily Price', 'lily.price@example.com', 'Love the color and size. Great for work and travel.', 69, '2024-05-05 11:30:00'),
(208, 'William Cooper', 'william.cooper@example.com', 'Highly satisfied with the product. Exactly as described.', 70, '2024-05-05 12:15:00'),
(209, 'Madelyn Richardson', 'madelyn.richardson@example.com', 'Very comfortable to wear and spacious. Great for outdoor activities.', 70, '2024-05-05 13:00:00'),
(210, 'Daniel Flores', 'daniel.flores@example.com', 'Excellent customer service and fast shipping. Very pleased with my purchase.', 70, '2024-05-05 13:45:00'),
(211, 'Oliver Barnes', 'oliver.barnes@example.com', 'Highly recommended! Great quality and stylish design.', 71, '2024-05-05 14:30:00'),
(212, 'Amelia Henderson', 'amelia.henderson@example.com', 'Love the functionality and durability. Perfect for everyday use.', 71, '2024-05-05 15:15:00'),
(213, 'Mason Wright', 'mason.wright@example.com', 'Impressed with the quality and design. Very happy with my purchase.', 71, '2024-05-05 16:00:00'),
(214, 'Eleanor Richardson', 'eleanor.richardson@example.com', 'Great value for money. Very satisfied with the product.', 72, '2024-05-05 16:45:00'),
(215, 'Elijah Diaz', 'elijah.diaz@example.com', 'Stylish and practical. Perfect for everyday use.', 72, '2024-05-05 17:30:00'),
(216, 'Scarlett Simmons', 'scarlett.simmons@example.com', 'Love the design and color. Fits all my essentials perfectly.', 72, '2024-05-05 18:15:00'),
(217, 'Benjamin Carter', 'benjamin.carter@example.com', 'Highly satisfied with my purchase. Great customer service!', 73, '2024-05-05 19:00:00'),
(218, 'Zoey Adams', 'zoey.adams@example.com', 'Functional and stylish. Perfect for work and travel.', 73, '2024-05-05 19:45:00'),
(219, 'Ethan Wright', 'ethan.wright@example.com', 'Very comfortable to wear and spacious. Great value for money.', 73, '2024-05-05 20:30:00'),
(220, 'Madison Robinson', 'madison.robinson@example.com', 'Excellent product! Exactly as described. Highly recommended.', 74, '2024-05-05 21:15:00'),
(221, 'Lucas Stewart', 'lucas.stewart@example.com', 'Love the functionality and design. Very satisfied with my purchase.', 74, '2024-05-05 22:00:00'),
(222, 'Chloe Brooks', 'chloe.brooks@example.com', 'Great quality and durability. Perfect for outdoor activities.', 74, '2024-05-05 22:45:00'),
(223, 'Julian Jenkins', 'julian.jenkins@example.com', 'Highly recommended! Great value for money. Very pleased with my purchase.', 75, '2024-05-05 23:30:00'),
(224, 'Hailey Bell', 'hailey.bell@example.com', 'Very stylish and practical. Fits all my essentials perfectly.', 75, '2024-05-06 00:15:00'),
(225, 'Logan Gray', 'logan.gray@example.com', 'Love the design and color. Great for everyday use.', 75, '2024-05-06 01:00:00'),
(226, 'Sophia Scott', 'sophia.scott@example.com', 'Excellent customer service and fast shipping. Very happy with my purchase.', 76, '2024-05-06 01:45:00'),
(227, 'Caleb Price', 'caleb.price@example.com', 'Stylish and practical. Perfect for travel.', 76, '2024-05-06 02:30:00'),
(228, 'Ava Campbell', 'ava.campbell@example.com', 'Very satisfied with my purchase. Great value for money.', 76, '2024-05-06 03:15:00'),
(229, 'Henry Cooper', 'henry.cooper@example.com', 'Highly satisfied with the product. Exactly as described.', 77, '2024-05-06 04:00:00'),
(230, 'Aria Howard', 'aria.howard@example.com', 'Very comfortable to wear and spacious. Great for outdoor activities.', 77, '2024-05-06 04:45:00'),
(231, 'James Flores', 'james.flores@example.com', 'Excellent customer service and fast shipping. Very pleased with my purchase.', 77, '2024-05-06 05:30:00'),
(232, 'Evelyn Barnes', 'evelyn.barnes@example.com', 'Highly recommended! Great quality and stylish design.', 78, '2024-05-06 06:15:00'),
(233, 'Matthew Henderson', 'matthew.henderson@example.com', 'Love the functionality and durability. Perfect for everyday use.', 78, '2024-05-06 07:00:00'),
(234, 'Avery Wright', 'avery.wright@example.com', 'Impressed with the quality and design. Very happy with my purchase.', 78, '2024-05-06 07:45:00'),
(235, 'Sofia Richardson', 'sofia.richardson@example.com', 'Great value for money. Very satisfied with the product.', 79, '2024-05-06 08:30:00'),
(236, 'Gabriel Diaz', 'gabriel.diaz@example.com', 'Stylish and practical. Perfect for everyday use.', 79, '2024-05-06 09:15:00'),
(237, 'Avery Simmons', 'avery.simmons@example.com', 'Love the design and color. Fits all my essentials perfectly.', 79, '2024-05-06 10:00:00'),
(238, 'Madeline Carter', 'madeline.carter@example.com', 'Highly satisfied with my purchase. Great customer service!', 80, '2024-05-06 10:45:00'),
(239, 'Michael Adams', 'michael.adams@example.com', 'Functional and stylish. Perfect for work and travel.', 80, '2024-05-06 11:30:00'),
(240, 'Ella Wright', 'ella.wright@example.com', 'Very comfortable to wear and spacious. Great value for money.', 80, '2024-05-06 12:15:00'),
(241, 'Oliver Robinson', 'oliver.robinson@example.com', 'Excellent product! Exactly as described. Highly recommended.', 81, '2024-05-06 13:00:00'),
(242, 'Emma Stewart', 'emma.stewart@example.com', 'Love the functionality and design. Very satisfied with my purchase.', 81, '2024-05-06 13:45:00'),
(243, 'William Brooks', 'william.brooks@example.com', 'Great quality and durability. Perfect for outdoor activities.', 81, '2024-05-06 14:30:00'),
(244, 'Julia Jenkins', 'julia.jenkins@example.com', 'Highly recommended! Great value for money. Very pleased with my purchase.', 82, '2024-05-06 15:15:00'),
(245, 'Elijah Perry', 'elijah.perry@example.com', 'Very stylish and practical. Fits all my essentials perfectly.', 82, '2024-05-06 16:00:00'),
(246, 'Mia Bell', 'mia.bell@example.com', 'Love the design and color. Great for everyday use.', 82, '2024-05-06 16:45:00'),
(247, 'Mason Scott', 'mason.scott@example.com', 'Excellent customer service and fast shipping. Very happy with my purchase.', 83, '2024-05-06 17:30:00'),
(248, 'Harper Price', 'harper.price@example.com', 'Stylish and practical. Perfect for travel.', 83, '2024-05-06 18:15:00'),
(249, 'Evelyn Campbell', 'evelyn.campbell@example.com', 'Very satisfied with my purchase. Great value for money.', 83, '2024-05-06 19:00:00'),
(250, 'Noah Cooper', 'noah.cooper@example.com', 'Highly satisfied with the product. Exactly as described.', 84, '2024-05-06 19:45:00'),
(251, 'Isabella Howard', 'isabella.howard@example.com', 'Very comfortable to wear and spacious. Great for outdoor activities.', 84, '2024-05-06 20:30:00'),
(252, 'Samuel Flores', 'samuel.flores@example.com', 'Excellent customer service and fast shipping. Very pleased with my purchase.', 84, '2024-05-06 21:15:00'),
(253, 'Aria Barnes', 'aria.barnes@example.com', 'Highly recommended! Great quality and stylish design.', 85, '2024-05-06 22:00:00'),
(254, 'Aiden Henderson', 'aiden.henderson@example.com', 'Love the functionality and durability. Perfect for everyday use.', 85, '2024-05-06 22:45:00'),
(255, 'Madelyn Wright', 'madelyn.wright@example.com', 'Impressed with the quality and design. Very happy with my purchase.', 85, '2024-05-06 23:30:00'),
(256, 'Oliver Richardson', 'oliver.richardson@example.com', 'Great value for money. Very satisfied with the product.', 86, '2024-05-07 00:15:00'),
(257, 'Amelia Diaz', 'amelia.diaz@example.com', 'Stylish and practical. Perfect for everyday use.', 86, '2024-05-07 01:00:00'),
(258, 'Mason Price', 'mason.price@example.com', 'Love the design and color. Fits all my essentials perfectly.', 86, '2024-05-07 01:45:00');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedbackForProductCode` (`feedbackForProductCode`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productCode` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD CONSTRAINT `feedbacks_ibfk_1` FOREIGN KEY (`feedbackForProductCode`) REFERENCES `products` (`productCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
