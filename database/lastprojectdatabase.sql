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
  `productAvailability` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productCode`, `productName`, `productCategory`, `productGender`, `productBrand`, `productIntroduction`, `productDescription`, `buyPrice`, `productAvailability`) VALUES
(1, 'Outdoor Adventure Backpack', 'Backpack', 'Male', 'AdventureGear', 'Gear up for your next outdoor expedition with our versatile backpack.', 'This durable backpack is designed for outdoor enthusiasts, featuring multiple compartments and adjustable straps for maximum comfort and convenience.', 79.99, 1),
(2, 'City Explorer Backpack', 'Backpack', 'Female', 'UrbanTrek', 'Navigate urban landscapes in style with our sleek and functional backpack.', 'Ideal for daily commuting or city exploration, this backpack offers ample storage space and a modern design.', 69.99, 1),
(3, 'Traveler\'s Backpack', 'Backpack', 'Male', 'Nomad', 'Embark on your journey with confidence using our reliable traveler\'s backpack.', 'With its rugged construction and travel-friendly features, this backpack is your perfect companion for globetrotting adventures.', 89.99, 1),
(4, 'Student Essentials Backpack', 'Backpack', 'Female', 'AdventureGear', 'Stay organized and stylish on campus with our student essentials backpack.', 'Designed with students in mind, this backpack offers dedicated compartments for laptops, books, and other essentials.', 49.99, 1),
(5, 'Tech Enthusiast Backpack', 'Backpack', 'Male', 'UrbanTrek', 'Carry your tech gear in style with our innovative tech enthusiast backpack.', 'Featuring built-in charging ports and padded compartments, this backpack keeps your gadgets safe and charged on the go.', 99.99, 1),
(6, 'Weekend Explorer Backpack', 'Backpack', 'Female', 'Nomad', 'Plan your weekend getaways with our versatile weekend explorer backpack.', 'Whether you are hiking in the mountains or exploring the city, this backpack has you covered with its durable design and spacious compartments.', 79.99, 1),
(7, 'Fashion Forward Backpack', 'Backpack', 'Male', 'UrbanTrek', 'Make a fashion statement wherever you go with our trendsetting fashion forward backpack.', 'Combining style and functionality, this backpack is perfect for urban adventurers who appreciate chic design.', 59.99, 1),
(8, 'Urban Chic Handbag', 'Handbag', 'Female', 'AdventureGear', 'Add a touch of urban chic to your ensemble with our stylish handbag.', 'This versatile handbag is perfect for everyday use, offering both style and functionality.', 59.99, 1),
(9, 'Nomad Traveler Handbag', 'Handbag', 'Female', 'Nomad', 'Travel in style with our Nomad traveler handbag.', 'With its spacious compartments and durable construction, this handbag is ideal for globetrotters.', 79.99, 1),
(10, 'Tech Savvy Handbag', 'Handbag', 'Female', 'UrbanTrek', 'Stay connected on the go with our tech-savvy handbag.', 'Featuring built-in charging ports and RFID-blocking technology, this handbag combines fashion with functionality.', 89.99, 1),
(11, 'Adventure Crossbody Bag', 'Handbag', 'Male', 'AdventureGear', 'Embrace adventure with our rugged crossbody bag.', 'Designed for outdoor enthusiasts, this crossbody bag offers durability and convenience for your outdoor excursions.', 49.99, 1),
(12, 'City Explorer Tote', 'Handbag', 'Female', 'UrbanTrek', 'Explore the city in style with our City Explorer tote.', 'With its spacious interior and sleek design, this tote is perfect for urban adventures.', 69.99, 1),
(13, 'Urban Adventure Crossbody Bag', 'Crossbody', 'Male', 'AdventureGear', 'Embark on urban adventures with our versatile crossbody bag.', 'Designed for the modern explorer, this crossbody bag offers functionality and style for your daily excursions.', 69.99, 1),
(14, 'Nomad Traveler Crossbody Bag', 'Crossbody', 'Female', 'Nomad', 'Travel light with our Nomad traveler crossbody bag.', 'With its compact design and durable construction, this crossbody bag is perfect for your travels.', 59.99, 1),
(15, 'Tech Explorer Crossbody Bag', 'Crossbody', 'Male', 'UrbanTrek', 'Stay connected on the go with our tech explorer crossbody bag.', 'Featuring built-in USB charging ports and water-resistant material, this crossbody bag is perfect for tech-savvy adventurers.', 79.99, 1),
(16, 'Urban Utility Crossbody Bag', 'Crossbody', 'Female', 'AdventureGear', 'Stay organized in the city with our urban utility crossbody bag.', 'With its multiple compartments and adjustable strap, this crossbody bag offers practicality and style.', 49.99, 1),
(17, 'Nomad Explorer Crossbody Bag', 'Crossbody', 'Male', 'Nomad', 'Explore new horizons with our Nomad explorer crossbody bag.', 'Designed for outdoor enthusiasts, this crossbody bag combines durability with functionality for your adventures.', 89.99, 1),
(18, 'Tech Traveler Crossbody Bag', 'Crossbody', 'Female', 'UrbanTrek', 'Travel smart with our tech traveler crossbody bag.', 'Featuring RFID-blocking technology and padded compartments, this crossbody bag keeps your essentials secure and organized.', 99.99, 1),
(19, 'Adventure Utility Crossbody Bag', 'Crossbody', 'Male', 'AdventureGear', 'Conquer any terrain with our adventure utility crossbody bag.', 'Built for rugged conditions, this crossbody bag offers durability and versatility for your outdoor pursuits.', 79.99, 1),
(20, 'City Explorer Crossbody Bag', 'Crossbody', 'Female', 'UrbanTrek', 'Discover the city in style with our city explorer crossbody bag.', 'With its sleek design and ample storage space, this crossbody bag is perfect for urban explorers.', 69.99, 1),
(21, 'Nomad Adventurer Crossbody Bag', 'Crossbody', 'Male', 'Nomad', 'Embark on adventures with our Nomad adventurer crossbody bag.', 'Featuring a rugged exterior and spacious interior, this crossbody bag is built for exploration.', 89.99, 1),
(22, 'Tech Trailblazer Crossbody Bag', 'Crossbody', 'Female', 'UrbanTrek', 'Blaze new trails with our tech trailblazer crossbody bag.', 'With its innovative features and modern design, this crossbody bag is perfect for tech-savvy travelers.', 109.99, 1),
(23, 'Adventure Seeker Crossbody Bag', 'Crossbody', 'Male', 'AdventureGear', 'Seek new adventures with our adventure seeker crossbody bag.', 'Designed for outdoor enthusiasts, this crossbody bag offers durability and functionality for your expeditions.', 69.99, 1),
(24, 'Adventure Shoulder Bag', 'Shoulder', 'Male', 'AdventureGear', 'Gear up for your next adventure with our rugged shoulder bag.', 'Designed for outdoor enthusiasts, this shoulder bag offers durability and convenience for your outdoor pursuits.', 59.99, 1),
(25, 'Urban Explorer Shoulder Bag', 'Shoulder', 'Female', 'UrbanTrek', 'Explore the urban jungle with our urban explorer shoulder bag.', 'With its spacious compartments and stylish design, this shoulder bag is perfect for city exploration.', 69.99, 1),
(26, 'Nomad Traveler Shoulder Bag', 'Shoulder', 'Male', 'Nomad', 'Travel in style with our Nomad traveler shoulder bag.', 'Featuring a compact design and durable construction, this shoulder bag is perfect for your travels.', 49.99, 1),
(27, 'Tech Savvy Shoulder Bag', 'Shoulder', 'Female', 'UrbanTrek', 'Stay connected on the go with our tech-savvy shoulder bag.', 'Featuring built-in charging ports and RFID-blocking technology, this shoulder bag keeps your gadgets secure and charged.', 89.99, 1),
(28, 'Adventure Utility Shoulder Bag', 'Shoulder', 'Male', 'AdventureGear', 'Conquer any terrain with our adventure utility shoulder bag.', 'Built for rugged conditions, this shoulder bag offers durability and functionality for your outdoor adventures.', 79.99, 1),
(29, 'City Chic Shoulder Bag', 'Shoulder', 'Female', 'UrbanTrek', 'Add a touch of chic to your ensemble with our city chic shoulder bag.', 'With its sleek design and versatile style, this shoulder bag is perfect for urban fashionistas.', 59.99, 1),
(30, 'Nomad Explorer Shoulder Bag', 'Shoulder', 'Male', 'Nomad', 'Explore new horizons with our Nomad explorer shoulder bag.', 'Featuring ample storage space and rugged construction, this shoulder bag is built for adventure.', 99.99, 1),
(31, 'Urban Chic Purse', 'Purse', 'Female', 'UrbanTrek', 'Elevate your style with our urban chic purse.', 'With its sleek design and luxurious materials, this purse is perfect for any occasion.', 49.99, 1),
(32, 'Nomad Traveler Purse', 'Purse', 'Female', 'Nomad', 'Travel in style with our Nomad traveler purse.', 'Featuring multiple compartments and RFID-blocking technology, this purse keeps your essentials secure during your travels.', 59.99, 1),
(33, 'Tech Enthusiast Purse', 'Purse', 'Female', 'UrbanTrek', 'Carry your tech gear with ease using our tech enthusiast purse.', 'With padded compartments and USB charging ports, this purse keeps your devices safe and charged.', 79.99, 1),
(34, 'Adventure Utility Purse', 'Purse', 'Female', 'AdventureGear', 'Stay organized on your adventures with our adventure utility purse.', 'Featuring durable materials and multiple pockets, this purse is perfect for outdoor excursions.', 69.99, 1),
(35, 'City Explorer Purse', 'Purse', 'Female', 'UrbanTrek', 'Explore the city in style with our city explorer purse.', 'With its spacious interior and modern design, this purse is perfect for urban adventurers.', 59.99, 1),
(36, 'Nomad Explorer Purse', 'Purse', 'Female', 'Nomad', 'Discover new horizons with our Nomad explorer purse.', 'With its versatile style and durable construction, this purse is ideal for everyday use or travel.', 69.99, 1);

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
(108, 'Olivia Scott', 'olivia.scott@example.com', 'Love the color and design. Fits all my essentials perfectly.', 36, '2024-05-05 16:45:00');

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
