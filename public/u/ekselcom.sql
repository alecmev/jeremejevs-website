-- phpMyAdmin SQL Dump

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ekselcom`
--

-- --------------------------------------------------------

--
-- Table structure for table `global_data`
--

CREATE TABLE IF NOT EXISTS `global_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `en` text NOT NULL,
  `ru` text NOT NULL,
  `lv` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `global_data`
--

INSERT INTO `global_data` (`id`, `en`, `ru`, `lv`) VALUES
(1, 'Home', 'Начало', 'Sākums'),
(2, 'Products', 'Продукты', 'Produkti'),
(3, 'About', 'О нас', 'Par mums'),
(4, 'Support', 'Поддержка', 'Atbalsts'),
(5, 'Administration panel', 'Панель администрирования', 'Administrēšanas panelis'),
(6, 'Contacts', 'Контакты', 'Kontakti'),
(7, '', '', ''),
(8, '[map]\r\n                                            &lt;div style=&quot;float: left&quot;&gt;\r\n                                                SIA &quot;EKSELCOM&quot;&lt;br /&gt;\r\n                                                LV40003886440&lt;br /&gt;\r\n                                                Ilukstes iela 109 k-2 - 9\r\n                                            &lt;/div&gt;\r\n                                            &lt;div style=&quot;float: right; text-align: right&quot;&gt;\r\n                                                &lt;a href=&quot;mailto:ekselcom@ekselcom.com&quot;&gt;ekselcom@ekselcom.com&lt;/a&gt;&lt;br /&gt;\r\n                                                land: +371 67546566&lt;br /&gt;\r\n                                                mobile: +371 29516287\r\n                                            &lt;/div&gt;', '', ''),
(9, 'Under construction', 'В разработке', 'Izstrādē'),
(10, 'Sorry, this site is currently empty. Our <a href="/en/about/contacts">contacts</a> are available in the "about" section.', 'Просим прощения, сайт пока пуст. Наши <a href="/ru/about/contacts">контакты</a> доступны в разделе "о нас".', 'Atvainojiet, saits pagaidām ir tukšs. Mūsu <a href="/en/about/contacts">kontakti</a> ir pieejami nodaļā "par mums".');

-- --------------------------------------------------------

--
-- Table structure for table `global_structure`
--

CREATE TABLE IF NOT EXISTS `global_structure` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `status` int(10) unsigned NOT NULL,
  `in_menu` tinyint(1) NOT NULL,
  `position` int(10) unsigned NOT NULL,
  `controller` varchar(256) NOT NULL,
  `created_on` datetime NOT NULL,
  `url_name` varchar(256) NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `global_structure`
--

INSERT INTO `global_structure` (`id`, `parent_id`, `status`, `in_menu`, `position`, `controller`, `created_on`, `url_name`, `data`) VALUES
(1, 0, 200, 1, 0, 'home_category', '2011-07-27 00:00:00', 'home', '{"name":1}'),
(2, 0, 200, 1, 1, 'products_category', '2011-07-27 00:00:00', 'products', '{"name":2}'),
(3, 0, 200, 1, 3, 'about_category', '2011-07-27 00:00:00', 'about', '{"name":3}'),
(4, 0, 404, 0, 2, 'support_category', '2011-07-27 00:00:00', 'support', '{"name":4}'),
(5, 0, 200, 0, 0, 'admin_category', '2011-08-21 00:00:00', 'admin', '{"name":5}'),
(6, 3, 200, 0, 1, 'about_entry', '2011-08-25 15:03:03', 'contacts', '{"name":6,"subname":7,"content":8}'),
(7, 1, 200, 0, 0, 'home_entry', '2011-09-26 18:44:46', 'under-construction', '{"name":9,"content":10}');

-- --------------------------------------------------------

--
-- Table structure for table `trash_structure`
--

CREATE TABLE IF NOT EXISTS `trash_structure` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `status` int(10) unsigned NOT NULL,
  `in_menu` tinyint(1) NOT NULL,
  `position` int(10) unsigned NOT NULL,
  `controller` varchar(256) NOT NULL,
  `created_on` datetime NOT NULL,
  `url_name` varchar(256) NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
