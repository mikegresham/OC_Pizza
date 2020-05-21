-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 21, 2020 at 11:00 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oc_pizza`
--
CREATE DATABASE IF NOT EXISTS `oc_pizza` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `oc_pizza`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(7) NOT NULL,
  `first_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `first_name`, `last_name`, `address`, `phone_number`, `email_address`) VALUES
(1, 'Sara', 'Bucko', '12 Curie Avenue, Swindon, SN1 4GB', '01793688997', 'Sara.bucko@hotmail.com'),
(2, 'David', 'Lawrence', '56 William St, Swindon, SN1 5LB', '07943698233', 'd.lawrence56@gmail.com'),
(3, 'Jeremy', 'Hunter', '93 Kingshill Road, Swindon, SN1 4LG', '01793355300', 'jezhunter98@hotmail.com'),
(4, 'Martha', 'Stewart', 'Clifton St, Swindon, SN1 3PY', '01793429250', 'marthastewart@live.com'),
(5, 'Tom', 'Crathorne', '47 Albion St, Swindon, SN1 5LL', '01793688528', 'Tommyboy@live.co.uk'),
(6, 'Chris', 'Bulmer', '1 Park Lane, Swindon, SN1 5HG', '01793522708', 'chrisbulmer65@gmail.com'),
(7, 'Roy', 'MacNaughton', '73 Commercial Rd, Swindon, SN1 5NX', '01793534238', 'roy.macnaughton@outlook.com'),
(8, 'Julia', 'Roberts', '10 Belmont Cresent, Swindon, SN1 4EY', '01793522344', 'j.h.roberts89@hotmail.co.uk'),
(9, 'John', 'Edmonds', '25 Milton Road, SWINDON, SN1 5JA', '01793521315', 'pastor@freshbrook.org'),
(10, 'Billy', 'Peters', '163 Victoria Rd, Swindon, SN1 3BU', '01793836871', 'bill.peters@outlook.com'),
(11, 'David', 'Quantrell', 'Rochester House, 27, Victoria Rd, Swindon, SN1 3AW', '01793612333', 'dave@quantrell.co.uk'),
(12, 'Ruth', 'Paddon', '140 Okus Rd, Swindon, SN1 4JP', '01793644367', 'ruthpaddon7323@gmail.com'),
(13, 'Charlie', 'Potter', '77 Faringdon Rd, Swindon, SN1 5DL', '01793534683', 'Charlespotter@outlook.com'),
(14, 'Jamie', 'Rivers', '28 Morley Street, SWINDON, SN1 1SG ', '01793520300', 'jrivers91@hotmail.com'),
(15, 'Christine', 'Gresham', '31 Larchmore Close, Swindon, SN25 3QG', '07759781570', 'chrisgwb@aol.com');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(7) NOT NULL,
  `store_id` int(7) NOT NULL,
  `first_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `store_id`, `first_name`, `last_name`, `position`) VALUES
(1, 1, 'Michael', 'Gresham', 'Manager'),
(2, 1, 'Karen ', 'Noel', 'Assistant Manager'),
(3, 1, 'Sam', 'Cooper', 'Pizzailo'),
(4, 1, 'Kelly', 'Trivett', 'Pizzailo'),
(5, 1, 'James', 'Hyett', 'Pizzailo'),
(6, 1, 'Ellie', 'Marsh', 'Pizzailo'),
(7, 1, 'Alicia', 'Shafiq', 'Pizzailo'),
(8, 1, 'Louis', 'Jeremiah', 'Driver'),
(9, 1, 'Magda', 'Syzda', 'Driver'),
(10, 1, 'Jay', 'Trivett', 'Driver'),
(11, 2, 'Chrissy', 'Nevill', 'Manager'),
(12, 2, 'Jen', 'Buchanan', 'Assistant Manager'),
(13, 2, 'Shannon', 'Soul', 'Pizzailo'),
(14, 2, 'Matthew', 'Pritchett', 'Pizzailo'),
(15, 2, 'Dan', 'Sharp', 'Pizzailo'),
(16, 2, 'Arthur', 'Franklin', 'Pizzailo'),
(17, 2, 'Rachael', 'Duxbury', 'Pizzailo'),
(18, 2, 'Rachel', 'Mills', 'Driver'),
(19, 2, 'Asher', 'Wood', 'Driver'),
(20, 2, 'Lauren', 'Walters', 'Driver'),
(21, 3, 'Emma', 'Lee', 'Manager'),
(22, 3, 'Tyler', 'Duprie', 'Assistant Manager'),
(23, 3, 'Georgie', 'Goodman', 'Pizzailo'),
(24, 3, 'Jess', 'Gresham', 'Pizzailo'),
(25, 3, 'Toby', 'Kutassy', 'Pizzailo'),
(26, 3, 'Victoria', 'Bass', 'Pizzailo'),
(27, 3, 'Lorraine', 'Preston', 'Pizzailo'),
(28, 3, 'Chole', 'Chandler', 'Driver'),
(29, 3, 'Chantell', 'Brewster', 'Driver'),
(30, 3, 'Ross', 'Dearing', 'Driver'),
(41, 4, 'Donna', 'Mulloholland', 'Manager'),
(42, 4, 'Amy', 'Cox', 'Assistant Manager'),
(43, 4, 'Dominic', 'Spencer', 'Pizzailo'),
(44, 4, 'Josh', 'Ritchings', 'Pizzailo'),
(45, 4, 'Toni', 'Brewster', 'Pizzailo'),
(46, 4, 'Catherine', 'Jennings', 'Pizzailo'),
(47, 4, 'Harry', 'Goodman', 'Pizzailo'),
(48, 4, 'Chantelle', 'Carter', 'Driver'),
(49, 4, 'Ben', 'Hartman', 'Driver'),
(50, 4, 'Robyn', 'Carter', 'Driver'),
(61, 5, 'Dave', 'Davison', 'Manager'),
(62, 5, 'Ben', 'Crathorne', 'Assistant Manager'),
(63, 5, 'Amelia', 'Smalley', 'Pizzailo'),
(64, 5, 'Steven', 'Shinde', 'Pizzailo'),
(65, 5, 'Maria', 'Scheops', 'Pizzailo'),
(66, 5, 'Mrinalini', 'Elliot', 'Pizzailo'),
(67, 5, 'Lauren', 'Wood', 'Pizzailo'),
(68, 5, 'Tom', 'Davison', 'Driver'),
(69, 5, 'Gwilym', 'Davey', 'Driver'),
(70, 5, 'Joanna', 'Stewart', 'Driver');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item`
--

CREATE TABLE `menu_item` (
  `menu_item_id` int(7) NOT NULL,
  `item_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_item`
--

INSERT INTO `menu_item` (`menu_item_id`, `item_name`, `category`, `price`) VALUES
(26, 'Original Pizza', 'Pizza', '11.95'),
(27, 'Meat Feast Pizza', 'Pizza', '13.95'),
(28, 'Pepperoni Pizza', 'Pizza', '13.95'),
(29, 'BBQ Chicken Pizza', 'Pizza', '13.95'),
(30, 'Veggie Pizza', 'Pizza', '13.95'),
(31, 'Chicken Feast Pizza', 'Pizza', '13.95'),
(32, 'Spicy Pizza', 'Pizza', '13.95'),
(33, 'Hawaiian Pizza', 'Pizza', '13.95'),
(34, 'Wedges', 'Sides', '2.95'),
(35, 'Garlic Bread', 'Sides', '2.95'),
(39, 'Coleslaw', 'Sides', '1.95'),
(40, 'Chicken Dippers', 'Sides', '3.95'),
(41, 'Mozzarella Sticks', 'Sides', '3.95'),
(42, 'Garlic Dip', 'Sides', '0.50'),
(43, 'BBQ Dip', 'Sides', '0.50'),
(44, 'Cookies', 'Dessert', '3.95'),
(45, 'Cinnamon Buns', 'Dessert', '3.95'),
(46, 'Caramel Ice Cream', 'Dessert', '4.95'),
(47, 'Chocolate Ice Cream', 'Dessert', '4.95'),
(48, 'Vanilla Ice Cream', 'Dessert', '4.95'),
(49, 'Coca Cola (2L)', 'Drinks', '2.95'),
(50, 'Diet Coke (2L)', 'Drinks', '2.95'),
(51, 'Coke Zero (2L)', 'Drinks', '2.95'),
(52, 'Fanta (2L)', 'Drinks', '2.50'),
(53, 'Sprite (2L)', 'Drinks', '2.50'),
(54, 'Dr Pepper (2L)', 'Drinks', '2.50');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(7) NOT NULL,
  `customer_id` int(7) NOT NULL,
  `store_id` int(7) NOT NULL,
  `order_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_time` datetime NOT NULL,
  `eta` datetime NOT NULL,
  `payment_method` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_time` datetime NOT NULL,
  `order_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `customer_id`, `store_id`, `order_type`, `order_time`, `eta`, `payment_method`, `payment_time`, `order_status`) VALUES
(1, 1, 2, 'delivery', '2020-05-10 18:30:05', '2020-05-10 19:30:05', 'card', '2020-05-21 18:30:05', 'complete'),
(2, 3, 1, 'delivery', '2020-05-10 21:30:05', '2020-05-10 22:30:05', 'cash', '2020-05-21 22:30:05', 'complete'),
(3, 8, 5, 'delivery', '2020-05-21 17:32:30', '2020-05-21 18:32:30', 'card', '2020-05-21 17:32:30', 'out for delivery'),
(4, 7, 1, 'delivery', '2020-05-21 17:37:30', '2020-05-21 18:37:30', 'card', '2020-05-21 17:37:30', 'ready'),
(5, 5, 3, 'collection', '2020-05-21 19:32:30', '2020-05-21 20:32:30', 'cash', '2020-05-21 20:32:30', 'ready');

-- --------------------------------------------------------

--
-- Table structure for table `order_contains`
--

CREATE TABLE `order_contains` (
  `order_id` int(7) NOT NULL,
  `menu_item_id` int(7) NOT NULL,
  `quantity_ordered` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_contains`
--

INSERT INTO `order_contains` (`order_id`, `menu_item_id`, `quantity_ordered`) VALUES
(1, 26, 2),
(1, 46, 1),
(1, 50, 1),
(1, 41, 1),
(2, 28, 3),
(2, 52, 1),
(3, 29, 1),
(3, 31, 1),
(3, 35, 2),
(3, 32, 1),
(3, 51, 2),
(4, 29, 2),
(5, 29, 2),
(5, 28, 2),
(5, 33, 1),
(5, 54, 3);

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `payment_id` int(7) NOT NULL,
  `customer_id` int(7) NOT NULL,
  `card_number` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`payment_id`, `customer_id`, `card_number`, `expiry_date`) VALUES
(1, 1, '5438825512867954', '2020-12-31'),
(2, 1, '4552811817269164', '2021-04-30'),
(3, 2, '5451429976118095', '2020-09-30'),
(4, 4, '4560003266591484', '2020-11-30'),
(5, 4, '4232952167138050', '2021-10-31'),
(6, 4, '5201563837476582', '2021-02-28'),
(7, 7, '5247216623884198', '2021-04-30'),
(8, 8, '5138524686754485', '2020-05-31'),
(9, 10, '4330867721557895', '2020-08-31'),
(10, 10, '5456568345857639', '2021-07-31'),
(11, 11, '5451776412262329', '2020-10-31'),
(12, 12, '5401928913699175', '2020-12-31'),
(13, 14, '4032383431251408', '2020-05-31'),
(14, 15, '5185016956538799', '2021-08-31');

-- --------------------------------------------------------

--
-- Table structure for table `pizzeria`
--

CREATE TABLE `pizzeria` (
  `store_id` int(7) NOT NULL,
  `store_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pizzeria`
--

INSERT INTO `pizzeria` (`store_id`, `store_name`, `address`, `phone_number`, `email_address`) VALUES
(1, 'Orbital', 'OC Pizza, Orbital Shopping Park, Thamesdown Drive, Swindon, SN25 4BG', '01793456798', 'orbital@ocpizza.co.uk'),
(2, 'Greenbridge', 'OC Pizza, Greenbridge Retail Park, Murphy Road, Swindon, SN3 6HN', '01793586028', 'greenbridge@ocpizza.co.uk'),
(3, 'Lydiard Fields', 'OC Pizza, Lyrdiard Fields, Great Western Way, Swindon, SN5 3GH', '01793877289', 'lydiard@ocpizza.co.uk'),
(4, 'Parade', 'OC Pizza, The Parade, High Street, Swindon, SN1 7LZ', '01793405924', 'parade@ocpizza.co.uk'),
(5, 'Tadpole Village', 'OC Pizza, Tadpole Garden Village, Mead Way, Swindon, SN25 TJH', '01793987145', 'tadpole@ocpizza.co.uk');

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `menu_item_id` int(7) NOT NULL,
  `stock_id` int(7) NOT NULL,
  `quantity` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`menu_item_id`, `stock_id`, `quantity`) VALUES
(26, 137, '0.30'),
(26, 138, '0.10'),
(26, 139, '0.05'),
(27, 137, '0.30'),
(27, 138, '0.10'),
(27, 139, '0.05'),
(27, 140, '0.03'),
(27, 141, '0.03'),
(27, 142, '0.03'),
(27, 143, '0.03'),
(28, 137, '0.30'),
(28, 138, '0.10'),
(28, 139, '0.05'),
(28, 142, '0.10'),
(29, 137, '0.30'),
(29, 138, '0.10'),
(29, 144, '0.05'),
(29, 143, '0.10'),
(30, 137, '0.30'),
(30, 138, '0.10'),
(30, 139, '0.05'),
(30, 145, '0.50'),
(30, 147, '0.03'),
(30, 146, '0.03'),
(30, 149, '0.50'),
(31, 137, '0.30'),
(31, 138, '0.10'),
(31, 139, '0.05'),
(31, 143, '0.10'),
(31, 147, '0.03'),
(32, 137, '0.30'),
(32, 138, '0.10'),
(32, 139, '0.05'),
(32, 150, '0.05'),
(32, 142, '0.10'),
(33, 137, '0.30'),
(33, 138, '0.10'),
(33, 139, '0.05'),
(33, 141, '0.10'),
(33, 148, '0.05'),
(34, 151, '0.50'),
(35, 137, '0.15'),
(35, 152, '0.05'),
(35, 138, '0.05'),
(39, 153, '0.30'),
(44, 157, '4.00'),
(40, 143, '0.30'),
(40, 154, '0.05'),
(41, 138, '0.50'),
(41, 154, '0.05'),
(42, 155, '1.00'),
(43, 156, '1.00'),
(45, 137, '0.20'),
(45, 158, '0.05'),
(45, 159, '0.10'),
(46, 160, '1.00'),
(47, 161, '1.00'),
(48, 162, '1.00'),
(54, 167, '1.00'),
(53, 168, '1.00'),
(52, 166, '1.00'),
(51, 165, '1.00'),
(50, 164, '1.00'),
(49, 163, '1.00');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(7) NOT NULL,
  `stock_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `on_hand_amount` decimal(10,2) NOT NULL,
  `unit` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `stock_name`, `cost`, `on_hand_amount`, `unit`) VALUES
(137, 'Dough', '3.00', '50.00', 'kg'),
(138, 'Mozzarella', '3.50', '40.00', 'kg'),
(139, 'Tomato Sauce', '1.50', '50.00', 'litre'),
(140, 'Bacon', '4.95', '20.00', 'kg'),
(141, 'Ham', '3.95', '20.00', 'kg'),
(142, 'Pepperoni', '4.50', '30.00', 'kg'),
(143, 'Chicken Strips', '3.95', '10.00', 'kg'),
(144, 'BBQ Sauce', '2.00', '20.00', 'kg'),
(145, 'Peppers', '0.30', '30.00', 'each'),
(146, 'Mushrooms', '2.95', '5.00', 'kg'),
(147, 'Sweetcorn', '2.95', '5.00', 'kg'),
(148, 'Pineapple', '2.95', '5.00', 'kg'),
(149, 'Red Onion', '0.30', '30.00', 'each'),
(150, 'Jalapenos', '4.95', '2.00', 'kg'),
(151, 'Potato Wedges', '4.00', '10.00', 'kg'),
(152, 'Garlic Butter', '4.00', '5.00', 'kg'),
(153, 'Coleslaw', '1.95', '5.00', 'kg'),
(154, 'Breadcrumbs', '2.95', '2.00', 'kg'),
(155, 'Garlic Dip', '0.10', '200.00', 'each'),
(156, 'BBQ Dip', '0.10', '200.00', 'each'),
(157, 'Cookies', '0.25', '200.00', 'each'),
(158, 'Cinnamon Powder', '3.00', '2.00', 'kg'),
(159, 'Icing', '2.95', '2.00', 'kg'),
(160, 'Caramel Ice Cream', '2.25', '50.00', 'each'),
(161, 'Chocolate Ice Cream', '2.25', '50.00', 'each'),
(162, 'Vanilla Ice Cream', '2.25', '50.00', 'each'),
(163, 'Coca Cola (2L)', '1.00', '100.00', 'each'),
(164, 'Diet Coke (2L)', '0.95', '100.00', 'each'),
(165, 'Coke Zero (2L)', '0.95', '100.00', 'each'),
(166, 'Fanta (2L)', '0.80', '100.00', 'each'),
(167, 'Dr Pepper (2L)', '0.80', '100.00', 'each'),
(168, 'Sprite (2L)', '0.80', '100.00', 'each');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD PRIMARY KEY (`menu_item_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `order_contains`
--
ALTER TABLE `order_contains`
  ADD KEY `menu_item_id` (`menu_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `pizzeria`
--
ALTER TABLE `pizzeria`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD KEY `menu_item_id` (`menu_item_id`),
  ADD KEY `stock_id` (`stock_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `menu_item`
--
ALTER TABLE `menu_item`
  MODIFY `menu_item_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `payment_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pizzeria`
--
ALTER TABLE `pizzeria`
  MODIFY `store_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `pizzeria` (`store_id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `pizzeria` (`store_id`);

--
-- Constraints for table `order_contains`
--
ALTER TABLE `order_contains`
  ADD CONSTRAINT `order_contains_ibfk_1` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_item` (`menu_item_id`),
  ADD CONSTRAINT `order_contains_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`);

--
-- Constraints for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD CONSTRAINT `payment_details_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `recipe`
--
ALTER TABLE `recipe`
  ADD CONSTRAINT `recipe_ibfk_1` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_item` (`menu_item_id`),
  ADD CONSTRAINT `recipe_ibfk_2` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`stock_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
