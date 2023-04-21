-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2023 at 05:34 AM
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
(1, 'Justine Podiotan', 'c0cf12d87f06c91ad6972f9eeb0e1e34', 'ams-admin@gmail.com'),
(2, 'john kenneth reyes', 'a174edcd9fcde85ea32fcc74d89eaf7c', 'johnkennethreyes180@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions`
--

CREATE TABLE `quiz_questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `option_a` varchar(255) NOT NULL,
  `option_b` varchar(255) NOT NULL,
  `option_c` varchar(255) NOT NULL,
  `option_d` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_questions`
--

INSERT INTO `quiz_questions` (`id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `answer`, `category`) VALUES
(1, 'What is the capital of France?', 'A. Paris', 'B. London', 'C. Rome', 'D. Madrid', 'A', 'Masonry'),
(2, 'What is the largest planet in our solar system?', 'A. Jupiter', 'B. Saturn', 'C. Neptune', 'D. Earth', 'A', 'Masonry'),
(3, 'Who painted the Mona Lisa?', 'A. Leonardo da Vinci', 'B. Vincent van Gogh', 'C. Pablo Picasso', 'D. Michelangelo', 'A', 'Masonry'),
(4, 'What is the highest mountain in the world?', 'A. Mount Everest', 'B. Kilimanjaro', 'C. Mount Fuji', 'D. Mount Kilimanjaro', 'A', 'Masonry'),
(5, 'What is the name of the longest river in Africa?', 'A. Nile', 'B. Amazon', 'C. Mississippi', 'D. Yangtze', 'A', 'Masonry'),
(6, 'What is the chemical symbol for gold?', 'A. Au', 'B. Ag', 'C. Cu', 'D. Fe', 'A', NULL),
(7, 'Which country gifted the Statue of Liberty to the United States?', 'A. France', 'B. Italy', 'C. Spain', 'D. Greece', 'A', NULL),
(8, 'What is the name of the galaxy that contains our solar system?', 'A. Milky Way', 'B. Andromeda', 'C. Black Eye', 'D. Sombrero', 'A', NULL),
(9, 'What is the national animal of Australia?', 'A. Kangaroo', 'B. Koala', 'C. Tasmanian devil', 'D. Emu', 'A', NULL),
(10, 'What is the currency of Japan?', 'A. Yen', 'B. Euro', 'C. Dollar', 'D. Pound', 'A', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_scores`
--

CREATE TABLE `quiz_scores` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `score` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_scores`
--

INSERT INTO `quiz_scores` (`id`, `user_id`, `score`, `date_created`) VALUES
(1, '123', 5, '2023-04-21 00:38:55'),
(2, '0', 1, '2023-04-21 00:44:06'),
(3, '0', 5, '2023-04-21 00:46:43'),
(4, 'Martin', 5, '2023-04-21 00:47:48'),
(5, 'EM162714896', 5, '2023-04-21 01:05:18'),
(6, 'EM162714896', 1, '2023-04-21 01:40:22'),
(7, 'EM162714896', 5, '2023-04-21 03:12:58'),
(8, '', 0, '2023-04-21 03:28:43'),
(9, 'EM162714896', 0, '2023-04-21 03:30:12');

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

--
-- Dumping data for table `tbl_jobs`
--

INSERT INTO `tbl_jobs` (`job_id`, `title`, `city`, `country`, `category`, `type`, `experience`, `description`, `responsibility`, `requirements`, `company`, `date_posted`, `closing_date`, `enc_id`) VALUES
('9140748616', 'Carpenter', '175', 'Caloocan', 'Carpentry', 'Part-time', '2 Years', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>', 'CM058801669', 'March 08, 2023', '30/12/2023', 0),
('9700940615', 'Plumbing', '178', 'Caloocan', 'Plumbing', 'Full-time', 'Expert', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>', 'CM058801669', 'March 08, 2023', '30/11/2023', 0),
('0194852327', 'Tile Setting', '188', 'Caloocan', 'Tile Setting', 'Freelance', '2 Years', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br>', 'CM058801669', 'March 08, 2023', '30/09/2023', 0),
('5180706910', 'Masonry', '175', 'Caloocan', 'Masonry', 'Full-time', '3 Years', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu sodales est, et convallis nunc. Donec a sem nunc. Fusce nunc dui, euismod vel consectetur ac, bibendum nec tortor. Cras maximus turpis sed tristique ultricies. Nullam ex ipsum, tristique in velit ut, tincidunt elementum ipsum. Morbi dictum ultricies libero. Integer nec condimentum dolor, non gravida dolor. Donec at rutrum est. Phasellus non augue et mi convallis porttitor et vitae sapien. Proin a dignissim arcu, ac suscipit mauris. Duis viverra bibendum lacus eu condimentum.<br>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu sodales est, et convallis nunc. Donec a sem nunc. Fusce nunc dui, euismod vel consectetur ac, bibendum nec tortor. Cras maximus turpis sed tristique ultricies. Nullam ex ipsum, tristique in velit ut, tincidunt elementum ipsum. Morbi dictum ultricies libero. Integer nec condimentum dolor, non gravida dolor. Donec at rutrum est. Phasellus non augue et mi convallis porttitor et vitae sapien. Proin a dignissim arcu, ac suscipit mauris. Duis viverra bibendum lacus eu condimentum.<br>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu sodales est, et convallis nunc. Donec a sem nunc. Fusce nunc dui, euismod vel consectetur ac, bibendum nec tortor. Cras maximus turpis sed tristique ultricies. Nullam ex ipsum, tristique in velit ut, tincidunt elementum ipsum. Morbi dictum ultricies libero. Integer nec condimentum dolor, non gravida dolor. Donec at rutrum est. Phasellus non augue et mi convallis porttitor et vitae sapien. Proin a dignissim arcu, ac suscipit mauris. Duis viverra bibendum lacus eu condimentum.<br>', 'CM058801669', 'April 21, 2023', '30/12/2023', 0);

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

--
-- Dumping data for table `tbl_professional_qualification`
--

INSERT INTO `tbl_professional_qualification` (`id`, `member_no`, `country`, `institution`, `title`, `timeframe`, `certificate`) VALUES
(0, 'EM162714896', 'Caloocan', 'UCC', 'BSCS', '2019 -2023', 0x255044462d312e330d0a312030206f626a0d0a5b2f504446202f54657874202f496d61676542202f496d61676543202f496d616765495d0d0a656e646f626a0d0a362030206f626a0d0a3c3c202f4c656e6774682033383430202f46696c746572202f466c6174654465636f6465203e3e2073747265616d0d0a789ca59d5b8fdcb61580df03f83ff0ad174cb5bc5ffa54c74ed204b1e3d80e8aa4e8c3742dc7d3eece3ab3bb31dc5fdf4389a48e34bb14670e12c48922f2e339a43e5194467af2c56f4cfa4e69cb9cecb411cc28df19af98e5be0b41b243cffec1f64f603fad3a611d333e74c15b6678e8a4b44ca88e735ff6fbf22dbbf85ab15838b0b7ef191ffe3afcca34779d06cedbef879a9c6726a84e09c3debe637ffcee879fd9abaf5ebffae9cd57ec4feced7fd8db3fb3afde3ef9e2c7275ff0ce4bc7f03f636d626c8ce35d7001aaeabc0e4cb8dc96f7b8c510dab09319777ab0c1b6e38f35d7b84e4269071bb81a5afbc3e15d7f602f6fba96a60a2e3a0e61e6b6eab1e2455b055769afb1b1d0f661af531b2b84ef24341337f7f9f6ae6f6aa9f69db6a2b4d40b48983f6aa9e169afb1a5001af63ab9a59677d62f5adadfdeedf6dbbbddcd9e3dbbb9dfdf1d3eb7345c2ade291e4ac3451c9bc72d974aa6dd64dacd8cbb9dda7419c79b74b3a67fd9effbf7bbcbddf6f099bddc5e37255ca9d019e3f0d070522f9bad60b08f7b95a131ec756aab95d19db7f3563ffdb5dfdf3535d5c351e0a7b1e174a7ec518615c861dc6b6caa75e35ea736558bd029373fe89e5ec701c1de343618866867f5342682ec9c56478ab02aed3536d89b71af931d21e4d0d0071afc6abb7bb768f0a42668a450d94ce38134836ad838872a61bbc0e59025b0ac028f5a09318ccc97bf6813b40bd2da236651cc084d8639152a2068e1dd8c2af8851017920b770ccdb618a149162743e3d9498419f4d587ddd5eee3c7ddbebf3da296237da4e603fd546c3cceb59dc75a3953a143b5a4381ea9a76215e42c70b7e85821b53806e6032e01c359e9d5228a47cd808a7338068e076e1cb972caaced8c7c98b73c5a302f56a26225aa3370d48d013e3f86e5a37384d9786a3b7dc41a88c4dae588dd1838bd3d10a05170301a830354eee408875a9c9945f8eaefaf1ef5808edd28a9228071e36c1e2f5668c58da8892051a9264058a9d74d90a85415206a930a1296ec02c46d73c19465920c669d5b974126126d8088702950b5414e2e4d07064ed9a141078946f5018a4fe90da4b4f3151fa01029424031d684a0601ea13455087031178cc94230da19a76b424854aa101056fa7521242a550888da248484250b0171db84306599248459e7d6859089442120a2307521e4e4d28400d7473e88752124dad942d09d95f38c9a8d5416a6f28ffb004548f1010ab1e603693ae30dd50712f67179c838678275d50942a29eed8300dd286658d0815cd14182527580a04d3a4858b20e10b74d075392493a98f56d5d079948d40122aecd0f7272693a901e8665830e128d3a3f40f1c5f981d3551fa010293e4031d67c2060b42847f58180b10eb58d090d9a4be16ccd07894a9d1f20ac14eb424854aa1010b54908094b1602e2b60961ca324908b3cead0b211389424044bf22849c5c9a106093e46a5d08894615028a4ff14d08aeba808042a40801c5581302179df7e16c21c0bf05b8dc80035df9326604d75643c62a4648d8738d20c4a058ccd517c3f5827fdc078949f5016236f92061c93e40dc361f4c3926f960deb7551f6422d10788a8567c90934bf3014ce4956cf041a2517d80e2136ae3602a6f2b3e4021527c8062acf84007de712d883ed041a0055a01439807ed2b3ec858e21503e60abf26840c250a01435b8490b15421606e93105092294258766e45088548130226daba104a724942d00031c2ac0a21d38842c0f149b39152d5ae1870880421e0186b4270be13e1fc5b0c49082ea0255aa1397770feae092161a942405c25568590a054212068931012962c04c46d13c294649210e69d5b154226128580885ed78590934b1382872355350821d1a842980ddb8db2ba331521a01029424031d684606da7f4f9b7189210ac434bb4c2c0e440d8da3d868ca50a017185b9902b424850aa1010b44908094b1602e2b609614a324908f3cead0a211389424044b73243c8c9a509018ef0f8c4d0aa10128d2a04149f0c1b077e901521a01029424031d6846074a783a50ac158b4482b9cb25eb9dae348194b1502e24abf2a8404a50a01419b8490b06421206e9b10a624938430efdcaa103291280444f4bc2e849c5c9a100018748310128d2a043c6cc32640adae22041422450828c69a10747c60eafc9b0c49085a0f07681a33412961aacf27662c5508880b3304b5228404a50a01419b8490b06421206e9b10a624938430efdcaa103291280444342b33849c5c9a10b4e9b86d1042a2518580e29372139f31aecd1050881421a0186b4250bc73e1fc9b0ce35d471dc77e59a5f5c17188c43e70ff2ffb2051a93e4058692fcc8a0f1294ea03046df241c2927d80b86d3e98924cf2c1ac6feb3ec844a20f10d1d8ea33cb25b9341f28d5419ad77d9068541fe061cb37c2fbda4d471c22c50728c69a0f447c608a7c9341c221373de6ce03e74af99a10129678d31173dd855df14162527d80984d3e4858b20f10b7cd07538e493e98f76dd5079948f401229afa438a25b9341f4831fc5669d5078946f5018a2ffa40c46bfbc77d8042a4f800c558f3417cc087537fcfa4b9476bb4cef2a034fcfdb80e1295f85412c6ca7021781442785c08894a1502a236092161c94240dc36214c59260961d6b975216422510888b876d3312797260498701ab7fe9862a6518580c7addc48a1aa170c28448a10508c1521a800a3d450ef31a8603b373de9ce619a1724af18216389570c981bd2cf181e174286128580a12d42c858aa1030b7490828c914212c3ab7268442a409011395a80aa124972404155c671b7ec69069c49f31cc86ed26705bbb60c011127c8043acf9c0c72722a8b71894d768895668981219e76b3e4858e20c0173a5591742a2528580a84d424858b21010b74d085396494298f7aef4ea7121642251088868eb4f2194e4d284e061fcfbf5e714338d3843988d5bbe71bcfa14020e9162041463cd082e0e1e4f358253688d56386de0fc6d6a464858ea0c01715dfa21434508094a15028236092161c94240dc36214c49260961deb9d519422612858088b67ed3b124972604a701d2208444a30a01c527c2c6c3211b2a42402152848062ac0901469be3d41f32a8f8f686e961770f3dabeb970c094b9d2220ae10eb464854aa1110b5c908094b3602e2b61961ca32c908f3dead4e1132f14c2348d1592166c4fa1a42c92d4d0856426d0d424834ea25030a4f6db894b525041c21c50728c49a0f34002cf51e83d2012dd242aab8f3beb6a898b1541f20ae08eb3e4854aa0f10b5c907094bf601e2b6f960ca32c907b3de8589d971bf161f6422718680887a450839b9342140a8aae1970c99469d21e0716b877721d4161150881423a0186b46888d39ffad6900f15e422daed3e56177276c705699c77d90a0541f20aa54eb3e4854aa0f10b5c907094bf601e2b6f960ca32c907b3beadcf0f32f15c1f88e1795e4c141bbe62849c5e9a1194ef74c34f19328d6a0414a1b21ba14d758e8042a41801c5583382d4f027f5ed284a1ab44c2bb5e3308e6b4a4854aa121056f17525242a550988daa48484252b0171db94306599a48459e7d6959089c4290222ca1521e4e4d28420ed30995f1542a251af19507c61e3e1bf2a6f4fc311527c80423cf6c158f2f5374c404d9fd83fff05fff52ebe2a1aba8419ef86f7565f4f2f644e5baed81b549677e681b2be137015785d36a497cace8bceb04bcaf5f47ae507b9f3c28b5dafa7571caf175eee7a3dbd6778bdf072d7ebe9cdbf0d8517bb5e4f6fe15d2fbcdcf51a740e8346cb968e9a76cd3d55b63cd8550ff672da73ea651357799bb0a568d9b25a760e99a0da0def196ca1e6a265c37ad90565c2c211165f67d6822d65cb96f5c20bccc4956a786d520bb7942d5bd60b2f301317266ef1ed2c2ddc52b66c592fbcc0142e4ca186b740b4704bd9bca5a1f0023371e373a35ab470a7b265cb7ae10566e23a3bfca6b5855bca962deb851798896bf5f0d3b9166e295bb6ac175e6026ae91c32f745ab8a56cd9b25e788199b89a0f3f0468e196b265cb7ae10566e24a3f3c70dcc22d65cb96f5c20bccc48d9303d3369e4bd9b265bdf002337161fe1b9f9f6ae196b265cb7ae105a6705550c3731a2ddc52366f6928bcc04c5c2f86bbc10ddca96cd9b25e788199b8360c379d5ab8a56cd9b25e788199b8c60d8bdb2ddc52b66c592fbcc04c5cb89e8e4b682ddc52b66c592fbcc04c5ca5870bf5166e295bb6ac175e6026ae94c305410bb7942d5b1e2cbc9cf58f2b03e39e6359151665cb0a828573ad1e5e80367ed5269ef241cd275cf58ddfb4b1e01a9beeacbe3d6cf7b7dbcbe16326affb8f3787d9772bdaab14f1d314e375d6d35bf6b13fb0cf37f70768db6ff7fdeddd867dbceab7b73d7bbfdbbf63ffeeaf6e3e8dffff0ee10f039ebdbf89c5ae777777dbfd657f5b76e963c1bb4f7dbf67d3a71cd8dd0d9bd623969fba9932a7e32c254cdf038a5785f68ccc19517ef7f6bcdf1ed88b4377f1e270dbb1a3aca9a3ead097387cfc81fdbcb6a72f5ffeccfefed3eb6f7e38ad03049cb03c5c4ce0ca36a7b52607077fcaf430ccf3c3eef7fef0875bf6fdeeb2df43c7fd85bdec3fb15ffaedd5167af0f9cfde05fdc0b2535eebe2f12ade947c9fbc3c31b648c593441a556f3edcdc5fbd8ba3661854bbf87194fbc3dd071869bb3d8c99ebe1833cd340ebfb2bf6fed0f771845cdeecef6004b1d7df3e85909edddfdedd5c43b937fde177088f6defd8befff4bf31b6676ffe76d86d619cc2e8db6dafbacb9b6b0623f2727b75c5b8e79cc5db814e1fff9a210f35b8428cab81c24a38a19b07bfd2d234d4ac2f771e5fdcecdf6d3f6f18f8f4bbedfe3e7ebd4772b95c1c1a97c2c60f65190b035c950f65c17877c6e3ef6479d319e818e387fdac0569c66ec27b35ac7868905efc0e9728efa01517cb075f70b36c3c0b6ad42e1827cee8e30f78d9e1176482096f3b052d5362f0e2e25b37eb63dac5f49b318baf775bf675eed7dcf9b7785c9f75d8b8b8d8c8c7e8bfef7f8761775a3536b670568b3eb1023bac0ce31a3627b6c1c52f12d959154a9e58058c241815b80af662fbe1fec33d7b76e86fc1227016787a7ff9df98e853db0779ee0cf81bd72ef8fc3d860db50418ae41ccdb789e2a83eb6086339e41fbabbf9e580bcc8dcca296a8961313ae86cfcda03a4eed740347ad9ed520e6526938915938af7a4a2be040b7f13319a886855ddb7bc5c35c978f777f9ebd3cb7535025229820ccf1592e2e3fc645690945e2fa49bcef1c7f631717c64745e56d11a35ceca85c46c961a9fff29a5d7c7b6dd8f31b5657b783cd864f8afcf1ff8280d3680d0a656e6473747265616d0d0a656e646f626a0d0a322030206f626a0d0a3c3c202f54797065202f50616765202f506172656e74203720302052202f4d65646961426f78205b302030203539352e323736203834312e38395d202f436f6e74656e7473203620302052202f5265736f7572636573203c3c202f50726f63536574203120302052202f584f626a656374203c3c202f496d35203520302052203e3e202f466f6e74203c3c202f4633203320302052202f4634203420302052203e3e203e3e203e3e0d0a656e646f626a0d0a352030206f626a0d0a3c3c202f54797065202f584f626a656374202f53756274797065202f496d616765202f436f6c6f725370616365202f446576696365524742202f42697473506572436f6d706f6e656e742038202f46696c746572202f466c6174654465636f646520202f576964746820313738202f48656967687420313138202f4c656e6774682032303735203e3e0d0a73747265616d0d0a789ced9d5b48546b14c78f489e71d44a8bb232e9829552a651501a42da059379508c92a65e626c2c32c42ca130adb0aca0d087602826d3a49c97d1a2ecf2505653a0256658e194dd436aba38264e98f69d23c7734e8e9ed9df65afbde7acdfbbf3adffb77eee993db3f7dafdfd088220088220088220088220088220088200d3d5d565b158cacbcb4f9f3e5d5959d9d6d6065d110286d3e9ccc9c9f96d185252521e3c78005d23222b46a371381ffec9ecd9b3bf7cf9025d2c229cefdfbffbfbfb7ba2c420757575d055230271381c927c18c46c3643d78e88c2c7c787ce0ac2ad5bb7a0cb47f893949444adc400d00910cedcbe7d9b510982c16080ce81f024323292dd0a425757177414840f2f5ebce0a204e1ecd9b3d069103e9c3c799297154b972e854e83f021333393971593264d824e83f0212525859715fefefe5fbf7e850e847060f5ead5bcac18356ad4a74f9fa003211cd0e974bcacd06ab59d9d9dd081100e646565f1b262ead4a9d069103e545555f1b262f9f2e5d069103e747474f0b2a2b6b6163a0dc28d458b16b12be1e7e7e772b9a0a320dc78f4e811bb15050505d03910cea4a7a7b328111818089d001142707030b5154f9f3e852e1f1185afaf2f851257af5e852e1c11cbcc99332529f1f0e143e8921139282d2df5c487b4b434e84a11b9397af4687878f850198282828c466377773774810824af5ebd6a6a6aba77ef9edd6efff6ed1b74390882200882200882200802c9c78f1f6d36dbc58b17cd66f3b163c7f6ecd973e4c81193c964b55a6fdebc894357dcd2d3d363b7db2f5cb850525252505040362d2b2bebe0c1839efcadc56231180cd912d9b2654b6161a1d050d7af5fcfc9c9090b0bf3fc7b78bd5e4f54713a9d420b532c8d8d8de49f25313171ca9429c36dd1fcf9f33d79a9eddbb7d3fd601a1e1e2e225a4d4d4d5c5c1ce3551f13274e142dad4278f9f2657171714c4c8c873bb378f1624f5e76d7ae5d743b1f1919c937e0be7dfb785d3438c8aa55abdebc7923b02b701c3a7448ea2c1a7559410272f7e197895e7d7d7db2f64c18af5fbf66992fa10a2b9a9b9b838282842a31c8f1e3c7813bcafc917bdebc798c9ba07c2b4698d72788a8a828e8de52929a9aca6507146e457474b4cc4a0ce0e3e3a3ae19804d4d4d1ce32bd98a808000102506214763e86e7b44767636dfe0cab4c2e57281a9f06f947fc734fba708b5583166cc18300f86a0e41313411ba5402b162c580066803ba64f9f0edd7cf7848484088aac342bb8bf457261ebd6add00afc0a71555c5e4559d1d8d808d6f8ffe2f9f3e7d022fc4d464686d0b08ab242dc21d19be66fd4d6d68a0eab1c2bf6eedd0bd672cfa8a9a98136e20f6448aa102bbabbbbc19aed31e3c68d8336a27fc58a15ff1f2b0a0b0bc19a2d85fafa7a4025dadbdbe589a9042b7a7b7bb55a2d58a7a5909090e0655f58b925363616dc8a2b57ae704c141f1f4f8e3c070e1c3871e2445151515e5e1e39f2737c7dc02b6738a6188eb0b030b2811e9e890bb5821cafb8fc9e35c2a8f0cece4e83c1c065df2a2b2b41ac58b76e1d97fa875e5542fe7de8cebbc559f1f9f367bac91814df32391c0ef6935f9d4ee705a71ec9c9c90d0d0d8c2589b3e2d2a54b8c012b2a2a24659933670ecb721a8d467e252e5fbecccb87c4c4445e4303c459919f9fcf92b1a4a48422cee8d1a3591625c73795be7dd86c368e5589b382e5a93471717174719e3c79c2b2b7e5e5e56a7cfbe03e5d5f9c15a1a1a1d4319b9b9ba9132d5bb68c7addd2d2523995e8ebeb635742c4fd2f82ac78f6ec1975cc888808964476bb9d7ae9f5ebd7cb6985d96c6654e2f1e3c7220a136405cbd586e7cf9f670c457d986214522abb77ef665122333353506182ac60790022f96cc0186ae5ca95744b4f9b364d4e2be2e3e359acf8f1e387baaca8aeaea67bd9808000f6315c45454574ab4f9e3c594e2b626363a995d0ebf5e20a136405f5d3eec68e1ddbdbdb2bcf94c8a1848484c8e7447fff840913a8ad686d6d559d15a74e9da2b682fdc058565646b7faf8f1e3e57382e171e45aad56686182aca8a8a8a09e18dfd3d3c33e35541556501f28162e5ca8462beaeaeaa823bf7dfb9631545a5a9a775b919b9bab462b582edf254631868a8a8af26e2bf6efdfaf462b5a5a5aa823272525b12462b926502d5648fddd502156747474b0fc8ccef22bd5e6cd9bbdde0a8bc5a2462b083366cca04ebd69d326ba384ea7937a511559515d5dad522b18c75bddb97347fe6f0bd10ad1561c3e7c98a54184f6f67649598c4623e38a6885682beedebdcbd82349478cb56bd7b22f875688b6c2e572050606b2774aa7d38d7ce1d98d1b37341a0dfb4268850c5610929393b9348b101313535656d6dadaea7038c8190a39c7a9afafcfcfcfa7fed218ad80b2e2fefdfb1c5b260368850c5610dc3ec54cb1a015f258613299a05b8d5628ce0af6abf1d10aafb4e2dcb973d0dd462b14670561eedcb9d00d472b1467c5870f1fa01b8e5628ce0a82d56a85ee395aa1382b40c6b9a315cab782a0d7eb457776cd9a35dbb66d432b54640561e3c68dfc55f88b3367ce90258a8b8bd10a755921e86152bebebeefdfbf67bc4b08ad00b48260b3d9382af1cba59e68854aad18202121815d0993c9c4eb8e42b4420956101a1a1aa86facd368346e1f418856a8dd8a01ae5dbb36c2b359ddb264c912ee771fabc50af6610e239397974757d8ac59b3444c9edcb06103fb501aeac9e1c1c1c142777ba8157e7e7ebf4b84fc55555595d0c276ecd84156a1282c3a3a5a5c552d2d2d3b77ee1cee71d8efdebdf3e41c476a287216131a1a2a74b7115eb4b5b559add6dcdcdc8c3f812e0741100441100441100441100441100441100471c34f8e71887d0d0a656e6473747265616d0d0a656e646f626a0d0a332030206f626a0d0a3c3c202f54797065202f466f6e74202f53756274797065202f5479706531202f42617365466f6e74202f48656c7665746963612d426f6c64202f456e636f64696e67202f57696e416e7369456e636f64696e67203e3e0d0a656e646f626a0d0a342030206f626a0d0a3c3c202f54797065202f466f6e74202f53756274797065202f5479706531202f42617365466f6e74202f48656c766574696361202f456e636f64696e67202f57696e416e7369456e636f64696e67203e3e0d0a656e646f626a0d0a372030206f626a0d0a3c3c202f54797065202f5061676573202f4b696473205b203220302052205d202f436f756e742031203e3e0d0a656e646f626a0d0a382030206f626a0d0a3c3c202f54797065202f436174616c6f67202f5061676573203720302052203e3e0d0a656e646f626a0d0a392030206f626a0d0a3c3c202f5469746c65203c66656666303035333030363530303665303036343030363930303665303036373030343330303635303037323030373430303639303036363030363930303633303036313030373430303635303035663030346530303561303035663030333130303530303036313030363730303635303035663030343130303334303035663030353630303635303037323030333130303265303033303e0d0a2f417574686f72203c3e0d0a2f5375626a656374203c3e0d0a2f43726561746f7220284d6963726f736f6674205265706f7274696e672053657276696365732031342e302e302e30290d0a2f50726f647563657220284d6963726f736f6674205265706f7274696e67205365727669636573205044462052656e646572696e6720457874656e73696f6e2031342e302e302e30290d0a2f4372656174696f6e446174652028443a32303233303130383138353030392d303827303027290d0a3e3e0d0a656e646f626a0d0a787265660d0a302031300d0a3030303030303030303020363535333520660d0a30303030303030303130203030303030206e0d0a30303030303033393833203030303030206e0d0a30303030303036343232203030303030206e0d0a30303030303036353237203030303030206e0d0a30303030303034313730203030303030206e0d0a30303030303030303635203030303030206e0d0a30303030303036363237203030303030206e0d0a30303030303036363839203030303030206e0d0a30303030303036373431203030303030206e0d0a747261696c6572203c3c202f53697a65203130202f526f6f74203820302052202f496e666f203920302052203e3e0d0a7374617274787265660d0a373131390d0a2525454f46);

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
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `bdate`, `bmonth`, `byear`, `email`, `education`, `title`, `city`, `street`, `zip`, `country`, `phone`, `about`, `avatar`, `services`, `expertise`, `people`, `last_login`, `role`, `website`, `login`, `member_no`, `status`, `current_job`, `fullname`) VALUES
(1, 'Martin', 'Oplic', 'Omeccas', '-', '-', '-', '-', 'martin@gmail.com', '-', 'Your professional', '-', '-', '-', '-', '-', NULL, 0x89504e470d0a1a0a0000000d4948445200000200000002000803000000c3a624c80000000373424954080808dbe14fe000000009704859730000d4550000d45501a4e69c4b0000001974455874536f667477617265007777772e696e6b73636170652e6f72679bee3c1a00000300504c5445ffffff0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000b23b7e1000000ff74524e53000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f202122232425262728292a2b2c2d2e2f303132333435363738393a3b3c3d3e3f404142434445464748494a4b4c4d4e4f505152535455565758595a5b5c5d5e5f606162636465666768696a6b6c6d6e6f707172737475767778797a7b7c7d7e7f808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9fa0a1a2a3a4a5a6a7a8a9aaabacadaeafb0b1b2b3b4b5b6b7b8b9babbbcbdbebfc0c1c2c3c4c5c6c7c8c9cacbcccdcecfd0d1d2d3d4d5d6d7d8d9dadbdcdddedfe0e1e2e3e4e5e6e7e8e9eaebecedeeeff0f1f2f3f4f5f6f7f8f9fafbfcfdfeeb08d935000028e64944415478daed9d776014c5dbc7f75248422821915ea44a53020891a2d28b882201a408220252a4ab200a48535014791102284228022252148cf48e1491de219400092d408090e472372fe17797ecededcececcdede6d79beffb1cb3379e6793eb73b333b85e3bca3e0d63feebc909a7c7cc3d8eab4a6793b2efae772dacd23eb8657a0352dd46bc5816be9d70faeea578cd6b4d4a03ffe4b4a4fd8f76bf7705ad3ca23e38ede7e7c71776c7428ad69ad2f379db8fbe8fc8e592d7371465291590f51b62ef60da030adb0343dc7f44834cd5fadbdde966d69dff62a8d698b7f72fea8f58f6a149696774ee598a6c63e4b611a38e04a8ee9fd69cf1826fd016379e9cfd29996c4bffe595657d37f6a1243f7abddd5745d5952d32a5b5c2d6d0b22484deb1d72354d9b1a426afac67957d394cffc8d91fff0cd4828fb4832d332c7dc4c533b133e4cafba99de6e4866daeabe9be985aa64a61f64b899fe5b82ecc931d6ee66fa573e23e4bfd47924a2851602d31a37c54c4791fcd5d6a922961944f0f4b18998a63422319d22e66f22093c7ecbc44c4f14d27ffef31c41a2fa52deb46882b8693779d3ea0f452dd35f96376d99296a9afc9cbce940717fe3095e20df899bee0ed23d00ab90843ac959e6da276199f6929c69c12b12a6374bca9956bc2f617a46f679dc3453c2748b9f9ce97b52518ad57bfedfe4ff88361ee0b5e86fe491311dca334d8a3bca8bee41b9f7470ccff4f2bab3bcb7ebaf720effc56ba99c5d779957d057726dddb339ff37f3685c12cfb4878c695832ef29756023ef5fe8557de7dfef4476676a628527690baabb31bb6a5fc804e58ef33f3e1c5aeac9bf439b1c247d7a94cfee3adcea5138aba836d9ed107b14deb461f6df38df26ecc9bf0bf7b8e5bcf048662ca14f0ea04db206004a0dcd7e0f25c8740526659b6eacfbe4a16fa93031bb06ffe81b800ece7a1ccdeebef5723e635372634d473b4db79773fec4463bdbd827f17f759ed374a5b311153a3dbb338837cdee004e770ee2145ae9bc3415df8c77b65832463bc739ca6d779a0ec49ae677b658eff7725eaa79d469da5cd7002c75fe1279cdd96867d5da604d9d1dea53c139d73e759a56c13e8b9d8fd0adbc57c58fce276c5e6ce3c1d903f89197d9ad8e6b57b0febee4f4ed53def8a77350682bd6b48bd39437ce55e896bb27fa53e03d472d3af2af3a7b3c3f637b8fceb729ff99edef1ca0fb1c67dac4f98829cdbb98cff93aef8033ede96c38f05b7ca5531c575fc4997ee97c66f3876fa21c2d176b019ce96f0ed3a5fc8b9d9c6d253f1d03504bf44556c4f996c5997675fca7f9a23fb34d38d389a28d8c771d5767e04c173bfed3bb2e57bf705cfd1867bacbf19f5cbb28f31d575be34c6f3bfe531197ab4ed89fd731006f39eaf09debe50bffbbfa1867ea7cdaf7767da4a4fdefea699c69acc3b499cbd5b28eabab71a6db1cffc975d4b899e3ea349ce925471f35d0e56a6f87695f8c65b073b8517c68a0a58e01e8efa84317d7cbcb1d9771dfd99cad36c1d8ff7ec7d31df75737384c23447f67fb71a68e9edc6dd7ab118e0297e34cd3458bafe9301d8fb12c2b5ebcb365f0be8e0118239ec5f18ecbb8c1b5258eff23e82a2c745cc67d2dfdcf31e823b8bcd3312e8773d8d17cdc29b8ec1892de82b1cce71ce376bd9cdb713906631a250e89939de13a0660aca30ed5c52f57c2983a5b8ac1e28ff7608ce961c7e091f8e3fd12ce6147a3759be07292f86597610bf1a13be7e37d36c6b48ee3ff8c75bd5cddbd570100000000000000000000000000a035e5abdd75dc0fb1bf6ff8e7f8e5c424a71ee201b89524adc77800309649562c00369ca91d0b4006c6f2061e80548ce91d3c000fb2ff63e2a5637bd6af983f7d6c975a7935947abf9a83e76c4b44384900402209000824010089240020910400249200405cd7b7ce1e54dde2fbec571db83259be6a0080c701f8df80d58a0f2bfb30f9feaf2d268c0c00a00e004fa71c2e68ee9bcf45cf4fb94e5c3500403d009ee8ea64af3f07c2071da4a81900a02e00599f203e0cf362fa8b4e79801000a0250010ba3fc95b73c84bc7a4210400680d80275dcd1f4a7921fd95165a110200b408004219f32aa89cfed0290ce90700bc05c01304be0a5133ff6daf200400681900842eb6562dfd65d6220400681d008456a9d314b00c4f4500801e00400f87a830465c683d4200803e0040686d84a7f3df38110100fa010025bce2d951ff71360400e8090094f9b907bf1014da8a1000a02f0010dae0b1d740d9730800d01f00e894877a0391890800d0230028a1aa27f2dfe01e0200f409004aaea73cffd1690800d02b002855f1b060571b0200f40b00b2765096ff96190800d0330028bd8992fc473d440080be0140292fb2e7ffb95b0800d03b00e84679e6995f171100a07f00507c11b6fce73e8c00002300800ee76602603e02008c018060a3254275470080510040dde9f35ff91100601c001e51af1cc97d1c0100c601001da76d06cc430080910040f3e8f2df060100c6024066635ee10be012006034002ed1bc04be420080d100903def80a78ae90080f10048af480cc0260400180f00fc0edb7c75621d735e1533eafdd7220b06073935c17127521c80a860692dc203901f63ba0f0b4012c63238090bc03e8c657e3c008b30a651780026e6fccf42d55feb397ad66ad6165a27b2fc0732957fe80b91f33565b689ab8ef122160f006e9bb8bd78007075c703b01763198c072016635a1d0fc058118bb14798da81814400f4a02f79c790d2a2450100ea00f0446586eea0cf530f92fcfb9da52d768fe4697c00806a003cd1cb7b683375d64f8516c019cc81ce00809a00705cf419cfb7022cc7a84a4cea873b0a1c005017002ea05f1255ba8ec92f1ba61b045e85dfb214005019008ecbbbcac303c254ef950932400100aa03c059bea46aafc9ce03a5282cf56db9d20000f501e0b8ce8f2992267706f644f2a2126a7200801600e06a5f23cfda4499e709f920d0f1c21c00a00d00b862a7c90783f06fed06c405dd2ac301005a0180ab904c9cb806d8827e262d26a3010700680700ae09f1fe8dd8037b43ee9316d39b0300b40400d78f3473f7713b49be415aca740e00d01600dc0fa4b9c3ad189f4658c6667f00406b00046c264cde544c2184c3c056d2b9250080f700e02a1236030e4b17518890a1391c00a03d00b83964d9b34bef1e46f821f0515100408b0014255cccd54eb2849f3c32980400f80800d261dc999205c4930d01e50300b409403eb20d3d4e49d947900134840300b4090037842c837924cceb1159678603005a05203c932885b524ccc966836ee50000ad02c06d254a615709ebc99e7e030000de066088a2563cd9e4a23200807601284394c21512d627498c8f7000807601e088168c1c17b7f5275a123a1e00d03200e34972982efe29a738d1e3a33e00a06500ea1325b1b8a86d6505b60080460028419444f12da36a138d02f803005a0620c04e92c5daa2b68d494caf7100809601e06e9064b1b1a829d19aa0030080b60138c4be3ea82b89e96a0040db00ac631f0a249a56381300d036007349b2d84fd4f41312d3510080b601209a13f089a8e9a724a69f0200da06602c7b16010000c0d300ccc003d01463ba160f4009694bffd35800ee854a9b86dec30270da5f7e04460280b598aa36c5033043bf00f4b0e30148aa285f0f09008e1794b2f4fb056101405b2497c6846c415800d02f927bec143c8e0700f30da562121e007b0fbd02d039fbcc410900d0d5b212a623900c00e8b0c4c4244bf6f246c98d22ff0e12370dfa1bc900807e96585b1b9e7dbc8e1400e87389aa96bd8af000205b677d02109db350410a007449fc7ce341481600f46f98a8e94c240b005a23ba5f5ee01a240b80443738ec5f240b8044d3bb54ce827c290090355a8f00bcc83b735212007452ecd7f8262200407ce7535e5f16b355ec4c3c3ab8ad6245d3c8db5b571a0024768867106f1286240028e345fd01e07f10910020d6c6cd93400400ea26f23c4d2502c02e72a8723d3b1100a9226fadf71011008961f87c4903800efaeb0e0097d9691800d2dc1b822e4b543100dc746f06fc8d880040c7dc5e0281fc75911800d0df6e7ff499db6400a0d9ee0dc0343200c867626a0580920f0801709f65fc62262100e847a1a9cbda36ec6ee19f626b8f03c07db345179f7000b83f785c66f1e2007850526700fc86480140ef084c0f205200ec82efdab993880148150c2494482506204970f486eb241c1c00e8a8a0dc77102900e8377d0150d04a0ec076c103001103807e12f43b11310068a4ebcd9188180024e8952d200700d575bdbb9d1c006b415d013000910360777dba7d4f01c0dd20d1d14312000433638f5300e03aaa1792420180eba85e493b39006880ae00d84301001aeed27b48a400c075a57344060500c8e578836a8802800c9705f66f230a006ebaecac3c1c5100b0474f0008d727e00138ccbfd71cd100b0927faf2fa2016032ffde641a00505ffebdd53400a096fc9b876900205c91a30d0086510180f85d6be13617415800d2f97c6ca002e02cffde592a0036f0339c4e0500bfe352165101304c4700cca203a005efde66aa2700aac0bb77910a002b6f6cc5df4a05c0457e4f1e5101c0eff4b6a00360968e00584707406fe9dfa21c00bcf9ad7e195400205edbb324a2022083f751b0191d001778f77ad301b04e47001ca3036002ef5e2a1d00efe6dc12ae6c9203a0be54575efed838deea989e7400a4f33e274ea003e0988e00b84f07c0025e4b1ed101c0fbc85a971280ce520308f200f0baf3e3e8004045a506106401b8af1f00f209ad6ab8de17066d8b647f0ca110dca80b423192fd317483c38dbab8f43e05fd31e1d894db6a0bde4109f3a4617e3a4a20ac4f54cebd2d825be35c4d6b084df3e906805cc2f549ed5def2f967ebbb91d58f1bcabe92ec16ddeb697c27d6eed82805d17dc1f98736ba0e0d67501d0c2fabc21fa11f9a976b99a3e2faccf0bd22da5c5aea6ed85f5c9a59f57c04d84e97373dc29e9be515ee11feceefa91f9a1e036eff37c4da1a9eb86e66ecb2679b32ca285f75cbf143414dee61d95f199e0d6437fc92fc54fc5fb82f9a3e09660f72ee1862d3775d406382cfd8ccf9a3f63c3bcfc1e623b3f91427f786b5c8a08ef8de030237608d5c9b95707493fe339fe0435878a60321c89ed103fc6e4cae63a5f40f88638ace36ea0eb00d86c84e9069e13dc4babc2375d2f346dc2eb060af7cabd5588df1a133e7670dd40748adff62c24dc7ecf8ae906a2f57c7faba45174035d616f8974dc0d14728f12f2e7dc6ce2b682b985d417f22c1d08901cec7da28ad20341ae0b19bf11decce0cd0909cc10defd467ab0173f10e432501c7000510c04213b0fe7fc0948c70341eddcecb63febbcd7caeda8c3c7a192df65b3f47bf6b7979e6e9be15ee230a3c84ffa08ce4ff7fe2385af1db4916fba5178d736d2f92ecf1de356accb66d95784771ff5cceed3feee66caff0a1dea76da57522be7bd67b7bb99b6d3110079d2dc0c537a3f4d46b179ee65ba7c5eade47e3f29fa69fbb7fc5af75bd3b00f4d84ce35cecaa3a5fa3feeb706603e5f67e99fea596336fe8dcfb9df7279a1cd10a950f9a77da16891533d2b497fbe7eaa79c59e42d73bc5ed4e5a1e3d7d0e165ba49c797ce19aab6265ba1e3f23760056fac1f97fdf14336de8d2fb143bf02675cfdcadf7c44c5d26a49712fb1ff7b6cedd932a72fdbe4b7fac9998e9cdbfe71f14db73ebb44b557b8b995e5db3f0b8d8869f644d00ad00f0012297bd888be9240ad3dbae7daea514a6ffb93afc1f85e95217cbc07b14a6935c4c8bd8294c3fd0150061e4c798a155aea6e533c84d05e30b0d28e2d9879dd886aea653c92dade55d4d57929b2687e90a00ee23e29a65561298fec01e94bf884d4f0b0e3df73f456c1a27f8a311e48f006143be22f1616fe8637d4d0ae582888f20759bdb5d3085d474b8d0b49a8dd4d46db1551be2375675a1e9085253f7a35666919a5e09d619008219cf3441e13e2734bdeabecc7721a1a9c804bb9d84a64bdc2c83af109a7ee5665af801a169774e6f0058d692d54c64b26b08598bccfea6bb6951b263941f45ba9b56257bf02489ec4cf01ad983e7645ee6d6f27a3fdd01c0e53b4152de6c31d39237985da94d7294babdbd98e99b24694cab2366fa315197a59c98e90ca2164b18a73f00b87277e48bdb12206afa32414f6091f85fed4c5089b1e2a623094c25ce5a8895b7cc68286a19b089a0b15b81d323005c63d95fe369a9e3677acaf690774aecf240b05ff632a913d417c89a4aedf311b443f6a9d34bc2345cb6fff1b831a74f00b8a8ebf8c2361690346d23d33a5a2cdd2aee27d3b79a2cf93eb5c8ecb166ed27f9478317e34d1fb495342db0116f7a3d8ad32b005cb1fdb8b2a6e316bd57bd80b1b48dc0fdd546b731a6a95d70a61d53712ff14638d311b826c4c56a184bffe9b828ed2fc6e917002e78aee4b3fc5e4fbc69f81a4927125be34dcbee937ee9c8ecb5f1e26949d37d65f1a6ad13254dff9259d9d953722cc93e3798d333001c5743fc01973e2d42d6b4d1bfe24fd331a1b27dd08ee2cf8fa4be0172a6017d93444d2f74b4c899868e117f6f1d6a2e5bd58869e2c7b56cac411b6fcd01c0712d0ebabf4c9796251a4be87cd6bd45145398685eea60f7dfe3ddb1445f54f38cbdebfecc194c3423b3708c7bbbf74237a23e7cd9a5ee4d97832de8a3ad410038aec227bb792fc8872bba162036ad3e967f0c52f2c2e850524bbf97bfe57fcabf1ad33c90d434b0790cffbbf5b929f589c76142a317f2bf831d1947fe132ed075056f42a46df727155862ad4900b27e1baff71a1db372e9d44fba36a47ca97165daf41d3767f5e229c33ad70ba034ad12fde1c49fd7c44e1ad4a1a685ced252b3c3a049b16b7e9ef8617415ca3f1a50aff3b0298b57cf19d7b74d194ad3e0865d3f99ba7465cce85eaf17660cb4560100794900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000202b6b1a48d3ca54190090110400000000000000000000000000000000000000000000000000000000020040000008000001002000000400800000100000020040000008000001002000000400800000100000020040000008000001002000000400800000100000020040000008000001002000000400800000100000020040000008000001002000000400800000100040a54cab96bdb3a7a56402009e0de9ad631b177d33ac4b933a91154b15ca1bc87101790a967caeda4b0d5af51c3367eda19b769fba977a7ef7ef3163fab4a953b55c898279736505324ff12a755abcddfbe309d317acda7228050060d6b5bfbfedfe6288dc3149b94a37fb64c9499bd7bd7bf4ef8211adcbfac91ee354a2d9e0d93b9201003aa56d1dd5209ce6b4acdc2ff59d73c16bee9dfbb14b190b8d7b966a8356de0100c864db3fb95908c7a22a2376a9ff2488ffb96b0926ef2c914377db010039eded1fa1e4dcbc67baff9eaea27797bfaeaee858bf67871f020030ba34f139e56727161e75551def6ec5bc6c51ee5ea5c9f70000f1f6fe9a861e886f9602da6ff3bc7b87df0ef0d0e99ef946240200ee6ffee5919e3c42f5f9e59e75ef9fd69ef42ea8cf0500c075786751654f9fa21be5c1a7c096c69ef62ed798c700408eb65754e320e556c73c341e11ad8677e5d703000eddef63e154915f9f871e689acccaafd249df9d6e0200595a535cbdd3d4cbef53eadd89faea7957f2000080523a716a2a60a2b2a1a159b9d4f42e7881e901385f855359af5c61f7ceda4f6def065bcd0dc0a6704e75153fc1eadded86ea7bd7d66a6600a607705e50046343e058196f78d7d9665e000671de519e8d4ccdbf08ef78d7d36e56004672de52aed5f4dec517f39677034d0ac064ce7b0ad94febddf5b2def3ee67530210c37953451328db7f55bde85ce8691302b0c4e25500b81a8fa886ff9a7ad5b9ea69a603e0646ececb8aa6696b4df2b27383cd06c0e31738af6b0eb97b7b03bceddc2e9301d0d7fbf9e7f25f23f5ee5e19af3b57cf5c00fcc6f9426f91bad7c507cead321300d7c27c0200b782ccbd5dbef0ad52a68900e8e19bfc7345c8a607d4f589733f9a0780437e3e0280fb96c4bd15bef1adb4cd340034f155feb9220413f1322af8c8b938b300b096f39d66c8bb37c357bebd651200322bfb1080921972eed9caf8ca37ff6be6006005e74bc9cec1facb77be8d3707008d58e353ac79e70f3febd726aa64a08220379773ef4dc682c3ebb4e933e6b39ead6be561f6ed59530070822d384d6273d6d264fcd9318435c801b7f0ee5df667fad6d87f7376373e2dae2feb4c82a36600a03fd3879c43825252e617640cf26cbc7ba3188a2c384fd0834b1f1fc4e4db372600e03ec31332f8279182ae320ed734c237018b5217e8d75f64fb8f33afb0f8d6d80400fcc0305d427cf94406db8c42bf24ec67407aef36887fee642120d703e303f02a7d58964995d5def31f0446d39656608f4449c92c0b1efe303c00c9f46daca19285dd609ab63b12e7df8b9485153e2259d495bcf4be0d303c00bf50c7a40166e1c41216009a61dc4ba49da7861bbe1d4bef5b5dc30340bd10b030f695cdf2a20dc794379fb2acce38e71ed07754426d0607c04a3d116012b6bc9f591e01f1d2e575a06c0060e944d3e87d3b6b7000b6d2062404bfb9defd6006007e932eafa4473fe127d3cf2c5c6e7000a887593e9029f06d0600464896769bf20120f765897ed4fb338303f01a6d40e416f6ae6400a0a964699be80aea2e575dfa77402b830350c8d39f6eee302c2f292059dab71eeeb5c753fb56ded80024d0c663b16c9195181e01925bb4bd43554c5ef9e53ca5685dcb6d6c0056d3c6e3926c912cf34b7f952a8c6e3d6067f90a37a3f6ed9ea101a06d0396942ff2270600c64894954e374cb948debb01d4be9d343400b46d4082dfd87f0c000cf4cc2bfba0bc77d3a97ddb64680068a7dbcd942ff21a0300ef4a94b593ae18824f77eba97d5b686400ecb4d3248ec89799ce00c09b12652da52aa538418dcf50fb36d9c800dca01d0624191967f8e6d6c023bd4092d91b57a97dfbd8c8001c54a353cc308b3b52a2a8a154a5f42370eeae363f08fb0a803594c17895a4d0daf40094f6c8b8f23402e732a87deb656400665206a3a32aa3cbd2438174bb02136d3c46fd39e81d230340bb2ddc509242bbd103e067f7c438d06612efa8371a6f676400dea30cc614924287d203c0491ce6588eaa90bd24de51cf096965640068bfddfe4252e844060024b68fa65bcf719cc43bea49f08d8d0cc01b94c1203a5263360300122789d06d5c7d91c43bea39b0f58c0c00edbe005b490a65596b2ab12517ddce7524c77dd00f5335353200f52883b15b8dbe659624e6f2d36d5c92aaca38407b2303508332184407aa2c6200e03f0f74dafd489ca3ff5261e87100dac91b448b65673200704ab4a4477568d488c4b9f33014ccd7b394c120da42996553d78bc84b3a4aedda44230350843218f16a8c2e65c96b27b7c651bb360300c811d119d01f3200e0b5d39be9df4f8b0100ba8e16eaca0080d73667ff88dab5750000e50f95614f1f8bb7f28fda52fb160f00d0f5b451437a0042bc0640355ad72210009023a2ed936bd20310ee3500a8a72b35070028875a50797a008a792bffd40b610cbe36f0d7582a114d90b5e7a307a08ab700a01fa55c696800d4d061864e404b6f3947bf6ce90a0040a9690c00f4f19673b4439f5c21040050ea2d0600bef4926f17a83deb040050cace72faf8222f39f7a33687810c05c02186fc733bbce41cf59e8885ac0000a598761ebea45538072300804e892c9b44f97be977f61eb567ff020094fa98e50150d23bbedd0cd2ecf8846100b8cd7438437def38473f5161120040a9d12cf9e70679c5b74dd433c2c39301003add0f6302c02bc3ad09f4fbc4fe1f0200e8d48729ff96db5e702dbd0eb55fcf65000074623cdfab9a377effcde9fd5a8300002add29ca69b509302f3fbd5b8d100040a7b7d9f2af7e13e0542b06affc0e0100745ac2987f759b00f6fd23d90e461d8900002a5d2bc0f9b8099071d845bb7e8ff9a26fdbe28c5ebd690300e87e69cd1923cd0df3940b9738cfe9f914040050693873ac4f6a108067e2110040d7cc668eb5e776e0f01c0081db100040a5adecc747afd01e0001b10800a0d2d970e66017b76a0e8088cd0800a052f273ecd11e8fb406c00bf10800a0eb7e3552f0b64dd41a00d10f110040a79e0ac2dd11690b00bf71760400d069b29280efd61600d1277c13433d03305349c03dba059762009aedf75510750cc04f160511cf7d594300d4d9e2bb28ea1780057e4a623e01690580721fedf66518750bc0527f25f92f97a60d006a8e3fe6e338ea158015018a1eba7f202d0050e1b2ef03a95300fe0854947f4f6fc4cefa04a8f8d1362b00c0a0b82045f9cf754e23003c5181ce4bee020094da14acacd53d16690780ac2f400da726030014da9e5b59fe9bdab405c013e51d71030020d5865065c12e7e13690e008e0b199400001069792e85532e54e8767be46350ae5ee7010079cdf65318e7ef914601e038fffe8f0100194d541ae40e48bb00705ce459000027fb10a511ae98a26900b8bccb00006959bb298d6f6e75465e3d392dbc7f1a0020a1d4d68a5fb22aad05f324005ccdf30080a8eebdac38b673910e00e08a5e0100449418a938b25f235d00c0453e0000dc74a19ce2b80e473a01807b3d130010e86851c551ed8974038097f62ed21100bbc294cfbaccd41100de39314c3f00ac0b511cd1c66af6ae3c0f80ff460020478b021407b496aa8bae3d0f0057391300706a9a457138abdd52d5c347cb785a1433f9b301dddbbea470d2422c00e0d0280f8caddcf1c5b8e5e1b97d6bb1b35b3a1d00c892adaff2fc47ddf599fba77a327fbdfe010078a2f40ecaf35fefbe2f6b707d783e36b78b3c0200505a4be5f97ff5818f2b91f0029be35f0100e9ad94e7bfc9239f57e35e6326cfc31e9a1d80f4d6caf3dfe2b1162ad295c9f7df4c0e40461be5f96f9da689aad8dbb138dfc5dc0058db2acfff5be9da7896a1ab2ce759e4cf303300d676caf3ffb61569455358fcffdbc40064bead3cffdd3235937f945185a1027dcc0b406627e5f9ef65431ad21696a1009b6901e8ae3cff03ec485362d9d16eb7590198a03cff1f238d89e55cbb4f4c0ac0afcabfff8dd25afed14e865a343227007b8315e77fa2e6f28f6ccf3034024c09c0e5c28af3ff2dd2a0de63a848b2090148794169fa2d33b4987fb4528bad40ed0190f99ad2fcfbcdd564fe99268ecd351f000315cfa75ca4cdfc231bc3dc908f4c07c00ca5f90f5c8eb42a86918056660320ce5f61fe73add16cfe11c3cbad8cc9004850ba0024384ebbf96779bb59524d0580bda9c2fc876ed670fed134861a9d341500d315e63fef4e2de71ffdc950a5bd6602e094c2156061fb349d7f749ca14e9b4c0480b596b2fc3ff39fb6f3cf3410b0ca44008c5196ffc2c7349e7f7493a1568bcc03c05e653dc0e2a7b59e7ff480a15a31a601e0d1738af2ffec05cde71f6532d4eb1bd300d05f51fecb5d463a10c358f068b30010a728ff95ae79d2972b9d6845b8bd637efa9a0d310900778a29c9fff3491e75e60cb50383c90a2ec230b3d52400bcaf24ff356f7bd699cbd41ebc47567019faba75340700c795ec01fed25d0f7b7383da8568b282abd257ae9d3900784341feeb7b7cfb9ffbf44b905503a09b2900d8a120fff53cbffd533ab513b5c90a2e4b5fbd0f4c01405df6fcd75163fb0fea59e9cfa9d60834452f60157bfea3eea9e110f54729c2e9db0cddc091260020b31273fe6bdd55c5a302b47e849095cb70dce5781300f01373fe6ba8346d9e7e6362a275e82c43c1df1a1f8054e631a012d75572a902b52b442311290c759c697c002631cfff3aa4964b0da87d8957677c81e316181e803bf919f3efa7defcdf2ed4ce10b1789ea1965b0c0fc0471a5cff47bf927b3b49b19b196a79d1e8005c663d085cc5f31fd0f7d4de2c55a9b51b906974008632e6bf8a9afbff2d57a7bb3e121686b88fba46302e003ba8a657bbd459c2c5b0ef5523a303b08cf101a0eef8c845fa198924c532cc7a7edfe800302e057a49dd57633afd163524271284d3577482c1018867db0c28e88cca7ed18f4d1174d76e31d4f4578303c0781a88da9fc810fd2ed563e50bfd95a1a609c60620b338db10e00db51dfb82daa78af285f6a4af6969646c00fe647b007ca6ba636be89d925f975682bed0ae0607806d3ff8b0bbaa3b7695de2bd98d294f3254758eb101b8ce761e60a94e1e94c4c716fa9dea4acaed4cfb3d43554f181b00e6ef801e94447b92e1ac9ab5f8cadaabd1171961373400f6f2da0560347d4915f187532c6170ae2d3234005b38ed02f01743515fe32a6b65a17d99b101e8a26100d2188e78c9835ba0389bc1b77ca98606e05eb08601402c0756b697aeec69869da249179ce91580159c9601f885a5b00152754d28c552dc266303d04bd300dc0b64296da8c45700a689efc56cc606a0a4a60140cd998a133de2631bdbe6275e39f3c477009ce0b40dc02cb6f25edd212ce80ee3d277ff73c606e03b8d039018c858628b03fccf5d3b8615642ca71b323600cd340e00eac65c6654b7714bf6279ddeb6f4fb1e05990bf13b6d6c001e05691d80c3be75ac33323600eb39ad03809afad22fcb098303f095f60188f3a55fed91c101e8a87d00587674f19442ce1b1d808a3a0020d6776e4d460607e0919f0e00b0d5f295579156a303b097d30100689fc5374ef9ed474607608e2e0040bd7de3d460647800fae90380dbe1bef0a9d203e30350571f00f8e44955e02c323e0085740280adb9d73df2df808c0f40ba452700a0bb15bcedd1346402002e727a01009dcae75d877a223300b0533f00a0b55e1db2689b610a0096ea080034d98bee74b422530030454f00a0cfbce64db74c640e0086e80a0034d54b6dd65e36641200daeb0b00141be005572c9fdb915900a8ab3300d01af557b13c1387906900a8a23700d07eb5c703ea2720130150467700a047aa7ebeb00cb722330150547f002014a79ed735f620642a00c2f40800bafd8e3abd81b01999c8640004eb1200840eb650e1e9ffde0d844c06809dd32900086d7dc9c3dffe3afe8790e90078ac5f00105af5b2e7fe7a703f5f9f7aef1b0092f50c004227877866a25091513710322500d7f50dc09347d8e2064abf1186f7de6c43c8a400a4efd58c2eb1d6e1ceb21eec47de17ecba360369425a393e5e9f3a3aa55dd55c94b90fa93f6c59bc76aa00002855e6d9355ff7a84334b0e1f7fcfbb30f59b5e53e00e021256e8d19d4bc7af92279dcc78a2cf94bd76cd2e183afb73ed0a0df0080c7c7381e269d3fb27bfdef0b667e3d71c692b87d676f676ad95d00c0e40200000000000000000000000000c8d170088c59345c1480fe1018b3a8bff8fa04088c5924be1de65b1018b3e82d51009a4060cca226a200444160cca22851002a4360cca2caa2009480c09845e2e7d906644064cca10c8955afa72134e6d02989b92b6b2034e6d02a0900be81d0984352c737f784d09843dd2500781942630e492d742b08a13187f24bcd60be02b131832e484e618f85e098413f496f5807c131833a4b02501c82630615915ec604638126d049cc3ab699101ee36b06068076101ee32b1a0340de54888fd1959a17b796790904c8e85a825dccde12026474b5c4ef5f96081132b612fdf1fb597c072132b6be93d9d0241242646c45ca6d6973186264641d96ddd3e81d089291f58efc36b6e7204ac6d5797ff96dcdde87301957bd08f6b50bbc0c7132aaae106d7009fb0418560389b6350dba0e9132a69242c836b685568041d587f438933d102b236a1ff166f7d533215ac693ad26f9eee6d3215cc6d30c8aededf32741bc8ca61b54a7f6c10471c3a91bdd11172b2162c6d22ada732de3216646d245ea635b6ba543d48ca38c28fa33ae0642d88ca3a12ca79cad80b81945ab998eb9cb7f0622670c5d28c076d061e96b103b438c0094673deaf285bb103dfd2ba526c7ac571e43fcf4aef4c64a0e3b6e039f85742e5b0765c75dbf6f8718ea5afd949eb4de057610d6b1acef718ad5f221c451af4a6dcd794075ee4024f5a9e4fa9c4754250162a9475dadca794825ff8568ea4f074b711e53ae1f209e7ad30f419c27d5ee1e84544fbadb96f3b0ca1e80a8ea477b4b731e57aea9302aa813654e0ee4d4508dbd105b3d684f24a7922cbd614840f3bad3cbc2a9a788b9f06d40d3b2cf7b865357b5ff84286b577fd5e1d457f5e53688b41665fbad06e71d555a6085706b4d19f32b72de53992f6123194de9d284529c776569342f05e2ae0d3d886d64e17ca0dc5dd6c25c019febf1fa7743399f29f0952f76c01a32dfbdf7774d6814ccf95ab95b7cb5fa144c1cf376ee4fadfeaa6528a719f957787dd8ece571bb8ec4df4a83eca8a5b45bf14776c52d9f3dac75057f0f25eeff0168047e76e97bee5f0000000049454e44ae426082, NULL, NULL, '-', '21-04-2023 08:04:26 AM', 'employee', '-', 'Martin123', 'EM162714896', 'unemployed', '', ''),
(2, 'John Rey', 'Madriaga', 'Pantoloc', '-', '-', '-', '-', 'johnrey@gmail.com', '-', 'Your professional', '-', '-', '-', '-', '-', NULL, NULL, NULL, NULL, '-', '08-03-2023 10:03:58 PM', 'employee', '-', '0947c4490bb6deac5daa57d488fc5a6e', 'EM838305445', 'unemployed', '', ''),
(3, 'Mark Dave', 'Palacio', 'Bata-Ec', '-', '-', '-', '-', 'markdave@gmail.com', '-', 'Your professional', '-', '-', '-', '-', '-', NULL, NULL, NULL, NULL, '-', '08-03-2023 10:03:51 PM', 'employee', '-', 'fa93124bc40aead8d28ed14704b0856f', 'EM749462844', 'unemployed', '', ''),
(4, 'HANDY HUNT', '', '', '-', '-', '-', '-', 'handyhunt@gmail.com', '-', 'Corporation', '-', '-', '-', '-', '-', NULL, NULL, NULL, NULL, '-', '21-04-2023 04:04:48 AM', 'employer', '-', 'Handyhunt123', 'CM058801669', '', '', ''),
(5, 'FC Orillanes', '', '', '-', '-', '-', '-', 'orillanes@gmail.com', '-', 'Corporation', '-', '-', '-', '-', '-', NULL, NULL, NULL, NULL, '-', '08-03-2023 10:03:14 PM', 'employer', '-', '07c733544180eb483ae23fb39344837b', 'CM837349369', '', '', ''),
(6, 'Solar ', '', '', '-', '-', '-', '-', 'solar@gmail.com', '-', 'Corporation', '-', '-', '-', '-', '-', NULL, NULL, NULL, NULL, '-', '08-03-2023 10:03:41 PM', 'employer', '-', 'c57ce8b8823c96a14352a6a4945617a5', 'CM466561385', '', '', ''),
(7, 'Ramil', 'Pantuloc', 'Omeccas', '-', '-', '-', '-', 'ramil@gmail.com', '-', 'Your professional', '-', '-', '-', '-', '-', NULL, NULL, NULL, NULL, '-', '09-03-2023 08:03:36 AM', 'employee', '-', '606445761260c265938e5469c7130fd2', 'EM570958062', 'unemployed', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_scores`
--
ALTER TABLE `quiz_scores`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `quiz_scores`
--
ALTER TABLE `quiz_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
