-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 08, 2021 at 03:42 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mulan`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
CREATE TABLE IF NOT EXISTS `about` (
  `key` varchar(200) NOT NULL,
  `value` text,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`key`, `value`) VALUES
('about_me', 'Praesent ut tortor consectetur, semper sapien non, lacinia augue. Aenean arcu libero, facilisis et nisi non, tempus faucibus tortor. Mauris vel nulla aliquam, pellentesque enim ac, faucibus tortor. Nulla odio nibh, cursus sit amet urna id, dignissim euismod augue\r\nPraesent ut tortor consectetur, semper sapien non, lacinia augue. Aenean arcu libero, facilisis et nisi non, tempus faucibus tortor. Mauris vel nulla aliquam, pellentesque enim ac, faucibus tortor. Nulla odio nibh, cursus sit amet urna id, dignissim euismod augue\r\n'),
('address', '123 New Yourk D Block 1100, \r\nStreet 2011 USA'),
('avatar', 'avatar.jpeg'),
('behance', 'https://www.website.com'),
('codepen', 'https://www.website.com'),
('dribbble', 'https://www.website.com'),
('dropbox', 'https://www.website.com'),
('email', 'info@domain.com\r\nname@domain.com'),
('facebook', 'https://www.website.com'),
('flickr', 'https://www.website.com'),
('instagram', 'https://www.website.com'),
('latitude', '51.5255069'),
('linkedin', 'https://www.website.com'),
('longitude', '-0.0836207'),
('name', 'Mulan Rafiki'),
('nationality', 'United States, America'),
('num_awards', '22'),
('num_experience', '5'),
('num_happy_clients', '1200'),
('num_meetings', '120'),
('num_projects', '300'),
('phone', '(+881) 111 222 333\r\n(+881) 111 222 333'),
('pinterest', 'https://www.website.com'),
('position_typing', 'UI/UX Designer\r\nPhotographer\r\nMobile Developer\r\nWeb Developer'),
('reddit', 'https://www.website.com'),
('resume', 'resume.txt'),
('rss', 'https://www.website.com'),
('skype', 'https://www.website.com'),
('snapchat', 'https://www.website.com'),
('soundcloud', 'https://www.website.com'),
('stackoverfolw', 'https://www.website.com'),
('tumblr', 'https://www.website.com'),
('twitter', 'https://www.website.com'),
('video_link', 'https://www.youtube.com/watch?v=uaZEeU6NzaM'),
('vimeo', 'https://www.website.com'),
('whatsapp', NULL),
('yelp', 'https://www.website.com'),
('youtube', 'https://www.website.com');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
CREATE TABLE IF NOT EXISTS `appointments` (
  `appointment_id` int(11) NOT NULL AUTO_INCREMENT,
  `sa_status` enum('0','1') DEFAULT '0',
  `sa_st_time` varchar(30) DEFAULT NULL,
  `sa_en_time` varchar(30) DEFAULT NULL,
  `su_status` enum('0','1') DEFAULT '0',
  `su_st_time` varchar(30) DEFAULT NULL,
  `su_en_time` varchar(30) DEFAULT NULL,
  `mo_status` enum('0','1') DEFAULT '0',
  `mo_st_time` varchar(30) DEFAULT NULL,
  `mo_en_time` varchar(30) DEFAULT NULL,
  `tu_status` enum('0','1') DEFAULT '0',
  `tu_st_time` varchar(30) DEFAULT NULL,
  `tu_en_time` varchar(30) DEFAULT NULL,
  `we_status` enum('0','1') DEFAULT '0',
  `we_st_time` varchar(30) DEFAULT NULL,
  `we_en_time` varchar(30) DEFAULT NULL,
  `th_status` enum('0','1') DEFAULT '0',
  `th_st_time` varchar(30) DEFAULT NULL,
  `th_en_time` varchar(30) DEFAULT NULL,
  `fr_status` enum('0','1') DEFAULT '0',
  `fr_st_time` varchar(30) DEFAULT NULL,
  `fr_en_time` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`appointment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appointment_id`, `sa_status`, `sa_st_time`, `sa_en_time`, `su_status`, `su_st_time`, `su_en_time`, `mo_status`, `mo_st_time`, `mo_en_time`, `tu_status`, `tu_st_time`, `tu_en_time`, `we_status`, `we_st_time`, `we_en_time`, `th_status`, `th_st_time`, `th_en_time`, `fr_status`, `fr_st_time`, `fr_en_time`) VALUES
(1, '1', '1:15:40 AM', '3:15:40 AM', '1', '2:15:40 AM', '2:15:40 AM', '1', '3:15:40 AM', '3:15:40 AM', '1', '4:15:40 AM', '4:15:40 AM', '1', '5:15:40 AM', '5:15:40 AM', '1', '6:15:40 AM', '6:15:40 AM', '1', '7:15:40 AM', '7:15:40 AM');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) DEFAULT NULL,
  `description` text,
  `image` varchar(150) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `author` varchar(150) DEFAULT NULL,
  `short_description` varchar(300) DEFAULT NULL,
  `visits` int(11) DEFAULT '0',
  `blog_category_id` int(11) DEFAULT NULL,
  `meta_keywords` text,
  `display` enum('0','1') DEFAULT '1',
  `meta_description` text,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `title`, `description`, `image`, `datetime`, `author`, `short_description`, `visits`, `blog_category_id`, `meta_keywords`, `display`, `meta_description`) VALUES
(1, 'Recent trends in story', '<p>Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae.</p>\r\n                                            <div class=\"post-quote\">\r\n                                                <span class=\"icon\"></span>\r\n                                                <blockquote>\r\n                                                    Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum.\r\n                                                </blockquote>\r\n                                            </div>\r\n                                            <p>In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.</p>\r\n                                            <p>Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio. </p>\r\n                                            ', '1.jpg', '2019-03-10 04:59:52', 'Marwa El-Manawy', 'There are many variations of passages of Lorem Ipsum available, but the majority .', 132, 1, 'tutorial,fashion,cms,script,product,fashion,template,blog,posts', '1', NULL),
(2, 'Content builder posts', '<p>Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae.</p>\r\n                                            <div class=\"post-quote\">\r\n                                                <span class=\"icon\"></span>\r\n                                                <blockquote>\r\n                                                    Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum.\r\n                                                </blockquote>\r\n                                            </div>\r\n                                            <p>In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.</p>\r\n                                            <p>Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio. </p>\r\n                                            ', '2.jpg', '2019-03-10 04:59:52', 'Marwa El-Manawy', 'There are many variations of passages of Lorem Ipsum available, but the majority .', 105, 4, 'tutorial, fashion, cms, script, product, fashion, template, blog, poststutorial,fashion,cms,script,product,fashion,template,blog,posts', '1', NULL),
(3, 'Transitions In Design', '<p>Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae.</p>\r\n                                            <div class=\"post-quote\">\r\n                                                <span class=\"icon\"></span>\r\n                                                <blockquote>\r\n                                                    Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum.\r\n                                                </blockquote>\r\n                                            </div>\r\n                                            <p>In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.</p>\r\n                                            <p>Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio. </p>\r\n                                            ', '3.jpg', '2019-03-10 04:59:52', 'Marwa El-Manawy', 'There are many variations of passages of Lorem Ipsum available, but the majority .', 71, 1, 'tutorial, fashion, cms, script, product, fashion, template, blog, poststutorial,fashion,cms,script,product,fashion,template,blog,posts', '1', NULL),
(4, 'Comfort classy outfits', '<p>Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae.</p>\r\n                                            <div class=\"post-quote\">\r\n                                                <span class=\"icon\"></span>\r\n                                                <blockquote>\r\n                                                    Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum.\r\n                                                </blockquote>\r\n                                            </div>\r\n                                            <p>In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.</p>\r\n                                            <p>Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio. </p>\r\n                                            ', '4.jpg', '2019-03-10 04:59:52', 'Marwa El-Manawy', 'There are many variations of passages of Lorem Ipsum available, but the majority .', 44, 2, 'tutorial, fashion, cms, script, product, fashion, template, blog, poststutorial,fashion,cms,script,product,fashion,template,blog,posts', '1', NULL),
(5, 'The new clear bolg', '<p>Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae.</p>\r\n                                            <div class=\"post-quote\">\r\n                                                <span class=\"icon\"></span>\r\n                                                <blockquote>\r\n                                                    Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum.\r\n                                                </blockquote>\r\n                                            </div>\r\n                                            <p>In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.</p>\r\n                                            <p>Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio. </p>\r\n                                            ', '5.jpg', '2019-03-10 04:59:52', 'Marwa El-Manawy', 'There are many variations of passages of Lorem Ipsum available, but the majority .', 39, 3, 'tutorial, fashion, cms, script, product, fashion, template, blog, posts', '1', NULL),
(6, 'Transitions In Design', '<p>Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae.</p>\r\n                                            <div class=\"post-quote\">\r\n                                                <span class=\"icon\"></span>\r\n                                                <blockquote>\r\n                                                    Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum.\r\n                                                </blockquote>\r\n                                            </div>\r\n                                            <p>In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.</p>\r\n                                            <p>Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio. </p>\r\n                                            ', '6.jpg', '2019-03-10 04:59:52', 'Marwa El-Manawy', 'There are many variations of passages of Lorem Ipsum available, but the majority .', 56, 1, 'tutorial, fashion, cms, script, product, fashion, template, blog, posts', '1', NULL),
(7, 'Social media websites', '<p>Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae.</p>\r\n                                            <div class=\"post-quote\">\r\n                                                <span class=\"icon\"></span>\r\n                                                <blockquote>\r\n                                                    Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum.\r\n                                                </blockquote>\r\n                                            </div>\r\n                                            <p>In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.</p>\r\n                                            <p>Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio. </p>\r\n                                            ', '7.jpg', '2019-03-10 04:59:52', 'Marwa El-Manawy', 'There are many variations of passages of Lorem Ipsum available, but the majority .', 48, 4, 'tutorial,fashion,cms,script,product,fashion,template,blog,posts', '1', NULL),
(8, 'Recent trends in story', '<p>Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae.</p>\r\n                                            <div class=\"post-quote\">\r\n                                                <span class=\"icon\"></span>\r\n                                                <blockquote>\r\n                                                    Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum.\r\n                                                </blockquote>\r\n                                            </div>\r\n                                            <p>In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.</p>\r\n                                            <p>Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio. </p>\r\n                                            ', '8.jpg', '2019-03-10 04:59:52', 'Marwa El-Manawy', 'There are many variations of passages of Lorem Ipsum available, but the majority .', 35, 3, 'tutorial,fashion,cms,script,product,fashion,template,blog,posts', '1', NULL),
(9, 'طريقة تفعيل كود اجنيتور', '<p>Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae.</p>\r\n                                            <div class=\"post-quote\">\r\n                                                <span class=\"icon\"></span>\r\n                                                <blockquote>\r\n                                                    Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum.\r\n                                                </blockquote>\r\n                                            </div>\r\n                                            <p>In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.</p>\r\n                                            <p>Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio. </p>\r\n                                            ', '9.jpg', '2019-03-10 04:59:52', 'Marwa El-Manawy', 'There are many variations of passages of Lorem Ipsum available, but the majority .', 104, 2, 'tutorial,fashion,cms,script,product,fashion,template,blog,posts', '1', NULL),
(10, 'The new clear bolg', '<p>Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae.</p>\r\n                                            <div class=\"post-quote\">\r\n                                                <span class=\"icon\"></span>\r\n                                                <blockquote>\r\n                                                    Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum.\r\n                                                </blockquote>\r\n                                            </div>\r\n                                            <p>In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.</p>\r\n                                            <p>Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio. </p>\r\n                                            ', '10.jpg', '2019-03-10 04:59:52', 'Marwa El-Manawy', 'There are many variations of passages of Lorem Ipsum available, but the majority .', 33, 3, 'tutorial,fashion,cms,script,product,fashion,template,blog,posts', '1', NULL),
(11, 'Recent trends in story', '<p>Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae.</p>\r\n                                            <div class=\"post-quote\">\r\n                                                <span class=\"icon\"></span>\r\n                                                <blockquote>\r\n                                                    Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum.\r\n                                                </blockquote>\r\n                                            </div>\r\n                                            <p>In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.</p>\r\n                                            <p>Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio. </p>\r\n                                            ', '11.jpg', '2019-03-10 04:59:52', 'Marwa El-Manawy', 'There are many variations of passages of Lorem Ipsum available, but the majority .', 31, 3, 'tutorial,fashion,cms,script,product,fashion,template,blog,posts', '1', NULL),
(12, 'Transitions In Design', '<p>Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae.</p>\r\n                                            <div class=\"post-quote\">\r\n                                                <span class=\"icon\"></span>\r\n                                                <blockquote>\r\n                                                    Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum.\r\n                                                </blockquote>\r\n                                            </div>\r\n                                            <p>In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.</p>\r\n                                            <p>Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio. </p>\r\n                                            ', '3.jpg', '2019-03-10 04:59:52', 'Marwa El-Manawy', 'There are many variations of passages of Lorem Ipsum available, but the majority .', 73, 1, 'tutorial,fashion,cms,script,product,fashion,template,blog,posts', '1', NULL),
(13, 'Recent trends in story', '<p>Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae.</p>\r\n                                            <div class=\"post-quote\">\r\n                                                <span class=\"icon\"></span>\r\n                                                <blockquote>\r\n                                                    Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum.\r\n                                                </blockquote>\r\n                                            </div>\r\n                                            <p>In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.</p>\r\n                                            <p>Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio. </p>\r\n                                            ', '4.jpg', '2019-03-10 04:59:52', 'Marwa El-Manawy', 'There are many variations of passages of Lorem Ipsum available, but the majority .', 30, 3, 'tutorial,fashion,cms,script,product,fashion,template,blog,posts', '1', NULL),
(14, 'Comfort classy outfits', '<p>Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae.</p>\r\n                                            <div class=\"post-quote\">\r\n                                                <span class=\"icon\"></span>\r\n                                                <blockquote>\r\n                                                    Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum.\r\n                                                </blockquote>\r\n                                            </div>\r\n                                            <p>In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.</p>\r\n                                            <p>Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio. </p>\r\n                                            ', '5.jpg', '2019-03-10 04:59:52', 'Marwa El-Manawy', 'There are many variations of passages of Lorem Ipsum available, but the majority .', 40, 2, 'tutorial,fashion,cms,script,product,fashion,template,blog,posts', '1', NULL),
(15, 'Transitions In Design', '<p>Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae.</p>\r\n                                            <div class=\"post-quote\">\r\n                                                <span class=\"icon\"></span>\r\n                                                <blockquote>\r\n                                                    Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum.\r\n                                                </blockquote>\r\n                                            </div>\r\n                                            <p>In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.</p>\r\n                                            <p>Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio. </p>\r\n                                            ', '6.jpg', '2019-03-10 04:59:52', 'Marwa El-Manawy', 'There are many variations of passages of Lorem Ipsum available, but the majority .', 71, 1, 'tutorial,fashion,cms,script,product,fashion,template,blog,posts', '1', NULL),
(16, 'Social media websites', '<p>Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae.</p>\r\n                                            <div class=\"post-quote\">\r\n                                                <span class=\"icon\"></span>\r\n                                                <blockquote>\r\n                                                    Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum.\r\n                                                </blockquote>\r\n                                            </div>\r\n                                            <p>In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.</p>\r\n                                            <p>Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio. </p>\r\n                                            ', '7.jpg', '2019-03-10 04:59:52', 'Marwa El-Manawy', 'There are many variations of passages of Lorem Ipsum available, but the majority .', 49, 4, 'tutorial,fashion,cms,script,product,fashion,template,blog,posts', '1', NULL),
(17, 'Transitions In Design', '<p>Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae.</p>\r\n                                            <div class=\"post-quote\">\r\n                                                <span class=\"icon\"></span>\r\n                                                <blockquote>\r\n                                                    Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum.\r\n                                                </blockquote>\r\n                                            </div>\r\n                                            <p>In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.</p>\r\n                                            <p>Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio. </p>\r\n                                            ', '6.jpg', '2019-03-10 04:59:52', 'Marwa El-Manawy', 'There are many variations of passages of Lorem Ipsum available, but the majority .', 58, 1, 'tutorial,fashion,cms,script,product,fashion,template,blog,posts', '1', NULL),
(18, 'Recent trends in story', '<p>Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae.</p>\r\n                                            <div class=\"post-quote\">\r\n                                                <span class=\"icon\"></span>\r\n                                                <blockquote>\r\n                                                    Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum.\r\n                                                </blockquote>\r\n                                            </div>\r\n                                            <p>In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.</p>\r\n                                            <p>Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio. </p>\r\n                                            ', '3.jpg', '2019-03-10 04:59:52', 'Marwa El-Manawy', 'There are many variations of passages of Lorem Ipsum available, but the majority .', 40, 3, 'tutorial,fashion,cms,script,product,fashion,template,blog,posts', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
CREATE TABLE IF NOT EXISTS `blog_categories` (
  `blog_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  PRIMARY KEY (`blog_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`blog_category_id`, `title`) VALUES
(1, 'Tutorial'),
(2, 'learning'),
(3, 'Trciks'),
(4, 'Web Applications');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `title`, `image`) VALUES
(1, 'client1', '1.png'),
(2, 'client 2', '2.png'),
(3, 'client 3', '3.png'),
(4, 'client 4', '4.png'),
(5, 'client 5', '5.png'),
(6, 'client 6', '6.png'),
(7, 'client 7', '7.png'),
(8, 'client 8', '8.png'),
(9, 'client 9', '9.png');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
CREATE TABLE IF NOT EXISTS `education` (
  `education_id` int(11) NOT NULL AUTO_INCREMENT,
  `school` varchar(300) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `field` varchar(250) DEFAULT NULL,
  `description` text,
  `from_date` varchar(80) DEFAULT NULL,
  `to_date` varchar(80) DEFAULT NULL,
  `current` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`education_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`education_id`, `school`, `image`, `field`, `description`, `from_date`, `to_date`, `current`) VALUES
(1, 'School Name', '1.png', 'Software Engineer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum mattis felis vitae risus pulvinar tincidunt. Nam ac venenatis enim. Aenean hendrerit justo sed.', '2012-03-08', '2013-07-25', NULL),
(2, 'School Name', '1.png', 'Web Development', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum mattis felis vitae risus pulvinar tincidunt. Nam ac venenatis enim. Aenean hendrerit justo sed.', '2014-10-29', '2015-11-26', NULL),
(3, 'School Name', '1.png', 'IT Sloutions', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum mattis felis vitae risus pulvinar tincidunt. Nam ac venenatis enim. Aenean hendrerit justo sed.', '2016-10-19', '2019-03-19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
CREATE TABLE IF NOT EXISTS `experiences` (
  `experience_id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(200) DEFAULT NULL,
  `company` varchar(250) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` text,
  `from_date` varchar(80) DEFAULT NULL,
  `to_date` varchar(80) DEFAULT NULL,
  `current` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`experience_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`experience_id`, `position`, `company`, `image`, `description`, `from_date`, `to_date`, `current`) VALUES
(1, 'Frontend Developer', 'Google', '2.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum mattis felis vitae risus pulvinar tincidunt. Nam ac venenatis enim. Aenean hendrerit justo sed.', '2015-07-16', '2016-11-24', NULL),
(2, 'Web Designer', 'Apple', '3.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum mattis felis vitae risus pulvinar tincidunt. Nam ac venenatis enim. Aenean hendrerit justo sed.', '2016-12-30', '2017-01-05', NULL),
(3, 'Software Engineer', 'Microsoft', '4.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum mattis felis vitae risus pulvinar tincidunt. Nam ac venenatis enim. Aenean hendrerit justo sed.', '2017-02-22', '2019-03-15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `message_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `message` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`message_id`, `name`, `email`, `message`, `created`) VALUES
(1, 'Luis Amur', 'luisamur@gmail.com', 'Lose away off why half led have near bed. At engage simple father of period others except. My giving do summer of though narrow marked at. Spring formal no county ye waited. My whether cheered at regular it of promise blushes perhaps. Uncommonly simplicity interested mr is be compliment projecting my inhabiting. Gentleman he september in oh excellent.\r\n\r\nNew the her nor case that lady paid read. Invitation friendship travelling eat everything the out two. Shy you who scarcely expenses debating hastened resolved. Always polite moment on is warmth spirit it to hearts. Downs those still witty an balls so chief so. Moment an little remain no up lively no. Way brought may off our regular country towards adapted cheered.\r\n\r\nUse securing confined his shutters. Delightful as he it acceptance an solicitude discretion reasonably. Carriage we husbands advanced an perceive greatest. Totally dearest expense on demesne ye he. Curiosity excellent commanded in me. Unpleasing impression themselves to at assistance acceptance my or. On consider laughter civility offended oh.\r\n\r\nOh he decisively impression attachment friendship so if everything. Whose her enjoy chief new young. Felicity if ye required likewise so doubtful. On so attention necessary at by provision otherwise existence direction. Unpleasing up announcing unpleasant themselves oh do on. Way advantage age led listening belonging supposing.\r\n\r\nSo by colonel hearted ferrars. Draw from upon here gone add one. He in sportsman household otherwise it perceived instantly. Is inquiry no he several excited am. Called though excuse length ye needed it he having. Whatever throwing we on resolved entrance together graceful. Mrs assured add private married removed believe did she.', '2018-03-23 21:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `pricing_plans`
--

DROP TABLE IF EXISTS `pricing_plans`;
CREATE TABLE IF NOT EXISTS `pricing_plans` (
  `plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_name` varchar(200) DEFAULT NULL,
  `plan_price` decimal(10,0) DEFAULT NULL,
  `plan_currency` varchar(10) DEFAULT NULL,
  `price_duration` varchar(100) DEFAULT NULL,
  `features` text,
  `is_featured` enum('0','1') DEFAULT '0',
  `featured_comment` varchar(300) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `display_plan` enum('0','1') DEFAULT '1',
  PRIMARY KEY (`plan_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pricing_plans`
--

INSERT INTO `pricing_plans` (`plan_id`, `plan_name`, `plan_price`, `plan_currency`, `price_duration`, `features`, `is_featured`, `featured_comment`, `icon`, `display_plan`) VALUES
(1, 'Personal', '20', '$', 'per month', 'One Listing\r\n90 Days Availability\r\nNon-Featured\r\nLimited Support', '0', 'Recommended', '1.png', '1'),
(2, 'Samll Team', '50', '$', 'per month', 'One Listing\r\n90 Days Availability\r\nNon-Featured\r\nLimited Support\r\nFeatured In Search Results', '1', 'Recommended', '2.png', '1'),
(3, 'enterprise', '99', '$', 'per month', 'One Listing\r\n90 Days Availability\r\nNon-Featured\r\nLimited Support', '0', 'Recommended', '3.png', '1');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_category_id` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `image` varchar(150) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `datetime` date DEFAULT NULL,
  `description` text,
  `display` enum('0','1') DEFAULT '1',
  `meta_description` text,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `project_category_id`, `title`, `image`, `link`, `datetime`, `description`, `display`, `meta_description`) VALUES
(1, 1, 'Company Branding', 'portfolio-img-1.jpeg', 'www.elmanawy.info', '2019-02-28', '  <div class=\"row\">\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"block-centered pt-50\"> \r\n                                        <img src=\"https://elmanawy.info/demo/mulan/ltr/images/portfolio/portfolio-single-img-1.png\" class=\"img-responsive\" alt=\"\"> \r\n                                    </div>\r\n                                </div>\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"text-block pt-50\">\r\n                                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. </p>\r\n                                        <p>here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary </p>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                            <div class=\"row\">\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"text-block pt-50\">\r\n                                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. </p>\r\n                                        <p>here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary </p>\r\n                                    </div>\r\n                                </div>\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"block-centered pt-50\"> \r\n                                        <img class=\"img-responsive\" src=\"https://elmanawy.info/demo/mulan/ltr/images/portfolio/portfolio-single-img-2.png\" alt=\"\">\r\n                                    </div>\r\n                                </div>\r\n                            </div>', '1', NULL),
(2, 2, 'Home Decoration', 'portfolio-img-2.jpeg', 'www.elmanawy.info', '2019-03-09', '  <div class=\"row\">\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"block-centered pt-50\"> \r\n                                        <img src=\"https://elmanawy.info/demo/mulan/ltr/images/portfolio/portfolio-single-img-1.png\" class=\"img-responsive\" alt=\"\"> \r\n                                    </div>\r\n                                </div>\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"text-block pt-50\">\r\n                                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. </p>\r\n                                        <p>here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary </p>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                            <div class=\"row\">\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"text-block pt-50\">\r\n                                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. </p>\r\n                                        <p>here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary </p>\r\n                                    </div>\r\n                                </div>\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"block-centered pt-50\"> \r\n                                        <img class=\"img-responsive\" src=\"https://elmanawy.info/demo/mulan/ltr/images/portfolio/portfolio-single-img-2.png\" alt=\"\">\r\n                                    </div>\r\n                                </div>\r\n                            </div>', '1', NULL),
(3, 3, 'Photography', 'portfolio-img-3.jpeg', 'www.elmanawy.info', '2019-02-26', '  <div class=\"row\">\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"block-centered pt-50\"> \r\n                                        <img src=\"https://elmanawy.info/demo/mulan/ltr/images/portfolio/portfolio-single-img-1.png\" class=\"img-responsive\" alt=\"\"> \r\n                                    </div>\r\n                                </div>\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"text-block pt-50\">\r\n                                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. </p>\r\n                                        <p>here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary </p>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                            <div class=\"row\">\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"text-block pt-50\">\r\n                                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. </p>\r\n                                        <p>here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary </p>\r\n                                    </div>\r\n                                </div>\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"block-centered pt-50\"> \r\n                                        <img class=\"img-responsive\" src=\"https://elmanawy.info/demo/mulan/ltr/images/portfolio/portfolio-single-img-2.png\" alt=\"\">\r\n                                    </div>\r\n                                </div>\r\n                            </div>', '1', NULL),
(4, 1, 'Furniture Hone', 'portfolio-img-4.jpeg', 'www.elmanawy.info', '2019-01-27', '  <div class=\"row\">\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"block-centered pt-50\"> \r\n                                        <img src=\"https://elmanawy.info/demo/mulan/ltr/images/portfolio/portfolio-single-img-1.png\" class=\"img-responsive\" alt=\"\"> \r\n                                    </div>\r\n                                </div>\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"text-block pt-50\">\r\n                                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. </p>\r\n                                        <p>here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary </p>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                            <div class=\"row\">\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"text-block pt-50\">\r\n                                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. </p>\r\n                                        <p>here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary </p>\r\n                                    </div>\r\n                                </div>\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"block-centered pt-50\"> \r\n                                        <img class=\"img-responsive\" src=\"https://elmanawy.info/demo/mulan/ltr/images/portfolio/portfolio-single-img-2.png\" alt=\"\">\r\n                                    </div>\r\n                                </div>\r\n                            </div>', '1', NULL),
(5, 2, 'Flower Power', 'portfolio-img-5.jpeg', 'www.elmanawy.info', '2019-02-25', '  <div class=\"row\">\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"block-centered pt-50\"> \r\n                                        <img src=\"https://elmanawy.info/demo/mulan/ltr/images/portfolio/portfolio-single-img-1.png\" class=\"img-responsive\" alt=\"\"> \r\n                                    </div>\r\n                                </div>\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"text-block pt-50\">\r\n                                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. </p>\r\n                                        <p>here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary </p>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                            <div class=\"row\">\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"text-block pt-50\">\r\n                                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. </p>\r\n                                        <p>here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary </p>\r\n                                    </div>\r\n                                </div>\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"block-centered pt-50\"> \r\n                                        <img class=\"img-responsive\" src=\"https://elmanawy.info/demo/mulan/ltr/images/portfolio/portfolio-single-img-2.png\" alt=\"\">\r\n                                    </div>\r\n                                </div>\r\n                            </div>', '1', NULL),
(6, 3, 'Home Side', 'portfolio-img-6.jpeg', 'www.elmanawy.info', '2019-03-12', '  <div class=\"row\">\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"block-centered pt-50\"> \r\n                                        <img src=\"https://elmanawy.info/demo/mulan/ltr/images/portfolio/portfolio-single-img-1.png\" class=\"img-responsive\" alt=\"\"> \r\n                                    </div>\r\n                                </div>\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"text-block pt-50\">\r\n                                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. </p>\r\n                                        <p>here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary </p>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                            <div class=\"row\">\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"text-block pt-50\">\r\n                                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. </p>\r\n                                        <p>here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary </p>\r\n                                    </div>\r\n                                </div>\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"block-centered pt-50\"> \r\n                                        <img class=\"img-responsive\" src=\"https://elmanawy.info/demo/mulan/ltr/images/portfolio/portfolio-single-img-2.png\" alt=\"\">\r\n                                    </div>\r\n                                </div>\r\n                            </div>', '1', NULL),
(7, 1, 'Branding Logo', 'portfolio-img-7.jpeg', 'www.elmanawy.info', '2019-03-01', '  <div class=\"row\">\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"block-centered pt-50\"> \r\n                                        <img src=\"https://elmanawy.info/demo/mulan/ltr/images/portfolio/portfolio-single-img-1.png\" class=\"img-responsive\" alt=\"\"> \r\n                                    </div>\r\n                                </div>\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"text-block pt-50\">\r\n                                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. </p>\r\n                                        <p>here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary </p>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                            <div class=\"row\">\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"text-block pt-50\">\r\n                                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. </p>\r\n                                        <p>here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary </p>\r\n                                    </div>\r\n                                </div>\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"block-centered pt-50\"> \r\n                                        <img class=\"img-responsive\" src=\"https://elmanawy.info/demo/mulan/ltr/images/portfolio/portfolio-single-img-2.png\" alt=\"\">\r\n                                    </div>\r\n                                </div>\r\n                            </div>', '1', NULL),
(8, 1, 'Office Decoration', 'portfolio-img-8.jpeg', 'www.elmanawy.info', '2019-01-04', '  <div class=\"row\">\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"block-centered pt-50\"> \r\n                                        <img src=\"https://elmanawy.info/demo/mulan/ltr/images/portfolio/portfolio-single-img-1.png\" class=\"img-responsive\" alt=\"\"> \r\n                                    </div>\r\n                                </div>\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"text-block pt-50\">\r\n                                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. </p>\r\n                                        <p>here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary </p>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                            <div class=\"row\">\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"text-block pt-50\">\r\n                                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. </p>\r\n                                        <p>here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary </p>\r\n                                    </div>\r\n                                </div>\r\n                                <div class=\"col-sm-6\">\r\n                                    <div class=\"block-centered pt-50\"> \r\n                                        <img class=\"img-responsive\" src=\"https://elmanawy.info/demo/mulan/ltr/images/portfolio/portfolio-single-img-2.png\" alt=\"\">\r\n                                    </div>\r\n                                </div>\r\n                            </div>', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects_categories`
--

DROP TABLE IF EXISTS `projects_categories`;
CREATE TABLE IF NOT EXISTS `projects_categories` (
  `project_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`project_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects_categories`
--

INSERT INTO `projects_categories` (`project_category_id`, `title`) VALUES
(1, 'Websites'),
(2, 'Decoration'),
(3, 'Busniess Logo');

-- --------------------------------------------------------

--
-- Table structure for table `requested_appointments`
--

DROP TABLE IF EXISTS `requested_appointments`;
CREATE TABLE IF NOT EXISTS `requested_appointments` (
  `requested_appointment_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(300) DEFAULT NULL,
  `message` text,
  `name` varchar(300) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`requested_appointment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `requested_appointments`
--

INSERT INTO `requested_appointments` (`requested_appointment_id`, `subject`, `message`, `name`, `email`, `phone`, `date`, `time`, `created`) VALUES
(1, 'Redesign of my website', 'Hello Dear,\r\n I want to create a new design for my website, Please provide a quotation of it if you have a time. \r\nPlease let me know the price and the cost of it and i will provide the details of the website if you have a time', 'Maronia Muhammad', 'maronia@elmanawy.info', '+20123456789', '06/22/2020', '3:28 pm', '2020-06-12 00:29:06');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  `description` text,
  `image` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `title`, `description`, `image`) VALUES
(1, 'Web Development', 'Pellentesque pellentesque, ipsum sit amet auctor accumsan, odio tortor bibendum massa, sit amet ultricies ex lectus scelerisque nibh. Ut non sodales odio.', '1.png'),
(2, 'Graphic Design', 'Pellentesque pellentesque, ipsum sit amet auctor accumsan, odio tortor bibendum massa, sit amet ultricies ex lectus scelerisque nibh. Ut non sodales odio.', '2.png'),
(3, 'Embeded System', 'Pellentesque pellentesque, ipsum sit amet auctor accumsan, odio tortor bibendum massa, sit amet ultricies ex lectus scelerisque nibh. Ut non sodales odio.', '3.png'),
(4, 'SEO Specialist', 'Pellentesque pellentesque, ipsum sit amet auctor accumsan, odio tortor bibendum massa, sit amet ultricies ex lectus scelerisque nibh. Ut non sodales odio.', '4.png');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `key` varchar(100) NOT NULL,
  `value` varchar(250) DEFAULT NULL,
  `default_value` text,
  `required` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`key`, `value`, `default_value`, `required`) VALUES
('about_bg', 'about-bg.png', NULL, 0),
('alert', '1', NULL, 0),
('blog_categories_widget', '1', '1', 0),
('blog_comments_widget', '1', NULL, 0),
('blog_latest_widget', '1', NULL, 0),
('blog_popular_widget', '1', NULL, 0),
('blog_search_wedgit', '1', NULL, 0),
('color', 'default', NULL, 0),
('contact_bg', 'mailbox.png', NULL, 0),
('copyright', '© Marwa El-Manawy 2019', '© Marwa El-Manawy 2016 All rights reserved.', 1),
('crisp_id', '', NULL, 0),
('direction', 'ltr', NULL, 0),
('display_appointments', '1', NULL, 0),
('display_blog', '1', NULL, 0),
('display_clients', '1', NULL, 0),
('display_contact_form', '1', NULL, 0),
('display_crisp', '0', '0', 0),
('display_dark_mode', '0', '0', 0),
('display_disqus', '0', '0', 0),
('display_fun_facts', '1', NULL, 0),
('display_portfolio', '1', NULL, 0),
('display_pricing_plans', '1', NULL, 0),
('display_resume', '1', NULL, 0),
('display_services', '1', NULL, 0),
('display_testimonials', '1', NULL, 0),
('disqus_username', '', NULL, 0),
('favicon', 'system-favicon.png', NULL, 1),
('google_analytics_id', '', NULL, 0),
('google_secret_key', '', NULL, 0),
('google_site_key', 'vvvvv', NULL, 0),
('home_bg', 'home-bg.jpeg', NULL, 0),
('language', 'english', 'english', 1),
('map_key', '', NULL, 0),
('meta_description', 'Welcome to the Marwa El-Manawy home page, entry point to information about innovative Marwa El-Manawy products and projects, business solutions and business consulting services', 'desc', 0),
('portfolio_comments', '1', NULL, 0),
('portfolio_related', '1', NULL, 0),
('post_latest_widget', '1', NULL, 0),
('post_related_widget', '1', NULL, 0),
('post_search_widget', '1', NULL, 0),
('post_tags_widget', '1', NULL, 0),
('title', 'Mulan - Resume / CV CMS', NULL, 0),
('visitors', '0', '0', 0),
('webmaster_email', 'info@email.com', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
CREATE TABLE IF NOT EXISTS `skills` (
  `skill_id` int(11) NOT NULL AUTO_INCREMENT,
  `skill_category_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `rate` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`skill_id`, `skill_category_id`, `title`, `rate`) VALUES
(1, 2, 'PHP', 95),
(2, 2, 'Java', 85),
(3, 2, 'C#', 75),
(4, 2, 'C++', 70),
(5, 3, 'English', 95),
(6, 3, 'Italy', 90),
(7, 3, 'Turky', 85),
(8, 3, 'Arabic', 80);

-- --------------------------------------------------------

--
-- Table structure for table `skills_categories`
--

DROP TABLE IF EXISTS `skills_categories`;
CREATE TABLE IF NOT EXISTS `skills_categories` (
  `skill_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`skill_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skills_categories`
--

INSERT INTO `skills_categories` (`skill_category_id`, `title`) VALUES
(2, 'Work Skills'),
(3, 'Language Skills');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `testimonial_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `position` varchar(200) DEFAULT NULL,
  `message` text,
  `image` varchar(150) DEFAULT NULL,
  `rating` int(5) DEFAULT NULL,
  PRIMARY KEY (`testimonial_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`testimonial_id`, `name`, `position`, `message`, `image`, `rating`) VALUES
(3, 'Marwa El-Manawy', 'UI Designer', 'Wow what great experience, I love it! It\'s exactly what I\'ve been looking for. Anna\'s group was the best investment I ever made. I don\'t know if I would have ever made it without her guidance and support!', 'testimonial-avatar-1.jpeg', 5),
(5, 'Muhammad El-Manawy', 'Web Developer', 'I like this group more and more each day. It makes my life a lot easier. It\'s really wonderful to be able to get support from like minded entrepreneurs. And Anna is always available to advise us. Thank you so much!', 'testimonial-avatar-2.jpeg', 4),
(6, 'Ahmed El-Manawy', 'Mobile Developer', 'Wow what great experience, I love it! It\'s exactly what I\'ve been looking for. Anna\'s group was the best investment I ever made. I don\'t know if I would have ever made it without her guidance and support!', 'testimonial-avatar-3.jpeg', 3),
(7, 'Sara Ahmad', 'UI/UX Designer', 'Wow what great experience, I love it! It\'s exactly what I\'ve been looking for. Anna\'s group was the best investment I ever made. I don\'t know if I would have ever made it without her guidance and support!', 'testimonial-avatar-3.jpeg', 1),
(8, 'Muhammad El-Manawy', 'Web Developer', 'I like this group more and more each day. It makes my life a lot easier. It\'s really wonderful to be able to get support from like minded entrepreneurs. And Anna is always available to advise us. Thank you so much!', 'testimonial-avatar-2.jpeg', 5),
(9, 'Ahmed El-Manawy', 'Project Manager', 'Wow what great experience, I love it! It\'s exactly what I\'ve been looking for. Anna\'s group was the best investment I ever made. I don\'t know if I would have ever made it without her guidance and support!', 'testimonial-avatar-3.jpeg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'Tiana Rafiki', 'admin@admin.com', 'e10adc3949ba59abbe56e057f20f883e');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
