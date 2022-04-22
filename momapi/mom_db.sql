-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2022 at 02:41 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mom_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_line`
--

CREATE TABLE `order_line` (
  `id` int(11) NOT NULL,
  `order.id` int(11) NOT NULL,
  `product.id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_line`
--

INSERT INTO `order_line` (`id`, `order.id`, `product.id`, `qty`, `total`) VALUES
(1, 1, 3, 1, 3.99),
(2, 1, 36, 2, 13.98);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `sku` int(10) NOT NULL,
  `image` varchar(256) NOT NULL,
  `category` varchar(256) NOT NULL,
  `description` varchar(256) NOT NULL,
  `retail` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `sku`, `image`, `category`, `description`, `retail`) VALUES
(1, 'Dempsters Blueberry Bagel', 10000, 'https://momapi.megankrenbrink.com/img/bagel-blueberry.jpg', 'bakery', 'Blueberry Bonderful. Toast \'em and eat \'em!', 4.99),
(2, 'Dempsters Everything Bagel', 10001, 'https://momapi.megankrenbrink.com/img/bagel-everything.jpg', 'bakery', 'Everything you want in an everything bagel!', 4.99),
(3, 'Dempsters Original Bagel', 10002, 'https://momapi.megankrenbrink.com/img/bagel-original.jpg', 'bakery', 'Soft plain bagel. Slap some cream cheese on and give er\'', 3.99),
(4, 'Silver Hills Organic Soft Grain Bread', 10003, 'https://momapi.megankrenbrink.com/img/bread-blue.jpg', 'bakery', 'Soft Grain Organic Bread, Yum.', 5.99),
(5, 'Silver Hills The Big 16 Bread', 10004, 'https://momapi.megankrenbrink.com/img/bread-gold.jpg', 'bakery', 'You could make some delicious cheese sandwiches with this one', 4.99),
(6, 'Silver Hills Organic Multigrain Bread', 10005, 'https://momapi.megankrenbrink.com/img/bread-orange.jpg', 'bakery', 'Delicious, good for you bread. ', 5.99),
(7, 'Silver Hills Squirrelly Bread', 10006, 'https://momapi.megankrenbrink.com/img/bread-red.jpg', 'bakery', 'Like a squirrel, eat your nuts and grains! ', 4.99),
(8, 'Cool&Simple Croissants', 10007, 'https://momapi.megankrenbrink.com/img/croissant.jpg', 'bakery', 'Cool, calm, croissants.', 5.99),
(9, 'Dairyland Half & Half 273mL', 10008, 'https://momapi.megankrenbrink.com/img/cream-half273.jpg', 'dairy', 'when you only need a little bit of half and half', 3.99),
(10, 'Dairyland Half & Half 473mL', 10009, 'https://momapi.megankrenbrink.com/img/cream-half473.jpg', 'dairy', 'when you only need a medium amount of half and half', 4.49),
(11, 'Dairyland Half & Half 1L', 10010, 'https://momapi.megankrenbrink.com/img/cream-half1000.jpg', 'dairy', 'when you need a larger amount of half and half', 5.49),
(12, 'Dairyland Heavy Cream 273mL', 10011, 'https://momapi.megankrenbrink.com/img/cream-heavy273.jpg', 'dairy', 'Hefty. ', 3.99),
(13, 'Dairyland Heavy Cream 473mL', 10012, 'https://momapi.megankrenbrink.com/img/cream-heavy473.jpg', 'dairy', 'Heftier.', 4.49),
(14, 'Dairyland Heavy Cream 1L', 10013, 'https://momapi.megankrenbrink.com/img/cream-heavy1000.jpg', 'dairy', 'Heaftiest', 5.49),
(15, 'Silk Dairy Free Half & Half 1L', 10014, 'https://momapi.megankrenbrink.com/img/cream-oat.jpg', 'dairy', 'Don\'t shit yourself creamer or vegan', 5.99),
(16, 'Farm Fresh Eggs 1 Dozen', 10015, 'https://momapi.megankrenbrink.com/img/eggs12.jpg', 'dairy', 'Fresh delicious chicken babies', 6.99),
(17, 'Dairyland 1% Milk 4L', 10016, 'https://momapi.megankrenbrink.com/img/milk-1per4.jpg', 'dairy', 'Lighter Milky', 5.99),
(18, 'Dairyland 2% Milk 4L', 10017, 'https://momapi.megankrenbrink.com/img/milk-2per4.jpg', 'dairy', 'Thicker Milky', 5.99),
(19, 'Silk Almond Milk 2L', 10018, 'https://momapi.megankrenbrink.com/img/milk-almond.jpg', 'dairy', 'Larger Nut Juice ', 6.99),
(20, 'Dairyland Chocolate Milk 4L', 10019, 'https://momapi.megankrenbrink.com/img/milk-chocolate4.jpg', 'dairy', 'Choccy Milk ', 5.99),
(21, 'Oatly Oat Milk 2L', 10020, 'https://momapi.megankrenbrink.com/img/milk-oat.jpg', 'dairy', 'Drinkable Oatmeal', 6.99),
(22, 'Earth\'s Own Vanilla Oat Milk 2L', 10021, 'https://momapi.megankrenbrink.com/img/milk-oatvanilla.jpg', 'dairy', 'Organic Drinkable Oatmeal', 6.99),
(23, 'Dairyland Organic 1% Milk 4L', 10022, 'https://momapi.megankrenbrink.com/img/milk-organic1per4.jpg', 'dairy', 'Slim Organic milk', 6.99),
(24, 'Dairyland Organic 3.25% Milk 4L', 10023, 'https://momapi.megankrenbrink.com/img/milk-organichomo4.jpg', 'dairy', 'Thicc Organic Milk', 6.99),
(25, 'Silk Soy Milk 2L', 10024, 'https://momapi.megankrenbrink.com/img/milk-soy.jpg', 'dairy', '2 litres of liquid soy beans', 6.99),
(26, 'Silk Chocolate Soy milk 2L', 10025, 'https://momapi.megankrenbrink.com/img/milk-soychocolate.jpg', 'dairy', 'Chocolate liquid soy beans', 6.99),
(27, '365 Whole Foods Market Frozen Blueberries', 10026, 'https://momapi.megankrenbrink.com/img/blueberry-frozen.jpg', 'frozen', 'Berry Blue Organic blueberries ', 5.99),
(28, '365 Whole Foods Market Frozen Cherries', 10027, 'https://momapi.megankrenbrink.com/img/cherry-frozen.jpg', 'frozen', 'Organic frozen cherries', 5.99),
(29, 'McCain Extra Crispy Fries', 10028, 'https://momapi.megankrenbrink.com/img/fries-crispy.jpg', 'frozen', 'Krispy Fries ', 2.99),
(30, 'McCain Original Fries', 10029, 'https://momapi.megankrenbrink.com/img/fries-original.jpg', 'frozen', 'Cis fries', 2.99),
(31, 'Breyers Chocolate Ice Cream', 10030, 'https://momapi.megankrenbrink.com/img/icecream-chocolate.jpg', 'frozen', 'Low class chocolate ice cream', 4.49),
(32, 'Häagen-Dazs Chocolate Chip Ice Cream', 10031, 'https://momapi.megankrenbrink.com/img/icecream-chocolatechip.jpg', 'frozen', 'High class chocolate chip ice cream', 6.99),
(33, 'Häagen-Dazs Cookie Dough Ice Cream', 10032, 'https://momapi.megankrenbrink.com/img/icecream-cookiedough.jpg', 'frozen', 'High class cookie dough ice cream', 6.99),
(34, 'Breyers Maple Walnut Ice Cream', 10033, 'https://momapi.megankrenbrink.com/img/icecream-maplewalnut.jpg', 'frozen', 'Low class but trying to be high class in flavour Maple walnut ice cream', 4.49),
(35, 'Häagen-Dazs Strawberry Ice Cream', 10034, 'https://momapi.megankrenbrink.com/img/icecream-strawberry.jpg', 'frozen', 'High class starwberry ice cream', 6.99),
(36, 'Häagen-Dazs Vanilla Chocolate Chip Ice Cream', 10035, 'https://momapi.megankrenbrink.com/img/icecream-vanilla.jpg', 'frozen', 'High class vanilla chocolate chip ice cream ', 6.99),
(37, 'Dr. Oetker Funghi Pizza', 10036, 'https://momapi.megankrenbrink.com/img/pizza-funghi.jpg', 'frozen', 'The fun-ghi at the party pizza', 3.99),
(38, 'Dr. Oetker Mozzarella Pizza', 10037, 'https://momapi.megankrenbrink.com/img/pizza-mozzarella.jpg', 'frozen', 'Cheeeeeese plz pizza', 4.49),
(39, 'Dr. Oetker Pepperoni Pizza', 10038, 'https://momapi.megankrenbrink.com/img/pizza-pepperoni.jpg', 'frozen', 'Yummeroni Pepperoni ', 4.99),
(40, '365 Whole Foods Market Frozen Strawberries', 10039, 'https://momapi.megankrenbrink.com/img/strawberry-frozen.jpg', 'frozen', 'Frozen strawberries ', 3.99),
(41, 'Ore-Ida Golden Tater Tots', 10040, 'https://momapi.megankrenbrink.com/img/tatertots.jpg', 'frozen', 'Tater-tots rock ', 2.99),
(42, 'El Monterey Chicken & Cheese Taquitos', 10041, 'https://momapi.megankrenbrink.com/img/taquitos-chicken.jpg', 'frozen', 'Taquitos, for when you don\'t want to cook or had to many beers.', 10.99),
(43, '365 Whole Foods Market Frozen Tropical Fruit Medley', 10042, 'https://momapi.megankrenbrink.com/img/tropical-frozen.jpg', 'frozen', 'Let\'s get Tropical! Frozen fruits ', 4.99),
(44, 'Maple Leaf Original Natural Bacon', 10043, 'https://momapi.megankrenbrink.com/img/bacon-original.jpg', 'meat', 'Non-smokey bacon', 5.99),
(45, 'Schneiders Hickory Smoked Bacon', 10044, 'https://momapi.megankrenbrink.com/img/bacon-smoked.jpg', 'meat', 'Smokey bacon', 6.99),
(46, 'Lilydale 4 Pack Chicken Breast', 10045, 'https://momapi.megankrenbrink.com/img/chicken-breasts.jpg', 'meat', 'Four breasts of chimkens', 11.99),
(47, 'Foster Farms Cage Free Chicken Drumsticks', 10046, 'https://momapi.megankrenbrink.com/img/chicken-drumsticks.jpg', 'meat', 'Chimken legs', 6.99),
(48, 'Lilydale Chicken Breast Strips', 10047, 'https://momapi.megankrenbrink.com/img/chicken-pieces.jpg', 'meat', 'Chimken strips', 7.49),
(49, 'Canadian AAA Halal Angus Steak', 10048, 'https://momapi.megankrenbrink.com/img/steak-halal.jpg', 'meat', 'Blessed by the holy gods steak', 13.99),
(50, 'Canadian AAA Halal Angus Steak Pieces', 10049, 'https://momapi.megankrenbrink.com/img/steak-pieces.jpg', 'meat', 'Blessed by the holy gods steak but in pieces', 14.99),
(51, 'Canadian 3 Pack AAA Angus Steak', 10050, 'https://momapi.megankrenbrink.com/img/steak-trio.jpg', 'meat', 'Amazing Awesome Astounding angus steak', 28.99),
(52, 'Lilydale Turkey Breast', 10051, 'https://momapi.megankrenbrink.com/img/turkey-breasts.jpg', 'meat', 'Gobble Gobble without the innards ', 12.99),
(53, 'Lilydale Turkey Breast Strips', 10052, 'https://momapi.megankrenbrink.com/img/turkey-pieces.jpg', 'meat', 'Gobble Gobble without the innards but in strip form', 8.99),
(54, 'Banana (Singular)', 10053, 'https://momapi.megankrenbrink.com/img/fruit-banana.jpg', 'produce', 'Yes, it is singular so if you want more add more to your cart! ', 0.49),
(55, 'Blueberries', 10054, 'https://momapi.megankrenbrink.com/img/fruit-blueberry.jpg', 'produce', 'Fresh to death blueberries carton', 4.99),
(56, 'Green Apple (Singular)', 10055, 'https://momapi.megankrenbrink.com/img/fruit-greenapple.jpg', 'produce', 'One single green apple', 0.59),
(57, 'Mango (Singular)', 10056, 'https://momapi.megankrenbrink.com/img/fruit-mango.jpg', 'produce', 'One mango is more acceptable to buy', 1.49),
(58, 'Plum (Singular)', 10057, 'https://momapi.megankrenbrink.com/img/fruit-plum.jpg', 'produce', 'who would ever buy one plum, make sure to add more to your cart', 0.89),
(59, 'Raspberries', 10058, 'https://momapi.megankrenbrink.com/img/fruit-raspberry.jpg', 'produce', 'A carton of Rassssssssssspppppppberries', 6.99),
(60, 'Red Apple (Singular)', 10059, 'https://momapi.megankrenbrink.com/img/fruit-redapple.jpg', 'produce', 'One single red apple ', 0.69),
(61, 'Strawberries', 10060, 'https://momapi.megankrenbrink.com/img/fruit-strawberry.jpg', 'produce', 'Fresh strawberries', 5.99),
(62, 'Broccoli Head', 10061, 'https://momapi.megankrenbrink.com/img/veg-broccoli.jpg', 'produce', 'A head of broccoli, don\'t worry we removed the face', 1.49),
(63, 'Carrot (Singular)', 10062, 'https://momapi.megankrenbrink.com/img/veg-carrot.jpg', 'produce', 'One single carrot ', 0.79),
(64, 'Cauliflower Head', 10063, 'https://momapi.megankrenbrink.com/img/veg-cauliflower.jpg', 'produce', 'Don\'t make \"cauli-rice\" out of this, bake it like a regular human being', 2.99),
(65, 'Celery (Singular)', 10064, 'https://momapi.megankrenbrink.com/img/veg-celery.jpg', 'produce', 'One single celery stick, perfect for that well needed caesar cocktail', 0.39),
(66, 'Chili Pepper (Singular)', 10065, 'https://momapi.megankrenbrink.com/img/veg-chili.jpg', 'produce', 'One single chilli pepper', 0.29),
(67, 'The Little Potato Company Boomer Gold', 10066, 'https://momapi.megankrenbrink.com/img/veg-goldpotato.jpg', 'produce', 'Little Gold Potatoes ', 3.99),
(68, 'Habanero Pepper (Singular)', 10067, 'https://momapi.megankrenbrink.com/img/veg-habanero.jpg', 'produce', 'One single Hab Pepper, white people beware', 0.89),
(69, 'Jalapeno Pepper (Singular)', 10068, 'https://momapi.megankrenbrink.com/img/veg-jalapeno.jpg', 'produce', 'One single jalapeno pepper, good to stuff with cream cheese', 0.89),
(70, 'Lemon Grass (Singular)', 10069, 'https://momapi.megankrenbrink.com/img/veg-lemongrass.jpg', 'produce', 'Lemongrass stalk, perfect to put into your soup', 0.69),
(71, 'The Little Potato Company Blushing Belle', 10070, 'https://momapi.megankrenbrink.com/img/veg-red potato.jpg', 'produce', 'Little Red Potatoes', 3.99),
(72, 'Tomato (Singular)', 10071, 'https://momapi.megankrenbrink.com/img/veg-tomato.jpg', 'produce', 'One single tomato, best to through at a bad comedian', 0.89),
(73, 'BOS\'N Calamari Rings', 10072, 'https://momapi.megankrenbrink.com/img/calamari-pieces.jpg', 'seafood', 'These are delicious rings of calamari', 9.99),
(74, 'Kirkland Signature Wild Alaskan Halibut', 10073, 'https://momapi.megankrenbrink.com/img/halibut-filets.jpg', 'seafood', 'Wild, Free Halibut 4 filets', 23.99),
(75, 'True North Atlantic Salmon', 10074, 'https://momapi.megankrenbrink.com/img/salmon-fliet.jpg', 'seafood', 'Atlantic Salmon, don\'t pretend you didn\'t pronounce that Sal-Mon 1 filet', 6.99),
(76, 'Changing Seas Smoked Salmon', 10075, 'https://momapi.megankrenbrink.com/img/salmon-smoked.jpg', 'seafood', 'Smokey Sal-mon 3 filets', 15.99),
(77, 'Whole Catch North Atlantic Sea Scallops', 10076, 'https://momapi.megankrenbrink.com/img/scallop-pieces.jpg', 'seafood', 'Have your ever seen a sea scallop swim? ', 17.99),
(78, 'The Fish Market Pacific White Shrimp', 10077, 'https://momapi.megankrenbrink.com/img/shrimp-pieces.jpg', 'seafood', 'White Shromps', 13.99),
(79, 'Maynards Sour Patch Kids', 10078, 'https://momapi.megankrenbrink.com/img/candy-sourpatch.jpg', 'snacks', 'Sour candy kids', 2.49),
(80, 'Maynards Sweedish Berries', 10079, 'https://momapi.megankrenbrink.com/img/candy-sweedishberries.jpg', 'snacks', 'Delicious, red candy', 2.49),
(81, 'Lays All Dressed Chips', 10080, 'https://momapi.megankrenbrink.com/img/chips-laysalldressed.jpg', 'snacks', 'All dressed, and tangy', 2.99),
(82, 'Lays Original Chips', 10081, 'https://momapi.megankrenbrink.com/img/chips-laysoriginal.jpg', 'snacks', 'OG lays', 2.99),
(83, 'Lays Salt & Vinegar Chips', 10082, 'https://momapi.megankrenbrink.com/img/chips-layssaltnvinegar.jpg', 'snacks', 'Burn the corner of your mouth chips', 2.99),
(84, 'Lays Wavy Original Chips', 10083, 'https://momapi.megankrenbrink.com/img/chips-layswavy.jpg', 'snacks', 'OG lays but wavy', 2.99),
(85, 'Miss Vickies Honey Dijon Chips', 10084, 'https://momapi.megankrenbrink.com/img/chips-mvhoneydijon.jpg', 'snacks', 'A saucy (dry) chip', 3.99),
(86, 'Miss Vickies Original Chips', 10085, 'https://momapi.megankrenbrink.com/img/chips-mvoriginal.jpg', 'snacks', 'OG Miss Vickie\'s', 3.99),
(87, 'Miss Vickies Salt & Vinegar Chips', 10086, 'https://momapi.megankrenbrink.com/img/chips-mvsaltnvinegar.jpg', 'snacks', 'Miss Vickies salt and vinegar', 3.99),
(88, 'Miss Vickie\'s Spicy Dill Chips', 10087, 'https://momapi.megankrenbrink.com/img/chips-mvspicydill.jpg', 'snacks', 'These slap, spicy dilly deliciousness', 3.99),
(89, 'Tostitos Restaurant Style Chips', 10088, 'https://momapi.megankrenbrink.com/img/chips-tostitosrestaurant.jpg', 'snacks', 'Dippy chips', 2.99),
(90, 'Tostitos Scoops Chips', 10089, 'https://momapi.megankrenbrink.com/img/chips-tostitosschoops.jpg', 'snacks', 'Scoopy Chips', 2.99),
(91, 'Hershey Chocolate Kisses', 10090, 'https://momapi.megankrenbrink.com/img/choco-kisses.jpg', 'snacks', 'Kiss me im Hershey ', 2.99),
(92, 'Reese\'s Pieces', 10091, 'https://momapi.megankrenbrink.com/img/choco-reesespieces.jpg', 'snacks', 'Peanut butter candy, good for homemade cookies', 1.49),
(93, 'Reese\'s Pieces Peanuts', 10092, 'https://momapi.megankrenbrink.com/img/choco-reesespiecespeanut.jpg', 'snacks', 'Peanuts of the reese variety ', 1.49),
(94, 'Tostitos Medium Salsa ', 10093, 'https://momapi.megankrenbrink.com/img/dip-salsa-jpg', 'snacks', 'Dip for the Dippy and Scoopy Chips ', 3.99);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(256) NOT NULL,
  `lastname` varchar(256) NOT NULL,
  `street` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `country` varchar(256) NOT NULL,
  `code` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `street`, `city`, `country`, `code`, `email`, `username`, `password`) VALUES
(1, 'Jane', 'Doe', '1234 Main Street', 'Vancouver', 'Canada', 'V6N 3A5', 'janedoe@email.com', 'janedoe', 'password1234');

-- --------------------------------------------------------

--
-- Table structure for table `user_order`
--

CREATE TABLE `user_order` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `user.id` int(11) NOT NULL,
  `status` varchar(256) NOT NULL,
  `ordertotal` float NOT NULL,
  `notes` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_order`
--

INSERT INTO `user_order` (`id`, `date`, `user.id`, `status`, `ordertotal`, `notes`) VALUES
(1, '2022-04-10', 1, 'Completed', 17.97, 'Please deliver to the back entrance.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_line`
--
ALTER TABLE `order_line`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_order`
--
ALTER TABLE `user_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_line`
--
ALTER TABLE `order_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_order`
--
ALTER TABLE `user_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
