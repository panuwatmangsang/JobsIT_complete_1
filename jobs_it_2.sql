-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2021 at 08:39 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobs_it_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `app_id` int(10) UNSIGNED NOT NULL,
  `app_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`app_id`, `app_name`, `app_email`, `app_password`, `created_at`, `updated_at`) VALUES
(2, 'panuwat', 'panuwatmangsang@gmail.com', '$2y$10$h52r/QSJWv9HiY6EtXhUDOONSqRSzIeW.ltZPhRafWY5A/4PP8GCe', '2021-08-14 11:24:05', '2021-08-14 11:24:05');

-- --------------------------------------------------------

--
-- Table structure for table `entrepreneus`
--

CREATE TABLE `entrepreneus` (
  `ent_id` int(10) UNSIGNED NOT NULL,
  `ent_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ent_nature_work` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ent_name_contact` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ent_phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ent_email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ent_password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ent_location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entrepreneus`
--

INSERT INTO `entrepreneus` (`ent_id`, `ent_name`, `ent_nature_work`, `ent_name_contact`, `ent_phone`, `ent_email`, `ent_password`, `ent_location`, `created_at`, `updated_at`) VALUES
(1, 'Nut Company', 'Ecommerce', 'panuwat mangsang', '0954967179', 'panuwatmangsang@gmail.com', '$2y$10$CGY32RbKaMD4pB63ZQ0E8.1l.1y/LH8CqM8M9PtuIn2A8i89TxWcK', 'lamphun', '2021-08-16 04:39:47', '2021-08-16 04:39:47');

-- --------------------------------------------------------

--
-- Table structure for table `ent__profiles`
--

CREATE TABLE `ent__profiles` (
  `profile_company_id` int(10) UNSIGNED NOT NULL,
  `profile_name_company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_company_contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_company_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_company_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_lng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ent__profiles`
--

INSERT INTO `ent__profiles` (`profile_company_id`, `profile_name_company`, `profile_logo`, `profile_company_contact`, `profile_company_phone`, `profile_email`, `profile_company_address`, `profile_lat`, `profile_lng`, `created_at`, `updated_at`) VALUES
(2, 'mangsang company', '1630751062.sticker-png-one-piece-logo.png', 'นายภาณุวัฒน์ มังสังข์', '0954967179', 'panuwatmangsang@gmail.com', 'พะเยา', '19.030591297786412', '99.9270997364894', '2021-09-04 03:24:22', '2021-09-04 03:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `history_id` int(10) UNSIGNED NOT NULL,
  `name_prefix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_old` int(11) NOT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `university` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gpa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `educational` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dominant_language` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_learned` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `charisma` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `portfolio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_village` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alley` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `road` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `canton` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_name_village` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_home_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_alley` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_road` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_canton` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`history_id`, `name_prefix`, `first_name`, `last_name`, `email`, `phone_number`, `birthday`, `year_old`, `profile`, `university`, `faculty`, `branch`, `gpa`, `educational`, `experience`, `dominant_language`, `language_learned`, `charisma`, `portfolio`, `name_village`, `home_number`, `alley`, `road`, `district`, `canton`, `province`, `postal_code`, `my_name_village`, `my_home_number`, `my_alley`, `my_road`, `my_district`, `my_canton`, `my_province`, `my_postal_code`, `created_at`, `updated_at`) VALUES
(2, 'นาย', 'ภาณุวัฒน์', 'มังสังข์', 'panuwatmangsang@gmail.com', '0954967179', '11/25/1998', 23, '1632653282.panuwatmangsang.jpg', 'มหาวิทยาลัยพะเยา', 'เทคโนโลยีสารสนเทศและการสื่อสาร', 'วิทยาการคอมพิวเตอร์', '3.31', 'ปริญญาตรี', 'ไม่มี', 'php css html', 'php css js java html python c#', 'เรียนรู้ภาษาได้ดี', '1632653282.Mr.Panuwat Mangsang.pdf', 'สันเหมือง', '12', '-', '-', 'หนองล่อง', 'เวียงหนองล่อง', 'ลำพูน', '51120', 'สันเหมือง', '12', '-', '-', 'หนองล่อง', 'เวียงหนองล่อง', 'ลำพูน', '51120', '2021-09-26 03:48:02', '2021-09-26 03:48:02');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_searches`
--

CREATE TABLE `jobs_searches` (
  `jobs_id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `a_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `jobs_name_company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobs_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobs_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobs_salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobs_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_post` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stop_post` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobs_detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobs_contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobs_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs_searches`
--

INSERT INTO `jobs_searches` (`jobs_id`, `user_id`, `a_id`, `jobs_name_company`, `logo`, `jobs_name`, `jobs_quantity`, `jobs_salary`, `jobs_type`, `location_work`, `start_post`, `stop_post`, `jobs_detail`, `jobs_contact`, `jobs_address`, `lat`, `lng`, `created_at`, `updated_at`) VALUES
(1, 'all', '1', 'คลิกนิก เฮลท์', '1632299332.sticker-png-one-piece-logo.png', 'Mobile Application Develper', '1', 'ตามประสบการณ์ 0-5 ปี (20,000 - 50,000)', 'fulltime', 'company', '2021-09-22', '2021-09-29', '- เวลาทำงานแบบ flexible (เลือกเวลาเองได้)\r\n- ประกันสังคม\r\n- โบนัสตามผลประกอบการ\r\n- ค่าตรวจสุขภาพประจำปี\r\n- ค่าเครื่องดื่มฟรีตอนเช้า\r\n- วันหยุดพักร้อน', 'คุณฝ้าย\r\nคลิกนิก เฮลท์\r\n626 อาคาร บี.บี.ดี. ชั้น 7 ซอยจินดาถวิล\r\nถนนพระรามที่ 4\r\nแขวงมหาพฤฒาราม เขตบางรัก กรุงเทพมหานคร 10500\r\nโทรศัพท์ : 098-832-7832', 'เขตบางรัก กรุงเทพมหานคร', '13.730680122641441', '100.58982854481582', '2021-09-22 01:28:52', '2021-09-22 01:28:52'),
(2, 'all', '1', 'บริษัท ธเนศพัฒนา จำกัด', '1632299815.Jollyroger_Red-Haired Pirates_Shanks_pirateonepiece.blogspot.com.jpg', 'Programmer', '1', 'ไม่ระบุ', 'pasttime', 'wfh', '2021-09-22', '2021-09-30', '- เบี้ยขยัน\r\n- โบนัสประจำปี (ตามผลประกอบการ)\r\n- สวัสดิการประกันสังคม\r\n- กองทุนเงินทดแทน\r\n- เงินช่วยเหลือสวัสดิการพนักงาน\r\n- งานเลี้ยงประจำปี และเสื้อยูนิฟอร์ม', 'คุณศศินภา ศิริสุข (แผนกทรัพยากรบุคคล)\r\nบริษัท ธเนศพัฒนา จำกัด\r\n61/34 ซอยอมรพันธ์ 4 (วิภาวดี 42) ถนนวิภาวดีรังสิต\r\nแขวงลาดยาว เขตจตุจักร กรุงเทพมหานคร 10900\r\nโทรศัพท์ : 02-791-4500\r\nแฟกซ์ : 02-791-4538-9', 'เขตจตุจักร กรุงเทพมหานคร', '13.8380346386069', '100.75147603474454', '2021-09-22 01:36:55', '2021-09-22 01:36:55'),
(3, 'all', '1', 'บริษัท ซอฟท์ไทย แอพลิเคชั่น จำกัด', '1632818433.kaido.jpg', '.Net Programmer', '2', '20,000 - 50,000 ตามประสบการณ์ และทักษะ', 'fulltime', 'wfh', '2021-09-28', '2021-10-05', '- ประกันสังคม\r\n- ประกันสุขภาพ\r\n- Fitness room\r\n- ตรวจสุภาพประจำปี\r\n- เงินขยัน กรณีไม่ลาในเดือนนั้น\r\n- สวัสดิการเงิน OT\r\n- เงินช่วยเหลืองานสำคัญ (งานแต่งงาน,งานบวช และงานศพ)\r\n- เสื้อบริษัท', 'คุณวาสนา ทรงมะลิลา\r\nบริษัท ซอฟท์ไทย แอพลิเคชั่น จำกัด\r\n8 ซอยขวัญพัฒนา 2 ถนนดินแดง\r\nแขวงดินแดง เขตดินแดง กรุงเทพมหานคร 10400\r\nโทรศัพท์ : 063-905-5838, 063-905-5839\r\nแฟกซ์ : 02-641-6503', 'เขตดินแดง กรุงเทพมหานคร', '19.527061090791427', '100.30473042841527', '2021-09-28 01:40:33', '2021-09-28 01:40:33'),
(4, 'all', '1', 'บริษัท กรุงเทพดรักสโตร์ จำกัด', '1632997367.bakee.png', 'Junior Web Developer', '1', 'ตามโครงสร้างบริษัท', 'fulltime', 'company', '2021-09-30', '2021-10-07', 'โอกาสเป็นเจ้าของกิจการ “ร้านยากรุงเทพ” ตามเงื่อนไขที่บริษัทกำหนด\r\nประกันสังคม\r\nประกันสุขภาพ ประกันชีวิต และประกันอุบัติเหตุ\r\nวันหยุดพักผ่อน\r\nวันหยุดตามเทศกาล\r\nสามารถเบิกยารักษาโรค กรณีเจ็บป่วยระหว่างปฏิบัติงาน', 'ฝ่ายการพนักงาน\r\nบริษัท กรุงเทพดรักสโตร์ จำกัด\r\n2585/2 ใกล้ปากซอยลาดพร้าว87 ถนนลาดพร้าว\r\nแขวงคลองเจ้าคุณสิงห์ เขตวังทองหลาง กรุงเทพมหานคร 10310\r\nโทรศัพท์ : 02-538-7900\r\nแฟกซ์ : 02-538-5505', 'เขตวังทองหลาง กรุงเทพมหานคร', '19.034117435495855', '99.92901654039035', '2021-09-30 03:22:47', '2021-09-30 03:22:47'),
(5, 'all', '1', 'บริษัท กรุงเทพดรักสโตร์ จำกัด', '1632997621.bakee.png', 'Junior Andriod Developer', '1', 'ตามโครงสร้างของบริษัท', 'fulltime', 'company', '2021-09-30', '2021-10-07', 'โอกาสเป็นเจ้าของกิจการ “ร้านยากรุงเทพ” ตามเงื่อนไขที่บริษัทกำหนด\r\nประกันสังคม\r\nประกันสุขภาพ ประกันชีวิต และประกันอุบัติเหตุ\r\nวันหยุดพักผ่อน\r\nวันหยุดตามเทศกาล\r\nสามารถเบิกยารักษาโรค กรณีเจ็บป่วยระหว่างปฏิบัติงาน\r\nซื้อสินค้าราคาพนักงาน', 'ฝ่ายการพนักงาน\r\nบริษัท กรุงเทพดรักสโตร์ จำกัด\r\n2585/2 ใกล้ปากซอยลาดพร้าว87 ถนนลาดพร้าว\r\nแขวงคลองเจ้าคุณสิงห์ เขตวังทองหลาง กรุงเทพมหานคร 10310\r\nโทรศัพท์ : 02-538-7900\r\nแฟกซ์ : 02-538-5505', 'เขตวังทองหลาง กรุงเทพมหานคร', '19.035786467904188', '99.93155649557413', '2021-09-30 03:27:01', '2021-09-30 03:27:01'),
(6, 'all', '1', 'บริษัท นิปโป เทค (ไทยแลนด์) จำกัด', '1632997887.black.png', 'โปรแกรมเมอร์', '3', '15,000 -45,000', 'fulltime', 'company', '2021-09-30', '2021-10-07', 'เงินเดือน\r\nคอมมิชชั่น\r\nประกันสังคม', 'คุณใหม่\r\nบริษัท นิปโป เทค (ไทยแลนด์) จำกัด\r\n44 ซ.รามคำแหง 187 แยก 2\r\nแขวงมีนบุรี เขตมีนบุรี กรุงเทพมหานคร 10510\r\nโทรศัพท์ : 02-518-1314,098-372-1669', 'เขตบางกะปิ กรุงเทพมหานคร', '19.03182617151414', '99.93300027259663', '2021-09-30 03:31:27', '2021-09-30 03:31:27'),
(7, 'all', '1', 'บริษัท จัสมิน อินเตอร์เนชั่นแนล จำกัด (มหาชน) และบริษัทในเครือ', '1632999550.chris.jpg', 'Programmer (PHP / JAVA)', 'หลายอัตรา', '20,000 - 30,000', 'pasttime', 'wfh', '2021-09-30', '2021-10-07', 'พิจารณาโบนัส, พิจารณาปรับเงินเดือนประจำปี\r\nค่ารักษาพยาบาล (OPD),ประกันสังคม, ประกันอุบัติเหตุ, ค่าทำฟัน, ประกันชีวิต\r\nตรวจสุขภาพประจำปี, งานสังสรรค์ประจำปี\r\nวันหยุดพักผ่อนประจำปี, เครื่องแบบพนักงาน\r\nเงินช่วยเหลือต่าง ๆ และสวัสดิการอื่น ๆ', 'ฝ่ายทรัพยากรบุคคล\r\nบริษัท จัสมิน อินเตอร์เนชั่นแนล จำกัด (มหาชน) และบริษัทในเครือ\r\nอาคารจัสมิน อินเตอร์เนชั่นแนลทาวเวอร์ ชั้น M\r\nเลขที่ 200 หมู่ 4 ถ.แจ้งวัฒนะ\r\nตำบลปากเกร็ด อำเภอปากเกร็ด จังหวัดนนทบุรี 11120\r\nโทรศัพท์ : 02-100-3039, 02-100-3064', 'อ.ปากเกร็ด จ.นนทบุรี', '19.02732959456551', '99.92946237320609', '2021-09-30 03:59:10', '2021-09-30 03:59:10'),
(8, 'all', '1', 'เครือบริษัท ไทยฟู้ดส์ กรุ๊ป จำกัด (มหาชน)', '1632999782.dofamingo.jpg', 'Sernior Developer (Web App) รับด่วน !!!', 'หลายอัตรา', 'ตามประสบการณ์และความสามารถ', 'pasttime', 'wfh', '2021-09-30', '2021-10-08', '- เบี้ยขยัน/เบี้ยเลี้ยง/Incentive\r\n- ค่าล่วงเวลา\r\n- ค่ากะงาน\r\n- ค่าอาหารกลางวัน\r\n- ค่าส่งสินค้า', 'แผนกสรรหาว่าจ้าง ฝ่ายบริหารทรัพยากรบุคคล\r\nเครือบริษัท ไทยฟู้ดส์ กรุ๊ป จำกัด (มหาชน)\r\nชั้น 12 เลขที่ 1010 ถนนวิภาวดีรังสิต\r\nแขวงจตุจักร เขตจตุจักร กรุงเทพมหานคร 10900\r\nโทรศัพท์ : 02-513-8989 ต่อ 300 , 089-900-1424 , 089-900-2996', 'เขตจตุจักร กรุงเทพมหานคร', '19.03040075865527', '99.93097513264921', '2021-09-30 04:03:02', '2021-09-30 04:03:02'),
(9, 'all', '1', 'Tradition Brokers (Thailand) Limited', '1633000096.foxy.png', 'Web Developer (React)', '1', 'ไม่ระบุ', 'pasttime', 'company', '2021-09-30', '2021-09-30', '- Bonus\r\n- Aetna\r\n- Business Trip', 'Project Manager\r\nTradition Brokers (Thailand) Limited\r\n4 ซอย 2 ถนนสุขเกษม\r\nตำบลสุเทพ อำเภอเมืองเชียงใหม่ จังหวัดเชียงใหม่ 50200\r\nโทรศัพท์ : 053-216-510', 'อ.เมืองเชียงใหม่ จ.เชียงใหม่', '19.025681701769884', '99.9308907866788', '2021-09-30 04:08:16', '2021-09-30 04:08:16'),
(10, 'all', '1', 'Jeweal Prosoft Co., Ltd.', '1633000198.new_grade.png', 'Programmer / Web Developer', '2', 'According to the company\'s structure and experiences', 'pasttime', 'wfh', '2021-10-01', '2021-10-08', '- Bonus.\r\n- Staff welfare.\r\n- 10 Days vacation.\r\n- Flexible work hours', 'คุณจิตต์ศุลี\r\nJeweal Prosoft Co., Ltd.\r\nอาคารเจมส์ทาวเวอร์ ซอยเจริญกรุง 47/3 ถนนเจริญกรุง\r\nแขวงสุริยวงศ์ เขตบางรัก กรุงเทพมหานคร 10500\r\nโทรศัพท์ : 02-267-4925\r\nแฟกซ์ : 02-267-4925', 'เขตบางรัก กรุงเทพมหานคร', '19.031215273806403', '99.94058296919285', '2021-09-30 04:09:58', '2021-09-30 04:09:58'),
(11, 'all', '1', 'P.R. Recruitment and Business Management Co., Ltd.', '1633000297.roger.jpg', 'Web Developer (Vuejs)', '3', '30K-60K', 'fulltime', 'wfh', '2021-09-30', '2021-10-08', '- ประกันสังคม\r\n- ประกันสุขภาพ\r\n- กองทุนสำรองเลี้ยงชีพ (Provident Fund)\r\n- ลาพักร้อน 10 วัน/ปี\r\n- สวัสดิการอื่นๆ', 'Khun Tanarak Tanawat\r\nP.R. Recruitment and Business Management Co., Ltd.\r\n2034/82 Ital-Thai Tower 18th Fl., New Petchburi Rd.\r\nแขวงห้วยขวาง เขตห้วยขวาง กรุงเทพมหานคร 10320\r\nโทรศัพท์ : 02-716-000', 'เขตห้วยขวาง กรุงเทพมหานคร', '19.028279475911663', '99.93503448521238', '2021-09-30 04:11:37', '2021-09-30 04:11:37');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_14_175547_create_applicants_table', 1),
(8, '2021_08_15_073132_create_entrepreneus_table', 4),
(9, '2021_08_20_110114_create_histories_table', 5),
(10, '2021_08_25_080833_create_portfolios_table', 6),
(11, '2021_08_25_083254_create_histories_table', 7),
(14, '2021_09_03_120552_create_ent__profiles_table', 10),
(17, '2021_08_31_072808_create_jobs_searches_table', 13),
(18, '2021_09_22_075048_create_my_jobs_table', 14),
(19, '2021_08_27_151832_create_histories_table', 15),
(20, '2021_09_29_132244_create_save_applicants_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `my_jobs`
--

CREATE TABLE `my_jobs` (
  `myjobs_id` int(10) UNSIGNED NOT NULL,
  `history_id` int(11) NOT NULL,
  `action_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `myjobs_name_company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `myjobs_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `myjobs_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `myjobs_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `myjobs_salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `myjobs_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `myjobs_location_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `myjobs_start_post` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `myjobs_stop_post` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `myjobs_detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `myjobs_contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `myjobs_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `myjobs_lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `myjobs_lng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_jobs`
--

INSERT INTO `my_jobs` (`myjobs_id`, `history_id`, `action_type`, `user_id`, `a_id`, `myjobs_name_company`, `myjobs_logo`, `myjobs_name`, `myjobs_quantity`, `myjobs_salary`, `myjobs_type`, `myjobs_location_work`, `myjobs_start_post`, `myjobs_stop_post`, `myjobs_detail`, `myjobs_contact`, `myjobs_address`, `myjobs_lat`, `myjobs_lng`, `created_at`, `updated_at`) VALUES
(80, 2, 'FavoriteJobs', 'all', '1', 'คลิกนิก เฮลท์', '1632299332.sticker-png-one-piece-logo.png', 'Mobile Application Develper', '1', 'ตามประสบการณ์ 0-5 ปี (20,000 - 50,000)', 'fulltime', 'company', '2021-09-22', '2021-09-29', '- เวลาทำงานแบบ flexible (เลือกเวลาเองได้)\r\n- ประกันสังคม\r\n- โบนัสตามผลประกอบการ\r\n- ค่าตรวจสุขภาพประจำปี\r\n- ค่าเครื่องดื่มฟรีตอนเช้า\r\n- วันหยุดพักร้อน', 'คุณฝ้าย\r\nคลิกนิก เฮลท์\r\n626 อาคาร บี.บี.ดี. ชั้น 7 ซอยจินดาถวิล\r\nถนนพระรามที่ 4\r\nแขวงมหาพฤฒาราม เขตบางรัก กรุงเทพมหานคร 10500\r\nโทรศัพท์ : 098-832-7832', 'เขตบางรัก กรุงเทพมหานคร', '13.730680122641441', '100.58982854481582', '2021-09-29 03:26:44', '2021-09-29 03:26:44'),
(82, 2, 'FavoriteJobs', 'all', '1', 'คลิกนิก เฮลท์', '1632299332.sticker-png-one-piece-logo.png', 'Mobile Application Develper', '1', 'ตามประสบการณ์ 0-5 ปี (20,000 - 50,000)', 'fulltime', 'company', '2021-09-22', '2021-09-29', '- เวลาทำงานแบบ flexible (เลือกเวลาเองได้)\r\n- ประกันสังคม\r\n- โบนัสตามผลประกอบการ\r\n- ค่าตรวจสุขภาพประจำปี\r\n- ค่าเครื่องดื่มฟรีตอนเช้า\r\n- วันหยุดพักร้อน', 'คุณฝ้าย\r\nคลิกนิก เฮลท์\r\n626 อาคาร บี.บี.ดี. ชั้น 7 ซอยจินดาถวิล\r\nถนนพระรามที่ 4\r\nแขวงมหาพฤฒาราม เขตบางรัก กรุงเทพมหานคร 10500\r\nโทรศัพท์ : 098-832-7832', 'เขตบางรัก กรุงเทพมหานคร', '13.730680122641441', '100.58982854481582', '2021-09-29 03:40:33', '2021-09-29 03:40:33'),
(83, 2, 'FavoriteJobs', 'all', '1', 'บริษัท ธเนศพัฒนา จำกัด', '1632299815.Jollyroger_Red-Haired Pirates_Shanks_pirateonepiece.blogspot.com.jpg', 'Programmer', '1', 'ไม่ระบุ', 'pasttime', 'wfh', '2021-09-22', '2021-09-30', '- เบี้ยขยัน\r\n- โบนัสประจำปี (ตามผลประกอบการ)\r\n- สวัสดิการประกันสังคม\r\n- กองทุนเงินทดแทน\r\n- เงินช่วยเหลือสวัสดิการพนักงาน\r\n- งานเลี้ยงประจำปี และเสื้อยูนิฟอร์ม', 'คุณศศินภา ศิริสุข (แผนกทรัพยากรบุคคล)\r\nบริษัท ธเนศพัฒนา จำกัด\r\n61/34 ซอยอมรพันธ์ 4 (วิภาวดี 42) ถนนวิภาวดีรังสิต\r\nแขวงลาดยาว เขตจตุจักร กรุงเทพมหานคร 10900\r\nโทรศัพท์ : 02-791-4500\r\nแฟกซ์ : 02-791-4538-9', 'เขตจตุจักร กรุงเทพมหานคร', '13.8380346386069', '100.75147603474454', '2021-09-29 03:41:48', '2021-09-29 03:41:48'),
(85, 2, 'ApproveForm', 'all', '4', 'คลิกนิก เฮลท์', '1632299332.sticker-png-one-piece-logo.png', 'Mobile Application Develper', '1', 'ตามประสบการณ์ 0-5 ปี (20,000 - 50,000)', 'fulltime', 'company', '2021-09-22', '2021-09-29', '- เวลาทำงานแบบ flexible (เลือกเวลาเองได้)\r\n- ประกันสังคม\r\n- โบนัสตามผลประกอบการ\r\n- ค่าตรวจสุขภาพประจำปี\r\n- ค่าเครื่องดื่มฟรีตอนเช้า\r\n- วันหยุดพักร้อน', 'คุณฝ้าย\r\nคลิกนิก เฮลท์\r\n626 อาคาร บี.บี.ดี. ชั้น 7 ซอยจินดาถวิล\r\nถนนพระรามที่ 4\r\nแขวงมหาพฤฒาราม เขตบางรัก กรุงเทพมหานคร 10500\r\nโทรศัพท์ : 098-832-7832', 'เขตบางรัก กรุงเทพมหานคร', '13.730680122641441', '100.58982854481582', '2021-09-29 06:37:07', '2021-09-29 06:37:34'),
(86, 2, 'ApproveForm', 'all', '4', 'บริษัท ธเนศพัฒนา จำกัด', '1632299815.Jollyroger_Red-Haired Pirates_Shanks_pirateonepiece.blogspot.com.jpg', 'Programmer', '1', 'ไม่ระบุ', 'pasttime', 'wfh', '2021-09-22', '2021-09-30', '- เบี้ยขยัน\r\n- โบนัสประจำปี (ตามผลประกอบการ)\r\n- สวัสดิการประกันสังคม\r\n- กองทุนเงินทดแทน\r\n- เงินช่วยเหลือสวัสดิการพนักงาน\r\n- งานเลี้ยงประจำปี และเสื้อยูนิฟอร์ม', 'คุณศศินภา ศิริสุข (แผนกทรัพยากรบุคคล)\r\nบริษัท ธเนศพัฒนา จำกัด\r\n61/34 ซอยอมรพันธ์ 4 (วิภาวดี 42) ถนนวิภาวดีรังสิต\r\nแขวงลาดยาว เขตจตุจักร กรุงเทพมหานคร 10900\r\nโทรศัพท์ : 02-791-4500\r\nแฟกซ์ : 02-791-4538-9', 'เขตจตุจักร กรุงเทพมหานคร', '13.8380346386069', '100.75147603474454', '2021-09-29 06:37:15', '2021-09-30 02:00:03'),
(88, 2, 'RejectForm', 'all', '5', 'บริษัท ซอฟท์ไทย แอพลิเคชั่น จำกัด', '1632818433.kaido.jpg', '.Net Programmer', '2', '20,000 - 50,000 ตามประสบการณ์ และทักษะ', 'fulltime', 'wfh', '2021-09-28', '2021-10-05', '- ประกันสังคม\r\n- ประกันสุขภาพ\r\n- Fitness room\r\n- ตรวจสุภาพประจำปี\r\n- เงินขยัน กรณีไม่ลาในเดือนนั้น\r\n- สวัสดิการเงิน OT\r\n- เงินช่วยเหลืองานสำคัญ (งานแต่งงาน,งานบวช และงานศพ)\r\n- เสื้อบริษัท', 'คุณวาสนา ทรงมะลิลา\r\nบริษัท ซอฟท์ไทย แอพลิเคชั่น จำกัด\r\n8 ซอยขวัญพัฒนา 2 ถนนดินแดง\r\nแขวงดินแดง เขตดินแดง กรุงเทพมหานคร 10400\r\nโทรศัพท์ : 063-905-5838, 063-905-5839\r\nแฟกซ์ : 02-641-6503', 'เขตดินแดง กรุงเทพมหานคร', '19.527061090791427', '100.30473042841527', '2021-09-29 21:46:29', '2021-09-30 02:03:43'),
(89, 2, 'ApproveForm', 'all', '4', 'คลิกนิก เฮลท์', '1632299332.sticker-png-one-piece-logo.png', 'Mobile Application Develper', '1', 'ตามประสบการณ์ 0-5 ปี (20,000 - 50,000)', 'fulltime', 'company', '2021-09-22', '2021-09-29', '- เวลาทำงานแบบ flexible (เลือกเวลาเองได้)\r\n- ประกันสังคม\r\n- โบนัสตามผลประกอบการ\r\n- ค่าตรวจสุขภาพประจำปี\r\n- ค่าเครื่องดื่มฟรีตอนเช้า\r\n- วันหยุดพักร้อน', 'คุณฝ้าย\r\nคลิกนิก เฮลท์\r\n626 อาคาร บี.บี.ดี. ชั้น 7 ซอยจินดาถวิล\r\nถนนพระรามที่ 4\r\nแขวงมหาพฤฒาราม เขตบางรัก กรุงเทพมหานคร 10500\r\nโทรศัพท์ : 098-832-7832', 'เขตบางรัก กรุงเทพมหานคร', '13.730680122641441', '100.58982854481582', '2021-09-30 02:31:32', '2021-09-30 02:31:42'),
(90, 2, 'FavoriteJobs', 'all', '1', 'บริษัท นิปโป เทค (ไทยแลนด์) จำกัด', '1632997887.black.png', 'โปรแกรมเมอร์', '3', '15,000 -45,000', 'fulltime', 'company', '2021-09-30', '2021-10-07', 'เงินเดือน\r\nคอมมิชชั่น\r\nประกันสังคม', 'คุณใหม่\r\nบริษัท นิปโป เทค (ไทยแลนด์) จำกัด\r\n44 ซ.รามคำแหง 187 แยก 2\r\nแขวงมีนบุรี เขตมีนบุรี กรุงเทพมหานคร 10510\r\nโทรศัพท์ : 02-518-1314,098-372-1669', 'เขตบางกะปิ กรุงเทพมหานคร', '19.03182617151414', '99.93300027259663', '2021-09-30 04:16:07', '2021-09-30 04:16:07'),
(92, 2, 'AppliForm', 'all', '2', 'บริษัท นิปโป เทค (ไทยแลนด์) จำกัด', '1632997887.black.png', 'โปรแกรมเมอร์', '3', '15,000 -45,000', 'fulltime', 'company', '2021-09-30', '2021-10-07', 'เงินเดือน\r\nคอมมิชชั่น\r\nประกันสังคม', 'คุณใหม่\r\nบริษัท นิปโป เทค (ไทยแลนด์) จำกัด\r\n44 ซ.รามคำแหง 187 แยก 2\r\nแขวงมีนบุรี เขตมีนบุรี กรุงเทพมหานคร 10510\r\nโทรศัพท์ : 02-518-1314,098-372-1669', 'เขตบางกะปิ กรุงเทพมหานคร', '19.03182617151414', '99.93300027259663', '2021-09-30 04:17:33', '2021-09-30 04:17:33'),
(93, 2, 'AppliForm', 'all', '2', 'คลิกนิก เฮลท์', '1632299332.sticker-png-one-piece-logo.png', 'Mobile Application Develper', '1', 'ตามประสบการณ์ 0-5 ปี (20,000 - 50,000)', 'fulltime', 'company', '2021-09-22', '2021-09-29', '- เวลาทำงานแบบ flexible (เลือกเวลาเองได้)\r\n- ประกันสังคม\r\n- โบนัสตามผลประกอบการ\r\n- ค่าตรวจสุขภาพประจำปี\r\n- ค่าเครื่องดื่มฟรีตอนเช้า\r\n- วันหยุดพักร้อน', 'คุณฝ้าย\r\nคลิกนิก เฮลท์\r\n626 อาคาร บี.บี.ดี. ชั้น 7 ซอยจินดาถวิล\r\nถนนพระรามที่ 4\r\nแขวงมหาพฤฒาราม เขตบางรัก กรุงเทพมหานคร 10500\r\nโทรศัพท์ : 098-832-7832', 'เขตบางรัก กรุงเทพมหานคร', '13.730680122641441', '100.58982854481582', '2021-09-30 04:17:49', '2021-09-30 04:17:49'),
(94, 2, 'FavoriteJobs', 'all', '1', 'คลิกนิก เฮลท์', '1632299332.sticker-png-one-piece-logo.png', 'Mobile Application Develper', '1', 'ตามประสบการณ์ 0-5 ปี (20,000 - 50,000)', 'fulltime', 'company', '2021-09-22', '2021-09-29', '- เวลาทำงานแบบ flexible (เลือกเวลาเองได้)\r\n- ประกันสังคม\r\n- โบนัสตามผลประกอบการ\r\n- ค่าตรวจสุขภาพประจำปี\r\n- ค่าเครื่องดื่มฟรีตอนเช้า\r\n- วันหยุดพักร้อน', 'คุณฝ้าย\r\nคลิกนิก เฮลท์\r\n626 อาคาร บี.บี.ดี. ชั้น 7 ซอยจินดาถวิล\r\nถนนพระรามที่ 4\r\nแขวงมหาพฤฒาราม เขตบางรัก กรุงเทพมหานคร 10500\r\nโทรศัพท์ : 098-832-7832', 'เขตบางรัก กรุงเทพมหานคร', '13.730680122641441', '100.58982854481582', '2021-09-30 04:18:23', '2021-09-30 04:18:23'),
(95, 2, 'FavoriteJobs', 'all', '1', 'บริษัท กรุงเทพดรักสโตร์ จำกัด', '1632997621.bakee.png', 'Junior Andriod Developer', '1', 'ตามโครงสร้างของบริษัท', 'fulltime', 'company', '2021-09-30', '2021-10-07', 'โอกาสเป็นเจ้าของกิจการ “ร้านยากรุงเทพ” ตามเงื่อนไขที่บริษัทกำหนด\r\nประกันสังคม\r\nประกันสุขภาพ ประกันชีวิต และประกันอุบัติเหตุ\r\nวันหยุดพักผ่อน\r\nวันหยุดตามเทศกาล\r\nสามารถเบิกยารักษาโรค กรณีเจ็บป่วยระหว่างปฏิบัติงาน\r\nซื้อสินค้าราคาพนักงาน', 'ฝ่ายการพนักงาน\r\nบริษัท กรุงเทพดรักสโตร์ จำกัด\r\n2585/2 ใกล้ปากซอยลาดพร้าว87 ถนนลาดพร้าว\r\nแขวงคลองเจ้าคุณสิงห์ เขตวังทองหลาง กรุงเทพมหานคร 10310\r\nโทรศัพท์ : 02-538-7900\r\nแฟกซ์ : 02-538-5505', 'เขตวังทองหลาง กรุงเทพมหานคร', '19.035786467904188', '99.93155649557413', '2021-09-30 04:19:01', '2021-09-30 04:19:01'),
(98, 2, 'AppliForm', 'all', '2', 'บริษัท กรุงเทพดรักสโตร์ จำกัด', '1632997621.bakee.png', 'Junior Andriod Developer', '1', 'ตามโครงสร้างของบริษัท', 'fulltime', 'company', '2021-09-30', '2021-10-07', 'โอกาสเป็นเจ้าของกิจการ “ร้านยากรุงเทพ” ตามเงื่อนไขที่บริษัทกำหนด\r\nประกันสังคม\r\nประกันสุขภาพ ประกันชีวิต และประกันอุบัติเหตุ\r\nวันหยุดพักผ่อน\r\nวันหยุดตามเทศกาล\r\nสามารถเบิกยารักษาโรค กรณีเจ็บป่วยระหว่างปฏิบัติงาน\r\nซื้อสินค้าราคาพนักงาน', 'ฝ่ายการพนักงาน\r\nบริษัท กรุงเทพดรักสโตร์ จำกัด\r\n2585/2 ใกล้ปากซอยลาดพร้าว87 ถนนลาดพร้าว\r\nแขวงคลองเจ้าคุณสิงห์ เขตวังทองหลาง กรุงเทพมหานคร 10310\r\nโทรศัพท์ : 02-538-7900\r\nแฟกซ์ : 02-538-5505', 'เขตวังทองหลาง กรุงเทพมหานคร', '19.035786467904188', '99.93155649557413', '2021-09-30 04:53:54', '2021-09-30 04:53:54'),
(100, 2, 'AppliForm', 'all', '2', 'คลิกนิก เฮลท์', '1632299332.sticker-png-one-piece-logo.png', 'Mobile Application Develper', '1', 'ตามประสบการณ์ 0-5 ปี (20,000 - 50,000)', 'fulltime', 'company', '2021-09-22', '2021-09-29', '- เวลาทำงานแบบ flexible (เลือกเวลาเองได้)\r\n- ประกันสังคม\r\n- โบนัสตามผลประกอบการ\r\n- ค่าตรวจสุขภาพประจำปี\r\n- ค่าเครื่องดื่มฟรีตอนเช้า\r\n- วันหยุดพักร้อน', 'คุณฝ้าย\r\nคลิกนิก เฮลท์\r\n626 อาคาร บี.บี.ดี. ชั้น 7 ซอยจินดาถวิล\r\nถนนพระรามที่ 4\r\nแขวงมหาพฤฒาราม เขตบางรัก กรุงเทพมหานคร 10500\r\nโทรศัพท์ : 098-832-7832', 'เขตบางรัก กรุงเทพมหานคร', '13.730680122641441', '100.58982854481582', '2021-09-30 04:59:57', '2021-09-30 04:59:57'),
(101, 2, 'AppliForm', 'all', '3', 'คลิกนิก เฮลท์', '1632299332.sticker-png-one-piece-logo.png', 'Mobile Application Develper', '1', 'ตามประสบการณ์ 0-5 ปี (20,000 - 50,000)', 'fulltime', 'company', '2021-09-22', '2021-09-29', '- เวลาทำงานแบบ flexible (เลือกเวลาเองได้)\r\n- ประกันสังคม\r\n- โบนัสตามผลประกอบการ\r\n- ค่าตรวจสุขภาพประจำปี\r\n- ค่าเครื่องดื่มฟรีตอนเช้า\r\n- วันหยุดพักร้อน', 'คุณฝ้าย\r\nคลิกนิก เฮลท์\r\n626 อาคาร บี.บี.ดี. ชั้น 7 ซอยจินดาถวิล\r\nถนนพระรามที่ 4\r\nแขวงมหาพฤฒาราม เขตบางรัก กรุงเทพมหานคร 10500\r\nโทรศัพท์ : 098-832-7832', 'เขตบางรัก กรุงเทพมหานคร', '13.730680122641441', '100.58982854481582', '2021-09-30 05:00:31', '2021-10-01 03:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `save_applicants`
--

CREATE TABLE `save_applicants` (
  `save_app_id` int(10) UNSIGNED NOT NULL,
  `history_id` int(11) NOT NULL,
  `name_prefix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_old` int(11) NOT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `university` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gpa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `educational` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dominant_language` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_learned` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `charisma` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `portfolio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_village` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alley` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `road` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `canton` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_name_village` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_home_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_alley` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_road` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_canton` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `save_applicants`
--

INSERT INTO `save_applicants` (`save_app_id`, `history_id`, `name_prefix`, `first_name`, `last_name`, `email`, `phone_number`, `birthday`, `year_old`, `profile`, `university`, `faculty`, `branch`, `gpa`, `educational`, `experience`, `dominant_language`, `language_learned`, `charisma`, `portfolio`, `name_village`, `home_number`, `alley`, `road`, `district`, `canton`, `province`, `postal_code`, `my_name_village`, `my_home_number`, `my_alley`, `my_road`, `my_district`, `my_canton`, `my_province`, `my_postal_code`, `created_at`, `updated_at`) VALUES
(1, 2, 'นาย', 'ภาณุวัฒน์', 'มังสังข์', 'panuwatmangsang@gmail.com', '0954967179', '11/25/1998', 23, '1632653282.panuwatmangsang.jpg', 'มหาวิทยาลัยพะเยา', 'เทคโนโลยีสารสนเทศและการสื่อสาร', 'วิทยาการคอมพิวเตอร์', '3.31', 'ปริญญาตรี', 'ไม่มี', 'php css html', 'php css js java html python c#', 'เรียนรู้ภาษาได้ดี', '1632653282.Mr.Panuwat Mangsang.pdf', 'สันเหมือง', '12', '-', '-', 'หนองล่อง', 'เวียงหนองล่อง', 'ลำพูน', '51120', 'สันเหมือง', '12', '-', '-', 'หนองล่อง', 'เวียงหนองล่อง', 'ลำพูน', '51120', '2021-09-29 08:13:18', '2021-09-29 08:13:18'),
(2, 2, 'นาย', 'ภาณุวัฒน์', 'มังสังข์', 'panuwatmangsang@gmail.com', '0954967179', '11/25/1998', 23, '1632653282.panuwatmangsang.jpg', 'มหาวิทยาลัยพะเยา', 'เทคโนโลยีสารสนเทศและการสื่อสาร', 'วิทยาการคอมพิวเตอร์', '3.31', 'ปริญญาตรี', 'ไม่มี', 'php css html', 'php css js java html python c#', 'เรียนรู้ภาษาได้ดี', '1632653282.Mr.Panuwat Mangsang.pdf', 'สันเหมือง', '12', '-', '-', 'หนองล่อง', 'เวียงหนองล่อง', 'ลำพูน', '51120', 'สันเหมือง', '12', '-', '-', 'หนองล่อง', 'เวียงหนองล่อง', 'ลำพูน', '51120', '2021-09-29 08:14:51', '2021-09-29 08:14:51'),
(3, 2, 'นาย', 'ภาณุวัฒน์', 'มังสังข์', 'panuwatmangsang@gmail.com', '0954967179', '11/25/1998', 23, '1632653282.panuwatmangsang.jpg', 'มหาวิทยาลัยพะเยา', 'เทคโนโลยีสารสนเทศและการสื่อสาร', 'วิทยาการคอมพิวเตอร์', '3.31', 'ปริญญาตรี', 'ไม่มี', 'php css html', 'php css js java html python c#', 'เรียนรู้ภาษาได้ดี', '1632653282.Mr.Panuwat Mangsang.pdf', 'สันเหมือง', '12', '-', '-', 'หนองล่อง', 'เวียงหนองล่อง', 'ลำพูน', '51120', 'สันเหมือง', '12', '-', '-', 'หนองล่อง', 'เวียงหนองล่อง', 'ลำพูน', '51120', '2021-09-29 08:18:27', '2021-09-29 08:18:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `entrepreneus`
--
ALTER TABLE `entrepreneus`
  ADD PRIMARY KEY (`ent_id`);

--
-- Indexes for table `ent__profiles`
--
ALTER TABLE `ent__profiles`
  ADD PRIMARY KEY (`profile_company_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `jobs_searches`
--
ALTER TABLE `jobs_searches`
  ADD PRIMARY KEY (`jobs_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_jobs`
--
ALTER TABLE `my_jobs`
  ADD PRIMARY KEY (`myjobs_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `save_applicants`
--
ALTER TABLE `save_applicants`
  ADD PRIMARY KEY (`save_app_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `app_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `entrepreneus`
--
ALTER TABLE `entrepreneus`
  MODIFY `ent_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ent__profiles`
--
ALTER TABLE `ent__profiles`
  MODIFY `profile_company_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `history_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs_searches`
--
ALTER TABLE `jobs_searches`
  MODIFY `jobs_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `my_jobs`
--
ALTER TABLE `my_jobs`
  MODIFY `myjobs_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `save_applicants`
--
ALTER TABLE `save_applicants`
  MODIFY `save_app_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
