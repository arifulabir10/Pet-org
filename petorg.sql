-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2022 at 02:28 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petorg`
--

-- --------------------------------------------------------

--
-- Table structure for table `ask_a_vet`
--

CREATE TABLE `ask_a_vet` (
  `ask_id` int(20) NOT NULL,
  `category` varchar(20) NOT NULL,
  `ask_question` varchar(100) NOT NULL,
  `image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blog_article`
--

CREATE TABLE `blog_article` (
  `blog_id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `comment` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blog_read`
--

CREATE TABLE `blog_read` (
  `user_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE `buy` (
  `product_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`product_id`, `user_id`) VALUES
(9, 2),
(5, 2),
(8, 6),
(6, 4),
(4, 5),
(1, 1),
(2, 3),
(7, 5),
(4, 1),
(4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `product_id` int(20) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`product_id`, `product_name`, `category`, `price`) VALUES
(1, 'Leash and Collar ', 'Cat ', 140),
(2, 'Leash and Collar ', 'Dog ', 280),
(5, 'Air Dried Food ', 'All pet ', 400),
(6, 'Tweezers ', 'All pet ', 120);

-- --------------------------------------------------------

--
-- Table structure for table `donation_pending`
--

CREATE TABLE `donation_pending` (
  `donation_id` int(20) NOT NULL,
  `pet_type` varchar(50) NOT NULL,
  `pet_name` varchar(50) NOT NULL,
  `breed` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `user_id` int(20) NOT NULL,
  `details` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donation_pending`
--

INSERT INTO `donation_pending` (`donation_id`, `pet_type`, `pet_name`, `breed`, `image`, `user_id`, `details`) VALUES
(1, 'Pig', 'Donald Trump', 'American', 'pic1.jpg', 4, 'This is an American pig Donald Trump. Please adopt him.'),
(2, 'Pig', 'Putin', 'Russian', 'pic2.jpg', 3, 'This is my cute pig Putin. Please adopt him.'),
(3, 'Cat', 'Rakkhos', 'Persian', 'pic4.jpg', 2, 'This is my cat Rakkhos. Please take it away from me.'),
(8, 'Cow', 'Goru', 'Friesian', 'pic7.jpg', 1, 'This is my cow Goru.'),
(11, 'dog', 'jojo', 'bangladeshi', 'pic3.jpg', 3, 'My dog is very funny.'),
(17, 'cat', 'tooomm', 'bangladeshi', 'pic6.jpg', 3, '  jhgffdgshhs\r\n		');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `donor_id` int(20) NOT NULL,
  `pet_type` varchar(50) NOT NULL,
  `breed` varchar(50) NOT NULL,
  `pet_name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `user_id` int(20) NOT NULL,
  `details` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`donor_id`, `pet_type`, `breed`, `pet_name`, `image`, `user_id`, `details`) VALUES
(1, 'Cat', 'Persian', 'Motu', 'pic5.jpg', 3, 'This is a 2 year old Persian Cat. Completely healthy and sound. '),
(2, 'Dog', 'Indian', 'Patlu', 'pic3.jpg', 6, 'This is an Indian breed dog. It was rescued from a jungle. Now, we are looking for someone who wants to adopt this poor animal. '),
(3, 'Cat', 'Bangladeshi', 'Bunny', 'pic6.jpg', 6, 'This is a cat but its name is Bunny. It looked like a bunny while it was little. One of my friend named it Bunny. Now, I want to give it up for adoption.'),
(4, 'Rabbit', 'Holland', 'James Bond', 'pic8.jpg', 5, 'This is an year old rabbit. I bought it to eat but I started raising it. Then named it James Bond. Ha ha... Now, I have to give it up for adoption because I am moving out of my home and living in a place where it is now easy for me to raise this rabbit any more. '),
(5, 'Cow', 'Wagyu', 'Tom Holland', 'pic7.jpg', 1, 'I raised this cow from its birth. This is the most expensive breed of cow. Currently I want to give it up for adoption.'),
(6, 'Rat', 'British', 'Jerry', 'pic9.jpg', 4, 'I bought Jerry 3 months ago and now I am little busy with my job. Now, I am looking for someone who can adopt Jerry.'),
(8, 'Alligator', 'Everglades ', 'Kumir', 'pic10.jpg', 2, 'This is an abandoned Alligator. It was found in an abandoned swimming pool in Everglades Florida.'),
(9, 'dog ', 'bangladeshi ', 'jojo ', 'pic3.jpg ', 3, 'My dog is very funny.'),
(10, 'cat ', 'bangladeshi ', 'tooomm ', 'pic6.jpg ', 3, '  jhgffdgshhs');

-- --------------------------------------------------------

--
-- Table structure for table `groomer`
--

CREATE TABLE `groomer` (
  `groomer_id` int(11) NOT NULL,
  `contact_number` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `post_code` int(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `ward_number` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `groomer`
--

INSERT INTO `groomer` (`groomer_id`, `contact_number`, `email`, `post_code`, `city`, `district`, `ward_number`) VALUES
(1, '234566', 'shakib@gmail.com', 1233, 'Dhaka', 'Dhaka', 17),
(2, '23456', 'tamim@gmail.com', 1232, 'Dhaka', 'Dhaka', 11),
(3, '234568', 'dhrubo@gmail.com', 1100, 'Dhaka', 'Dhaka', 22),
(4, '234569', 'm.r.k.niloy@gmail.com', 32, 'Dhaka', 'Dhaka', 13),
(5, '234560', 'hassan@gmail.com', 1123, 'Dhaka', 'Dhaka', 11),
(6, '234561', 'badam@gmail.com', 2350, 'Dhaka', 'Dhaka', 1100);

-- --------------------------------------------------------

--
-- Table structure for table `grooming_service`
--

CREATE TABLE `grooming_service` (
  `pet_type` varchar(50) NOT NULL,
  `serial_number` int(20) NOT NULL,
  `groomer_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `service_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grooming_service`
--

INSERT INTO `grooming_service` (`pet_type`, `serial_number`, `groomer_id`, `user_id`, `service_id`) VALUES
('Cat', 1, 5, 5, 3),
('Dog', 2, 3, 1, 3),
('Dog', 3, 5, 2, 1),
('Cat', 4, 5, 4, 1),
('Cat', 5, 4, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `content`, `category`) VALUES
(1, 'All dogs and cats are vaccinated and treated for parasites before they become available for adoption.\r\nAt the time of adoption, you will receive paperwork detailing specific medical information about your new pet. The medical history report will list vaccinations, medications, and procedures your new pet has received during its stay at Animal Humane Society. You will also receive a completed Health Confirmation form which includes detailed information about post-adoption medical care.', 'Health'),
(2, 'Firstly, you won\'t find premium pet food brands in your supermarket, they are only available from your veterinary clinic, or specialist pet food retailers like Petpost.\r\n\r\nTake a look at the bag or tin - a premium food will have the AAFCO label. This means it been tested by the Association of American Feed Control Officials (AAFCO), ensuring it provides a complete and balanced diet for a healthy dog or cat.', 'Food'),
(3, 'Begin a routine of home healthcare right away. Grooming sessions are a perfect time to check your pet for fleas, ticks, rashes, cuts, lumps, and any other physical irregularities. Changes in your pet’s behavior, appetite, or elimination habits may indicate a health problem. Always consult with a veterinarian if you notice a potential health problem or before proceeding with any new treatment. Never give any over-the-counter medication without first checking with your veterinarian. Human drugs can be fatal to animals!', 'Health'),
(4, 'One of the main differences with premium pet foods is higher digestibility. A premium pet food might have an 80% digestibility - compared to say 40% for a supermarket brand.\r\n\r\nThis means that for every 100gm of premium food fed and eaten, 80gm is digested and 20gm ends up as poop - and the supermarket brand with only 40gm digested and 60gm of poop.\r\n\r\nYou can see that you would have to feed twice as much of the supermarket food to keep up, and would then end up with 6 times as much poop in the process (a significant fact if you have lawns and kitty litter boxes!)\r\n\r\nThe digestibility is affected by the type of protein, meat and ingredients in the food. Supermarket foods tend to have cheaper cuts of meat and more grains acting as fillers.', 'Food'),
(5, 'Premium foods also have more constant levels of protein and vitamins - and they clearly state what their protein content is derived from. If they state chicken- your pet gets chicken. This is important to know if your pet has allergies or may react to certain proteins.\r\n\r\nMany brands will only claim \'animal proteins or by-products\', so it\'s a gamble as to what you may get from one can to the next.\r\n\r\nBut perhaps most importantly, you\'ll notice a difference in your pet when they switch to an improved diet. The higher quality and level of vitamins and minerals will usually give them a noticeably glossier coat, healthier skin and higher energy levels.', 'Food'),
(6, 'Most premium food brands will provide a money-back guarantee. So if your pet won\'t eat it, you can return your bag for a full refund.\r\n\r\nAnother advantage is that while cheaper foods tend to be \'one size fits all\'; premium foods are carefully formulated for your type of pet. There are premium foods specially formulated for your pet\'s age (e.g young, adult or senior); their size (e.g small dog versus large dog); their weight (e.g calorie-controlled diets); and even your specific breed of dog (such Royal Canin\'s breed range).', 'Food'),
(7, 'My cat is so cute', 'Sitting ');

-- --------------------------------------------------------

--
-- Table structure for table `post_read`
--

CREATE TABLE `post_read` (
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_read`
--

INSERT INTO `post_read` (`user_id`, `post_id`) VALUES
(1, 1),
(2, 3),
(2, 6),
(3, 2),
(3, 5),
(4, 4),
(5, 6),
(6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_view`
--

CREATE TABLE `post_view` (
  `post_id` int(20) NOT NULL,
  `content` varchar(500) NOT NULL,
  `category` varchar(50) NOT NULL,
  `user_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_view`
--

INSERT INTO `post_view` (`post_id`, `content`, `category`, `user_id`) VALUES
(16, 'hjgskjghkshduhjkdgndkjn', 'Sitting', 3);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(20) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `price` int(20) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `category`, `price`, `image`) VALUES
(1, 'Leash and Collar', 'Cat', 140, 'image/pro1.jpg'),
(2, 'Leash and Collar', 'Dog', 280, 'image/pro2.jpg'),
(3, 'Food Bowls', 'Cat', 300, 'image/pro4.jpg'),
(4, 'Food Bowls', 'Dog', 450, 'image/pro3.jpg'),
(5, 'Air Dried Food', 'All pet', 400, 'image/pro5.jpg'),
(6, 'Tweezers', 'All pet', 120, 'image/pro6.jpg'),
(7, 'Grooming Brush', 'All pet', 200, 'image/pro7.jpg'),
(8, 'Nail Trimmer', 'All pet', 250, 'image/pro8.jpg'),
(9, 'Stain and Odor Remover', 'All pet', 300, 'image/pro9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `receiver`
--

CREATE TABLE `receiver` (
  `receiver_id` int(20) NOT NULL,
  `pet_type` varchar(50) NOT NULL,
  `breed` varchar(50) NOT NULL,
  `pet_name` varchar(50) NOT NULL,
  `user_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receiver`
--

INSERT INTO `receiver` (`receiver_id`, `pet_type`, `breed`, `pet_name`, `user_id`) VALUES
(1, 'Rabbit', 'Angora', 'Bunny', 2),
(2, 'Cat', 'Persian', 'Meow', 6),
(3, 'Aligator', 'Everglades', 'Kumir', 5),
(4, 'Dog', 'Husky ', 'Bear', 2),
(5, 'Dog', 'German Shepherd', 'Tiger', 1),
(6, 'Cat', 'Bangladeshi', 'Bilai', 4);

-- --------------------------------------------------------

--
-- Table structure for table `rescue_team`
--

CREATE TABLE `rescue_team` (
  `rescuer_id` int(20) NOT NULL,
  `rescuer_phone` varchar(50) NOT NULL,
  `rescuer_mail` varchar(50) NOT NULL,
  `post_code` int(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `ward_number` int(20) NOT NULL,
  `district` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rescue_team`
--

INSERT INTO `rescue_team` (`rescuer_id`, `rescuer_phone`, `rescuer_mail`, `post_code`, `city`, `ward_number`, `district`, `location`) VALUES
(1, '123456', 'fire_badda@gmail.com', 1232, 'Dhaka', 32, 'Dhaka', 'Badda'),
(2, '123457', 'fire_kuril@gmail.com', 1233, 'Dhaka', 33, 'Dhaka', 'Kuril'),
(3, '123458', 'fire_gabtoli@gmail.com', 1234, 'Dhaka', 34, 'Dhaka', 'Gabtoli'),
(4, '123459', 'fire_dhanmondi@gmail.com', 1235, 'Dhaka', 35, 'Dhaka', 'Dhanmondi'),
(5, '123450', 'fire_shahbagh@gmail.com', 1236, 'Dhaka', 36, 'Dhaka', 'Shahbagh'),
(6, '123451', 'fire_uttara@gmail.com', 1237, 'Dhaka', 37, 'Dhaka', 'Uttara'),
(7, '123452', 'fire_mohakhali@gmail.com', 1238, 'Dhaka', 38, 'Dhaka', 'Mohakhali');

-- --------------------------------------------------------

--
-- Table structure for table `service_type`
--

CREATE TABLE `service_type` (
  `service_name` varchar(50) NOT NULL,
  `price` int(20) NOT NULL,
  `service_id` int(20) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_type`
--

INSERT INTO `service_type` (`service_name`, `price`, `service_id`, `image`) VALUES
('Nail Cutting-70 tk', 70, 1, 'img3.jpg'),
('Shower- 150 tk', 150, 2, 'img4.jpg'),
('Fur Cutting- 100 tk', 100, 3, 'img1.jpg'),
('Fur Coloring- 300 tk', 300, 4, 'img2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_phone` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `user_id` int(20) NOT NULL,
  `rescuer_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`first_name`, `last_name`, `password`, `user_phone`, `username`, `user_id`, `rescuer_id`) VALUES
('Tarikuzzaman', 'Tuhin', '12345679', '1234551', 'tuhinshosha1', 1, 2),
('Md.Siam', 'Hossain Sarker', '12345677', '1234555', 'siam', 2, 4),
('Mahmudul', 'Hassan Ratul', '12345679', '1234552', 'ratul', 3, 2),
('Farhan', 'Shahriar Alvi', '12345677', '1234556', 'falvi192010', 4, 5),
('Ariful Islam', 'Abir', '12345677', '1234553', 'ariful', 5, 1),
('Most.Sumiya', 'Easmin Labannaya', '12345679', '1234554', 'most', 6, 3),
('Alvi', 'uiu ', '1234567', '9796866568', 'alvi1849', 7, 7),
('Alvi', 'uiu ', '123456764', '9796866568', 'alvi18', 8, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ask_a_vet`
--
ALTER TABLE `ask_a_vet`
  ADD PRIMARY KEY (`ask_id`);

--
-- Indexes for table `blog_article`
--
ALTER TABLE `blog_article`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `blog_read`
--
ALTER TABLE `blog_read`
  ADD PRIMARY KEY (`user_id`,`blog_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `buy`
--
ALTER TABLE `buy`
  ADD KEY `test5` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `donation_pending`
--
ALTER TABLE `donation_pending`
  ADD PRIMARY KEY (`donation_id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`donor_id`),
  ADD KEY `test6` (`user_id`);

--
-- Indexes for table `groomer`
--
ALTER TABLE `groomer`
  ADD PRIMARY KEY (`groomer_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `grooming_service`
--
ALTER TABLE `grooming_service`
  ADD PRIMARY KEY (`serial_number`),
  ADD KEY `test2` (`user_id`),
  ADD KEY `test3` (`service_id`),
  ADD KEY `test4` (`groomer_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_read`
--
ALTER TABLE `post_read`
  ADD PRIMARY KEY (`user_id`,`post_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `post_view`
--
ALTER TABLE `post_view`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `receiver`
--
ALTER TABLE `receiver`
  ADD PRIMARY KEY (`receiver_id`),
  ADD KEY `test1` (`user_id`);

--
-- Indexes for table `rescue_team`
--
ALTER TABLE `rescue_team`
  ADD PRIMARY KEY (`rescuer_id`);

--
-- Indexes for table `service_type`
--
ALTER TABLE `service_type`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `test` (`rescuer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ask_a_vet`
--
ALTER TABLE `ask_a_vet`
  MODIFY `ask_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_article`
--
ALTER TABLE `blog_article`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `donor_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `groomer`
--
ALTER TABLE `groomer`
  MODIFY `groomer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `grooming_service`
--
ALTER TABLE `grooming_service`
  MODIFY `serial_number` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `receiver`
--
ALTER TABLE `receiver`
  MODIFY `receiver_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rescue_team`
--
ALTER TABLE `rescue_team`
  MODIFY `rescuer_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `service_type`
--
ALTER TABLE `service_type`
  MODIFY `service_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_read`
--
ALTER TABLE `blog_read`
  ADD CONSTRAINT `blog_read_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `blog_read_ibfk_2` FOREIGN KEY (`blog_id`) REFERENCES `blog_article` (`blog_id`);

--
-- Constraints for table `buy`
--
ALTER TABLE `buy`
  ADD CONSTRAINT `buy_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `test5` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `donor`
--
ALTER TABLE `donor`
  ADD CONSTRAINT `test6` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `grooming_service`
--
ALTER TABLE `grooming_service`
  ADD CONSTRAINT `test2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `test3` FOREIGN KEY (`service_id`) REFERENCES `service_type` (`service_id`),
  ADD CONSTRAINT `test4` FOREIGN KEY (`groomer_id`) REFERENCES `groomer` (`groomer_id`);

--
-- Constraints for table `post_read`
--
ALTER TABLE `post_read`
  ADD CONSTRAINT `post_read_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `post_read_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);

--
-- Constraints for table `receiver`
--
ALTER TABLE `receiver`
  ADD CONSTRAINT `test1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `test` FOREIGN KEY (`rescuer_id`) REFERENCES `rescue_team` (`rescuer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
