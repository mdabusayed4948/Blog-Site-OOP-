-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2017 at 05:01 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(2, 'PHP'),
(3, 'HTML'),
(4, 'CSS'),
(5, 'Education'),
(7, 'C#'),
(8, 'Sports'),
(9, 'Health'),
(10, 'Froots'),
(11, '.NET');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(2, 'md abu', 'hasan', 'hasan@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 1, '2017-06-09 18:46:24'),
(3, 'md', 'kawsar', 'kawsar@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem \r\nIpsum has been the', 0, '2017-06-11 16:45:11'),
(5, 'md', 'milu', 'milu@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 0, '2017-06-11 18:13:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'Copyright IDB-BISEW IT Scholarship project.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1, 'About Us', '<p>hello I am saye. <a href="http://www.trainingwithliveproject.com/" target="_blank">website</a> </p>\r\n<p>about us Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br /><br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(2, 'Privacy', '<p>Privacy Policy Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br /><br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(3, 'DMCA', '<p>Lorem Ipsum is simply dummy DMCA text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br /><br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`, `userid`) VALUES
(7, 1, 'Java Post title will be go here', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', 'upload/f41cf95de1.png', 'Sayed', 'Java,JAVA Coding,Spring', '2017-06-01 17:38:39', 0),
(8, 2, 'PHP post will be go here', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem <br />Ipsum has been the industry''s standard dummy text ever since the 1500s, when an <br />unknown printer took a galley of type and scrambled it to make a type specimen <br />book. It has survived not only five centuries, but also the leap into electronic <br />typesetting, remaining essentially unchanged. It was popularised in the 1960s <br />with the release of Letraset sheets containing Lorem Ipsum passages, and more <br />recently with desktop publishing software like Aldus PageMaker including versions <br />of Lorem Ipsum.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem <br />Ipsum has been the industry''s standard dummy text ever since the 1500s, when an <br />unknown printer took a galley of type and scrambled it to make a type specimen <br />book. It has survived not only five centuries, but also the leap into electronic <br />typesetting, remaining essentially unchanged. It was popularised in the 1960s <br />with the release of Letraset sheets containing Lorem Ipsum passages, and more <br />recently with desktop publishing software like Aldus PageMaker including versions <br />of Lorem Ipsum.</p>', 'upload/3ea6bc5c5e.jpg', 'sayed', 'php', '2017-06-01 17:45:20', 2),
(9, 3, 'Our html project', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem <br />Ipsum has been the industry''s standard dummy text ever since the 1500s, when an <br />unknown printer took a galley of type and scrambled it to make a type specimen <br />book. It has survived not only five centuries, but also the leap into electronic <br />typesetting, remaining essentially unchanged. It was popularised in the 1960s <br />with the release of Letraset sheets containing Lorem Ipsum passages, and more <br />recently with desktop publishing software like Aldus PageMaker including versions <br />of Lorem Ipsum.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem <br />Ipsum has been the industry''s standard dummy text ever since the 1500s, when an <br />unknown printer took a galley of type and scrambled it to make a type specimen <br />book. It has survived not only five centuries, but also the leap into electronic <br />typesetting, remaining essentially unchanged. It was popularised in the 1960s <br />with the release of Letraset sheets containing Lorem Ipsum passages, and more <br />recently with desktop publishing software like Aldus PageMaker including versions <br />of Lorem Ipsum.</p>', 'upload/33bb0f33fc.jpg', 'sayed', 'html', '2017-06-01 17:48:54', 1),
(10, 4, 'css title post will be go here', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem <br />Ipsum has been the industry''s standard dummy text ever since the 1500s, when an <br />unknown printer took a galley of type and scrambled it to make a type specimen <br />book. It has survived not only five centuries, but also the leap into electronic <br />typesetting, remaining essentially unchanged. It was popularised in the 1960s <br />with the release of Letraset sheets containing Lorem Ipsum passages, and more <br />recently with desktop publishing software like Aldus PageMaker including versions <br />of Lorem Ipsum.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem <br />Ipsum has been the industry''s standard dummy text ever since the 1500s, when an <br />unknown printer took a galley of type and scrambled it to make a type specimen <br />book. It has survived not only five centuries, but also the leap into electronic <br />typesetting, remaining essentially unchanged. It was popularised in the 1960s <br />with the release of Letraset sheets containing Lorem Ipsum passages, and more <br />recently with desktop publishing software like Aldus PageMaker including versions <br />of Lorem Ipsum.</p>', 'upload/85da19471b.jpg', 'sayed', 'css', '2017-06-01 17:51:07', 0),
(14, 7, 'C# our post title', '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', 'upload/2306e74634.png', 'admin', 'c#', '2017-06-03 19:50:27', 2),
(15, 8, 'sports our post title', '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', 'upload/bab8890a06.png', 'admin', 'sports', '2017-06-03 19:51:19', 2),
(16, 10, 'Froots title', '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', 'upload/9f2a42a95b.jpg', 'sayed', 'froots', '2017-06-03 19:53:05', 1),
(17, 5, 'education post will be go here', '<p>education Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem&nbsp;<br />Ipsum has been the industry''s standard dummy text ever since the 1500s, when an&nbsp;<br />unknown printer took a galley of type and scrambled it to make a type specimen&nbsp;<br />book. It has survived not only five centuries, but also the leap into electronic&nbsp;<br />typesetting, remaining essentially unchanged. It was popularised in the 1960s&nbsp;<br />with the release of Letraset sheets containing Lorem Ipsum passages, and more&nbsp;<br />recently with desktop publishing software like Aldus PageMaker including versions&nbsp;<br />of Lorem Ipsum.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem&nbsp;<br />Ipsum has been the industry''s standard dummy text ever since the 1500s, when an&nbsp;<br />unknown printer took a galley of type and scrambled it to make a type specimen&nbsp;<br />book. It has survived not only five centuries, but also the leap into electronic&nbsp;<br />typesetting, remaining essentially unchanged. It was popularised in the 1960s&nbsp;<br />with the release of Letraset sheets containing Lorem Ipsum passages, and more&nbsp;<br />recently with desktop publishing software like Aldus PageMaker including versions&nbsp;<br />of Lorem Ipsum.</p>', 'upload/ec77de7da3.png', 'Sayed', 'Education, Result, SSC', '2017-06-12 10:29:14', 0),
(18, 3, 'html post go here', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem&nbsp;<br />Ipsum has been the industry''s standard dummy text ever since the 1500s, when an&nbsp;<br />unknown printer took a galley of type and scrambled it to make a type specimen&nbsp;<br />book. It has survived not only five centuries, but also the leap into electronic&nbsp;<br />typesetting, remaining essentially unchanged. It was popularised in the 1960s&nbsp;<br />with the release of Letraset sheets containing Lorem Ipsum passages, and more&nbsp;<br />recently with desktop publishing software like Aldus PageMaker including versions&nbsp;<br />of Lorem Ipsum.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem&nbsp;<br />Ipsum has been the industry''s standard dummy text ever since the 1500s, when an&nbsp;<br />unknown printer took a galley of type and scrambled it to make a type specimen&nbsp;<br />book. It has survived not only five centuries, but also the leap into electronic&nbsp;<br />typesetting, remaining essentially unchanged. It was popularised in the 1960s&nbsp;<br />with the release of Letraset sheets containing Lorem Ipsum passages, and more&nbsp;<br />recently with desktop publishing software like Aldus PageMaker including versions&nbsp;<br />of Lorem Ipsum.</p>', 'upload/0ccf4a71fe.jpg', 'editor', 'html', '2017-06-15 19:01:13', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(4, 'First Slider Title Will be go here', 'upload/slider/1bcb71e35f.jpg'),
(5, 'Second Slider Title will be go here', 'upload/slider/60987ec1db.jpg'),
(6, 'Third Slider Title will be go here', 'upload/slider/73d16e4051.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slogan`
--

CREATE TABLE `tbl_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slogan`
--

INSERT INTO `tbl_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'Personal Blog project', 'Bangla tutorial', 'upload/logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://www.google.com/');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'default');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `details`, `role`) VALUES
(1, 'md sayed', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'sayed120@gmail.com', '<p>this is details</p>', 0),
(2, 'md hasan', 'author', '02bd92faa38aaa6cc0ea75e59937a1ef', 'sahan@gmail.com', '<p>lorem ipsum</p>', 1),
(3, 'kader', 'editor', '5aee9dbd2a188839105073571bee1b1f', 'kader@gmail.com', '<p>hello, I am kader</p>', 2),
(4, '', 'sayed', '7821254430ae829a4f6fc0ae08fb80b5', '', '', 1),
(6, '', 'newuser', '0354d89c28ec399c00d3cb2d094cf093', '', '', 2),
(7, '', 'tuhin', 'b43ae3359bac8c4fa6c4a58f0ee16e5e', 'tuhin@gmail.com', '', 2),
(8, '', 'milu', 'ce5ac4e680faa9545bb85a13acc1c2ba', 'milu@gmail.com ', '', 1);

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
-- Indexes for table `tbl_slogan`
--
ALTER TABLE `tbl_slogan`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_slogan`
--
ALTER TABLE `tbl_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
