-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 28, 2024 at 02:17 AM
-- Server version: 8.0.36-cll-lve
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elitedesignbd_ngo`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint UNSIGNED NOT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `link`, `designation`, `mobile`, `ads`, `type`, `created_at`, `updated_at`) VALUES
(112, 'Tushar Barman', 'Sr. Teacher', '017XXXXXXXXX', 'public/ads/6568338433577.jpg', 1, NULL, NULL),
(114, 'Rashida Khatun', 'Sr. Teacher', '017XXXXXXXXX', 'public/ads/656833e53d7bc.jpeg', 1, NULL, NULL),
(115, 'Nasrin Akhter', 'Sr. Teacher', '017XXXXXXXXX', 'public/ads/65683405228cd.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_bn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `soft_delete` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_bn`, `category_en`, `soft_delete`, `created_at`, `updated_at`) VALUES
(18, 'Press Relese', 'Press Relese', '0', NULL, NULL),
(19, 'Blog', 'Blog', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint UNSIGNED NOT NULL,
  `district_bn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `district_bn`, `district_en`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 'ঢাকা', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `livetv`
--

CREATE TABLE `livetv` (
  `id` bigint UNSIGNED NOT NULL,
  `embed_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `livetv`
--

INSERT INTO `livetv` (`id`, `embed_code`, `status`, `created_at`, `updated_at`) VALUES
(1, '<iframe width=\"300\" height=\"220\" src=\"https://www.youtube.com/embed/oqGO941aZAc\" title=\"রাতের আঁধারে সক্রিয় অবরোধকারীরা | BNP Oborodh | Fire in Bus | Somoy TV\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_16_115107_create_categories_table', 1),
(5, '2020_04_16_115141_create_subcategories_table', 1),
(6, '2020_04_29_153713_create_districts_table', 1),
(7, '2020_04_29_153726_create_subdistricts_table', 1),
(8, '2020_04_30_102439_create_posts_table', 1),
(9, '2020_05_31_131832_create_socials_table', 1),
(10, '2020_05_31_131923_create_seos_table', 1),
(11, '2020_05_31_134432_create_namaz_table', 1),
(12, '2020_05_31_135413_create_livetv_table', 1),
(13, '2020_06_01_150304_create_notices_table', 1),
(14, '2020_06_01_151613_create_websites_table', 1),
(15, '2020_06_10_224008_create_photos_table', 1),
(16, '2020_06_10_225639_create_videos_table', 1),
(17, '2020_07_03_125924_create_ads_table', 1),
(18, '2020_07_05_082330_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `namaz`
--

CREATE TABLE `namaz` (
  `id` bigint UNSIGNED NOT NULL,
  `fajr` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `johr` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asor` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `magrib` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `esha` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jummah` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `namaz`
--

INSERT INTO `namaz` (`id`, `fajr`, `johr`, `asor`, `magrib`, `esha`, `jummah`, `created_at`, `updated_at`) VALUES
(1, '৫.৩০ মিনিট', '১.৩০ মিনিট', '৪ টা', '৬ টা', '৭.৩০ মিনিট', '১.৪০ মিনিট', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint UNSIGNED NOT NULL,
  `notice` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `notice`, `status`, `created_at`, `updated_at`) VALUES
(1, 'আমাদের ওয়েব সাইটের সার্বিক উন্নয়ন এর কাজ চলছে। কাজ চলাকালীন অবস্থায় , আপনাদের সাময়িকভাবে কিছুটা অসুবিধা হতে পারে এর জন্য আমরা আন্তরিকভাবে দুক্ষিত । আমাদের ওয়েবসাইট উন্নয়নের কাজটি আগামিকাল শেষ হবে। আমাদের সাথে থাকার জন্য ধন্যবাদ।', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint UNSIGNED NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `photo`, `title`, `type`, `created_at`, `updated_at`) VALUES
(42, 'public/photos_gallery/656821496f4d1.jpg', 'Bangabandhu with his family', '0', NULL, NULL),
(43, 'public/photos_gallery/6568216ca0f97.png', 'Bangla Literary Conference (February, 1974)', '0', NULL, NULL),
(44, 'public/photos_gallery/65682187ea5e2.jpeg', '1971-4april', '0', NULL, NULL),
(45, 'public/photos_gallery/656821aeefd82.png', 'Visiting Egyptian trade mission', '0', NULL, NULL),
(46, 'public/photos_gallery/656821cd335f1.jpeg', '7march', '0', NULL, NULL),
(47, 'public/photos_gallery/656821ea54d6b.jpg', 'Bangabandhu’s birthday', '0', NULL, NULL),
(48, 'public/photos_gallery/656cd7192d328.jpg', 'আলোকিত বন্ধু টেকনিক্যাল ট্রেনিং প্রোগ্রাম এর ২২ তম ব্যাচ', '1', NULL, NULL),
(50, 'public/photos_gallery/656cd76a1f78c.jpg', 'আলোকিত বন্ধু টেকনিক্যাল ট্রেনিং প্রোগ্রাম', '1', NULL, NULL),
(51, 'public/photos_gallery/656cd7964291f.jpg', 'পরিচালকের উপহার গ্রহন', '1', NULL, NULL),
(53, 'public/photos_gallery/656cd7e1dd9dc.jpg', 'আলোকিত বন্ধু টেকনিক্যাল ট্রেনিং প্রোগ্রাম এর ১৮ তম ব্যাচ', '1', NULL, NULL),
(54, 'public/photos_gallery/656cd842c4936.jpg', 'আলোকিত বন্ধু টেকনিক্যাল ট্রেনিং প্রোগ্রাম এর ট্রেইনার এর উপহার গ্রহন', '1', NULL, NULL),
(55, 'public/photos_gallery/656cd87af2fe0.jpg', 'আলোকিত বন্ধু টেকনিক্যাল ট্রেনিং প্রোগ্রাম এর ১৯ তম ব্যাচ', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `cat_id` int NOT NULL,
  `subcat_id` int DEFAULT NULL,
  `dist_id` int DEFAULT NULL,
  `subdist_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `title_bn` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_bn` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tags_bn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tags_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `headline` int DEFAULT NULL,
  `first_section` int DEFAULT NULL,
  `first_section_thumbnail` int DEFAULT NULL,
  `bigthumbnail` int DEFAULT NULL,
  `post_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_month` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `short_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `categoryhomepage` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `cat_id`, `subcat_id`, `dist_id`, `subdist_id`, `user_id`, `title_bn`, `title_en`, `image`, `details_en`, `details_bn`, `tags_bn`, `tags_en`, `headline`, `first_section`, `first_section_thumbnail`, `bigthumbnail`, `post_date`, `post_month`, `created_at`, `updated_at`, `short_details`, `categoryhomepage`) VALUES
(134, 18, 53, NULL, NULL, 1, 'Lorem Ispum', NULL, 'public/postimages/656e23c5d03c9.jpg', NULL, '<p>Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the unemployed youth self-reliant through financial assistance Accept the program; Providing various trainings to increase the efficiency of educated and uneducated unemployed women; Vegetables, fruits and other nutritious fruit trees for families to compensate for malnutrition Encouraging people to plant and arrange distribution of seeds and saplings; Locally produced vegetables and fruits and low cost nutritious food and baby food preparations Provide training; Formation of special funds through subscriptions, grants and To spend the said funds to implement the aims and objectives of the organization; Paying back money with dividend on the accumulated savings of the members at the end of the term; Providing subject-wise financial assistance including providing time-sensitive training.</p>', NULL, 'Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the', 1, 1, 1, 1, '04-12-2023', 'December', NULL, NULL, NULL, 1),
(135, 18, 53, NULL, NULL, 1, 'Lorem Ispum', NULL, 'public/postimages/656e2432da505.jpg', NULL, '<p><span style=\"font-size: 1rem;\">Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the unemployed youth self-reliant through financial assistance Accept the program; Providing various trainings to increase the efficiency of educated and uneducated unemployed women; Vegetables, fruits and other nutritious fruit trees for families to compensate for malnutrition Encouraging people to plant and arrange distribution of seeds and saplings; Locally produced vegetables and fruits and low cost nutritious food and baby food preparations Provide training; Formation of special funds through subscriptions, grants and To spend the said funds to implement the aims and objectives of the organization; Paying back money with dividend on the accumulated savings of the members at the end of the term; Providing subject-wise financial assistance including providing time-sensitive training.</span><br></p>', NULL, 'Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the', 1, 1, 1, 1, '04-12-2023', 'December', NULL, NULL, NULL, 1),
(136, 18, 53, NULL, NULL, 1, 'Lorem Ispum', NULL, 'public/postimages/656e246c309fd.jpg', NULL, '<p>Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the unemployed youth self-reliant through financial assistance Accept the program; Providing various trainings to increase the efficiency of educated and uneducated unemployed women; Vegetables, fruits and other nutritious fruit trees for families to compensate for malnutrition Encouraging people to plant and arrange distribution of seeds and saplings; Locally produced vegetables and fruits and low cost nutritious food and baby food preparations Provide training; Formation of special funds through subscriptions, grants and To spend the said funds to implement the aims and objectives of the organization; Paying back money with dividend on the accumulated savings of the members at the end of the term; Providing subject-wise financial assistance including providing time-sensitive training.<br></p>', NULL, 'Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the', 1, 1, 1, 1, '04-12-2023', 'December', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_author` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `google_analytics` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `google_verification` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alexa_analytics` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `service1_tittle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service2_tittle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service3_tittle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service4_tittle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service5_tittle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service6_tittle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service1_text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `service2_text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `service3_text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `service4_text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `service5_text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `service6_text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_author`, `meta_title`, `meta_keyword`, `meta_description`, `google_analytics`, `google_verification`, `alexa_analytics`, `service1_tittle`, `service2_tittle`, `service3_tittle`, `service4_tittle`, `service5_tittle`, `service6_tittle`, `service1_text`, `service2_text`, `service3_text`, `service4_text`, `service5_text`, `service6_text`, `created_at`, `updated_at`) VALUES
(1, 'ময়না ওয়েলফেয়ার ফাউন্ডেশন', 'Moyna Welfare Foundation', 'ময়না ওয়েলফেয়ার ফাউন্ডেশন', 'ময়না ওয়েলফেয়ার ফাউন্ডেশন', 'elitedesignd', NULL, 'elitedesignd', 'Microcredit Program', 'Business Development Program', 'Woman Help Service', 'Health Care', 'Others Work', 'Social Work', 'MAYNA WELLFARE FOUNDATION&nbsp; Is a Non-Government, voluntary, social welfare Organization has emerged from which is the initiatives of some like-minded dedicated social worker of our locality of under the district of Tangail. Since inception it has been working with a view to facilitate activities though social groups members learn to manage their affairs and respond to the unique and changing needs of their community rather than following a rigid model has an Executive Committee. The Executive Committee formed by the General Committee the 7 Members Executive Committee. The EC is responsible for overall management of the Organization. The Chairman is the Chief Executive of the Organization working of Districts has been providing for Group formation income generating and Employment Creation Health and family planning Fisheries Development program, Tree Plantation, Sanitary latrine program, Community based tube well installation, Nutrition and Nutrition food popularization campaign, Legal aid, Self employment for poultry, Human Resource Development Training, Mother and Child Care and women development. A well set up of staff, which has a lot of experiences to handle the respective project activities. All the staff is also well experienced to perform their duties and responsibilities perfectly.', '<div>1. Conducting any public welfare activities or charitable activities for the needy people;</div><div>2. Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the unemployed youth self-reliant through financial assistance Accept the program.</div><div>3. Providing various trainings to increase the efficiency of educated and uneducated unemployed women.</div><div>4. Vegetables, fruits and other nutritious fruit trees for families to compensate for malnutrition Encouraging people to plant and arrange distribution of seeds and saplings.</div><div>5. Locally produced vegetables and fruits and low cost nutritious food and baby food preparations Provide training.</div><div>6. Formation of special funds through subscriptions, grants and To spend the said funds to implement the aims and objectives of the organization.</div><div>7. Paying back money with dividend on the accumulated savings of the members at the end of the term.</div><div>8. Providing subject-wise financial assistance including providing time-sensitive training.bvvvvvvvvv</div>', '<div>The main task of this organization is to work for human rights. This group has been carrying the responsibility of restoring the rights of the disenfranchised since on the side of all professions or the side of the disenfranchised. To provide legal advice or legal aid to any class of people (help-helpless, women-children, rich-poor) free of cost. We provide legal assistance through the courts for those who apply for legal assistance through us. Our wise legal practitioners are always ready to provide you with legal advice and assistance.</div><div><br></div><div>1. You can call inbox or get free legal advice. The address or identity of the caller / complainant is kept confidential; 2. The admins consider resolving the issue through discussion through group chat; The case recorder records the case and takes the next step and sends the case to the court. Many fraudsters ask for money in the name of this group. If this happens, I will report it to the admin. Admins never accept money; 04. Attempts are made to resolve the issue through ADR. And at the same time the following actions are followed.</div><div><br></div><div># Assist the administration on the basis of communication with the administration and provide legal advice and assistance to the victims;</div><div><br></div><div># Take steps to bring corrupt people and those who plunder state resources under the law; Providing legal advice and assistance to fraudulent expatriates;</div><div><br></div><div># In order to create public awareness, meetings, seminars, discussion meetings, dramas etc. should be presented to the people;</div><div><br></div><div># Provide legal advice and assistance to people convicted without guilt; # Work to prevent child labor;</div><div><br></div><div># Provide legal advice and assistance to victims of child abuse, acid terrorism, child trafficking, child marriage and dowry prevention;</div><div><br></div><div># To ensure that no one is subjected to torture or cruel, inhuman or degrading treatment or punishment; ;</div><div><br></div><div># Everyone has the right to an adequate standard of living for the health and well-being of himself and his family This right includes access to food, clothing, shelter, medical care and other necessary social services and security in case of unemployment, illness, disability, widowhood, old age or other unavoidable circumstances. Everyone has the right to special care and assistance during maternity and childhood.</div><div><br></div><div># All children will enjoy the same social security, whether they are born out of wedlock or out of wedlock. Spreading this information among the common people.</div>', '<div>MAYNA WELLFARE FOUNDATION</div><div>Health Care\" is a voluntary work project for the welfare of the people. Many private, voluntary, social welfare, companies, cooperative societies, NGOs, organizations in Bangladesh are run on the initiative of like-minded social workers. Committed to health care and family planning, legal aid, mother and child care. There are many experiences. All staff are experienced in performing their duties and responsibilities perfectly. There is an executive committee and a general committee. The Executive Director of the Executive Committee is responsible for the overall management of Health Care\". Decentralized participation in the implementation of the program takes participatory management measures. The Executive Committee selects companies, co-operative societies, NGOs, organizations to formulate policies and implement programs. Appropriate for the implementation and management of the overall program led by all the policies of the Executive Committee. The management of each level is advised and encouraged to adopt creative solutions. The authorities of their respective organizations conduct Health Care\" activities through the initiative, independence and participation of their employees.</div><div><br></div><div>Goals and Objectives :</div><div>The goal of Health Care is to provide health care and assistance to vulnerable people, especially those at risk. The goal and objective is to work all over Bangladesh through the cooperation of various voluntary organizations, government, non-government and donor agencies.</div><div><br></div><div>1. To provide medical services to 25% to 100% of the members of the project.</div><div><br></div><div>2. To the poor and needy arranging eye camps including providing free medical services.</div><div><br></div><div>3. To provide medical services to the members by reducing the hospital bill from 25% to 100%. To provide comprehensive support to the medical services of the members at home / abroad especially in India.</div><div><br></div><div>3. Safe sanitation facilities as well as for children, orphans, tribal s and the poor and helpless To take necessary steps to ensure hygienic drainage system.</div><div>m,,,,,,,</div><div>4. Government as well as implementation of family planning and birth control programs and public awareness Undertaking promotional activities to increase. . In addition to the government, there is a need to expand maternal and child health and immunization programs Conduct activities.</div><div><br></div>', '<div>We are work for the welfare of the country and the people.bbbbbbb</div><div>Please Visit our website employment providers and job applicants for details.</div>', '<div>Since inception it has been working with a view to facilitate activities though social groups members learn to manage their affairs and respond to the unique and changing needs of their community rather than following a rigid model has an Executive Committee. The Chairman is the Chief Executive of the Organization working in Bangladesh. Has been providing for Group formation income generating and Employment Creation Health and family planning Fisheries Development program, Tree Plantation, Sanitary latrine program, Community based tube well installation, Nutrition and Nutrition food popularization campaign, Legal aid, Self employment for poultry, Human Resource Development Training, Mother and Child Care and women development. A well set up of staff, which has a lot of experiences to handle the respective project activities.mmnnnnnnnnnnbbbbbbbbbb</div>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_bn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone_bn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `favicon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner3` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `institute_info_short` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `institute_info_long` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `institute_history` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `institutehistoryimages` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobilelogo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebookpage` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `privacy` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `barch` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `service1_images` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service2_images` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service3_images` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service4_images` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service5_images` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service6_images` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `address_bn`, `address_en`, `phone_bn`, `phone_en`, `email`, `created_at`, `updated_at`, `favicon`, `baner1`, `baner2`, `baner3`, `institute_info_short`, `institute_info_long`, `institute_history`, `institutehistoryimages`, `mobilelogo`, `facebookpage`, `terms`, `privacy`, `barch`, `service1_images`, `service2_images`, `service3_images`, `service4_images`, `service5_images`, `service6_images`) VALUES
(1, 'public/ads/656d3cc72b5a0.png', 'Message &amp; Commercial Office: Adarsh ​​Para, Paur Kanthali, Ward No. 8, Bhola Sadar, Bhola.', 'Message &amp; Commercial Office: Adarsh ​​Para, Paur Kanthali, Ward No. 8, Bhola Sadar, Bhola.', '01775457008', 'www.elitedesign.com.bd', 'info@elitedesign.com.bd', NULL, NULL, 'public/ads/656e22eab5731.png', 'public/ads/656e1fa2d8cfe.jpg', 'public/ads/656e1fb010222.jpg', 'public/ads/656e22cc282d5.jpg', 'Bangladesh is one of the most overpopulated countries in the world. Life is very complicated here. Many people live in poverty. Basic needs to the poor people are not available. Otherwise, national problems like overpopulation, adverse natural calamities such as flood, cyclone etc., unemployment, illiteracy and political instability have deteriorated the situation seriously towards the growth of its economy up to the desired standard. The govt. alone is not sufficient to cope up with these complexities. It has become essential to think device way to deal multi-mode problems through a non-profitable voluntary organization. Hence, non-govt. Organizations with internal and external support have come forward with various urban and rural programs for the welfare of the poor people and community of Bangladesh. MAYNA WELLFARE Foundation Samojibi Samabaya Samiti Limited is a non-government, non-political and established on 29/10/2015 with a view to assist the improvement of the Socio-Economic status of the rural disadvantaged, unskilled and economically backward people. MAYNA WELLFARE FOUNDATION stands for Socio-Economic Association, In the year 2017 MAYNA WELLFARE FOUNDATION directly started its intervention at the field level, after having the legal status from the govt. of Bangladesh by providing various support and services to the destitute people of Bangladesh.', '<div><span style=\"color: rgb(51, 51, 63); font-family: roboto, sans-serif; font-size: 18px; white-space-collapse: preserve; background-color: rgb(248, 248, 248);\">শিক্ষাই জাতীর মেরুদন্ড, যে জাতী যত শিক্ষিত সে জাতী ততই উন্নত, তাই সাধারণ শিক্ষার পাশাপাশি কারিগরি শিক্ষার কোন বিকল্প নাই । আজ বাংলাদেশের প্রতিটি ঘরে ঘরে শিক্ষিত ছেলে-মেয়েরা * চাকুরীর জন্য বিভিন্ন প্রতিষ্ঠানের দ্বারে দ্বারে ঘুরছে, কিন্তু চাকুরী। কোথায়? তাই অনেক ছেলে-মেয়ে বেকারত্বের যন্ত্রনায় বখাটে হয়ে রাস্তায় যত অপকর্ম করে বেরাচ্ছে। আবার কেউ কেউ বেকারত্বের অভিষাপে আত্ম হত্যা করে নিজের জীবনের ইতি টানছে। তাই এই সমস্ত বেকার পুরুষ ও মহিলাদের জন্য আমাদের এই সেবামূলক প্রতিষ্ঠান। এই প্রতিষ্ঠানটি এ পর্যন্ত অনেক বেকার ছেলে-মেয়েদের কর্ম সংস্থান করে দিতে সক্ষম হয়েছে।\r\nএই কারিগরি প্রতিষ্ঠানটি সারা বাংলাদেশের বেকার যুব সমাজকে এগিয়ে নিয়ে যেতে সক্ষম হয়েছে।আমরা অভয় দিয়ে বলতে চাই আর বেকারত্ব নয়, আসুন হাতে কলমে কারিগরি শিক্ষা গ্রহণ করে নিজের বেকার জীবনকে নিজেই সাবলম্বী করি ।</span><div style=\"color: rgb(51, 51, 63); font-family: roboto, sans-serif; font-size: 18px; white-space-collapse: preserve;\">মহান সৃষ্টিকর্তা যেন আমাদের এই নেক নিয়ত কবুল করেন। আমিন ॥</div></div>', 'প্রতিষ্ঠানের ইতিহাস', 'public/ads/656e213092846.webp', 'public/ads/656c2d51cbd54.png', 'elitedesignbd', '<p>These terms and conditions outline the rules and regulations for the use of Alokito Bondhu Technical Training Program\'s Website, located at www.alokitobtp.com.</p>\r\n\r\n<p>By accessing this website we assume you accept these terms and conditions. Do not continue to use Alokito Bondhu Technical Training Program if you do not agree to take all of the terms and conditions stated on this page.</p>\r\n\r\n<p>The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: \"Client\", \"You\" and \"Your\" refers to you, the person log on this website and compliant to the Company\'s terms and conditions. \"The Company\", \"Ourselves\", \"We\", \"Our\" and \"Us\", refers to our Company. \"Party\", \"Parties\", or \"Us\", refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client\'s needs in respect of provision of the Company\'s stated services, in accordance with and subject to, prevailing law of bd. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p>\r\n\r\n<h3><strong>Cookies</strong></h3>\r\n\r\n<p>We employ the use of cookies. By accessing Alokito Bondhu Technical Training Program, you agreed to use cookies in agreement with the Alokito Bondhu Technical Training Program\'s Privacy Policy. </p>\r\n\r\n<p>Most interactive websites use cookies to let us retrieve the user\'s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p>\r\n\r\n<h3><strong>License</strong></h3>\r\n\r\n<p>Unless otherwise stated, Alokito Bondhu Technical Training Program and/or its licensors own the intellectual property rights for all material on Alokito Bondhu Technical Training Program. All intellectual property rights are reserved. You may access this from Alokito Bondhu Technical Training Program for your own personal use subjected to restrictions set in these terms and conditions.</p>\r\n\r\n<p>You must not:</p>\r\n<ul>\r\n    <li>Republish material from Alokito Bondhu Technical Training Program</li>\r\n    <li>Sell, rent or sub-license material from Alokito Bondhu Technical Training Program</li>\r\n    <li>Reproduce, duplicate or copy material from Alokito Bondhu Technical Training Program</li>\r\n    <li>Redistribute content from Alokito Bondhu Technical Training Program</li></ul>\r\n\r\n<p>Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. Alokito Bondhu Technical Training Program does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of Alokito Bondhu Technical Training Program,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, Alokito Bondhu Technical Training Program shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p>\r\n\r\n<p>Alokito Bondhu Technical Training Program reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p>\r\n\r\n<p>You warrant and represent that:</p>\r\n\r\n<ul>\r\n    <li>You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li>\r\n    <li>The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</li>\r\n    <li>The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</li>\r\n    <li>The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li>\r\n</ul>\r\n\r\n<p>You hereby grant Alokito Bondhu Technical Training Program a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p>\r\n\r\n<h3><strong>Hyperlinking to our Content</strong></h3>\r\n\r\n<p>The following organizations may link to our Website without prior written approval:</p>\r\n\r\n<ul>\r\n    <li>Government agencies;</li>\r\n    <li>Search engines;</li>\r\n    <li>News organizations;</li>\r\n    <li>Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li>\r\n    <li>System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li>\r\n</ul>\r\n\r\n<p>These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party\'s site.</p>\r\n\r\n<p>We may consider and approve other link requests from the following types of organizations:</p>\r\n\r\n<ul>\r\n    <li>commonly-known consumer and/or business information sources;</li>\r\n    <li>dot.com community sites;</li>\r\n    <li>associations or other groups representing charities;</li>\r\n    <li>online directory distributors;</li>\r\n    <li>internet portals;</li>\r\n    <li>accounting, law and consulting firms; and</li>\r\n    <li>educational institutions and trade associations.</li>\r\n</ul>\r\n\r\n<p>We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of Alokito Bondhu Technical Training Program; and (d) the link is in the context of general resource information.</p>\r\n\r\n<p>These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party\'s site.</p>\r\n\r\n<p>If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to Alokito Bondhu Technical Training Program. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p>\r\n\r\n<p>Approved organizations may hyperlink to our Website as follows:</p>\r\n\r\n<ul>\r\n    <li>By use of our corporate name; or</li>\r\n    <li>By use of the uniform resource locator being linked to; or</li>\r\n    <li>By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party\'s site.</li>\r\n</ul>\r\n\r\n<p>No use of Alokito Bondhu Technical Training Program\'s logo or other artwork will be allowed for linking absent a trademark license agreement.</p>\r\n\r\n<h3><strong>iFrames</strong></h3>\r\n\r\n<p>Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p>\r\n\r\n<h3><strong>Content Liability</strong></h3>\r\n\r\n<p>We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p>\r\n\r\n<h3><strong>Reservation of Rights</strong></h3>\r\n\r\n<p>We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it\'s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p>\r\n\r\n<h3><strong>Removal of links from our website</strong></h3>\r\n\r\n<p>If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p>\r\n\r\n<p>We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p>\r\n\r\n<h3><strong>Disclaimer</strong></h3>\r\n\r\n<p>To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p>\r\n\r\n<ul>\r\n    <li>limit or exclude our or your liability for death or personal injury;</li>\r\n    <li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li>\r\n    <li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li>\r\n    <li>exclude any of our or your liabilities that may not be excluded under applicable law.</li>\r\n</ul>\r\n\r\n<p>The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p>\r\n\r\n<p>As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>', '<h1><span style=\"font-size: 16px;\">At Alokito Bondhu Technical Training Program, accessible from www.alokitobtp.com, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by Alokito Bondhu Technical Training Program and how we use it.</span></h1><h1><span style=\"font-size: 16px;\">If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in Alokito Bondhu Technical Training Program. This policy is not applicable to any information collected offline or via channels other than this website.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Consent</span></h1><h1><span style=\"font-size: 16px;\">By using our website, you hereby consent to our Privacy Policy and agree to its terms.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Information we collect</span></h1><h1><span style=\"font-size: 16px;\">The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">How we use your information</span></h1><h1><span style=\"font-size: 16px;\">We use the information we collect in various ways, including to:</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Provide, operate, and maintain our website</span></h1><h1><span style=\"font-size: 16px;\">Improve, personalize, and expand our website</span></h1><h1><span style=\"font-size: 16px;\">Understand and analyze how you use our website</span></h1><h1><span style=\"font-size: 16px;\">Develop new products, services, features, and functionality</span></h1><h1><span style=\"font-size: 16px;\">Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</span></h1><h1><span style=\"font-size: 16px;\">Send you emails</span></h1><h1><span style=\"font-size: 16px;\">Find and prevent fraud</span></h1><h1><span style=\"font-size: 16px;\">Log Files</span></h1><h1><span style=\"font-size: 16px;\">Alokito Bondhu Technical Training Program follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Cookies and Web Beacons</span></h1><h1><span style=\"font-size: 16px;\">Like any other website, Alokito Bondhu Technical Training Program uses \"cookies\". These cookies are used to store information including visitors\' preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users\' experience by customizing our web page content based on visitors\' browser type and/or other information.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Our Advertising Partners</span></h1><h1><span style=\"font-size: 16px;\">Some of advertisers on our site may use cookies and web beacons. Our advertising partners are listed below. Each of our advertising partners has their own Privacy Policy for their policies on user data. For easier access, we hyperlinked to their Privacy Policies below.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Google</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">https://policies.google.com/technologies/ads</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Advertising Partners Privacy Policies</span></h1><h1><span style=\"font-size: 16px;\">You may consult this list to find the Privacy Policy for each of the advertising partners of Alokito Bondhu Technical Training Program.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on Alokito Bondhu Technical Training Program, which are sent directly to users\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Note that Alokito Bondhu Technical Training Program has no access to or control over these cookies that are used by third-party advertisers.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Third Party Privacy Policies</span></h1><h1><span style=\"font-size: 16px;\">Alokito Bondhu Technical Training Program\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">CCPA Privacy Rights (Do Not Sell My Personal Information)</span></h1><h1><span style=\"font-size: 16px;\">Under the CCPA, among other rights, California consumers have the right to:</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Request that a business that collects a consumer\'s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Request that a business delete any personal data about the consumer that a business has collected.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">GDPR Data Protection Rights</span></h1><h1><span style=\"font-size: 16px;\">We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">The right to erasure – You have the right to request that we erase your personal data, under certain conditions.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Children\'s Information</span></h1><h1><span style=\"font-size: 16px;\">Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Alokito Bondhu Technical Training Program does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Changes to This Privacy Policy</span></h1><h1><span style=\"font-size: 16px;\">We may update our Privacy Policy from time to time. Thus, we advise you to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately, after they are posted on this page.</span></h1><h1><span style=\"font-size: 16px;\"><br></span></h1><h1><span style=\"font-size: 16px;\">Contact Us</span></h1><h1><span style=\"font-size: 16px;\">If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us.</span></h1>', '<div>Head Office -01</div><div>Address : Dhubaria Te-Rasta Bazar, Dhubaria, Nagarpur, Tangail, Bangladesh</div><div>Mobile : +88 01734327110;&nbsp; &nbsp;E-mail: maynawellfarefoundation@gmail.com</div><div>www.moyna.xyz</div><div><br></div><div><br></div><div>Shantir Hat Branch-02</div><div>Address : Haji Shopping Center, Main Road, Shantir Hat Bazar, Bhujpur, Fatikchhari, manikgonj, Bangladesh</div><div>Mobile : +88 0xxxxxxxxxxx, E-mail:&nbsp; shantirhat@sebafoundation.org</div><div><br></div><div><br></div><div>Heako Bazar Branch-03</div><div>Address : Tohid Member’s Building, (2nd Floor), Heako Maddhya Bazar, Fatikchhari, Chittagong, Bangladesh</div><div>Mobile : +88 0xxxxxxxxxxx, E-mail: heakobazar@sebafoundation.org</div><div><br></div><div>Vaidderhat Branch-04</div><div>Address : Mahbub Plaza (2nd Floor), Fatikchhari, Chittagong, Bangladesh</div><div>Mobile: +88 0xxxxxxxxxxx, E-mail: vaidderhat@sebafoundation.org</div><div><br></div><div><br></div><div>Chowdhury Hat Branch-05</div><div>Address : Arafat Tower (3rd Floor), Chowdhuryhat, Dataram Road, Hathajari, Tangail, Bangladesh</div><div>Mobile : +88 0xxxxxxxxxxx, E-mail: chowdhury@maynafoundation.org</div><div><br></div><div>Branch-06_ Opening Soon</div><div>Address : ................................................Chittagong, Bangladesh</div><div>Mobile : +88 0xxxxxxxxxxx, E-mail: xxxxxx@sebafoundation.org</div><div><br></div>', 'public/ads/656d90aba8173.jpg', 'public/ads/656e221c6ad59.jpg', 'public/ads/656e22d6222c4.jpg', 'public/ads/656e233b52ffd.jpg', 'public/ads/656e2372b4b2d.jpg', 'public/ads/656e239f3166a.png');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint UNSIGNED NOT NULL,
  `facebook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `facebook`, `twitter`, `youtube`, `instagram`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/profile.php?id=61550511971497&ref=embed_page', 'https://www.facebook.com/profile.php?id=61550511971497&ref=embed_page', 'https://www.youtube.com/@alokitobtp6335', 'https://www.facebook.com/profile.php?id=61550511971497&ref=embed_page', 'https://www.facebook.com/profile.php?id=61550511971497&ref=embed_page', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_bn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_bn`, `subcategory_en`, `created_at`, `updated_at`) VALUES
(53, '18', 'All Press Relase', 'All Press Relase', NULL, NULL),
(54, '19', 'All Blog', 'All Blog', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subdistricts`
--

CREATE TABLE `subdistricts` (
  `id` bigint UNSIGNED NOT NULL,
  `district_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdistrict_bn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdistrict_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subdistricts`
--

INSERT INTO `subdistricts` (`id`, `district_id`, `subdistrict_bn`, `subdistrict_en`, `created_at`, `updated_at`) VALUES
(1, '1', 'Mirpur', 'মিরপুর', NULL, NULL),
(2, '1', 'bvbvbvcv', 'bvvbbvbv', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` int DEFAULT NULL,
  `category` int DEFAULT NULL,
  `district` int DEFAULT NULL,
  `post` int DEFAULT NULL,
  `setting` int DEFAULT NULL,
  `gallery` int DEFAULT NULL,
  `ads` int DEFAULT NULL,
  `role` int DEFAULT NULL,
  `facebookid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profilepic` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allpost` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `type`, `category`, `district`, `post`, `setting`, `gallery`, `ads`, `role`, `facebookid`, `profilepic`, `allpost`) VALUES
(1, 'Phakal Police Lines', 'info@phakal.edu.bd', '2023-11-04 18:40:46', '$2y$10$GUI4DwNqBMs956xDS2DfGeeleWVkXOZYDGjRYMzKjcoFgogsmEIDu', 'Sohmy5A6vlrrbp6s4VH24NvtN7evpUeAOGCzitCrgrRFShXm2YRntfdljmzu', '2023-11-04 18:40:46', '2023-11-29 07:34:23', 1, 1, 1, 1, 1, 1, 1, 1, 'https://facebook.com/elitedesignbd', NULL, 1),
(2, 'মোঃ নাঈম হোসেন', 'nayeem@elitedesign.com.bd', NULL, '$2y$10$A4k4Wpgm9a4WM5svlJuR2eeECnXYjsHaWF5E9axWzqPAfG.4ec32K', '1TszKSdPXO6INgOU29dcBxKaviO07ntRaDZCNrBfsNoWIkCv6rhtNPqsnsnQ', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'https://elitedesign.com.bd', NULL, NULL),
(3, 'Abdullah Al Mamun', 'dearsabdullah@gmail.comgmail.com', NULL, '$2y$10$siGhUcIpLuTNtcjGMvzZ5uKixLGM/N6GtemWoEdcdj9cYo5iQTNvW', NULL, '2023-11-16 15:58:18', '2023-11-16 15:58:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `embed_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `embed_code`, `type`, `created_at`, `updated_at`) VALUES
(29, 'আলোকিত বন্ধু টেকনিক্যাল ট্রেইনিং প্রোগ্রামের সিনিয়র প্রশিক্ষক মোঃ শাহিন আলমের ক্লাশের তালিকা', 'eMKEOAYl5Es', '1', NULL, NULL),
(30, 'শামিম স‍্যার এর কথা পাখিগুলো কিভাব পালন করছে।', 'bEfRga3cTTo', '1', NULL, NULL),
(31, 'শাহাদাত হোসাইন স‍্যারের বিদায়ের অল্প সময় ভিডিও না দেখলে', 'igGvXtJ3UTM', '1', NULL, NULL),
(32, '৩০দিনে দর্জি শিক্ষা (০১)পর্ব', 'GlYEqIf-ZSU', '0', NULL, NULL),
(33, 'অর্জুন স‍্যারে ছাত্রীর অবাক করা ভিডিও', 'VPHV-f3S590', '0', NULL, NULL),
(34, 'মাত্র ৩০দিনে দর্জি শিক্ষা নিতে পারবেন।', 'ptc5W3SZFDk', '1', NULL, NULL),
(35, '২৫শে জুন পযন্ত ছাত্র/ছাত্রীদের নামের তালিকা', 'DltPqy4qPz4', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `id` bigint UNSIGNED NOT NULL,
  `website_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `websites`
--

INSERT INTO `websites` (`id`, `website_name`, `website_link`, `created_at`, `updated_at`) VALUES
(9, 'প্রধানমন্ত্রীর কার্যালয়', 'https://pmo.gov.bd/', NULL, NULL),
(10, 'বাংলাদেশ জাতীয় সংসদ', 'http://www.parliament.gov.bd/', NULL, NULL),
(17, 'বাংলাদেশ সেনাবাহিনী', 'https://www.army.mil.bd/', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livetv`
--
ALTER TABLE `livetv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `namaz`
--
ALTER TABLE `namaz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subdistricts`
--
ALTER TABLE `subdistricts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `livetv`
--
ALTER TABLE `livetv`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `namaz`
--
ALTER TABLE `namaz`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `subdistricts`
--
ALTER TABLE `subdistricts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
