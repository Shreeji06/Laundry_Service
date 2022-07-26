-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 14, 2022 at 08:43 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hooksandhangers`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add customer', 7, 'add_customer'),
(26, 'Can change customer', 7, 'change_customer'),
(27, 'Can delete customer', 7, 'delete_customer'),
(28, 'Can view customer', 7, 'view_customer'),
(29, 'Can add membership', 8, 'add_membership'),
(30, 'Can change membership', 8, 'change_membership'),
(31, 'Can delete membership', 8, 'delete_membership'),
(32, 'Can view membership', 8, 'view_membership'),
(33, 'Can add customer membership', 9, 'add_customermembership'),
(34, 'Can change customer membership', 9, 'change_customermembership'),
(35, 'Can delete customer membership', 9, 'delete_customermembership'),
(36, 'Can view customer membership', 9, 'view_customermembership'),
(37, 'Can add item price', 10, 'add_itemprice'),
(38, 'Can change item price', 10, 'change_itemprice'),
(39, 'Can delete item price', 10, 'delete_itemprice'),
(40, 'Can view item price', 10, 'view_itemprice'),
(41, 'Can add invoice', 11, 'add_invoice'),
(42, 'Can change invoice', 11, 'change_invoice'),
(43, 'Can delete invoice', 11, 'delete_invoice'),
(44, 'Can view invoice', 11, 'view_invoice'),
(45, 'Can add order', 12, 'add_order'),
(46, 'Can change order', 12, 'change_order'),
(47, 'Can delete order', 12, 'delete_order'),
(48, 'Can view order', 12, 'view_order'),
(49, 'Can add cart', 13, 'add_cart'),
(50, 'Can change cart', 13, 'change_cart'),
(51, 'Can delete cart', 13, 'delete_cart'),
(52, 'Can view cart', 13, 'view_cart'),
(53, 'Can add barcode', 14, 'add_barcode'),
(54, 'Can change barcode', 14, 'change_barcode'),
(55, 'Can delete barcode', 14, 'delete_barcode'),
(56, 'Can view barcode', 14, 'view_barcode'),
(57, 'Can add user', 15, 'add_user'),
(58, 'Can change user', 15, 'change_user'),
(59, 'Can delete user', 15, 'delete_user'),
(60, 'Can view user', 15, 'view_user'),
(61, 'Can add notification', 16, 'add_notification'),
(62, 'Can change notification', 16, 'change_notification'),
(63, 'Can delete notification', 16, 'delete_notification'),
(64, 'Can view notification', 16, 'view_notification'),
(65, 'Can add text', 17, 'add_text'),
(66, 'Can change text', 17, 'change_text'),
(67, 'Can delete text', 17, 'delete_text'),
(68, 'Can view text', 17, 'view_text'),
(69, 'Can add expense', 18, 'add_expense'),
(70, 'Can change expense', 18, 'change_expense'),
(71, 'Can delete expense', 18, 'delete_expense'),
(72, 'Can view expense', 18, 'view_expense');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(9, 'pbkdf2_sha256$320000$NlR7OVVIrqsXGZ99AOkzNF$rcYgOnNbfloNpsazTz4QGK+ItKIohhz9L8LMk2/MuvI=', '2022-06-11 06:11:37.289658', 0, 'Musimdcxsd', 'sdcAdmin Cretx', '', 'admin@cretxinc.com', 0, 1, '2022-05-18 12:25:07.934021');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_customer`
--

CREATE TABLE `customer_customer` (
  `id` bigint(20) NOT NULL,
  `customer_name` varchar(40) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `address` longtext NOT NULL,
  `location` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `dob` date NOT NULL,
  `otp` int(11) NOT NULL,
  `customer_service` varchar(30) NOT NULL,
  `customer_status` tinyint(1) NOT NULL,
  `customer_type` varchar(20) NOT NULL,
  `register_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_customer`
--

INSERT INTO `customer_customer` (`id`, `customer_name`, `mobile`, `address`, `location`, `email`, `pincode`, `dob`, `otp`, `customer_service`, `customer_status`, `customer_type`, `register_date`) VALUES
(6, 'Pathan Azhar', '9925032626', 'C Block 504 Al Burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(7, 'H 802', '9925000061', 'H 802 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(8, 'Aamir khan', '7229046118', 'barber shop', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(9, 'Shaikh gulam', '9924100199', 'j 801 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(10, 'zainab hawa', '8200189193', '94 faizmohmmedi park opp prachina society', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(11, 'Sajid Husain', '9653156504', '1203 B Block Baage Musjtaba', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(12, 'Richa', '9687664096', 'orchid white L 24', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(13, 'G M MASKATI', '9998219259', 'E 8 RAJDANA SOC NEAR ESSAR PETROL PUMP', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(14, 'Hamida Maniar', '9898455544', 'rajdana society essar petrol pump', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(15, 'ABID MOMIN', '9227227786', 'A  1104 AL BUROOJ', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(16, 'ASHFAQ GAZI', '9737376504', 'H block 604alburooj', 'Makarba Road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(17, 'Mohammed Ali', '7698639567', 'B  803 Bage Mujtaba', 'Makarba Road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(18, 'LUBNA NAGARIYA', '9726786605', 'S A KIDS SCHOOL', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(19, 'MUBASSHIRA PISUWALA', '9925047687', 'Bagenishat', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(20, 'Arun Priyadarshi', '9687069666', 'C 901 SWATI FOLRENCE', 'SOUTH BOPAL', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(21, 'Rohan zala', '8000743414', 'e 44 orchid white field', 'Makarba Road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(22, 'SHIVAM ARORA', '7057679673', 'c 608 shaunak appt bakeri city', 'Vejalpur', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(23, 'ISHAN QURESHI', '7600532869', 'c 62 classic park opp kajal bunglow', 'JUHAPURA', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(24, 'Taufiq chuhan', '8866232210', 'B 303 taybah recidency near aqiba hights', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(25, 'Israr bhai', '9327085080', 'AL BUROOJ', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(26, 'Aamir', '9825933123', 'Bungalow No16 Park Land Society', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(27, 'Rizwana', '9924744639', 'a 1102 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(28, 'PRITI', '8980204110', 'UJALA CIRCLE', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(29, 'NOMAAN MISTRY', '7623033218', '8 NASHEMAN SOCIETY', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(30, 'Nazma momin', '9687668843', '17/khurshid park opp ikra hospital', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(31, 'Sameer', '8000034569', '10/zamzam duplex near cresent school', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(32, 'Kashis Iraqi', '9723556644', '31 sardarsmurti soc', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(33, 'Asim khan', '9638166777', 'A 104 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(34, 'Arif Mansuri', '9427900777', 'g 501 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(35, 'Suhail mojnidar', '9601177226', 'j 302 Alburooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(36, 'Ilyas arab', '9819925025', 'c 102 Aneeq homes tp 85 road', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(37, 'Shaista Hakim', '9724657667', 'b 502 zamzam aprtments opp classic park', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(38, 'ALIFIYA', '9724477111', 'Bungalow No 17 Chinar Park', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(39, 'Nawab Baloch', '9574475475', '702 J BLOCK All Burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(40, 'Imran ghogari', '7738543405', 'f 902 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(41, 'Mahipal', '9313454506', 'b /201 jaldeep icon opp torrent power', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(42, 'Atik Lightwala', '9825072466', '4 a ammar park', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(43, 'Deep', '9909420217', 'b 502 Sagar avenue near classic homes amber tower', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(44, 'OSAMA MOMIN', '9638666855', '5/A Dine Mohammadi Park Society behind ashiyana Society Jivraj Park Ahmedabad Gujarat 380051', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(45, 'J 701', '6238685429', 'j 701 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(46, 'Shameem khan', '8319246334', '104 akbar flat rehnuma soc', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(47, 'Saud Matchiswala', '9722519292', 'A/2 Anam Duplex Near Bliss Apartment Near Mohammadi Masjid opp Anam School', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(48, 'Rehan', '9725165773', 'c 601 al burroj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(49, 'Zuber bhai', '8690905043', 'barber shop al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(50, 'Faisal', '9662076656', 'c block 1104 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(51, 'Ammar bhai', '8905751902', 'i 1001 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(52, 'Nida karimi', '9106112944', '1/1Al ahbab society nr sahara flat', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(53, 'H 403', '9374531111', 'h 403 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(54, 'A B GHASURA', '9825191790', 'C/10 ELICON TOWER NR VISHALA CIRCLE JUHAPURA', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(55, 'Mukeem vohra', '8160127551', 'c 16 sunrise flat opp hajibawa dargah', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(56, 'Varis lokhandwala', '8140737212', 'f 301 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(57, 'Abeda ben', '8866597526', 'h 801alburooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(58, 'B block', '9558351327', '403 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(59, 'Amaan nagariya', '9687018753', '12/a chinar park behind gulzar park gate no 2', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(60, 'Anwar ali', '9898984506', '1103 bagemujtaba', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(61, 'Aslam Multani', '9913374885', '303 J block Al Burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(62, 'NAGARJUNA', '9537689181', 'A 212 A WING MONDEAL HEIGHTS NEXT TO NOVOTEL HOTEL S G HIGHWAY', 's g highway', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(63, 'Faizan', '9624030800', 'c 501 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(64, 'Ashraf ali ', '8197666092', 'c 201/al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(65, 'Uzma Bambawala', '9374887147', 'ashra bunglow', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(66, 'JAMIL VOHRA', '9824049613', 'A/8 CLASSIC PARK CO OP HOUSING SOCIETY NR KAJAL PARK MAKTAMPURA', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(67, 'Heena', '9714944553', 'j 802 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(68, 'mr Asif', '9879081666', 'd 1102 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(69, 'Javed bhai', '7760279108', 'i 904 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(70, 'SHEZAD KURESHI', '9904000689', '103 C BLOCK AL BUROOJ', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(71, 'G m shaikh', '7567013950', 'd 403 al  burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(72, 'Sabhia kureshi', '9909960044', 'gymholic', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(73, 'Bhaveja Thaker', '9925158642', 'Palm green b 103', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(74, 'Tarannum', '9850365086', 'F 203 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(75, 'Kabir', '9909838123', 'royal akber', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(76, 'Farhan iqbal', '9956674786', 'h 803 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(77, 'sanu', '7041109624', 'tawa icecream', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(78, 'Abdul  Ahad petiwala', '7383513151', 'sameburhan society', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(79, 'Alvaaz khan', '7698959596', '27/chinar park near gulzar park gate no 2', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(80, 'Rehbar khan', '9313991188', 'c 102  amwaaj society ', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(81, 'Hani bhai', '9722530812', 'juhapura', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(82, 'Mr Asif', '9967523306', 'f 101 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(83, 'Afjal maniar', '9099622384', 'j 901 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(84, 'shahruk bhai', '8817635484', 'juhapura', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(85, 'TARANNUM', '9648838862', 'B 29 AMBER TOWER', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(86, 'shafqat', '9376072016', '302 weatern park opp gazali arcade', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(87, 'Asma sakarwala', '9824611088', 'mubin park 1 near chinar park', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(88, 'RUZEIB KAGDI', '9974178625', 'B 16 LABBAIK PARK SOCIETY NR FUZAIL PARK', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(89, 'B 601', '9825700973', 'b 601 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(90, 'Yogesh Borisagar', '7436004781', 'satellite', 'satellite', '', 380015, NULL, 0, '0', 0, '0', '2022-06-28'),
(91, 'A 201', '9825776049', 'a 201 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(92, 'M r shaikh', '9824146317', 'royal hotel', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(93, 'G A shaikh', '7666672343', 'royal hotel', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(94, 'Soheb patel', '9712970918', 'g 701 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(95, 'owais zaveri', '7567220522', '47/zainab residency tp 85 opp amber tower', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(96, 'Rupal', '9727238382', 'e block 802', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(97, 'Irfan', '8511200735', 'al arsh 3 b 504 near kadri party plot', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(98, 'Mahendra gupte', '9586500868', 'b 702 richmond grand', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(99, 'Ashna shaikh', '6351587009', 'b 201 amwaaj residency behind hayat  residency', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(100, 'shweta sharma', '9005071083', 'A 1003  atulyam apartment near torrent power', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(101, 'Anisa Sindhi', '9998567023', 'a 403 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(102, 'Ahmad', '9004504109', 'j 803 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(103, 'Lajja', '9879774443', 'j  504 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(104, 'Misbah pathan', '9662624333', 'b 29/ bage nishat soc', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(105, 'Mushir Iraqi', '9904806029', '31 sardar smurti', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(106, 'SAUD HAWA', '9879617669', 'G 1102 AL BUROOJ', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(107, 'Habib khan', '9722702493', '19/juned park near faiz e aam school', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(108, 'Ishak', '9962879778', 'd 601 akibah hights 100ft road t p 85opp amber tower', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(109, 'shamir patni', '9898550944', 'c 2/gulmohar soc near memon hall', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(110, 'saadh malik', '7359728669', '8/union park behind memon hall', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(111, 'Zisan', '6352359110', 'kajal park', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(112, 'Uzef shaikh', '9099090471', 'i 202 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(113, 'Arvind Store', '9898769936', 'Arvind store', 'anand nagar road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(114, 'Mr Faruk', '9714142641', 'c 202 al burooj ', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(115, 'Amaan galeriya', '7600048497', '4/zainab park ', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(116, 'yushra', '9044884251', '31/sardarsmurti society', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(117, 'Shaista momin', '9998656722', '22/khurshid park soceity', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(118, 'juned bhai', '9909147347', 'roshni avenue', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(119, 'Avinash Patra', '9899044401', 'sammet platinum', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(120, 'Fatema lokhandwala', '9624253552', 'F 803 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(121, 'Rahil khan', '8469407237', 'B1/101 Arshad park', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(122, 'Omair shaikh', '8140769510', 'd 1002', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(123, 'i 401', '8780556965', 'i 401 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(124, 'Shahrukh khan', '9924620107', 'javed park', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(125, 'park land', '7574997756', '10 park land', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(126, 'Dilnawaz', '7041709002', '301/decent recidency cresent school', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(127, 'j 304', '9737991660', 'j 304 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(128, 'UMRANI', '7489300539', '501 B BLOCK AL BUROOJ', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(129, 'Imran', '9785742389', 'alburooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(130, 'Danish', '6353089217', 'c 1103  Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(131, 'g 1001', '9081616041', 'g 1001 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(132, 'Arif bhai', '9824446496', 'A-33 Amber tower', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(133, 'Saalim pissuwala', '8469000194', 'juhapura', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(135, 'Faizan', '9313457976', 'fatehwadi', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(136, 'Rohit', '9909967062', 'Smarna appt bakeri city', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(137, 'tanvir vohra', '8007000081', 'j 601 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(138, 'Vajir ali', '9898329895', 'B /203 Bage mujtaba', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(139, 'shital', '8530711017', 'A 302 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(140, 'shital', '8530711017', 'A 302 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(141, 'Ikbal bhai', '9924242865', 'bage mujtaba', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(142, 'Umar', '6351677682', 'gazala farm house', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(143, 'L A khan', '9619797077', 'B 504 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(144, 'Abhinav Mishra', '8668250121', 'f 008 samyaka  appt  bakeri city', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(145, 'Amaan shiekh', '7698058190', 'b 101 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(146, 'iram', '9099997007', 'c 1202 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(147, 'Ahmad Masi', '9724704940', 'Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(148, 'Danish Hakim', '9724442190', 'F 1202 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(149, 'sherkhan husaini', '9898622766', 'B 903 Al Burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(150, 'Soniya Shaikh', '8980101212', 'Arshad Park,Near Metro Park', 'Metro Park', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(151, 'Faiz', '9725422495', 'Aliza park 604', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(152, 'Aayesha Master', '9638397070', 'J 1002 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(153, 'Razin', '9904477991', 'Arshad park ', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(154, 'Aayesha Gandhi', '9925397868', 'juhapura', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(155, 'Abdul Majid', '9898550565', 'Juhapura', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(156, 'Mubina Chaudhary', '8401541403', 'B 2  Amber tower', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(157, 'Asif pathan', '7046048058', 'A 103 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(158, 'Sabiya', '9029027770', 'A 1404 bag e mujtaba', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(159, 'Farhin Mansuri', '9998849141', 'J-7,Fuzail Park,OOP of Labbaik Park,Behind Canal,Sarkhej', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(160, 'Nisar Bhai', '9913817736', 'B -37 Arshad park', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(161, 'Sara', '9499551013', 'I 103 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(162, 'Mohammed Ali', '9725064917', 'H 101 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(163, 'Mustaq', '9251492455', 'G 901 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(164, 'Athar Kazi', '9601836944', 'Al asbab park', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(165, 'Zeba', '8602169960', 'Bagh e Mujtaba', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(166, 'Janib Sindhi', '9428197866', 'G 302 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(167, 'Hemant patel', '9558855560', 'UJALA CIRCLE', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(168, 'mustaqim bhai', '9909830051', 'Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(169, 'Mujib shaikh', '8690999253', 'javed park 2 a4', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(170, 'David', '7005044856', 'gym', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(171, 'Rozina', '9725009606', 'H 1004 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(172, 'Abid Rajpura', '9879534429', 'Haidribaag', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(173, 'Avesh Momin', '9824008945', '5/A Dine Mohammadi Park Society behind ashiyana Society Jivraj Park Ahmedabad Gujarat 380051', 'juhapura', '', 380051, NULL, 0, '0', 0, '0', '2022-06-28'),
(174, 'Reshma', '9825651524', 'chinar park 16', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(175, 'Gulam Nabi', '9099901988', '14/farhan duplex near razzak masjid', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(176, 'Taufik Vhora', '9763355000', 'I 901 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(177, 'Nafisa Samir  Maniar', '9825071096', 'Bunglow 1/gulzr park gate no 3 ', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(178, 'Shezad Tambaliya', '9664648013', 'F 903 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(179, 'Raiyan', '9722100102', 'Luxuria Residency', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(180, 'Kaushal', '9978132022', 'Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(181, 'Ruhan saiyed', '9157632632', 'juhapura', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(182, 'Ismail bhai', '9727683355', 'khurshid park 5', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(183, 'Aniq', '7046109405', 'javed park', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(184, 'Muhib Vora', '8200150231', '501 Bliss Residency near sonal cinema', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(185, 'Sadab Kagdi', '9376192729', 'Anukul  Ciramic', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(186, 'FAIZAN TOPIWALA', '9825700022', 'I  801 AL BUROOJ', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(187, 'ILYAS HAWA', '9909173439', '67-FAIZ-E-MOHAMMADI', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(188, 'Shaikh Sahab', '9909909704', 'E 903 Al burooj ', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(189, 'Manjurali', '9978634143', 'I 704 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(190, 'Moiz Barodawala', '8690661640', 'c 701/ Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(191, 'Mujib', '9769614090', 'A 901 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(192, 'Faisal weldingwala', '9898296612', 'B block 402 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(193, 'Shabnam  ghori', '6353613360', 'ips colony dufnala', 'sahibaug', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(194, 'Asif bhai', '8433722268', 'j block 204 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(195, 'Hasan ali', '7069623523', 'bage mujtaba', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(196, 'Fahtima', '9664575825', 'G 802 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(197, 'Salif Qadri', '9925245715', 'sunrise park', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(198, 'Misbah modi', '9712720028', 'm m kareem d 202', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(199, 'Rushikesh', '9879610598', 'orchid white field j 22', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(200, 'Almira', '9099588377', 'B 604 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(201, 'Sarjil  Gangani', '9979240389', 'A 501 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(202, 'Mr Munaf', '7874866890', 'H 1203 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(203, 'Mubina', '9824281860', 'kuresh nagar sonal', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(204, 'Imran bhai', '9824188898', 'D 103 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(205, 'Omar Zafar', '7838094095', 'D 202 sunflower appt near savera hotel', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(206, 'Rizwan desai', '7573982033', 'Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(207, 'Preetham Srinivas', '7259680454', 'K 104 Orchid White field', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(208, 'Roman khan', '7778042729', 'Al rafiq decoration memon hall', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(209, 'A J Jafri', '9974450080', 'F 501 504 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(210, 'Fareen Jafri', '9725555992', 'F 504 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(211, 'Sohil Hudani', '9998241341', 'F 902 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(212, 'I m sardar', '9825238286', 'Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(213, 'Mahir Food Memories', '7201947847', 'Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(214, 'Dr jindani', '9825916783', 'I 302 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(215, 'Girish Ramasawamy', '9626899636', 'H 903 Richmond Grand', 'makarba road', '', 380051, NULL, 0, '0', 0, '0', '2022-06-28'),
(216, 'Irfan Vhora', '9925906685', 'D 601 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(217, 'Tarik Vhora', '9909955108', 'D 602 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(219, 'Tabassum khan', '9624337861', 'B 1101 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(220, 'Mohsina Sachora', '9979532618', 'D 204 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(221, 'Tarik Vhora', '9099054577', 'D 602 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(222, 'Nishant Sawant', '9987182176', 'D 604 Atuulyam', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(223, 'Nishant Sawant', '9987182176', 'D 604 Atuulyam', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(224, 'Aamir', '8490913712', 'momin parlour near razak masjid', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(225, 'Shafiq bhai', '9773297678', 'chinar park', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(226, 'Hidad vadviya', '9909923823', 'Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(227, 'E 801', '8866384766', 'E 801 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(228, 'Abdulla Bagadia', '9824060925', 'E 201 zamzam apprt  bhata school road', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(229, 'Shankar parab', '8511181397', 'R 310 shrinandnagar 3', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(230, 'Danish khan', '9726152919', '18 habib park near golden tower', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(231, 'Randhir', '9958765428', 'changodar', 'bawla road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(232, 'Bushra Saiyed', '8806665448', 'B 903 Al burooj ', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(233, 'Prachy Banker', '9913931975', '12 Ashoknagar Society Paldi Bhatta', 'paldi', '', 380001, NULL, 0, '0', 0, '0', '2022-06-28'),
(234, 'Sayed Ahmad Ali', '8349986688', 'Arshad park', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(235, 'Pathan Naznin', '9879834600', 'Amber tower', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(236, 'Asma', '9998720261', 'juhapura', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(237, 'Gazala', '9898443362', 'm m kareem d502', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(238, 'Sohil', '8849683355', 'fatehwadi', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(239, 'Amir bhai', '9712713727', 'postal society', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(240, 'Lalit bhai', '8946889890', 'f 22 orchid white field', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(241, 'Ashfak', '9427388748', 'cresant school', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(242, 'Aqib', '9662796647', 'Aamir park', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(243, 'PRANAV', '7043103204', 'SANAND CIRCLE', 'SANAND', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(244, 'Faraz bhai', '9898580638', 'I 501 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(245, 'Bakarali Rabadi', '7567435136', 'A 1401 Bagh e mujtaba', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(246, 'Ruzeb Shaikh', '7096510699', 'Gulzar park 3 ', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(247, 'Mujib Katrawala', '9320014090', 'A 901 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(248, 'Ramesh Jain', '9712999887', 'J 505 swareet appartment bakeri city', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(249, 'Ramesh Jain', '9712999887', 'J 505 swareet appartment bakeri city', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(250, 'zarraf husaim', '7048113322', 'HYEDRABADI HOTEL', 'AMBER TOWER', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(251, 'SAHIL BOLIYA', '7359166999', '404 SAMEERA RESIDENCY BEHIND ZAIKA DARBAR', 'VISHALA', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(252, 'Mujafar', '8511728057', 'tekra', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(253, 'Nazar mohammed', '9978907440', 'F 303 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(254, 'Shaishadri Tejas Shah', '9825034469', '10 Rajpath rowhouse opp Ais school ', 'bodakdev', '', 380054, NULL, 0, '0', 0, '0', '2022-06-28'),
(255, 'Imran khan', '9998474946', 'Amber tower', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(256, 'Munir katrawala', '9825569936', 'sunrise bunglow opp navrang society', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(257, 'Arif maniar', '9724172155', '13 sabera society', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(258, 'Sarif bhai', '9825505076', 'dholka', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(259, 'Bilal pissuwala', '8758637545', 'golden park', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(260, 'Lukman khan', '9979999841', 'Bagbaan bunglow', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(261, 'Sarfaraz', '7201957224', 'B 303 Al burooj', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(262, 'Fazal', '9558588027', 'G 104 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(263, 'Sef Megraji', '9898881234', 'chinar park', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(264, 'Furkan', '8849040599', 'Ahmad residency tp 85 road', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(265, 'Het', '8320334119', 'makarba', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(266, 'zahida', '9825612363', 'Al burooj e 1204', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(267, 'Anwar shaikh', '9998723324', 'A 904 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(268, 'Fazal', '8421308793', 'c 301 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(269, 'Anirudh', '7860427172', 'd 104 mm kareem', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(270, 'Dr Shafi Shaikh', '9687076127', 'H 1203 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(271, 'Arsh', '8780850801', 'makarba', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(272, 'Aslam shaikh', '9825030914', 'Al burooj', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(273, 'Aslam shaikh', '9825030914', 'Al burooj', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(274, 'Faraz gandhi', '7874242130', 'Kajal park', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-28'),
(275, 'RAZIN  KAJAL PARK', '9925191356', 'kajal park', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(276, 'Fazal  galeriya', '9924944423', 'sheen society', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(277, 'MOSHIN SAHIWALA', '9429600459', 'FAIZ MOHAMMADI', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(278, 'Rajesh', '9848002722', 'orchid white field ', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(279, 'Amit', '9638902429', 'c 502  Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(280, 'Prasanna', '9724348094', 'makarba', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(281, 'Krima Shah', '9687448498', 'satelite', 's g highway', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(282, 'Taufik', '9722353153', 'cresant school', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(283, 'Prajeesha', '9099971517', 'h 201 shrinandnagar 5', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(284, 'Shifalika', '8527719981', 'A 1104 krupal  heritage', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(285, 'Shubham', '7417218279', 'makarba', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(286, 'shehzada khan', '9898980339', 'amir park', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(287, 'Humran nagariya', '8469698488', '4 prachina society', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(288, 'Amrin', '9033333323', 'c 1202 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(289, 'Himani', '9625198171', 'makarba', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(290, 'Shaista shafiq', '9510865090', 'i 101 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(291, 'Musharraf khan', '9979081101', 'juhapura', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(292, 'Mizan', '7567078238', 'c 504 Al arsh3', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(293, 'Pathan Azhar', '9825014196', 'unit hills 2 b 9', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(294, 'Jamil bhai', '9998168682', 'c/101 Apex apartment ', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(295, 'Daniya sareshwala', '7622976603', '10 faiz mohammedi society', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(296, 'Reena', '9978261157', 'torrent power', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(297, 'Sushil', '9730477335', 'vejalpur', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(298, 'Nawaz bhai', '8460198837', 'g 1002 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(299, 'Yasin bhai', '8182083907', 'Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(300, 'Rehmat fatima', '7359592941', 'c 703 bag e mujtaba', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(301, 'Afza', '9824154701', 'c 304 apex apaartment', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(302, 'Sarfaraz', '7202853079', 'western park kadri party plot', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(303, 'ATIK', '9722718188', 'MAKARBA', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(304, 'Tanveer m shaikh', '9601838996', '56 classic villa', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(305, 'Aleena', '7622091190', 'A 401 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(306, 'Roshan kalyani', '9979130934', 'bunglow 1', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(307, 'Vasim mansuri', '7878698108', 'c 302 hayatt residecy', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(308, 'nawaz bhai', '8780050445', 'g 1002 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(309, 'Arsh', '9820009851', 'juhapura', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(310, 'Ravi', '8305868777', 'sarkhej', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(311, 'gufran', '8866692821', 'kid be', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(312, 'MR SHEZAD SHAHIWALA', '9377717421', '12 SAMEER VIHAR SOCIETY OPP AMIR PARK', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(313, 'Sehenshahhkhan', '9723688106', 'javed park', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(314, 'FAISAL MALIK', '9687027829', 'SAHIR PARK', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(315, 'Moazzam vohra', '9898184955', 'B/34 gulzar park 1', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(316, 'manisha Ben', '9898202721', '9/Park land', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(317, 'Sudhakar rao', '9558815068', 'torrent power', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(318, 'MUfida megraji', '9537758777', 'chinar park', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(319, 'Zubin', '7383246937', 'H 801 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(320, 'Gresha A', '8460578225', ' 1104 krupal  heritage', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(321, 'Rahil Bareja', '9898983323', 'lovly park', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(322, 'Rushi', '7573958774', 'B 91 orchid white field', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(323, 'Abid bhai', '8200412974', 'Haidribaag', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(324, 'Shanu khan', '9099747403', 'Javed park vibhag 2', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(325, 'Avesh khan', '9998054119', 'javedpark', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(326, 'Arsh', '9712940217', 'juhapura', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(327, 'Faizan khan', '9998521317', 'f 504 best appartment', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(328, 'Liza mansuri', '8320242718', '15 al niyaz park behind majin park', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(329, 'Alsaar khan', '9824018709', 'javedpark', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(330, 'Nadeem Ahmad', '7757007984', 'B 1 303/arshad meridian', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(331, 'Mohsin Kureshi', '9998225149', 'sagar avenue', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(332, 'Razia ben', '9913770716', '43 park land', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(333, 'Taviz bhai', '7573949433', 'i 202 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(334, 'Abdul memon', '9512904040', 'fatehwadi', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(335, 'Samina khan', '8789041917', 'E 804 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(336, 'Gazala saiyed', '9898476749', 'Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(337, 'Shabaz Husain', '8697035493', 'Al burooj D 1001', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(338, 'Manek kumar singh', '9653936016', 'Sakshat appt D 310 bakeri city', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(339, 'Husain', '9036907104', 'kadri party plot', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(340, 'saiyed sameer', '9136070163', 'Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(341, 'Inayat khan', '7600007596', 'Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(342, 'soheb bhojani', '7038393676', 'B 1103 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(343, 'mr Altaf', '7574861728', 'D 501 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(344, 'Saahid', '9925836556', 'C-1201, AL BUROOJ', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(345, 'Ahmad bhai', '9925062935', 'B 32/ sardar smurti', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(346, 'Nusrat', '9033000223', 'g 804 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(347, 'Kinjal', '9924399902', 'E 1004 al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(348, 'sayma', '8200631581', 'majin park 2 /6 vishala circle', 'VISHALA', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(349, 'Asim', '7859926890', 'm m kareem c 303', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(350, 'Kaif shaikh', '8490947242', 'juhapura', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(351, 'Nipul', '9822777300', 'g 61 orchid white field', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(352, 'Ahmad', '9558280176', '21 rajdana society', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(353, 'Chintan Kayastha', '9998400432', 'A 305 swareet appt sonal police station', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(354, 'Tanvir', '9887005959', 'i 504 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(355, 'Sahil achhava', '9429933807', 'A 204 sky avenue', 'SARKHEJ ROAD', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(356, 'h 101', '9920573836', 'Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(357, 'prashant', '9327919959', 'sule row house', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(358, 'Arsh vohra', '9925144072', 'i 301 Al burooj', 'makarba road', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29'),
(359, 'sajida peerji', '9265645265', '6 gulab park near asra bunglow', 'juhapura', '', 380055, NULL, 0, '0', 0, '0', '2022-06-29');

-- --------------------------------------------------------

--
-- Table structure for table `cust_barcode_barcode`
--

CREATE TABLE `cust_barcode_barcode` (
  `id` bigint(20) NOT NULL,
  `bvalue` varchar(100) NOT NULL,
  `service` varchar(20) NOT NULL,
  `product` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `remarks` varchar(200) NOT NULL,
  `cust_id_id` bigint(20) NOT NULL,
  `inv_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cust_barcode_barcode`
--

INSERT INTO `cust_barcode_barcode` (`id`, `bvalue`, `service`, `product`, `status`, `remarks`, `cust_id_id`, `inv_id_id`) VALUES
(1, '1-1', 'STEAM IRON', 'T-SHIRT', 0, 'nkjb', 2, 1),
(2, '1-2', 'IO', 'Shirt', 0, 'nkjb', 2, 1),
(3, '2-1', 'IO', 'Shirt', 0, 'nkjb', 2, 2),
(4, '3-1', 'IO', 'Shirt', 0, 'nkjb', 2, 3),
(5, '4-1', 'STEAM IRON', 'T-SHIRT', 0, 'nkjb', 2, 4),
(6, '5-1', 'STEAM IRON', 'T-SHIRT', 0, 'nkjb', 2, 5);


-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'customer', 'customer'),
(14, 'cust_barcode', 'barcode'),
(18, 'expense', 'expense'),
(11, 'invoice', 'invoice'),
(10, 'invoice', 'itemprice'),
(9, 'membership', 'customermembership'),
(8, 'membership', 'membership'),
(16, 'notifications', 'notification'),
(17, 'notifications', 'text'),
(13, 'order', 'cart'),
(12, 'order', 'order'),
(6, 'sessions', 'session'),
(15, 'user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-05-06 06:04:41.410738'),
(2, 'auth', '0001_initial', '2022-05-06 06:04:52.953848'),
(3, 'admin', '0001_initial', '2022-05-06 06:04:56.758979'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-05-06 06:04:56.813830'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-06 06:04:56.857133'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-05-06 06:04:57.638103'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-05-06 06:04:58.738188'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-05-06 06:04:59.049266'),
(9, 'auth', '0004_alter_user_username_opts', '2022-05-06 06:04:59.103147'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-05-06 06:04:59.906080'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-05-06 06:04:59.947747'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-05-06 06:05:00.060838'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-05-06 06:05:00.226556'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-05-06 06:05:00.379511'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-05-06 06:05:00.632380'),
(16, 'auth', '0011_update_proxy_permissions', '2022-05-06 06:05:00.728898'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-05-06 06:05:00.929303'),
(18, 'customer', '0001_initial', '2022-05-06 06:05:01.435886'),
(19, 'invoice', '0001_initial', '2022-05-06 06:05:03.847951'),
(20, 'invoice', '0002_rename_product_type_itemprice_cust_type_and_more', '2022-05-06 06:05:04.003599'),
(21, 'invoice', '0003_alter_invoice_due_date', '2022-05-06 06:05:04.045473'),
(22, 'invoice', '0004_alter_invoice_due_date_alter_invoice_payment_type', '2022-05-06 06:05:04.147855'),
(23, 'invoice', '0005_alter_invoice_due_date', '2022-05-06 06:05:04.380995'),
(24, 'invoice', '0006_alter_invoice_due_date', '2022-05-06 06:05:04.431841'),
(25, 'invoice', '0007_alter_invoice_due_date', '2022-05-06 06:05:04.483384'),
(26, 'invoice', '0008_alter_invoice_due_date', '2022-05-06 06:05:04.547872'),
(27, 'invoice', '0009_alter_invoice_due_date', '2022-05-06 06:05:04.647337'),
(28, 'invoice', '0010_alter_invoice_due_date', '2022-05-06 06:05:04.694590'),
(29, 'invoice', '0011_alter_invoice_date_alter_invoice_due_date', '2022-05-06 06:05:04.768583'),
(30, 'cust_barcode', '0001_initial', '2022-05-06 06:05:10.134744'),
(31, 'cust_barcode', '0002_alter_barcode_product_alter_barcode_service', '2022-05-06 06:05:21.084857'),
(32, 'cust_barcode', '0003_rename_b_val_barcode_bvalue', '2022-05-06 06:05:21.284008'),
(33, 'cust_barcode', '0004_remove_barcode_bvalue', '2022-05-06 06:05:21.869610'),
(34, 'cust_barcode', '0005_barcode_bvalue', '2022-05-06 06:05:22.314647'),
(35, 'cust_barcode', '0006_delete_barcode', '2022-05-06 06:05:22.616230'),
(36, 'cust_barcode', '0007_initial', '2022-05-06 06:05:25.453483'),
(37, 'membership', '0001_initial', '2022-05-06 06:05:25.881173'),
(38, 'membership', '0002_customermembership', '2022-05-06 06:05:29.989128'),
(39, 'order', '0001_initial', '2022-05-06 06:05:34.337791'),
(40, 'order', '0002_cart', '2022-05-06 06:05:36.858803'),
(41, 'sessions', '0001_initial', '2022-05-06 06:05:37.698279'),
(42, 'user', '0001_initial', '2022-05-11 13:07:51.037283'),
(43, 'notifications', '0001_initial', '2022-05-11 13:07:51.049055'),
(44, 'customer', '0002_alter_customer_register_date', '2022-05-16 04:56:39.127701'),
(45, 'customer', '0003_alter_customer_dob', '2022-05-16 04:56:39.138264'),
(46, 'customer', '0004_alter_customer_dob', '2022-05-16 04:56:39.149327'),
(47, 'customer', '0005_alter_customer_dob', '2022-05-16 04:56:39.159036'),
(48, 'invoice', '0003_alter_invoice_date_alter_invoice_due_date', '2022-05-16 04:56:39.180935'),
(49, 'membership', '0002_alter_customermembership_date_and_more', '2022-05-16 04:56:39.210983'),
(50, 'notifications', '0002_text', '2022-05-16 13:45:45.930626'),
(51, 'expense', '0001_initial', '2022-05-18 06:44:34.728495'),
(52, 'invoice', '0004_alter_invoice_status', '2022-05-18 06:44:34.734609'),
(53, 'order', '0003_alter_cart_remarks', '2022-05-18 06:44:34.770097'),
(54, 'expense', '0002_alter_expense_date', '2022-05-18 06:45:52.769234'),
(55, 'expense', '0003_expense_amount', '2022-05-18 06:53:27.873836');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('15n9aipu6zuc8bjjv58xg7sjzxw7peet', 'e30:1nrJJv:jKa-0dbyvJBMfPOaMAGXbxksV_cgE1DRvniDzYB0zg8', '2022-06-01 13:02:31.559684'),
('1jsdj3byz4u1mv8yr6114g4x59qdlxjv', 'e30:1nrIkR:fC7RfQSJdnpq6xkU1Vc8uw8PTf45XLDGyWGaa0ZLqnk', '2022-06-01 12:25:51.814564'),
('34djr2ukjwpaphu43vrbraa5zu2tiscw', 'e30:1nrJJ1:featWOoaSVgzsk77eHseErq7QSx702paxCwQ9QhvKts', '2022-06-01 13:01:35.114682'),
('3ob1macxwpwp1ww2jawmcihkhz6dafsc', '.eJxVjEEOwiAQRe_C2hCgMGVcuvcMZGBAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hYnEWKE6_W6T0yG0HfKd2m2Wa27pMUe6KPGiX15nz83K4fweVev3WdkAEIiQ2ZBCVL6iNdoXHIUHUNhfwBFGxImVdNB5yMnZM3pLTHpx4fwDYNzdP:1nrJLS:IBV5dR2PrJ54V5q2yCGn6inpZWZEy7mDxuzVw9O_6h8', '2022-06-01 13:04:06.515653'),
('9livjudiy3udu8px0vf5zbztajjhgmtl', '.eJxVjEEOwiAQRe_C2hCgMGVcuvcMZGBAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hYnEWKE6_W6T0yG0HfKd2m2Wa27pMUe6KPGiX15nz83K4fweVev3WdkAEIiQ2ZBCVL6iNdoXHIUHUNhfwBFGxImVdNB5yMnZM3pLTHpx4fwDYNzdP:1ntkXH:6K0F42Iq6RFsPhuNPN8vWRxeYfXsxh_-mK0JkLerYEg', '2022-06-08 06:30:23.414002'),
('p8lcxqpk3rj475a22mwgn1l5nsh4qnag', '.eJxVjEEOwiAQRe_C2hCgMGVcuvcMZGBAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hYnEWKE6_W6T0yG0HfKd2m2Wa27pMUe6KPGiX15nz83K4fweVev3WdkAEIiQ2ZBCVL6iNdoXHIUHUNhfwBFGxImVdNB5yMnZM3pLTHpx4fwDYNzdP:1nzuLR:4FY9xe_zc5YSx8FbswFHej-RPrE-DC0Rdp7jO0YS7C8', '2022-06-25 06:11:37.292558'),
('xtwkg26f4dd9qp151j663tx6o20fplu7', '.eJxVjEEOwiAQRe_C2hCgMGVcuvcMZGBAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hYnEWKE6_W6T0yG0HfKd2m2Wa27pMUe6KPGiX15nz83K4fweVev3WdkAEIiQ2ZBCVL6iNdoXHIUHUNhfwBFGxImVdNB5yMnZM3pLTHpx4fwDYNzdP:1nuT7V:YFBzl2c5zm2Z91R7mIXKefaTxX1yoMPIhEHcc6ym-O8', '2022-06-10 06:06:45.827796');

-- --------------------------------------------------------

--
-- Table structure for table `expense_expense`
--

CREATE TABLE `expense_expense` (
  `id` bigint(20) NOT NULL,
  `expense` longtext NOT NULL,
  `date` date NOT NULL,
  `remarks` longtext NOT NULL,
  `amount` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense_expense`
--

INSERT INTO `expense_expense` (`id`, `expense`, `date`, `remarks`, `amount`) VALUES
(2, 'Petrol', '2022-05-18', 'njkbj', '5000'),
(3, 'Petrol', '2022-05-18', 'njkbj', '5000');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_invoice`
--

CREATE TABLE `invoice_invoice` (
  `id` bigint(20) NOT NULL,
  `total_piece` int(11) NOT NULL,
  `date` date NOT NULL,
  `due_date` date NOT NULL,
  `price` int(11) NOT NULL,
  `discount_type` varchar(10) NOT NULL,
  `discount` int(11) NOT NULL,
  `net` int(11) NOT NULL,
  `payment_due` int(11) NOT NULL,
  `paid` int(11) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `payment_status` tinyint(1) NOT NULL,
  `status` varchar(30) NOT NULL,
  `cancel` tinyint(1) NOT NULL,
  `m_price` int(11) NOT NULL,
  `m_point` int(11) NOT NULL,
  `cust_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_invoice`
--

INSERT INTO `invoice_invoice` (`id`, `total_piece`, `date`, `due_date`, `price`, `discount_type`, `discount`, `net`, `payment_due`, `paid`, `payment_type`, `payment_status`, `status`, `cancel`, `m_price`, `m_point`, `cust_id_id`) VALUES
(1, 2, '2022-05-25', '2022-05-30', 150, 'Flat', 0, 150, 150, 0, 0, 0, 'Pending', 0, 0, 0, 2),
(2, 1, '2022-05-25', '2022-05-30', 100, 'Flat', 0, 100, 100, 0, 0, 0, 'Pending', 0, 0, 0, 2),
(3, 28, '2022-05-25', '2022-05-30', 100, 'Flat', 0, 2800, 2700, 2700, 2, 1, 'Delivered', 0, 0, 0, 2),
(4, 1, '2022-05-27', '2022-06-01', 50, 'Flat', 0, 50, 50, 50, 1, 1, 'Delivered', 0, 0, 0, 2),
(5, 1, '2022-06-11', '2022-06-16', 50, 'Flat', 0, 50, 50, 0, 0, 0, 'Pending', 0, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_itemprice`
--

CREATE TABLE `invoice_itemprice` (
  `id` bigint(20) NOT NULL,
  `cust_type` varchar(30) NOT NULL,
  `service` varchar(30) NOT NULL,
  `cloth_type` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_itemprice`
--

INSERT INTO `invoice_itemprice` (`id`, `cust_type`, `service`, `cloth_type`, `price`) VALUES
(1, 'MEN', 'STEAM IRON', 'T-SHIRT', '50'),
(2, 'Women', 'IO', 'Shirt', '100');

-- --------------------------------------------------------

--
-- Table structure for table `membership_customermembership`
--

CREATE TABLE `membership_customermembership` (
  `id` bigint(20) NOT NULL,
  `date` datetime(6) NOT NULL,
  `ex_date` datetime(6) NOT NULL,
  `avl_price` int(11) NOT NULL,
  `avl_point` int(11) NOT NULL,
  `day_ex` int(11) NOT NULL,
  `custid_id` bigint(20) NOT NULL,
  `msid_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `membership_membership`
--

CREATE TABLE `membership_membership` (
  `id` bigint(20) NOT NULL,
  `service` varchar(20) NOT NULL,
  `mbsp_amount` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `point` int(11) NOT NULL,
  `validity` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `membership_membership`
--

INSERT INTO `membership_membership` (`id`, `service`, `mbsp_amount`, `price`, `point`, `validity`) VALUES
(1, 'STEAM IRON', 1000, 1000, 100, '2-months');

-- --------------------------------------------------------

--
-- Table structure for table `notifications_notification`
--

CREATE TABLE `notifications_notification` (
  `id` bigint(20) NOT NULL,
  `Class` varchar(50) NOT NULL,
  `key` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `route` varchar(200) NOT NULL,
  `user_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notifications_text`
--

CREATE TABLE `notifications_text` (
  `id` bigint(20) NOT NULL,
  `text` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications_text`
--

INSERT INTO `notifications_text` (`id`, `text`) VALUES
(1, 'xsxsa{0}{1}{2}{3}');

-- --------------------------------------------------------

--
-- Table structure for table `order_cart`
--

CREATE TABLE `order_cart` (
  `id` bigint(20) NOT NULL,
  `cust_type` varchar(30) NOT NULL,
  `service` varchar(30) NOT NULL,
  `product` varchar(30) NOT NULL,
  `ind_price` int(11) NOT NULL,
  `no_item` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `remarks` longtext NOT NULL,
  `cust_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_order`
--

CREATE TABLE `order_order` (
  `id` bigint(20) NOT NULL,
  `cust_type` varchar(30) NOT NULL,
  `service` varchar(30) NOT NULL,
  `product` varchar(30) NOT NULL,
  `ind_price` int(11) NOT NULL,
  `no_item` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `remarks` varchar(30) NOT NULL,
  `cust_id_id` bigint(20) NOT NULL,
  `inv_id_id` bigint(20) NOT NULL,
  `ip_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_order`
--

INSERT INTO `order_order` (`id`, `cust_type`, `service`, `product`, `ind_price`, `no_item`, `total_price`, `remarks`, `cust_id_id`, `inv_id_id`, `ip_id_id`) VALUES
(1, 'MEN', 'STEAM IRON', 'T-SHIRT', 50, 1, 50, 'nkjb', 2, 1, 1),
(2, 'Women', 'IO', 'Shirt', 100, 1, 100, 'nkjb', 2, 1, 2),
(3, 'Women', 'IO', 'Shirt', 100, 1, 100, 'nkjb', 2, 2, 2),
(4, 'Women', 'IO', 'Shirt', 100, 28, 2800, 'nkjb', 2, 3, 2),
(5, 'MEN', 'STEAM IRON', 'T-SHIRT', 50, 1, 50, 'nkjb', 2, 4, 1),
(6, 'MEN', 'STEAM IRON', 'T-SHIRT', 50, 1, 50, 'nkjb', 2, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_user`
--

CREATE TABLE `user_user` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_confirm` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `m_number` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `customer_customer`
--
ALTER TABLE `customer_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cust_barcode_barcode`
--
ALTER TABLE `cust_barcode_barcode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cust_barcode_barcode_cust_id_id_947d2015_fk_customer_customer_id` (`cust_id_id`),
  ADD KEY `cust_barcode_barcode_inv_id_id_975ce9bd_fk_invoice_invoice_id` (`inv_id_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `expense_expense`
--
ALTER TABLE `expense_expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_invoice`
--
ALTER TABLE `invoice_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_invoice_cust_id_id_fbb3d0bf_fk_customer_customer_id` (`cust_id_id`);

--
-- Indexes for table `invoice_itemprice`
--
ALTER TABLE `invoice_itemprice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_customermembership`
--
ALTER TABLE `membership_customermembership`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membership_customerm_custid_id_88cad932_fk_customer_` (`custid_id`),
  ADD KEY `membership_customerm_msid_id_f35e8fdd_fk_membershi` (`msid_id`);

--
-- Indexes for table `membership_membership`
--
ALTER TABLE `membership_membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications_notification`
--
ALTER TABLE `notifications_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notification_user_id_id_d11da299_fk_user_user_id` (`user_id_id`);

--
-- Indexes for table `notifications_text`
--
ALTER TABLE `notifications_text`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_cart`
--
ALTER TABLE `order_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_cart_cust_id_id_83914cb8_fk_customer_customer_id` (`cust_id_id`);

--
-- Indexes for table `order_order`
--
ALTER TABLE `order_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_order_cust_id_id_d4e4c77a_fk_customer_customer_id` (`cust_id_id`),
  ADD KEY `order_order_inv_id_id_4714249a_fk_invoice_invoice_id` (`inv_id_id`),
  ADD KEY `order_order_ip_id_id_cb4e3b51_fk_invoice_itemprice_id` (`ip_id_id`);

--
-- Indexes for table `user_user`
--
ALTER TABLE `user_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_customer`
--
ALTER TABLE `customer_customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cust_barcode_barcode`
--
ALTER TABLE `cust_barcode_barcode`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `expense_expense`
--
ALTER TABLE `expense_expense`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoice_invoice`
--
ALTER TABLE `invoice_invoice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `invoice_itemprice`
--
ALTER TABLE `invoice_itemprice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `membership_customermembership`
--
ALTER TABLE `membership_customermembership`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `membership_membership`
--
ALTER TABLE `membership_membership`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notifications_notification`
--
ALTER TABLE `notifications_notification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications_text`
--
ALTER TABLE `notifications_text`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_cart`
--
ALTER TABLE `order_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_order`
--
ALTER TABLE `order_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_user`
--
ALTER TABLE `user_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `cust_barcode_barcode`
--
ALTER TABLE `cust_barcode_barcode`
  ADD CONSTRAINT `cust_barcode_barcode_cust_id_id_947d2015_fk_customer_customer_id` FOREIGN KEY (`cust_id_id`) REFERENCES `customer_customer` (`id`),
  ADD CONSTRAINT `cust_barcode_barcode_inv_id_id_975ce9bd_fk_invoice_invoice_id` FOREIGN KEY (`inv_id_id`) REFERENCES `invoice_invoice` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `invoice_invoice`
--
ALTER TABLE `invoice_invoice`
  ADD CONSTRAINT `invoice_invoice_cust_id_id_fbb3d0bf_fk_customer_customer_id` FOREIGN KEY (`cust_id_id`) REFERENCES `customer_customer` (`id`);

--
-- Constraints for table `membership_customermembership`
--
ALTER TABLE `membership_customermembership`
  ADD CONSTRAINT `membership_customerm_custid_id_88cad932_fk_customer_` FOREIGN KEY (`custid_id`) REFERENCES `customer_customer` (`id`),
  ADD CONSTRAINT `membership_customerm_msid_id_f35e8fdd_fk_membershi` FOREIGN KEY (`msid_id`) REFERENCES `membership_membership` (`id`);

--
-- Constraints for table `notifications_notification`
--
ALTER TABLE `notifications_notification`
  ADD CONSTRAINT `notifications_notification_user_id_id_d11da299_fk_user_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `user_user` (`id`);

--
-- Constraints for table `order_cart`
--
ALTER TABLE `order_cart`
  ADD CONSTRAINT `order_cart_cust_id_id_83914cb8_fk_customer_customer_id` FOREIGN KEY (`cust_id_id`) REFERENCES `customer_customer` (`id`);

--
-- Constraints for table `order_order`
--
ALTER TABLE `order_order`
  ADD CONSTRAINT `order_order_cust_id_id_d4e4c77a_fk_customer_customer_id` FOREIGN KEY (`cust_id_id`) REFERENCES `customer_customer` (`id`),
  ADD CONSTRAINT `order_order_inv_id_id_4714249a_fk_invoice_invoice_id` FOREIGN KEY (`inv_id_id`) REFERENCES `invoice_invoice` (`id`),
  ADD CONSTRAINT `order_order_ip_id_id_cb4e3b51_fk_invoice_itemprice_id` FOREIGN KEY (`ip_id_id`) REFERENCES `invoice_itemprice` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
