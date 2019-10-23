-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2019 at 07:18 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `properties`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` bigint(20) NOT NULL,
  `address_line1` text,
  `address_line2` text,
  `address_line3` text,
  `address_line4` text,
  `address_line5` text,
  `address_long` varchar(20) DEFAULT NULL,
  `address_lat` varchar(20) DEFAULT NULL,
  `address_created_on` varchar(25) DEFAULT NULL,
  `address_updated_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `api`
--

CREATE TABLE `api` (
  `api_id` int(11) NOT NULL,
  `api_user` int(11) NOT NULL,
  `api_token` varchar(200) NOT NULL,
  `api_authorized` int(11) NOT NULL DEFAULT '0',
  `api_valid` varchar(25) NOT NULL,
  `api_created_on` varchar(25) NOT NULL,
  `api_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `blogs_id` int(11) NOT NULL,
  `blogs_post` int(11) NOT NULL,
  `blogs_description` longtext,
  `blogs_cover_pic` varchar(100) DEFAULT NULL,
  `blogs_comment` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(50) NOT NULL,
  `categories_slug` varchar(50) NOT NULL,
  `categories_icon` varchar(50) NOT NULL DEFAULT 'icon.png',
  `categories_type` varchar(20) DEFAULT NULL,
  `categories_parent` int(11) NOT NULL,
  `categories_status` int(11) NOT NULL DEFAULT '1',
  `categories_created_on` varchar(25) NOT NULL,
  `categories_updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `categories_meta`
--

CREATE TABLE `categories_meta` (
  `meta_id` int(11) NOT NULL,
  `meta_category` int(11) NOT NULL,
  `meta_key` varchar(100) NOT NULL,
  `meta_value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(100) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_phone` varchar(20) NOT NULL,
  `contact_status` int(11) NOT NULL DEFAULT '0',
  `contact_message` text NOT NULL,
  `contact_file` varchar(100) DEFAULT NULL,
  `contact_created_on` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `images_id` bigint(20) NOT NULL,
  `images_text` varchar(50) DEFAULT NULL,
  `images_alt` varchar(50) DEFAULT NULL,
  `images_image` varchar(100) DEFAULT NULL,
  `images_post` int(11) DEFAULT NULL,
  `images_created_on` varchar(25) DEFAULT NULL,
  `images_updated_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meta`
--

CREATE TABLE `meta` (
  `meta_id` int(11) NOT NULL,
  `meta_key` varchar(150) NOT NULL,
  `meta_value` text NOT NULL,
  `meta_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meta`
--

CREATE TABLE `packages` (
  `packages_id` int(11) NOT NULL,
  `packages_name` varchar(100) DEFAULT NULL,
  `packages_price` varchar(20) DEFAULT NULL,
  `packages_valid` int(11) DEFAULT '30',
  `packages_post` int(11) DEFAULT '10',
  `packages_for` varchar(50) DEFAULT NULL,
  `packages_status` int(11) DEFAULT '1',
  `packages_updated_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `packages_created_on` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `packages_features`
--

CREATE TABLE `packages_features` (
  `packages_features_id` bigint(20) NOT NULL,
  `packages_features_package` int(11) DEFAULT NULL,
  `packages_features_line` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `pages_id` int(11) NOT NULL,
  `pages_post` int(11) NOT NULL,
  `pages_cover_pic` varchar(50) NOT NULL,
  `pages_description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `posts_id` bigint(20) NOT NULL,
  `posts_title` varchar(150) DEFAULT NULL,
  `posts_slug` varchar(150) DEFAULT NULL,
  `posts_author` int(11) NOT NULL,
  `posts_type` varchar(25) DEFAULT NULL,
  `posts_join` varchar(50) NOT NULL,
  `posts_status` int(11) DEFAULT '0',
  `posts_created_on` varchar(20) DEFAULT NULL,
  `posts_updated_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- --------------------------------------------------------

--
-- Table structure for table `posts_meta`
--

CREATE TABLE `posts_meta` (
  `p_meta_id` int(11) NOT NULL,
  `p_meta_post` int(11) NOT NULL,
  `p_meta_key` varchar(100) NOT NULL,
  `p_meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `reviews_id` bigint(20) NOT NULL,
  `reviews_post` int(11) DEFAULT NULL,
  `reviews_star` double DEFAULT '5',
  `reviews_message` varchar(100) DEFAULT NULL,
  `reviews_user` int(11) DEFAULT NULL,
  `reviews_created_on` varchar(20) DEFAULT NULL,
  `reviews_updated_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `settings_key` varchar(100) DEFAULT NULL,
  `settings_value` text,
  `settings_auto` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `settings_key`, `settings_value`, `settings_auto`) VALUES
(1, 'title', 'Pearl Code', NULL),
(2, 'tagline', 'Pearl Organisation', NULL),
(3, 'email', 'info@pearlorganisation.com', NULL),
(4, 'email-server', 'mail.pearlorganisation.com', NULL),
(5, 'email-port', '587', NULL),
(6, 'email-login', 'info@pearlorganisation.com', NULL),
(7, 'email-password', 'passwords', NULL),
(8, 'auto-approve-comment', '1', NULL),
(9, 'post-per-page', '10', NULL),
(10, 'thumbnail-height', '128', NULL),
(11, 'thumbnail-width', '128', NULL),
(12, 'image-height', '1000', NULL),
(13, 'image-width', '1000', NULL),
(14, 'watermark', '1', NULL),
(15, 'theme', 'default', NULL),
(16, 'show-blog', '1', NULL),
(17, 'show-page', '1', NULL),
(18, 'show-user', '1', NULL),
(19, 'footer', '&copy; 2019 | Powered by <a href=\"https://www.pearlorganisation.com/\">Pearl Organisation</a>.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `users_name` varchar(50) DEFAULT NULL,
  `users_email` varchar(50) DEFAULT NULL,
  `users_password` varchar(200) DEFAULT NULL,
  `users_role` int(11) DEFAULT NULL,
  `users_address` int(11) DEFAULT NULL,
  `users_phone` varchar(20) DEFAULT NULL,
  `users_profile` varchar(100) DEFAULT NULL,
  `users_status` int(11) DEFAULT '0',
  `users_created_on` varchar(20) DEFAULT NULL,
  `users_updated_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `users_name`, `users_email`, `users_password`, `users_role`, `users_address`, `users_phone`, `users_profile`, `users_status`, `users_created_on`, `users_updated_on`) VALUES
(1, 'Prashant Rijal', 'prashant@pearlorganisation.com', '$argon2i$v=19$m=1024,t=2,p=2$aGE5RDlnMEVJdjFZTkdNaQ$5cLWesP0GABchott9ISDb534yM0b/hgG+WrJqO7jHM4', 121, 1, '7251818130', 'yJrBoulPLN137w8pRW4GYg5vj.png', 1, '2019/01/26', '2019-01-26 10:20:44');

-- --------------------------------------------------------

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `api`
--
ALTER TABLE `api`
  ADD PRIMARY KEY (`api_id`),
  ADD UNIQUE KEY `api_token` (`api_token`),
  ADD UNIQUE KEY `api_user` (`api_user`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blogs_id`),
  ADD UNIQUE KEY `blogs_post` (`blogs_post`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `categories_meta`
--
ALTER TABLE `categories_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`images_id`);

--
-- Indexes for table `meta`
--
ALTER TABLE `meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`packages_id`);

--
-- Indexes for table `packages_features`
--
ALTER TABLE `packages_features`
  ADD PRIMARY KEY (`packages_features_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`pages_id`),
  ADD UNIQUE KEY `pages_post` (`pages_post`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`posts_id`);

--
-- Indexes for table `posts_meta`
--
ALTER TABLE `posts_meta`
  ADD PRIMARY KEY (`p_meta_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`reviews_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`),
  ADD UNIQUE KEY `settings_key` (`settings_key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`vehicles_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api`
--
ALTER TABLE `api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blogs_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories_meta`
--
ALTER TABLE `categories_meta`
  MODIFY `meta_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `images_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meta`
--
ALTER TABLE `meta`
  MODIFY `meta_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `packages_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages_features`
--
ALTER TABLE `packages_features`
  MODIFY `packages_features_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `pages_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `posts_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_meta`
--
ALTER TABLE `posts_meta`
  MODIFY `p_meta_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `reviews_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `vehicles_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
