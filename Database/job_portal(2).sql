-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2023 at 03:28 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `email`) VALUES
(1, 'Justine Podiotan', 'c0cf12d87f06c91ad6972f9eeb0e1e34', 'ams-admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_academic_qualification`
--

CREATE TABLE `tbl_academic_qualification` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `timeframe` varchar(255) NOT NULL,
  `certificate` longblob NOT NULL,
  `transcript` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alerts`
--

CREATE TABLE `tbl_alerts` (
  `id` int(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_alerts`
--

INSERT INTO `tbl_alerts` (`id`, `code`, `description`, `type`) VALUES
(1, '1123', 'You have been registered successfully', 'success'),
(2, '4568', 'Unknown error occurred while performing your request', 'danger'),
(3, '0927', 'Email address is already registered', 'warning'),
(4, '0346', 'Invalid email or password', 'danger'),
(5, '9837', 'Your profile have been updated successfully', 'success'),
(6, '9564', 'Password updated successfully', 'success'),
(9, '2305', 'Educational Attainment was added successfully', 'success'),
(11, '0521', 'Educational Attainment was deleted successfully', 'success'),
(13, '9367', 'language have been added', 'success'),
(14, '0591', 'Language was deleted successfully', 'success'),
(15, '8763', 'Language have been updated', 'success'),
(16, '6734', 'Educational Attainment was updated', 'success'),
(17, '9843', 'Your job advertise have been posted successfully', 'success'),
(18, '1964', 'Training / Workshop have been added successfully', 'success'),
(20, '9210', 'working experience have been added', 'success'),
(22, '9215', 'working experience updated successfully', 'success'),
(24, '0593', 'working experience was deleted', 'success'),
(26, '9522', 'Training / workshop record have been deleted', 'success'),
(28, '2303', 'Academic qualification have been added successfully', 'success'),
(30, '1521', 'Academic qualification was deleted', 'success'),
(32, '3214', 'Academic qualification have been updated', 'success'),
(34, '2380', 'Referee was added successfully', 'success'),
(36, '7642', 'Referee information have been updated', 'success'),
(38, '0173', 'Job Ad have been deleted', 'success'),
(40, '0369', 'Job Ad has been updated successfully', 'success'),
(42, '2974', 'An error occurred while sending your message', 'danger'),
(43, '5634', 'Your message was sent successfully', 'success'),
(44, '3091', 'You have successfully changed your password', 'success'),
(45, '3591', 'An error occurred while updating your password', 'danger'),
(46, '2290', 'Your certificate size must be less or equal to <strong>1MB</strong>', 'warning'),
(47, '2490', 'Your transcript size must be less or equal to <strong>1MB</strong>', 'warning'),
(48, '5790', 'Training information was updated', 'success'),
(50, '3478', 'Your image size must be less or equal to <strong>1MB</strong>', 'warning'),
(51, '6789', 'Attachment was added successfully', 'success'),
(53, '6784', 'Attachment was deleted successfully', 'success'),
(55, '7764', 'Attachment was updated successfully', 'success'),
(57, '9517', 'Referee have been deleted', 'success'),
(0, '6969', 'You are not in Tesda Passer List', 'danger');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brgy`
--

CREATE TABLE `tbl_brgy` (
  `id` int(11) NOT NULL,
  `city_code` int(11) NOT NULL,
  `brgy_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `tbl_brgy`
--

INSERT INTO `tbl_brgy` (`id`, `city_code`, `brgy_name`) VALUES
(1, 119, 'Agapito del Rosario'),
(2, 119, 'Amsic'),
(3, 119, 'Anunas'),
(4, 119, 'Balibago'),
(5, 119, 'Capaya'),
(6, 119, 'Claro M. Recto'),
(7, 119, 'Cuayan'),
(8, 119, 'Cutcut'),
(9, 119, 'Cutud'),
(10, 119, 'Lourdes North West'),
(11, 119, 'Lourdes Sur'),
(12, 119, 'Lourdes Sur East'),
(13, 119, 'Malabanias'),
(14, 119, 'Margot'),
(15, 119, 'Mining'),
(16, 119, 'Ninoy Aquino (Mariso'),
(17, 119, 'Pampang'),
(18, 119, 'Pandan'),
(19, 119, 'Pulung Cacutud'),
(20, 119, 'Pulung Maragul'),
(21, 119, 'Pulungbulu'),
(22, 119, 'Salapungan'),
(23, 119, 'San Jose'),
(24, 119, 'San Nicolas'),
(25, 119, 'Santa Teresita'),
(26, 119, 'Santa Trinidad'),
(27, 119, 'Santo Cristo'),
(28, 119, 'Santo Domingo'),
(29, 119, 'Santo Rosario (Pob.)'),
(30, 119, 'Sapalibutad'),
(31, 119, 'Sapangbato'),
(32, 119, 'Tabun'),
(33, 119, 'Virgen Delos Remedio');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` int(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `category`) VALUES
(1, 'Masonry'),
(2, 'Pipe Fitting'),
(3, 'Plumbing'),
(4, 'Technical Drafting'),
(5, 'Tile Setting'),
(6, 'Building Wiring Installation'),
(7, 'Carpentry'),
(8, 'Construction Painting'),
(9, 'Electrical Installion and Maintenance');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE `tbl_city` (
  `id` int(11) NOT NULL,
  `city_code` varchar(100) NOT NULL,
  `city_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`id`, `city_code`, `city_name`) VALUES
(1, '122', 'Alaminos'),
(2, '119', 'Angeles'),
(3, '128', 'Antipolo'),
(4, '93', 'Bacolod'),
(5, '40', 'Bacoor'),
(6, '94', 'Bago'),
(7, '29', 'Baguio'),
(8, '106', 'Bais'),
(9, '25', 'Balanga'),
(10, '63', 'Batac'),
(11, '26', 'Batangas City'),
(12, '107', 'Bayawan'),
(13, '82', 'Baybay'),
(14, '19', 'Bayugan'),
(15, '74', 'Binan'),
(16, '137', 'Bislig'),
(17, '46', 'Bogo'),
(18, '62', 'Borongan'),
(19, '17', 'Butuan'),
(20, '18', 'Cabadbaran'),
(21, '112', 'Cabanatuan'),
(22, '75', 'Cabuyao'),
(23, '95', 'Cadiz'),
(24, '90', 'Cagayan de Oro'),
(25, '76', 'Calamba'),
(26, '117', 'Calapan'),
(27, '129', 'Calbayog'),
(28, '1', 'Caloocan'),
(29, '65', 'Candon'),
(30, '108', 'Canlaon'),
(31, '47', 'Carcar'),
(32, '130', 'Catbalogan'),
(33, '69', 'Cauayan'),
(34, '41', 'Cavite City'),
(35, '48', 'Cebu City'),
(36, '84', 'Cotabato City'),
(37, '123', 'Dagupan'),
(38, '49', 'Danao'),
(39, '141', 'Dapitan'),
(40, '42', 'Dasmarinas'),
(41, '59', 'Davao City'),
(42, '60', 'Digos'),
(43, '142', 'Dipolog'),
(44, '109', 'Dumaguete'),
(45, '91', 'El Salvador'),
(46, '96', 'Escalante'),
(47, '113', 'Gapan'),
(48, '132', 'General Santos'),
(49, '92', 'Gingoog'),
(50, '110', 'Guihulngan'),
(51, '97', 'Himamaylan'),
(52, '70', 'Ilagan'),
(53, '80', 'Iligan'),
(54, '67', 'Iloilo City'),
(55, '43', 'Imus'),
(56, '37', 'Iriga'),
(57, '23', 'Isabela'),
(58, '98', 'Kabankalan'),
(59, '55', 'Kidapawan'),
(60, '133', 'Koronadal'),
(61, '99', 'La Carlota'),
(62, '24', 'Lamitan'),
(63, '64', 'Laoag'),
(64, '50', 'Lapu-Lapu'),
(65, '2', 'Las Pinas'),
(66, '20', 'Legazpi'),
(67, '21', 'Ligao'),
(68, '27', 'Lipa'),
(69, '126', 'Lucena'),
(70, '134', 'Maasin'),
(71, '120', 'Mabalacat'),
(72, '3', 'Makati'),
(73, '4', 'Malabon'),
(74, '31', 'Malaybalay'),
(75, '33', 'Malolos'),
(76, '5', 'Mandaluyong'),
(77, '51', 'Mandaue'),
(78, '6', 'Manila'),
(79, '81', 'Marawi'),
(80, '7', 'Marikina'),
(81, '86', 'Masbate City'),
(82, '61', 'Mati'),
(83, '34', 'Meycauayan'),
(84, '114', 'Munoz'),
(85, '8', 'Muntinlupa'),
(86, '38', 'Naga'),
(87, '52', 'Naga'),
(88, '9', 'Navotas'),
(89, '140', 'Olongapo'),
(90, '83', 'Ormoc'),
(91, '87', 'Oroquieta'),
(92, '88', 'Ozamiz'),
(93, '143', 'Pagadian'),
(94, '115', 'Palayan'),
(95, '56', 'Panabo'),
(96, '10', 'Paranaque'),
(97, '11', 'Pasay'),
(98, '12', 'Pasig'),
(99, '68', 'Passi'),
(100, '118', 'Puerto Princesa'),
(101, '13', 'Quezon City'),
(102, '39', 'Roxas'),
(103, '100', 'Sagay'),
(104, '57', 'Samal'),
(105, '101', 'San Carlos'),
(106, '124', 'San Carlos'),
(107, '73', 'San Fernando'),
(108, '121', 'San Fernando'),
(109, '116', 'San Jose'),
(110, '35', 'San Jose del Monte'),
(111, '14', 'San Juan'),
(112, '77', 'San Pablo'),
(113, '79', 'San Pedro'),
(114, '78', 'Santa Rosa'),
(115, '71', 'Santiago'),
(116, '102', 'Silay'),
(117, '103', 'Sipalay'),
(118, '131', 'Sorsogon City'),
(119, '136', 'Surigao City'),
(120, '22', 'Tabaco'),
(121, '72', 'Tabuk'),
(122, '84', 'Tacloban'),
(123, '135', 'Tacurong'),
(124, '44', 'Tagaytay'),
(125, '30', 'Tagbilaran'),
(126, '15', 'Taguig'),
(127, '58', 'Tagum'),
(128, '53', 'Talisay'),
(129, '104', 'Talisay'),
(130, '28', 'Tanauan'),
(131, '138', 'Tandag'),
(132, '89', 'Tangub'),
(133, '111', 'Tanjay'),
(134, '139', 'Tarlac City'),
(135, '127', 'Tayabas'),
(136, '54', 'Toledo'),
(137, '45', 'Trece Martires'),
(138, '36', 'Tuguegarao'),
(139, '125', 'Urdaneta'),
(140, '32', 'Valencia'),
(141, '16', 'Valenzuela'),
(142, '105', 'Victorias'),
(143, '66', 'Vigan'),
(144, '144', 'Zamboanga City');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_experience`
--

CREATE TABLE `tbl_experience` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `supervisor` varchar(255) NOT NULL,
  `supervisor_phone` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `duties` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jobs`
--

CREATE TABLE `tbl_jobs` (
  `job_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `responsibility` longtext NOT NULL,
  `requirements` longtext NOT NULL,
  `company` varchar(255) NOT NULL,
  `date_posted` varchar(255) NOT NULL,
  `closing_date` varchar(255) NOT NULL,
  `enc_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_job_applications`
--

CREATE TABLE `tbl_job_applications` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `job_id` varchar(255) NOT NULL,
  `application_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `speak` varchar(255) NOT NULL,
  `reading` varchar(255) NOT NULL,
  `writing` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_other_attachments`
--

CREATE TABLE `tbl_other_attachments` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `issuer` varchar(255) NOT NULL,
  `attachment` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_professional_qualification`
--

CREATE TABLE `tbl_professional_qualification` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `timeframe` varchar(255) NOT NULL,
  `certificate` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_referees`
--

CREATE TABLE `tbl_referees` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `ref_name` varchar(255) NOT NULL,
  `ref_mail` varchar(255) NOT NULL,
  `ref_title` varchar(255) NOT NULL,
  `ref_phone` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tesda_passers`
--

CREATE TABLE `tbl_tesda_passers` (
  `id` int(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `name_of_provider` varchar(255) NOT NULL,
  `date_stated` varchar(255) NOT NULL,
  `date_finished` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_tesda_passers`
--

INSERT INTO `tbl_tesda_passers` (`id`, `region`, `province`, `name`, `qualification`, `name_of_provider`, `date_stated`, `date_finished`) VALUES
(1, 'Region', 'Province', 'Name', 'Qualification/ Program Title', 'Name of Provider', 'Date Started\n(dd-mm-yy)', 'Date Finished\n(dd-mm-yy)'),
(2, 'CAR', 'Kalinga', 'Albay,Felix Tolni Jr', 'Masonry NC I', 'Provincial Training Center - Kalinga', '5/17/2019', '6/4/2019'),
(3, 'CAR', 'Kalinga', 'Ca?as,Melchor Abay', 'Masonry NC I', 'Provincial Training Center - Kalinga', '5/17/2019', '6/4/2019'),
(4, 'CAR', 'Kalinga', 'Omeccas,Martin Oplic', 'Masonry NC I', 'Provincial Training Center - Kalinga', '5/17/2019', '6/4/2019'),
(5, 'CAR', 'Kalinga', 'Banganan,Gaspar Pantuloc Jr', 'Masonry NC I', 'Provincial Training Center - Kalinga', '5/17/2019', '6/4/2019'),
(6, 'CAR', 'Kalinga', 'Albay,Ryan Tolni', 'Masonry NC I', 'Provincial Training Center - Kalinga', '5/17/2019', '6/4/2019'),
(7, 'CAR', 'Kalinga', 'Ganggangan,Efren Manadao', 'Masonry NC I', 'Provincial Training Center - Kalinga', '5/17/2019', '6/4/2019'),
(8, 'CAR', 'Kalinga', 'Omeccas,Reydan Pantuloc', 'Masonry NC I', 'Provincial Training Center - Kalinga', '5/17/2019', '6/4/2019'),
(9, 'CAR', 'Kalinga', 'Ringor,Ernesto Pakiki Jr', 'Masonry NC I', 'Provincial Training Center - Kalinga', '5/17/2019', '6/4/2019'),
(10, 'CAR', 'Kalinga', 'Bartolome,Jordan Madriaga', 'Masonry NC I', 'Provincial Training Center - Kalinga', '5/17/2019', '6/4/2019'),
(11, 'CAR', 'Kalinga', 'Tolny,Tony Ongyao', 'Masonry NC I', 'Provincial Training Center - Kalinga', '5/17/2019', '6/4/2019'),
(12, 'CAR', 'Kalinga', 'Pantoloc,John Rey Madriaga', 'Masonry NC I', 'Provincial Training Center - Kalinga', '5/17/2019', '6/4/2019'),
(13, 'CAR', 'Kalinga', 'Mamattong,Patricio Aragon Jr', 'Masonry NC I', 'Provincial Training Center - Kalinga', '5/17/2019', '6/4/2019'),
(14, 'CAR', 'Kalinga', 'Bata-Ec,Mark Dave Palacio', 'Masonry NC I', 'Provincial Training Center - Kalinga', '5/17/2019', '6/4/2019'),
(15, 'CAR', 'Kalinga', 'Bata-Ec,Sherwin Vener Piluden', 'Masonry NC I', 'Provincial Training Center - Kalinga', '5/17/2019', '6/4/2019'),
(16, 'CAR', 'Kalinga', 'Lumpio,Clarence Sacki', 'Masonry NC I', 'Provincial Training Center - Kalinga', '5/17/2019', '6/4/2019'),
(17, 'CAR', 'Kalinga', 'Moga,Filbert Linggon', 'Masonry NC I', 'Provincial Training Center - Kalinga', '5/17/2019', '6/4/2019'),
(18, 'CAR', 'Kalinga', 'Abay,Chenber Dumayag', 'Masonry NC I', 'Provincial Training Center - Kalinga', '5/17/2019', '6/4/2019'),
(19, 'CAR', 'Kalinga', 'Capuyan,Archie Bagsao', 'Masonry NC I', 'Provincial Training Center - Kalinga', '5/17/2019', '6/4/2019'),
(20, 'CAR', 'Kalinga', 'Lugao,Rhian Kinao', 'Masonry NC I', 'Provincial Training Center - Kalinga', '5/17/2019', '6/4/2019'),
(21, 'CAR', 'Kalinga', 'Sano,Alfredo Galwa', 'Masonry NC I', 'Provincial Training Center - Kalinga', '5/17/2019', '6/4/2019'),
(22, 'CAR', 'Kalinga', 'Guinapon,Benjamin O', 'Masonry NC I', 'Provincial Training Center - Kalinga', '5/17/2019', '6/4/2019'),
(23, 'CAR', 'Kalinga', 'Apil,Shayen Sinon', 'Masonry NC I', 'Provincial Training Center - Kalinga', '5/17/2019', '6/4/2019'),
(24, 'CAR', 'Kalinga', 'Guinapon,Jhunes D', 'Masonry NC I', 'Provincial Training Center - Kalinga', '5/17/2019', '6/4/2019'),
(25, 'CAR', 'Kalinga', 'Omeccas,Ramil Pantuloc', 'Masonry NC I', 'Provincial Training Center - Kalinga', '5/17/2019', '6/4/2019'),
(26, 'CAR', 'Kalinga', 'Napoltiw,Roco Ban-Os', 'Masonry NC I', 'Provincial Training Center - Kalinga', '5/17/2019', '6/4/2019'),
(27, 'Region V', 'Albay', 'Absalon,Nestor Joel Llagas', 'Masonry NC I', 'PROVINCIAL TRAINING CENTER - MALILIPOT', '5/30/2019', '6/19/2019'),
(28, 'Region V', 'Albay', 'A?onuevo,Ian James Nu?ez\",Masonry NC I,PROVINCIAL TRAINING CENTER - MALILIPOT,5/30/2019,6/19/2019\r\n29,Region V,Albay,Astor,Ricky Esquivel', 'Masonry NC I', 'PROVINCIAL TRAINING CENTER - MALILIPOT', '5/30/2019', '6/19/2019'),
(30, 'Region V', 'Albay', 'Balane,Juan .', 'Masonry NC I', 'PROVINCIAL TRAINING CENTER - MALILIPOT', '5/30/2019', '6/19/2019'),
(31, 'Region V', 'Albay', 'Betito,Eljun De Los Santos', 'Masonry NC I', 'PROVINCIAL TRAINING CENTER - MALILIPOT', '5/30/2019', '6/19/2019'),
(32, 'Region V', 'Albay', 'Bien,John Vincent Custodio', 'Masonry NC I', 'PROVINCIAL TRAINING CENTER - MALILIPOT', '5/30/2019', '6/19/2019'),
(33, 'Region V', 'Albay', 'Bilo,Jose Bemida Jr', 'Masonry NC I', 'PROVINCIAL TRAINING CENTER - MALILIPOT', '5/30/2019', '6/19/2019'),
(34, 'Region V', 'Albay', 'Bongao,Darwin Cao', 'Masonry NC I', 'PROVINCIAL TRAINING CENTER - MALILIPOT', '5/30/2019', '6/19/2019'),
(35, 'Region V', 'Albay', 'Bonto,Andrew Peter John Buag', 'Masonry NC I', 'PROVINCIAL TRAINING CENTER - MALILIPOT', '5/30/2019', '6/19/2019'),
(36, 'Region V', 'Albay', 'Borais,Rey Brizuela', 'Masonry NC I', 'PROVINCIAL TRAINING CENTER - MALILIPOT', '5/30/2019', '6/19/2019'),
(37, 'Region V', 'Albay', 'Bueno,Joan Brequillo', 'Masonry NC I', 'PROVINCIAL TRAINING CENTER - MALILIPOT', '5/30/2019', '6/19/2019'),
(38, 'Region V', 'Albay', 'Ca?aceli,Evan Panti', 'Masonry NC I', 'PROVINCIAL TRAINING CENTER - MALILIPOT', '5/30/2019', '6/19/2019'),
(39, 'Region V', 'Albay', 'Cano,Hajie Barcenas', 'Masonry NC I', 'PROVINCIAL TRAINING CENTER - MALILIPOT', '5/30/2019', '6/19/2019'),
(40, 'Region V', 'Albay', 'Carillo,Joselito Bellen Jr', 'Masonry NC I', 'PROVINCIAL TRAINING CENTER - MALILIPOT', '5/30/2019', '6/19/2019'),
(41, 'Region V', 'Albay', 'Corrales,Mark Jay Bertiz', 'Masonry NC I', 'PROVINCIAL TRAINING CENTER - MALILIPOT', '5/30/2019', '6/19/2019'),
(42, 'Region V', 'Albay', 'Guada?a,Jerome Bonete', 'Masonry NC I', 'PROVINCIAL TRAINING CENTER - MALILIPOT', '5/30/2019', '6/19/2019'),
(43, 'Region V', 'Albay', 'Llamera,Romulo Culo Jr', 'Masonry NC I', 'PROVINCIAL TRAINING CENTER - MALILIPOT', '5/30/2019', '6/19/2019'),
(44, 'Region V', 'Albay', 'Lusabia,Domingo .', 'Masonry NC I', 'PROVINCIAL TRAINING CENTER - MALILIPOT', '5/30/2019', '6/19/2019'),
(45, 'Region V', 'Albay', 'Madrideo,Joemar Ba?as\",Masonry NC I,PROVINCIAL TRAINING CENTER - MALILIPOT,5/30/2019,6/19/2019\r\n46,Region V,Albay,Manlagnit,Kevin Benitez', 'Masonry NC I', 'PROVINCIAL TRAINING CENTER - MALILIPOT', '5/30/2019', '6/19/2019'),
(47, 'Region V', 'Albay', 'Olavario,Nomer Villanueva', 'Masonry NC I', 'PROVINCIAL TRAINING CENTER - MALILIPOT', '5/30/2019', '6/19/2019'),
(48, 'Region V', 'Albay', 'Pida,Bernabe Biron Jr', 'Masonry NC I', 'PROVINCIAL TRAINING CENTER - MALILIPOT', '5/30/2019', '6/19/2019'),
(49, 'Region V', 'Albay', 'Pria,Ronnie Ricario', 'Masonry NC I', 'PROVINCIAL TRAINING CENTER - MALILIPOT', '5/30/2019', '6/19/2019'),
(50, 'Region V', 'Albay', 'Salvadora,Arvin Baluncio', 'Masonry NC I', 'PROVINCIAL TRAINING CENTER - MALILIPOT', '5/30/2019', '6/19/2019'),
(51, 'Region V', 'Albay', 'San Buenaventura,Ken Morada', 'Masonry NC I', 'PROVINCIAL TRAINING CENTER - MALILIPOT', '5/30/2019', '6/19/2019'),
(52, 'Region V', 'Albay', 'Valdez,Mary Pauline Bron', 'Masonry NC I', 'PROVINCIAL TRAINING CENTER - MALILIPOT', '5/30/2019', '6/19/2019'),
(53, 'Region VI', 'Negros\nOccidental', 'Amando,Emelio Mahilum Jr', 'Masonry NC I', 'MDM- Sagay College, Inc.', '5/10/2019', '6/10/2019'),
(54, 'Region VI', 'Negros\nOccidental', 'Anaclero,Mario Arde?o Jr', 'Masonry NC I', 'MDM- Sagay College, Inc.', '5/10/2019', '6/10/2019'),
(55, 'Region VI', 'Negros\nOccidental', 'Aquino,Jeremy Linda', 'Masonry NC I', 'MDM- Sagay College, Inc.', '5/10/2019', '6/10/2019'),
(56, 'Region VI', 'Negros\nOccidental', 'Asauro,David Jess Falcunit', 'Masonry NC I', 'MDM- Sagay College, Inc.', '5/10/2019', '6/10/2019'),
(57, 'Region VI', 'Negros\nOccidental', 'Aurelio,Raffy Dacaldacal', 'Masonry NC I', 'MDM- Sagay College, Inc.', '5/10/2019', '6/10/2019'),
(58, 'Region VI', 'Negros\nOccidental', 'Benting,Jeraffy Sayam', 'Masonry NC I', 'MDM- Sagay College, Inc.', '5/10/2019', '6/10/2019'),
(59, 'Region VI', 'Negros\nOccidental', 'Burlan,Junrie Floro', 'Masonry NC I', 'MDM- Sagay College, Inc.', '5/10/2019', '6/10/2019'),
(60, 'Region VI', 'Negros\nOccidental', 'Caberte,Mario Delfin', 'Masonry NC I', 'MDM- Sagay College, Inc.', '5/10/2019', '6/10/2019'),
(61, 'Region VI', 'Negros\nOccidental', 'Caranguit,Lemuel Claro', 'Masonry NC I', 'MDM- Sagay College, Inc.', '5/10/2019', '6/10/2019'),
(62, 'Region VI', 'Negros\nOccidental', 'Casta?eda,Remil Portunes', 'Masonry NC I', 'MDM- Sagay College, Inc.', '5/10/2019', '6/10/2019'),
(63, 'Region VI', 'Negros\nOccidental', 'Dadula,Sheilo Valdez', 'Masonry NC I', 'MDM- Sagay College, Inc.', '5/10/2019', '6/10/2019'),
(64, 'Region VI', 'Negros\nOccidental', 'Dela Cruz,Diana Cabangunay', 'Masonry NC I', 'MDM- Sagay College, Inc.', '5/10/2019', '6/10/2019'),
(65, 'Region VI', 'Negros\nOccidental', 'Erbito,Arthur Mahusay', 'Masonry NC I', 'MDM- Sagay College, Inc.', '5/10/2019', '6/10/2019'),
(66, 'Region VI', 'Negros\nOccidental', 'Francisco,Jonas Opina', 'Masonry NC I', 'MDM- Sagay College, Inc.', '5/10/2019', '6/10/2019'),
(67, 'Region VI', 'Negros\nOccidental', 'Lacson,Christian June Delagao', 'Masonry NC I', 'MDM- Sagay College, Inc.', '5/10/2019', '6/10/2019'),
(68, 'Region VI', 'Negros\nOccidental', 'Lobaton,Jaypee Dioso', 'Masonry NC I', 'MDM- Sagay College, Inc.', '5/10/2019', '6/10/2019'),
(69, 'Region VI', 'Negros\nOccidental', 'Magallanes,R R Osal', 'Masonry NC I', 'MDM- Sagay College, Inc.', '5/10/2019', '6/10/2019'),
(70, 'Region VI', 'Negros\nOccidental', 'Mendoza,Nilo Lape', 'Masonry NC I', 'MDM- Sagay College, Inc.', '5/10/2019', '6/10/2019'),
(71, 'Region VI', 'Negros\nOccidental', 'Mission,Jan Vhanie Magluyan', 'Masonry NC I', 'MDM- Sagay College, Inc.', '5/10/2019', '6/10/2019'),
(72, 'Region VI', 'Negros\nOccidental', 'Morales,Anthony Monares', 'Masonry NC I', 'MDM- Sagay College, Inc.', '5/10/2019', '6/10/2019'),
(73, 'Region VI', 'Negros\nOccidental', 'Nombre,Jose Alfredo Monton', 'Masonry NC I', 'MDM- Sagay College, Inc.', '5/10/2019', '6/10/2019'),
(74, 'Region VI', 'Negros\nOccidental', 'Pabiran,Divina Fuentenegra', 'Masonry NC I', 'MDM- Sagay College, Inc.', '5/10/2019', '6/10/2019'),
(75, 'Region VI', 'Negros\nOccidental', 'Rodriguez,Johnny Pancito', 'Masonry NC I', 'MDM- Sagay College, Inc.', '5/10/2019', '6/10/2019'),
(76, 'Region VI', 'Negros\nOccidental', 'Saldavia,Lemuel Delos Reyes', 'Masonry NC I', 'MDM- Sagay College, Inc.', '5/10/2019', '6/10/2019'),
(77, 'Region VI', 'Negros\nOccidental', 'Saura,Mark June Noquillo', 'Masonry NC I', 'MDM- Sagay College, Inc.', '5/10/2019', '6/10/2019');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tokens`
--

CREATE TABLE `tbl_tokens` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_training`
--

CREATE TABLE `tbl_training` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `training` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `timeframe` varchar(255) NOT NULL,
  `certificate` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL DEFAULT '-',
  `bdate` varchar(255) NOT NULL DEFAULT '-',
  `bmonth` varchar(255) NOT NULL DEFAULT '-',
  `byear` varchar(255) NOT NULL DEFAULT '-',
  `email` varchar(255) NOT NULL,
  `education` varchar(255) NOT NULL DEFAULT '-',
  `title` varchar(255) NOT NULL DEFAULT 'Your professional',
  `city` varchar(255) NOT NULL DEFAULT '-',
  `street` varchar(255) NOT NULL DEFAULT '-',
  `zip` varchar(255) NOT NULL DEFAULT '-',
  `country` varchar(255) NOT NULL DEFAULT '-',
  `phone` varchar(255) NOT NULL DEFAULT '-',
  `about` longtext DEFAULT NULL,
  `avatar` longblob DEFAULT NULL,
  `services` longtext DEFAULT NULL,
  `expertise` longtext DEFAULT NULL,
  `people` varchar(255) NOT NULL DEFAULT '-',
  `last_login` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL DEFAULT '-',
  `login` varchar(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `current_job` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_brgy`
--
ALTER TABLE `tbl_brgy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tesda_passers`
--
ALTER TABLE `tbl_tesda_passers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_brgy`
--
ALTER TABLE `tbl_brgy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_tesda_passers`
--
ALTER TABLE `tbl_tesda_passers`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
