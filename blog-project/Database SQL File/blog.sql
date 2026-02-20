-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2026 at 05:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'PHP'),
(2, 'Nature'),
(17, 'java');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `body` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(5, 'Fardous', 'AHmed', 'fardous@gmail.com', 'Hi nice to meet you', 0, '2021-12-26 07:08:45'),
(6, 'anowar', 'jahan', 'anowarjr1@gmail.com', 'HI i am anowar nice to meet you', 1, '2021-12-26 07:10:04'),
(7, 'kabir', 'ahmed', 'karbi@gmaill.com', 'Hello I am kabir nice to meet you.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ....Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ....Lorem Ipsum', 1, '2021-12-26 07:11:46'),
(11, 'niloy deb', 'bishal', 'admin@gmai.com', 'wfgagag', 1, '2026-02-19 17:58:13'),
(12, 'niloy deb', 'gssgsg', 'debniloy057@gmail.com', 'sgsgs', 0, '2026-02-19 19:07:15'),
(13, 'niloy deb', 'gssgsg', 'debniloy057@gmail.com', 'sgsgs', 0, '2026-02-19 19:07:37'),
(14, 'n', 'bishal', 'dibyaniloy@gmail.com', '12343233', 0, '2026-02-19 19:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'Niloy Deb');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `body` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(2, 'About Us ', '<p data-start=\"78\" data-end=\"331\"><strong>We are a team of passionate</strong> individuals who love sharing knowledge, ideas, and inspiration. Our goal is to provide valuable content that informs, educates, and engages our readers. We believe in simplicity, creativity, and honesty in everything we do.</p>\r\n<p data-start=\"333\" data-end=\"586\">Through our platform, we cover a variety of topics, from technology and science to lifestyle and nature, helping our audience learn something new every day. '),
(3, 'Privacy Policy ', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popula<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ip');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tag` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tag`, `date`, `userid`) VALUES
(28, 17, 'What is Java?', '<p data-start=\"79\" data-end=\"330\">Java is a high-level, object-oriented, and platform-independent programming language developed by Sun Microsystems in 1995 (now owned by Oracle). It is widely used for building applications ranging from mobile apps to enterprise systems.</p>', 'upload/8148521b6b.png', 'admin', 'java ', '2026-02-19 17:11:34', 1),
(30, 17, 'Java Components', '<p>Java has three main components that work together to develop and run applications. The first is the Java Development Kit (JDK), which includes tools like the compiler and libraries needed to write and compile Java programs. The second is the Java Runtime Environment (JRE), which provides the environment to run compiled Java programs, including the Java Virtual Machine (JVM) and standard class libraries. The third component is the Java Virtual Machine (JVM), which converts compiled bytecode into machine code that can run on any operating system. These components make Java platform-independent and versatile for building applications.</p>', 'upload/ea38de7b83.jpeg', 'admin', 'javas', '2026-02-19 17:32:44', 1),
(31, 1, 'What is PHP?', '<p data-start=\"68\" data-end=\"316\">PHP (Hypertext Preprocessor) is a server-side scripting language primarily used for web development. It was created by Rasmus Lerdorf in 1994. PHP allows developers to create dynamic web pages that can interact with databases.</p>', 'upload/ad2174c03c.jpeg', 'admin', 'php', '2026-02-19 17:02:15', 1),
(32, 1, 'PHP Components', '<p><strong>PHP</strong> has three main components that work together to create and run web applications. The first is the PHP engine, which interprets PHP code and executes it on the server. The second is the web server, such as Apache or Nginx, which handles requests from users&rsquo; browsers and communicates with the PHP engine. The third component is the database, like MySQL or PostgreSQL, which stores and retrieves data for dynamic web pages. Together, these components allow developers to write code that can generate web pages, process forms, manage sessions, and interact with databases efficiently.</p>', 'upload/0771fc02ba.png', 'admin', 'php components', '2026-02-19 17:31:48', 1),
(33, 2, 'The Beauty and Importance of Nature', '<p data-start=\"98\" data-end=\"396\">Nature is the world around us, full of life, colors, and wonders. From towering mountains and flowing rivers to dense forests and blooming flowers, nature provides a home for countless plants and animals. It also gives humans fresh air, water, food, and resources that are essential for survival.</p>\r\n<p data-start=\"398\" data-end=\"721\">Spending time in nature can reduce stress, improve mood, and inspire creativity. Listening to birds, walking through a forest, or watching a sunset reminds us of the beauty and balance of life. Protecting nature is important because human activities like pollution, deforestation, and climate change threaten its balance.</p>\r\n<p data-start=\"723\" data-end=\"941\">By planting trees, conserving water, and reducing waste, we can help preserve nature for future generations. Appreciating and caring for nature ensures a healthy environment and a peaceful life for all living beings.</p>', 'upload/23b08d1614.jpeg', 'admin', 'Nature', '2026-02-19 17:34:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(1, 'First Slider Title', 'upload/slider/3208a5ff09.jpg'),
(2, 'Second Slider Title', 'upload/slider/6c88c25850.jpeg'),
(3, 'Third Slider Title', 'upload/slider/7700ded86c.jpg'),
(5, 'Forth Silder Title', 'upload/slider/8987cb6968.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(300) NOT NULL,
  `tw` varchar(300) NOT NULL,
  `ln` varchar(300) NOT NULL,
  `gp` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'https://www.facebook.com/niloy.deb.315/', 'https://www.twitter.com/', 'https://www.LinkedIn.com/', 'https://www.google.com/');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'deep_green');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `email`, `details`, `role`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 'admin@gmail.com', '<p>Hello, I am admin of this website</p>', 0),
(20, 'bishal', '202cb962ac59075b964b07152d234b70', 'h.ibro2135@gmail.com', '<p>I am bishal is a good boy</p>', 2),
(21, 'niloy', '202cb962ac59075b964b07152d234b70', 'debniloy057@gmail.com', '<p>this is niloy</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `slogan` varchar(250) NOT NULL,
  `logo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'Niloy', 'Code today, conquer tomorrow', 'upload/97c5b028a5.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
