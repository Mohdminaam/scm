-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2020 at 11:10 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_active` int(11) NOT NULL DEFAULT 0,
  `brand_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_active`, `brand_status`) VALUES
(1, 'Samsung', 1, 1),
(2, 'Dell', 1, 1),
(3, 'HP', 1, 1),
(4, 'Acer', 1, 1),
(5, 'ASUS', 1, 1),
(6, 'Apple', 1, 1),
(7, 'MSI', 1, 1),
(8, 'Lenovo', 1, 1),
(9, 'Nokia', 1, 1),
(10, 'Redmi', 1, 2),
(11, 'Canon', 1, 1),
(12, 'Nikon', 1, 1),
(13, 'Sony', 1, 1),
(14, 'Olympus', 1, 1),
(15, 'Leica', 1, 2),
(16, 'Fujifilm', 1, 1),
(17, 'LG', 1, 1),
(18, 'Huawei', 1, 1),
(19, 'Xiaomi', 1, 1),
(20, 'OnePlus', 1, 1),
(21, 'Google', 1, 1),
(22, 'BlackBerry', 1, 2),
(23, 'Amazon', 1, 1),
(24, 'BenQ', 1, 1),
(25, 'Motorola', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(255) NOT NULL,
  `categories_active` int(11) NOT NULL DEFAULT 0,
  `categories_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_active`, `categories_status`) VALUES
(1, 'Mobiles', 1, 1),
(2, 'Digital Camera', 1, 1),
(3, 'Laptop', 1, 1),
(4, 'Tabs', 1, 1),
(5, 'Smart Watch', 1, 1),
(6, 'TVs', 1, 1),
(7, 'Smart Speaker', 1, 1),
(8, 'Monitor', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `client_contact` varchar(255) NOT NULL,
  `sub_total` varchar(255) NOT NULL,
  `vat` varchar(255) NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `grand_total` varchar(255) NOT NULL,
  `paid` varchar(255) NOT NULL,
  `due` varchar(255) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `payment_place` int(11) NOT NULL,
  `gstn` varchar(255) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `quantity` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `order_item_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` text NOT NULL,
  `brand_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_image`, `brand_id`, `categories_id`, `quantity`, `rate`, `active`, `status`) VALUES
(1, 'Samsung Galaxy F41(Black)', '../assests/images/stock/6812646695fba711e73e1a.png', 1, 1, '150', '14,000', 1, 1),
(2, 'Samsung Galaxy M31s (Black)', '../assests/images/stock/16283313785fba715c74b1a.png', 1, 1, '150', '16,000', 1, 1),
(3, 'Samsung Galaxy S20 (Cosmic Grey)', '../assests/images/stock/18872723015fba6f96d0a42.jpg', 1, 1, '50', '45,000', 1, 1),
(4, 'Samsung Note 20 (Mystic Bronze)', '../assests/images/stock/14689347185fba703716146.png', 1, 1, '50', '97,000', 1, 1),
(5, 'Samsung Galaxy A71 (Black)', '../assests/images/stock/19706145795fba723bd7d67.png', 1, 1, '100', '25,000', 1, 1),
(6, 'Samsung Galaxy S10+ (Prism White)', '../assests/images/stock/11151252475fbaba44ac282.jpg', 1, 1, '35', '62,000', 1, 1),
(7, 'Google Pixel 4 XL', '../assests/images/stock/10736666705fbabcc75d0e7.jpg', 21, 1, '50', '73,000', 1, 1),
(8, 'Google Pixel 5', '../assests/images/stock/9839512555fbabbeb0ab56.jpg', 21, 1, '100', '75,000', 1, 1),
(9, 'Apple iPhone 12 Max Pro', '../assests/images/stock/5270332345fbabe18416f6.png', 6, 1, '100', '1,25,000', 1, 1),
(10, 'Apple iPhone 12', '../assests/images/stock/6131679135fbabe64e8b60.png', 6, 1, '50', '75,000', 1, 1),
(11, 'Apple iPhone 11', '../assests/images/stock/1987610415fbabea9ab68f.jpg', 6, 1, '50', '55,000', 1, 1),
(12, 'Apple iPhone X', '../assests/images/stock/112541215fbabf12d9dbd.jpg', 6, 1, '50', '45,000', 1, 1),
(13, 'OnePlus 8', '../assests/images/stock/8672198345fbabfbe25409.jpg', 20, 1, '110', '40,000', 1, 1),
(14, 'OnePlus 8 Pro', '../assests/images/stock/13304202985fbabff582f99.jpg', 20, 1, '110', '53,000', 1, 1),
(15, 'OnePlus 7', '../assests/images/stock/14881818805fbac027a7ace.jpg', 20, 1, '100', '35,000', 1, 1),
(16, 'OnePlus 7 Pro', '../assests/images/stock/13217452455fbac07fe3d84.jpg', 20, 1, '100', '44,000', 1, 1),
(17, 'OnePlus Nord 5G (Grey Onyx)', '../assests/images/stock/5256879785fbac15ef0c0b.jpg', 20, 1, '200', '27,000', 1, 1),
(18, 'OnePlus 7T', '../assests/images/stock/8598043965fbac115e5856.jpg', 20, 1, '100', '36,000', 1, 1),
(19, 'Xiaomi Mi 10T 5G', '../assests/images/stock/18835480645fbac449af747.jpg', 19, 1, '200', '38,000', 1, 1),
(20, 'Redmi Note 9', '../assests/images/stock/12797083065fbac323b7556.png', 19, 1, '500', '11,000', 1, 1),
(21, 'Redmi Note 8 Pro', '../assests/images/stock/20041772255fbac359d4f74.png', 19, 1, '500', '15,000', 1, 1),
(22, 'Redmi Note 9 Pro', '../assests/images/stock/18781544115fbac3add0511.jpg', 19, 1, '300', '13,000', 1, 1),
(23, 'Redmi K20', '../assests/images/stock/12567175525fbac3e928506.png', 19, 1, '200', '21,000', 1, 1),
(24, 'Redmi K20 Pro', '../assests/images/stock/11194368175fbac420a3959.png', 19, 1, '200', '26,000', 1, 1),
(25, 'LG G8X ThinQ', '../assests/images/stock/2294763605fbac5747fde7.jpg', 17, 1, '100', '54,000', 1, 1),
(26, 'LG Velvet Dual Screen', '../assests/images/stock/2203431515fbac5e1187c7.png', 17, 1, '50', '35,000', 1, 1),
(27, 'Nokia 8.3 5G', '../assests/images/stock/7508357155fbac648ad91d.jpg', 9, 1, '100', '47,000', 1, 1),
(28, 'Nokia 7.1', '../assests/images/stock/10118227775fbac67b579b4.jpg', 9, 1, '100', '10,000', 1, 1),
(29, 'Nokia 7 Plus', '../assests/images/stock/12378828545fbac6ac7077e.jpg', 9, 1, '50', '25,000', 1, 1),
(30, 'Huawei P30 Pro', '../assests/images/stock/8557191215fbac752e2bd6.jpg', 18, 1, '50', '57,000', 1, 1),
(31, 'Huawei P40 Pro', '../assests/images/stock/16320457865fbac79b19d01.png', 18, 1, '50', '82,000', 1, 1),
(32, 'Huawei Y9s', '../assests/images/stock/14939600905fbac81432607.jpg', 18, 1, '50', '19,000', 1, 1),
(33, 'Moto Z4', '../assests/images/stock/6425196325fbac868e97a6.jpg', 25, 1, '50', '45,000', 1, 1),
(34, 'Moto Edge+', '../assests/images/stock/15751676755fbac8b76827a.jpg', 25, 1, '50', '62,000', 1, 1),
(35, 'Moto G8 Plus', '../assests/images/stock/12687687375fbac9056e066.jpg', 25, 1, '100', '12,000', 1, 1),
(36, 'Moto One Fusion Plus', '../assests/images/stock/2578972325fbac96da9a49.jpg', 25, 1, '200', '17,000', 1, 1),
(37, 'Nikon D5600', '../assests/images/stock/19564161325fbac9e464a21.jpg', 12, 2, '50', '52,000', 1, 1),
(38, 'Nikon D3500', '../assests/images/stock/1718878845fbaca2bdb560.jpg', 12, 2, '100', '30,000', 1, 1),
(39, 'Nikon D780 DSLR', '../assests/images/stock/10636083295fbaca627732e.jpg', 12, 2, '50', '1,80,000', 1, 1),
(40, 'Nikon Coolpix P950', '../assests/images/stock/16610085205fbacaa22f5f0.jpg', 12, 2, '50', '62,000', 1, 1),
(41, 'Canon Power Shoot Sx 740', '../assests/images/stock/886141725fbacaf86018f.jpg', 11, 2, '200', '26,000', 1, 1),
(42, 'Canon EOS 200D', '../assests/images/stock/19881150425fbacb5add42e.jpg', 11, 2, '100', '50,000', 1, 1),
(43, 'Canon IXUS 185 20MP', '../assests/images/stock/9554854945fbacbcc11a35.jpg', 11, 2, '200', '8,000', 1, 1),
(44, 'Sony Alpha ILCE 6000Y', '../assests/images/stock/9809988605fbacc586c2c7.jpg', 13, 2, '50', '56,000', 1, 1),
(45, 'Sony DSC W830', '../assests/images/stock/20239828065fbaccb81f4a4.jpg', 13, 2, '200', '8,500', 1, 1),
(46, 'Olympus TG-6', '../assests/images/stock/7659614025fbacd02387da.jpg', 14, 2, '100', '33,000', 1, 1),
(47, 'Olympus E M10 Mark II', '../assests/images/stock/18161420515fbacd4cb71be.jpg', 14, 2, '50', '50,000', 1, 1),
(48, 'Fujifilm', '../assests/images/stock/18390747425fbacda0dc89b.jpg', 16, 2, '200', '9,000', 1, 1),
(49, 'Fujifilm X-A5', '../assests/images/stock/11669209545fbacdd2d1570.jpg', 16, 2, '50', '30,000', 1, 1),
(50, 'Fujifilm X-T100 Mirrorless', '../assests/images/stock/21445897985fbace1336a24.jpg', 16, 2, '50', '35,000', 1, 1),
(51, 'Samsung Gear Fit R3500', '../assests/images/stock/8015307635fbad9b4202f1.png', 1, 5, '30', '16,000', 1, 1),
(52, 'Samsung Active 2 SM', '../assests/images/stock/4768007755fbad9e8925b6.jpg', 1, 5, '50', '32,000', 1, 1),
(53, 'Apple Watch Series 3 GPS', '../assests/images/stock/220176065fbada45e8ef5.jpg', 6, 5, '50', '20,000', 1, 1),
(54, 'Apple Smart Watch Series 4', '../assests/images/stock/869190455fbada93c4573.jpg', 6, 5, '50', '52,000', 1, 1),
(55, 'Samsung Gear Watch Fit E SM375', '../assests/images/stock/1407294715fbadb0548e67.jpg', 1, 5, '200', '2,000', 1, 1),
(56, 'Lenovo Tab M10 FHD Plus 26.16 cm', '../assests/images/stock/20592611325fbadb636498c.jpg', 8, 4, '50', '19,000', 1, 1),
(57, 'Samsung Galaxy Tab S6 Lite', '../assests/images/stock/15648214605fbadb98c0a3f.jpg', 1, 4, '50', '36,000', 1, 1),
(58, 'Samsung Galaxy Tab A7', '../assests/images/stock/18142185785fbadbd94628a.jpg', 1, 4, '50', '20,000', 1, 1),
(59, 'Apple iPad Mini', '../assests/images/stock/16334312575fbadc20165f5.jpg', 6, 4, '50', '30,000', 1, 1),
(60, 'Apple iPad 8th Gen', '../assests/images/stock/4338250255fbadc521cf9f.jpg', 6, 4, '50', '28,000', 1, 1),
(61, 'Acer ONE 10 T4-129L ', '../assests/images/stock/9763609375fbadc8cbe5ea.jpg', 4, 4, '50', '12,000', 1, 1),
(62, 'Huawei MediaPad M5 Lite with stylus', '../assests/images/stock/5818324405fbadcbbdff39.jpg', 18, 4, '50', '22,000', 1, 1),
(63, 'Apple HomePod mini', '../assests/images/stock/17720335425fbadd5d3d7e1.jpg', 6, 7, '100', '9,000', 1, 1),
(64, 'Google Home Smart Voice Activated Speaker', '../assests/images/stock/3928075975fbadd98ea297.jpg', 21, 7, '70', '7,000', 1, 1),
(65, 'Amazon Echo (3rd Gen)', '../assests/images/stock/6695909205fbaddd0a9653.jpg', 23, 7, '100', '6,000', 1, 1),
(66, 'Google Home Mini Smart Voice Activated Speaker', '../assests/images/stock/1578958095fbaddf65750a.jpg', 21, 7, '100', '3,000', 1, 1),
(67, 'Amazon Echo Dot (3rd Gen)', '../assests/images/stock/14930271105fbade48cb1d0.jpg', 23, 7, '200', '3,000', 1, 1),
(68, 'Samsung 27 inch (68.5 cm) Curved LED Backlit Computer Monitor', '../assests/images/stock/10230469275fbb616d0501d.jpg', 1, 8, '100', '13,000', 1, 1),
(69, 'Dell 24 inch (60.96cm) Full HD Monitor', '../assests/images/stock/3932828775fbb619f5702c.jpg', 2, 8, '100', '12,000', 1, 1),
(70, 'Lenovo 23.8-inch FHD Ultra Slim Near Edgeless Monitor', '../assests/images/stock/8351025305fbb61ecbcf81.jpg', 8, 8, '100', '12,000', 1, 1),
(71, 'Dell MDS19 Dual Monitor ', '../assests/images/stock/20380875755fbb622eb904a.jpg', 2, 8, '50', '13,000', 1, 1),
(72, 'LG 27 inch 4 Side Borderless LED Monitor', '../assests/images/stock/2870328825fbb62b7d815b.jpg', 17, 8, '100', '18,000', 1, 1),
(73, 'Samsung 80 cm (32 Inches)  HD Ready LED Smart TV', '../assests/images/stock/10880728825fbb631b729f9.jpg', 1, 6, '100', '14,000', 1, 1),
(74, 'Mi TV 4A PRO 108 cm (43 Inches) Full HD Android LED TV (Black)', '../assests/images/stock/11473788255fbb63669b599.jpg', 19, 6, '100', '22,000', 1, 1),
(75, 'LG UltraWide 34 Inch WFHD Gaming Monitor', '../assests/images/stock/8746771715fbb63a597d9c.jpg', 17, 8, '100', '22,000', 1, 1),
(76, 'BenQ 21.5-inch LED Backlit Computer Monitor', '../assests/images/stock/18991425355fbb63f831f07.jpg', 24, 8, '100', '7,000', 1, 1),
(77, 'BenQ GW2480 24-inch (60.5 cm) Eye Care Monitor', '../assests/images/stock/703393055fbb644bc3ba8.jpg', 24, 8, '100', '9,000', 1, 1),
(78, 'BenQ 27 inch (68.6 cm) Edge to Edge Slim Bezel LED Backlit Computer Monitor', '../assests/images/stock/12711582665fbb6482d1a74.jpg', 24, 8, '100', '13,000', 1, 1),
(79, 'Acer Nitro VG240YB 23.8 inch Full HD IPS Monitor', '../assests/images/stock/13331331645fbb64c2a34de.jpg', 4, 8, '100', '10,000', 1, 1),
(80, 'Dell 21.5 inch (54.61cm) Full HD Monitor', '../assests/images/stock/313139665fbb650d0d03a.jpg', 2, 8, '200', '7,000', 1, 1),
(81, 'HP P204v 19.5-inch Monitor', '../assests/images/stock/11890563435fbb653f335f1.jpg', 3, 8, '300', '5,000', 1, 1),
(82, 'Acer Nitro VG270P IPS 27 inch Gaming Monitor', '../assests/images/stock/8489696665fbb658fbd386.jpg', 4, 8, '100', '16,000', 1, 1),
(83, 'MSI Optix G241-24 inch IPS Gaming Monitor', '../assests/images/stock/2120006335fbb65d7b809a.jpg', 7, 8, '200', '16,000', 1, 1),
(84, 'Acer Nitro XV270P 27\" Full HD IPS Gaming Monitor', '../assests/images/stock/8637665865fbb66902a606.jpg', 4, 8, '100', '18,000', 1, 1),
(85, 'LG 27 inch 4 Side Borderless LED Monitor', '../assests/images/stock/14259900405fbb670b2ea0c.jpg', 17, 8, '100', '18,000', 1, 1),
(86, 'Acer B227Q 21.5\" IPS LED Full HD Monitor ', '../assests/images/stock/3286650505fbb673d6d124.jpg', 4, 8, '200', '10,000', 1, 1),
(87, 'HP 22fw Ultra-Thin Full HD 21.5-inch IPS Monitor', '../assests/images/stock/18623506805fbb6797a73a2.jpg', 3, 8, '200', '10,000', 1, 1),
(88, 'LG UltraGear 24 inch (60.96 cm) 144Hz, Native 1ms Full HD Gaming Monitor', '../assests/images/stock/16474071765fbb67e54c875.jpg', 17, 8, '100', '14,000', 1, 1),
(89, 'Lenovo D24-20 23.8\" Work+Play Near Edgeless Monitor ', '../assests/images/stock/16766655685fbb681939e66.jpg', 8, 8, '200', '8,000', 1, 1),
(90, 'Lenovo 23.6-inch Near Edgeless Monitor with LED Backlit', '../assests/images/stock/1701912695fbb6848c8e2f.jpg', 8, 8, '200', '6,500', 1, 1),
(91, 'Acer EB321HQUD 31.5 Inch 2560 x 1440 WQHD IPS Panel Monitor', '../assests/images/stock/7322042875fbb689e9eee5.jpg', 4, 8, '100', '20,000', 1, 1),
(92, 'BenQ EW2480 23.8\" Eye-Care IPS Monitor', '../assests/images/stock/3453897505fbb68e54d78e.jpg', 24, 8, '200', '12,000', 1, 1),
(93, 'HP EliteDisplay 23.8-inch (60.45 cm) IPS Anti Glare Full HD Monitor ', '../assests/images/stock/13940701155fbb6b5f8b670.jpg', 3, 8, '100', '14,000', 1, 1),
(94, 'LG 80 cm (32 inches) HD Ready Smart LED TV', '../assests/images/stock/21334721235fbb6c2ba8c25.jpg', 17, 6, '100', '14,000', 1, 1),
(95, 'OnePlus Y Series 108 cm (43 inches) Full HD LED Smart Android TV ', '../assests/images/stock/6807720935fbb6c5d025f8.jpg', 20, 6, '100', '24,000', 1, 1),
(96, 'LG 108 cm (43 inches) Full HD LED Smart TV', '../assests/images/stock/12070831815fbb6c9323df5.jpg', 17, 6, '100', '28,000', 1, 1),
(97, 'Samsung 138 cm (55 Inches) Wondertainment Series Ultra HD LED Smart TV', '../assests/images/stock/9792723395fbb6cd114c29.jpg', 1, 6, '100', '50,000', 1, 1),
(98, 'Sony Bravia 108 cm (43 inches) Full HD Smart LED TV', '../assests/images/stock/7430501195fbb6d117920a.jpg', 13, 6, '100', '34,000', 1, 1),
(99, 'LG 164 cm (65 inches) 4K Ultra HD Smart OLED TV ', '../assests/images/stock/7720138875fbb71385dddf.jpg', 17, 6, '30', '2,30,000', 1, 1),
(100, 'Sony Bravia 80 cm (32 inches) HD Ready Smart LED TV ', '../assests/images/stock/16402434995fbb716b49e00.jpg', 13, 6, '100', '23,000', 1, 1),
(101, 'Sony Bravia 101.6cm (40 Inches) Full HD LED TV', '../assests/images/stock/2092260475fbb71a5d1b4b.jpg', 13, 6, '100', '32,000', 1, 1),
(102, 'Sony Bravia 164 cm (65 inches) 4K Ultra HD Smart Android LED TV', '../assests/images/stock/15981539795fbb729806005.jpg', 13, 6, '50', '1,08,000', 1, 1),
(103, 'Sony Bravia 189 cm (75 inches) 4K UHD Certified Android LED TV ', '../assests/images/stock/8201534175fbb72f34d632.jpg', 13, 6, '30', '2,18,000', 1, 1),
(104, 'Sony Bravia 138 cm (55 inches) 4K Ultra HD Certified Android Smart OLED TV ', '../assests/images/stock/19239859685fbb73243ddbe.jpg', 13, 6, '30', '1,57,000', 1, 1),
(105, 'LG 139 cm (55 inches) 4K UHD Smart LED TV', '../assests/images/stock/7511883815fbb73a14eec8.jpg', 17, 6, '100', '52,000', 1, 1),
(106, 'LG 139 cm (55 inches) 4K Ultra HD Smart NanoCell TV', '../assests/images/stock/3470668385fbb7402937f2.jpg', 17, 6, '100', '89,000', 1, 1),
(107, 'LG 108 cm (43 inches) Full HD Smart LED TV ', '../assests/images/stock/2813561855fbb742cb6e69.jpg', 17, 6, '100', '33,000', 1, 1),
(108, 'OnePlus 138.8 cm (55 inches) Q1 Series 4K Certified Android QLED TV', '../assests/images/stock/19805923245fbb7482cbd54.jpg', 20, 6, '100', '82,000', 1, 1),
(109, 'Dell Inspiron 3505 15inch FHD AG Display Laptop (Ryzen-5 3500U / 8GB / 512 SSD / Vega Graphics / 1 Yr NBD Warranty / Win 10 + MS Office H&S 2019 / Soft Mint)', '../assests/images/stock/13343461625fbb75fcb79fb.jpg', 2, 3, '100', '46,000', 1, 1),
(110, 'Dell Inspiron 3593 15.6-inch FHD Laptop (10th Gen Core i3-1005G1/8GB/1TB HDD/Windows 10 Home + MS Office/Intel HD Graphics) Black', '../assests/images/stock/17567459745fbb7632894cd.jpg', 2, 3, '100', '40,000', 1, 1),
(111, 'Dell G3 3500 Gaming Laptop with 15.6 Inch 120 Hz FHD Display (10th Gen i5-10300H/ 8 GB/ 1TB+256 SSD/ Win 10/ NVIDIA GTX 1650 4GB Graphics)', '../assests/images/stock/17269177555fbb76676e2c9.jpg', 2, 3, '100', '72,000', 1, 1),
(112, 'Dell Inspiron 5408 14 inch FHD 5000 Series Laptop (10th Gen i5-1035G1/8 GB/512 SSD/2 Gb NVIDIA Graphics/Win 10 + MS Office/Pebble)', '../assests/images/stock/21362485415fbb769f411ac.jpg', 2, 3, '100', '65,000', 1, 1),
(113, 'Dell Alienware M15 R2 15.6-inch FHD Laptop (9th Gen Core i9-9980HK/16GB/1TB SSD/Windows 10 + MS Office/8GB NVIDIA 2080 Graphics), Lunar Light', '../assests/images/stock/17569794245fbb76ebefd27.jpg', 2, 3, '50', '2,60,000', 1, 1),
(114, 'Dell Alienware 15 R4 15.6-inch FHD Gaming Laptop (8th Gen Core i7 8750H/8GB/1TB HDD + 256GB SSD/Windows 10 + MS Office/6GB Nvidia GE Force GTX 1060 Graphics/Silver)', '../assests/images/stock/121093965fbb771032fc0.jpg', 2, 3, '50', '1,35,000', 1, 1),
(115, 'Dell G3 3500 Gaming 15.6-inch FHD Laptop (10th Gen Core i5-10300H/8GB/1TB + 256GB SSD/Windows 10 Home Plus/4GB NVIDIA 1650 Graphics), Eclipse Black', '../assests/images/stock/18354357225fbb775f56250.jpg', 2, 3, '100', '75,000', 1, 1),
(116, 'HP 14 10th Gen Intel Core i5 14-inch HD Laptop (i5-10210U/8GB/512GB SSD/Win 10/MS Office/Win 10/Jet Black/1.5 kg)', '../assests/images/stock/5121679045fbb77950f213.jpg', 3, 3, '200', '45,000', 1, 1),
(117, 'HP 10th Gen Intel Core i3 15.6-inch Laptop (i3-1005G1/4GB/512GB SSD/Windows 10 Home/MS Office/Natural Silver/1.77kg)', '../assests/images/stock/3497936445fbb77b342d2a.jpg', 3, 3, '100', '42,000', 1, 1),
(118, 'HP Pavilion Gaming DK0268TX 15.6-inch Laptop (Core i5-9300H/8GB/512GB SSD/Windows 10 Home/4GB NVIDIA GeForce GTX 1650 Graphics), Shadow Black', '../assests/images/stock/18414831195fbb77e0df751.jpg', 3, 3, '100', '62,000', 1, 1),
(119, 'HP Spectre x360 Core i5 10th Gen 13-inch FHD Touchscreen Laptop (8GB/512 GB SSD/Windows 10/MS Office 2019/Nightfall Black/1.27 kg)', '../assests/images/stock/15406701885fbb781b0f346.jpg', 3, 3, '100', '97,000', 1, 1),
(120, 'HP Pavilion x360 Touchscreen 2-in-1 FHD 14-inch Laptop 14-inch Laptop (10th Gen Core i5-10210U/8GB/512GB SSD/Win 10/MS Office/Mineral Silver/1.58 kg)', '../assests/images/stock/10312847375fbb7843cab41.jpg', 3, 3, '100', '60,000', 1, 1),
(121, 'HP Envy x360 Ryzen 5 13.3-Inch 2-in-1 FHD Touchscreen Laptop (8GB/512GB/Windows 10/Vega 8 Graphics/MS Office/Nightfall Black/1.3 kg)', '../assests/images/stock/20455650235fbb787521b13.jpg', 3, 3, '50', '88,000', 1, 1),
(122, 'HP Envy 13.3-inch Touchscreen FHD Laptop (10th Gen i5-1035G1/8GB/512GB SSD/Windows 10/MS Office/Natural Silver/1.3 Kg)', '../assests/images/stock/19541094455fbb789f73340.jpg', 3, 3, '100', '75,000', 1, 1),
(123, 'Acer Acer One Intel Pentium Gold 4415U Processor 14-inch Display 1366 x 768 Laptop (4 GB Ram/1TB HDD/Windows 10 Home/Integrated Graphics/Black/1.8kgs)', '../assests/images/stock/11931463115fbb79fcf26bc.jpg', 4, 3, '200', '24,000', 1, 1),
(124, 'Acer Nitro 5 Intel Core i5-9th Gen 15.6-inch Display 1920 x 1080 Thin and Light Gaming Laptop (8GB Ram+16GB Optane/1TB HDD/Windows 10 Home/GTX 1650 Graphics/Obsidian Black/2.3 Kgs)', '../assests/images/stock/11527205065fbb7a1b07691.jpg', 4, 3, '200', '52,000', 1, 1),
(125, ' Acer Aspire 3 Intel Core i3-10th Gen 15.6 - inch 1920 x 1080 Thin and Light Laptop (4GB Ram/1TB HDD/Window 10/Integrated Graphics/Shale Black/1.9 kgs)', '../assests/images/stock/15093552005fbb7a446e6da.jpg', 4, 3, '100', '38,000', 1, 1),
(126, 'Acer Nitro 5 Intel Core i5-10th Gen 15.6-inch Display 1920 x 1080 Thin and Light Gaming Laptop (8GB Ram/1TB HDD + 256GB SSD/Windows 10 Home/GTX 1650Ti Graphics/Obsidian Black/2.3 Kgs)', '../assests/images/stock/18493926875fbb7a77dd77d.jpg', 4, 3, '50', '80,000', 1, 1),
(127, 'Acer Travelmate Intel i5-10th Gen 14-inch Display 1366x768 Thin and Light Laptop (8GB Ram/1TB HDD + 512 GB SSD/Window 10 Pro/Integrated Graphics/Black/1.68 Kgs)', '../assests/images/stock/8503451615fbb7ab1edd5a.jpg', 4, 3, '100', '60,000', 1, 1),
(128, 'ASUS VivoBook Ultra 15 (2020) Intel Core i5-1135G7 11th Gen 15.6-inch FHD Thin and Light Laptop (8GB/1TB HDD + 256GB SSD/Integrated Graphics/Windows 10/Office 2019/Star Black/1.8 kg)', '../assests/images/stock/6324022335fbb7af05958c.jpg', 5, 3, '100', '58,000', 1, 1),
(129, 'ASUS ZenBook 14 (2020) Intel Core i7-1165G7 11th Gen 14-inch FHD Thin and Light Laptop (16GB RAM/512GB NVMe SSD/Windows 10/MS Office 2019/Intel Iris Xáµ‰ Graphics/Pine Grey/1.17 kg)', '../assests/images/stock/16426936295fbb7b26c5c17.jpg', 5, 3, '100', '95,000', 1, 1),
(130, 'ASUS TUF Gaming F15 Laptop 15.6\" FHD Intel Core i7 10th Gen, GTX 1650 4GB GDDR6 Graphics (8GB RAM/512GB NVMe SSD/Windows 10/Fortress Gray/2.30 Kg)', '../assests/images/stock/1040001915fbb7b5f09ef7.jpg', 5, 3, '100', '72,000', 1, 1),
(131, 'ASUS TUF Gaming F15 Laptop 15.6\" FHD 144Hz Intel Core i7 10th Gen, GTX 1650Ti 4GB GDDR6 Graphics (8GB RAM/1TB HDD + 256GB SSD/Windows 10/Fortress Gray/2.30 Kg)', '../assests/images/stock/16692198905fbb7b95391be.jpg', 5, 3, '100', '85,000', 1, 1),
(132, 'HP Omen 10th Gen Intel Core i5 Processor 15.6-inch FHD Gaming Laptop (i5-10300H/8GB/512GB SSD/Windows 10/NVIDIA GTX 1650 4GB/Shadow Black/2.36 kg)', '../assests/images/stock/6750564555fbb7bddd39b8.jpg', 3, 3, '1000', '82,000', 1, 1),
(133, 'MSI GL65 Leopard, Intel 9th Gen. i5-9300H, 15.6\" FHD Gaming Laptop (8GB/512GB NVMe SSD/Windows 10 Home/Nvidia GTX 1650/ Black/2.3Kg)', '../assests/images/stock/1158677235fbb7c14d4587.jpg', 7, 3, '100', '57,000', 1, 1),
(134, 'MSI GF63 Thin 10SCXR Gaming Laptop (GTX1650 Max Q, GDDR6 4GB/ i5-10300H/15.6\"FHD-60Hz/8GB DDR4 2666Mhz/512GB NVMe PCIe SSD)', '../assests/images/stock/19675107445fbb7c4bf367a.jpg', 7, 3, '100', '72,000', 1, 1),
(135, 'MSI GS66 Stealth 10SGS - Intel i9-10980HK, 32GB RAM, 2TB NVMe SSD, 15.6\" FHD-300Hz, NVidia RTX 2080 Super Max-Q - 8GB Graphics, PerKey RGB Keyboard, Windows 10 Home, 2Yr Warranty', '../assests/images/stock/15877742445fbb7c749324e.jpg', 7, 3, '50', '3,70,000', 1, 1),
(136, 'MSI WF65, Intel 10th Gen. i7-10750HH, 15.6\" FHD Workstation Laptop (16GB/256GB NVMe SSD + 1TB HDD/Windows 10 Pro/Nvidia Quadro T1000/Grey/1.86Kg)', '../assests/images/stock/11174225685fbb7cac33d12.jpg', 7, 3, '50', '1,74,000', 1, 1),
(137, 'MSI Alpha 15 A3DD-044IN Picasso AMD R7-3750H 15.6-inch Laptop (16GB/ 1TB + 256 SSD/Windows 10 Home/RX5500M, GDDR6 4GB/Black/2.33Kg)', '../assests/images/stock/19917695105fbb7d3a3a673.jpg', 7, 3, '100', '72,000', 1, 1),
(138, 'ASUS ROG Strix G G531GT-AL018T 15.6\" FHD 120Hz Gaming Laptop GTX 1650 4GB Graphics (Coreâ„¢ i7-9750H 9th Gen/16GB RAM/512GB NVMe SSD/Windows 10/2.40 Kg), Black', '../assests/images/stock/7886795925fbb7d9e2f36d.jpg', 5, 3, '100', '88,000', 1, 1),
(139, 'ASUS ROG Zephyrus G14, 14\" FHD 120Hz, Ryzen 5 4600HS, GTX 1650 4GB GDDR6 Graphics, Gaming Laptop (8GB/512GB SSD/Windows 10/Moonlight White/Without Anime Matrix/1.6 Kg)', '../assests/images/stock/2703783515fbb7dcc8365d.jpg', 5, 3, '100', '80,000', 1, 1),
(140, 'Acer Concept D CN515-51 15.6-inch 4K UHD Thin and Light Creative Notebook (Intel Core i5-8305G/16 GB RAM/1 TB SSD/Win10/4GB of Radeon RX Vega Graphics), White', '../assests/images/stock/11393840755fbb7e46810d6.jpg', 4, 3, '50', '1,01,000', 1, 1),
(141, ' MSI Prestige 14 A10RAS-076IN Intel Core i5-10210U 10th Gen 14-inch Laptop(16GB/512GB NVMe SSD/Windows 10 Home/MX330, 2GB Graphics/Pink/1.29Kg )', '../assests/images/stock/923698715fbb7e93e7e23.jpg', 7, 3, '100', '88,000', 1, 1),
(142, 'MSI Creator 15M A9SD-201IN Intel Core i7-9750H 9th Gen 15.6-inch Laptop(16GB/1TB NVMe SSD/Windows 10 Home/GTX 1660Ti, 6GB Graphics/Grey/1.88Kg )', '../assests/images/stock/6052064265fbb7ec6b475e.jpg', 7, 3, '50', '1,37,000', 1, 1),
(143, 'Apple MacBook Air (13-inch, 8GB RAM, 128GB Storage, 1.8GHz Intel Core i5) - Silver', '../assests/images/stock/13147306875fbb7f8fa5878.jpg', 6, 3, '100', '65,000', 1, 1),
(144, 'Apple MacBook Pro (16-inch, 16GB RAM, 512GB Storage, 2.6GHz 9th Gen Intel Core i7) - Space Grey', '../assests/images/stock/19613808105fbb7fb641d32.jpg', 6, 3, '100', '1,97,000', 1, 1),
(145, 'New Apple iPad Pro (11-inch, Wi-Fi, 1TB) - Space Grey (2nd Generation', '../assests/images/stock/15523886365fbb805212497.jpg', 6, 4, '100', '1,11,000', 1, 1),
(146, 'Apple Watch Series 6 (GPS + Cellular, 40mm) - Product(RED) - Aluminium Case with Product(RED) - Sport Band', '../assests/images/stock/10325354115fbb809853650.jpg', 6, 5, '100', '50,000', 1, 1),
(147, 'Lenovo IdeaPad S340 10th Gen Intel Core i3 14 inch Full HD IPS Thin and Light Laptop (8GB/256GB SSD/Windows 10/MS Office 2019/Platinum Grey/1.6Kg)', '../assests/images/stock/18062617735fbb86a38a4de.jpg', 8, 3, '100', '42,000', 1, 1),
(148, 'Lenovo Ideapad Slim 3i 10th Gen Intel Core i5 14 inch FHD Thin and Light Laptop (8GB/512GB/Windows 10/MS Office/Grey/1.6Kg)', '../assests/images/stock/11001363125fbb86c761116.jpg', 8, 3, '100', '48,000', 1, 1),
(149, 'Lenovo V145-AMD-A6 15.6 inch HD Laptop (4GB RAM/ 1TB HDD/ Windows 10 Home/ Black/ 2.1 kg)', '../assests/images/stock/18609470275fbb86eb15e62.jpg', 8, 3, '100', '25,000', 1, 1),
(150, 'Lenovo ThinkPad E14 Intel Core i5 10th Gen14-inch Full HD IPS Thin and Light Laptop (8GB RAM/ 1TB HDD+128GB SSD/ Windows 10 Home/ Microsoft Office Home & Student 2019/ Black/ 1.69kg)', '../assests/images/stock/2987809425fbb872066b9b.jpg', 8, 3, '100', '57,000', 1, 1),
(151, 'Lenovo Legion 5i 10th Gen Intel Core i5 15.6 inch Full HD Gaming Laptop (8GB/1TB HDD + 256GB SSD/Windows 10/120 Hz/NVIDIA GTX 1650 4GB GDDR6 Graphics/Phantom Black/2.3Kg)', '../assests/images/stock/14305297635fbb8752cf1e4.jpg', 8, 3, '100', '72,000', 1, 1),
(152, 'Lenovo Legion Y540 9th Gen Intel Core i5 15.6 inch FHD Gaming Laptop (8GB/1TB HDD+256GB SSD/Windows 10/NVIDIA GTX 1650 4GB/Black/2.3Kg)', '../assests/images/stock/10692835085fbb877723358.jpg', 8, 3, '100', '65,000', 1, 1),
(153, 'Lenovo Ideapad L340 Gaming Intel Core i5 9th Gen 15.6 inch FHD Gaming Laptop (8GB/1TB/Windows 10/NVIDIA GTX 1650 4GB Graphics/Black/2.2Kg)', '../assests/images/stock/16462952185fbb888e9797b.jpg', 8, 3, '100', '70,000', 1, 1),
(154, 'Lenovo Thinkpad P53 Intel Core i7 - 15.6\" FHD IPS Workstation (64 GB RAM/1TB SSD / Windows 10 Professional/ RTX3000 6GB Graphics / Black, 2.5Kg )', '../assests/images/stock/7884666385fbb88bc2386d.jpg', 8, 3, '50', '1,97,000', 1, 1),
(155, 'Mi Notebook 14 Intel Core i5-10210U 10th Gen Thin and Light Laptop(8GB/256GB SSD/Windows 10/Intel UHD Graphics/Silver/1.5Kg)', '../assests/images/stock/14246769475fbb895dc1d88.jpg', 19, 3, '100', '43,000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', ''),
(11, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'email@smc.in');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`order_item_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
