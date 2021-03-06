-- phpMyAdmin SQL Dump
-- version 4.2.0
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Авг 12 2014 г., 07:27
-- Версия сервера: 5.6.17
-- Версия PHP: 5.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `moto`
--

-- --------------------------------------------------------

--
-- Структура таблицы `j_assets`
--

CREATE TABLE IF NOT EXISTS `j_assets` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Дамп данных таблицы `j_assets`
--

INSERT INTO `j_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 117, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 24, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 25, 26, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 27, 28, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 29, 30, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 31, 32, 1, 'com_login', 'com_login', '{}'),
(13, 1, 33, 34, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 35, 36, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 37, 38, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 39, 40, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 41, 42, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 43, 78, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 79, 82, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 83, 84, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 85, 86, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 87, 88, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 89, 90, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 91, 94, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 95, 98, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 99, 100, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 23, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 80, 81, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 96, 97, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 92, 93, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 101, 102, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 103, 104, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 105, 106, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 107, 108, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 109, 110, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 111, 112, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 44, 45, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 18, 46, 47, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 48, 49, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 50, 51, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 52, 53, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 54, 55, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 56, 57, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 58, 59, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 60, 61, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 62, 63, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 64, 65, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 66, 67, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 68, 69, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 70, 71, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 72, 73, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 18, 74, 75, 2, 'com_modules.module.87', 'Widgetkit', ''),
(55, 18, 76, 77, 2, 'com_modules.module.88', 'Widgetkit Twitter', ''),
(56, 1, 113, 114, 1, 'com_widgetkit', 'widgetkit', '{}'),
(57, 27, 19, 20, 3, 'com_content.article.1', 'Слайдер', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(58, 1, 115, 116, 1, 'com_jce', 'jce', '{}'),
(59, 27, 21, 22, 3, 'com_content.article.2', 'Команда', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}');

-- --------------------------------------------------------

--
-- Структура таблицы `j_associations`
--

CREATE TABLE IF NOT EXISTS `j_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `j_banners`
--

CREATE TABLE IF NOT EXISTS `j_banners` (
`id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `j_banner_clients`
--

CREATE TABLE IF NOT EXISTS `j_banner_clients` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `j_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `j_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `j_categories`
--

CREATE TABLE IF NOT EXISTS `j_categories` (
`id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `j_categories`
--

INSERT INTO `j_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 13, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `j_contact_details`
--

CREATE TABLE IF NOT EXISTS `j_contact_details` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `j_content`
--

CREATE TABLE IF NOT EXISTS `j_content` (
`id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `j_content`
--

INSERT INTO `j_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 57, 'Слайдер', 'slajder', '<div class="slider">\r\n<div class="slides">\r\n<div id="slide1" class="slide" style="display: block;">\r\n<div class="slidecontent"><img src="templates/moto/images/moto.png" alt="" />\r\n<div class="info_icon">\r\n<span></span>\r\n<p>Защита<br />от влаги</p>\r\n<div>Корпус регистратора отвечает требованиям стандарта IPX6\r\nи сохраняет герметичность на высоких скоростях в любую погоду</div>\r\n</div>\r\n<div class="info_icon">\r\n<span></span>\r\n<p>Встроенный<br />микрофон</p>\r\n<div>В пульте управления регистратором находится встроенный микрофон.</div>\r\n</div>\r\n<div class="info_icon">\r\n<span></span>\r\n<p>USB<br />зарядка</p>\r\n<div>Очень удобный аксессуар - адаптер питания имеет USB зарядку для телефона, навигатора и других устройств. \r\nАдаптер питания так же защищен от попадания воды.</div>\r\n</div>\r\n<div class="info_icon">\r\n<span></span>\r\n<p>Инженеры<br />Тайвань</p>\r\n<div>Регистратор разработан на Тайване и производится под контролем Тайваньских инженеров.\r\nРегистраторы FOXEYE продаются на рынках Кореи, Китая, Тайвани и Японии. </div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id="slide2" class="slide">\r\n<div class="slidecontent"><img src="templates/moto/images/photo1.png" alt="" />\r\n<div class="info_icon">\r\n<span></span>\r\n<p>Wi-fi<br />управление</p>\r\n<div>Удобный пульт управления прикрепляется рядом с приборами (спидометр/тахометр).\r\nПульт имеет светодиоды для индикации питания устройства, записи и подключения по wi-fi.\r\nПозволяет управлять включением/выключением записи,\r\nподключением wi-fi, форматированием карты а так же включением/выключением записи звука.</div>\r\n</div>\r\n<div class="info_icon">\r\n<span></span>\r\n<p>Высокое<br />разрешение</p>\r\n<div>В регистраторе установлена высококачественная оптика из 6-ти стеклянных элементов\r\nМатрица APTINA AR330 с широким динамическим диапазоном и видеопроцессор AMBARELLA A5.\r\nРегистратор может снимать с разрешением FULL HD 1920*1080 30к/сек и HD 1280*720 60к/сек.</div>\r\n</div>\r\n<div class="info_icon">\r\n<span></span>\r\n<p>Внутренняя<br />память</p>\r\n<div>На заводе в корпус регистратора устанавливается надежная \r\nкарта памяти microSD 32Gb 10class,\r\nчто позволяет сохранять до 8ми часов FullHD видео.</div>\r\n</div>\r\n<div class="info_icon">\r\n<span></span>\r\n<p>Широкий<br />угол обзора</p>\r\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id="slide3" class="slide">\r\n<div class="slidecontent"><img src="templates/moto/images/photo2.png" alt="" />\r\n<div class="info_icon">\r\n<span></span>\r\n<p>Циклическа<br />запись</p>\r\n<div>Регистратор пишет видеофайлы по 1-2-3 минуты (задается в настройках)\r\nна встроенную карту памяти 32Gb,\r\nпри этом информация между файлами не теряется, видео пишется стык в стык.\r\nПо заполнению карты памяти самый старый файл стирается и на его место записывается новый.</div>\r\n</div>\r\n<div class="info_icon">\r\n<span></span>\r\n<p>Gsensor</p>\r\n<div>Встроенный датчик удара G-sensor позволяет защитить видеофрагмент от перезаписи в случае резкого замедления.</div>\r\n</div>\r\n<div class="info_icon">\r\n<span></span>\r\n<p>Скрытая<br />установка</p>\r\n<div>Регистратор создан для стационарной установки на мотоцикле/скутере.\r\nСпециальный кронштейн поможет закрепить регистратор под пластиком,\r\nа вращающийся блок линзы - установить нужный угол обзора.</div>\r\n</div>\r\n<div class="info_icon">\r\n<span></span>\r\n<p>Автостарт<br />записи</p>\r\n<div>При включении зажигания регистратор автоматически включится и начнет запись.\r\nВстроенный аккумулятор позволит корректно завершить завершить запись \r\nи сохранить заключительный файл, после выключения двигателя.\r\nПитание регистратора подключается к линии зажигания.</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id="slide4" class="slide">\r\n<div class="slidecontent"><img src="templates/moto/images/photo1.png" alt="" />\r\n<div class="info_icon">\r\n<span></span>\r\n<p>Wi-fi<br />управление</p>\r\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.</div>\r\n</div>\r\n<div class="info_icon">\r\n<span></span>\r\n<p>Высокое<br />разрешение</p>\r\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.</div>\r\n</div>\r\n<div class="info_icon">\r\n<span></span>\r\n<p>Внутренняя<br />память</p>\r\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.</div>\r\n</div>\r\n<div class="info_icon">\r\n<span></span>\r\n<p>Широкий<br />угол обзора</p>\r\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="slide_left">&nbsp;</div>\r\n<div class="slide_right">&nbsp;</div>\r\n</div>', '', 1, 2, '2014-08-09 14:40:52', 821, '', '2014-08-11 21:09:35', 821, 821, '2014-08-11 21:09:35', '2014-08-09 14:40:52', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"0","link_titles":"0","show_tags":"0","show_intro":"0","info_block_position":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_vote":"0","show_hits":"0","show_noauth":"0","urls_position":"0","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 14, 1, '', '', 1, 735, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 59, 'Команда', 'komanda', '<section class="group">\r\n<h1 class="header">КОМАНДА FOXEYE</h1>\r\n<div class="command">\r\n<div class="photo_project_manager"> </div>\r\n<div class="info">\r\n<h2 class="group_name">МОЛОТОК МАКСИМ</h2>\r\n<p class="group_info">Руководитель проекта</p>\r\n<hr class="line_1" />\r\n<p class="group_info">Мотоцикл: HONDA CBR 900 RR</p>\r\n<p class="mail">molotok@foxeye.ru</p>\r\n</div>\r\n</div>\r\n<div class="command">\r\n<div class="photo_filial_1"> </div>\r\n<div class="info">\r\n<h2 class="group_name">БУШМАН СЕРГЕЙ</h2>\r\n<p class="group_info">Филиал Северо-запад</p>\r\n<hr class="line_1" />\r\n<p class="group_info">Мотоцикл: SUZUKI RMZ250</p>\r\n<p class="mailto"><a href="mailto:bushman@foxeye.ru">bushman@foxeye.ru</a></p>\r\n</div>\r\n</div>\r\n<div class="command">\r\n<div class="photo_manager_development"> </div>\r\n<div class="info">\r\n<h2 class="group_name">АЛЕХАНКОВ СЕРГЕЙ</h2>\r\n<p class="group_info">Менеджер по развитию регионов</p>\r\n<hr class="line_1" />\r\n<p class="group_info">Скутер: YAMAHA VINO</p>\r\n<p class="mail">plehanov@foxeye.ru</p>\r\n</div>\r\n</div>\r\n<div class="command">\r\n<div class="photo_filial_2"> </div>\r\n<div class="info">\r\n<h2 class="group_name">СЛАСТЕЛИН ДМИТРИЙ</h2>\r\n<p class="group_info">Филиал Северо-запад</p>\r\n<hr class="line_1" />\r\n<p class="group_info">Мотоцфикл: SUZUKI RMZ250</p>\r\n<p class="mail">bushman@foxeye.ru</p>\r\n</div>\r\n</div>\r\n<div class="command">\r\n<div class="photo_it_director"> </div>\r\n<div class="info">\r\n<h2 class="group_name">ФИРСАНОВ АЛЕКСЕЙ</h2>\r\n<p class="group_info">IT-директор</p>\r\n<hr class="line_1" />\r\n<p class="group_info">Мотоцикл: HONDA CBR 900 RR</p>\r\n<p class="mail">molotok@foxeye.ru</p>\r\n</div>\r\n</div>\r\n</section>', '', 1, 2, '2014-08-11 15:59:51', 821, '', '2014-08-11 17:17:17', 821, 0, '0000-00-00 00:00:00', '2014-08-11 15:59:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 0, '', '', 1, 86, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Структура таблицы `j_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `j_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Структура таблицы `j_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `j_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `j_content_rating`
--

CREATE TABLE IF NOT EXISTS `j_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `j_content_types`
--

CREATE TABLE IF NOT EXISTS `j_content_types` (
`type_id` int(10) unsigned NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `j_content_types`
--

INSERT INTO `j_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{}}', 'WeblinksHelperRoute::getWeblinkRoute', '{"formFile":"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","featured","images"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"], "convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(11, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(12, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(13, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(14, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(15, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Структура таблицы `j_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `j_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `j_extensions`
--

CREATE TABLE IF NOT EXISTS `j_extensions` (
`extension_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10015 ;

--
-- Дамп данных таблицы `j_extensions`
--

INSERT INTO `j_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"ru-RU","site":"ru-RU"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"target":"0","save_history":"1","history_limit":5,"count_clicks":"1","icons":1,"link_icons":"","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_num_links":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_links_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"0","show_link_description":"1","show_link_hits":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"0","show_readmore_title":"0","readmore_limit":"100","show_tags":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":""}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer","version":"5.2.6","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{"mediaversion":"9bdd36d5cb0ffe80c4f301da8e6b1946"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2014-03-09 12:54:48","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2014 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.2.1","description":"LIB_FOF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.15","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.2","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":",@[data-lightbox],@[data-spotlight]","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `j_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"strong_passwords":"1","autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.1","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.1","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"July 2014","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.3","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'Russian', 'language', 'ru-RU', '', 0, 1, 0, 0, '{"name":"Russian","type":"language","creationDate":"2014-07-28","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.3.3.1","description":"Russian language pack (site) for Joomla! 3.3","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'Russian', 'language', 'ru-RU', '', 1, 1, 0, 0, '{"name":"Russian","type":"language","creationDate":"2014-07-28","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.3.3.1","description":"Russian language pack (administrator) for Joomla! 3.3","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'ru-RU', 'package', 'pkg_ru-RU', '', 0, 1, 1, 0, '{"name":"Russian Language Pack","type":"package","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"3.3.3.1","description":"Joomla 3.3 Russian Language Package","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'moto', 'template', 'moto', '', 0, 1, 1, 0, '{"name":"moto","type":"template","creationDate":"3\\/30\\/2012","author":"unrealprojects","copyright":"Copyright (C) 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'Widgetkit', 'module', 'mod_widgetkit', '', 0, 1, 0, 0, '{"name":"Widgetkit","type":"module","creationDate":"May 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Widgetkit module for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{"widget_id":"","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'Widgetkit Twitter', 'module', 'mod_widgetkit_twitter', '', 0, 1, 0, 0, '{"name":"Widgetkit Twitter","type":"module","creationDate":"May 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Twitter module for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{"style_":"list","from_user":"","to_user":"","ref_user":"","hashtag":"","word":"","nots":"","limit":"5","image_size":"48","show_image":"1","show_author":"1","show_date":"1","consumer_key":"","consumer_secret":"","access_token":"","access_token_secret":"","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'System - Widgetkit', 'plugin', 'widgetkit_system', 'system', 0, 1, 1, 0, '{"name":"System - Widgetkit","type":"plugin","creationDate":"May 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'Content - Widgetkit', 'plugin', 'widgetkit_content', 'content', 0, 1, 1, 0, '{"name":"Content - Widgetkit","type":"plugin","creationDate":"May 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'System - Widgetkit ZOO', 'plugin', 'widgetkit_zoo', 'system', 0, 1, 1, 0, '{"name":"System - Widgetkit ZOO","type":"plugin","creationDate":"August 2013","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2013 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"3.1.0","description":"ZOO plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'System - Widgetkit Joomla', 'plugin', 'widgetkit_joomla', 'system', 0, 1, 1, 0, '{"name":"System - Widgetkit Joomla","type":"plugin","creationDate":"December 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Joomla Content plugin for Widgetkit developed by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'widgetkit', 'component', 'com_widgetkit', '', 1, 1, 0, 0, '{"name":"Widgetkit","type":"component","creationDate":"July 2014","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.5.1","description":"Widgetkit - A widget toolkit by YOOtheme (http:\\/\\/www.yootheme.com)","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'plg_installer_webinstaller', 'plugin', 'webinstaller', 'installer', 0, 1, 1, 0, '{"name":"plg_installer_webinstaller","type":"plugin","creationDate":"18 December 2013","author":"Joomla! Project","copyright":"Copyright (C) 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.0.5","description":"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION","group":""}', '{"tab_position":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'plg_editors_jce', 'plugin', 'jce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_jce","type":"plugin","creationDate":"28 July 2014","author":"Ryan Demmer","copyright":"2006-2010 Ryan Demmer","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.4.2","description":"WF_EDITOR_PLUGIN_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'plg_quickicon_jcefilebrowser', 'plugin', 'jcefilebrowser', 'quickicon', 0, 1, 1, 0, '{"name":"plg_quickicon_jcefilebrowser","type":"plugin","creationDate":"28 July 2014","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2014 Ryan Demmer. All rights reserved","authorEmail":"@@email@@","authorUrl":"www.joomalcontenteditor.net","version":"2.4.2","description":"PLG_QUICKICON_JCEFILEBROWSER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'jce', 'component', 'com_jce', '', 1, 1, 0, 0, '{"name":"JCE","type":"component","creationDate":"28 July 2014","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2014 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"www.joomlacontenteditor.net","version":"2.4.2","description":"WF_ADMIN_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `j_finder_filters`
--

CREATE TABLE IF NOT EXISTS `j_finder_filters` (
`filter_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `j_finder_links`
--

CREATE TABLE IF NOT EXISTS `j_finder_links` (
`link_id` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `j_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `j_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `j_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `j_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `j_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `j_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `j_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `j_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `j_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `j_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `j_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `j_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `j_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `j_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `j_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `j_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `j_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `j_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `j_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `j_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `j_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `j_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `j_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `j_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `j_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `j_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `j_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `j_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `j_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `j_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `j_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `j_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `j_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `j_finder_taxonomy` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `j_finder_taxonomy`
--

INSERT INTO `j_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `j_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `j_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `j_finder_terms`
--

CREATE TABLE IF NOT EXISTS `j_finder_terms` (
`term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `j_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `j_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `j_finder_terms_common`
--

INSERT INTO `j_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `j_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `j_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `j_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `j_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `j_finder_types`
--

CREATE TABLE IF NOT EXISTS `j_finder_types` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `j_languages`
--

CREATE TABLE IF NOT EXISTS `j_languages` (
`lang_id` int(11) unsigned NOT NULL,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `j_languages`
--

INSERT INTO `j_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `j_menu`
--

CREATE TABLE IF NOT EXISTS `j_menu` (
`id` int(11) NOT NULL,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=109 ;

--
-- Дамп данных таблицы `j_menu`
--

INSERT INTO `j_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 63, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 29, 30, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 31, 32, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 33, 38, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 34, 35, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 36, 37, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 39, 40, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 41, 42, 0, '*', 1),
(23, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 43, 44, 0, '', 1),
(24, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 45, 46, 0, '*', 1),
(101, 'nav', 'Главная', 'home', '', 'home', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"0","show_noauth":"0","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 1, '*', 0),
(102, 'nav', 'Команда', 'teem', '', 'teem', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 49, 50, 0, '*', 0),
(103, 'main', 'COM_WIDGETKIT', 'com-widgetkit', '', 'com-widgetkit', 'index.php?option=com_widgetkit', 'component', 0, 1, 1, 10010, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_widgetkit/images/widgetkit_16.png', 0, '', 51, 52, 0, '', 1),
(104, 'main', 'JCE', 'jce', '', 'jce', 'index.php?option=com_jce', 'component', 0, 1, 1, 10014, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/logo.png', 0, '', 53, 62, 0, '', 1),
(105, 'main', 'WF_MENU_CPANEL', 'wf-menu-cpanel', '', 'jce/wf-menu-cpanel', 'index.php?option=com_jce', 'component', 0, 104, 2, 10014, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-cpanel.png', 0, '', 54, 55, 0, '', 1),
(106, 'main', 'WF_MENU_CONFIG', 'wf-menu-config', '', 'jce/wf-menu-config', 'index.php?option=com_jce&view=config', 'component', 0, 104, 2, 10014, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-config.png', 0, '', 56, 57, 0, '', 1),
(107, 'main', 'WF_MENU_PROFILES', 'wf-menu-profiles', '', 'jce/wf-menu-profiles', 'index.php?option=com_jce&view=profiles', 'component', 0, 104, 2, 10014, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-profiles.png', 0, '', 58, 59, 0, '', 1),
(108, 'main', 'WF_MENU_INSTALL', 'wf-menu-install', '', 'jce/wf-menu-install', 'index.php?option=com_jce&view=installer', 'component', 0, 104, 2, 10014, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-install.png', 0, '', 60, 61, 0, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `j_menu_types`
--

CREATE TABLE IF NOT EXISTS `j_menu_types` (
`id` int(10) unsigned NOT NULL,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `j_menu_types`
--

INSERT INTO `j_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'nav', 'Main Menu', 'The main menu for the site');

-- --------------------------------------------------------

--
-- Структура таблицы `j_messages`
--

CREATE TABLE IF NOT EXISTS `j_messages` (
`message_id` int(10) unsigned NOT NULL,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `j_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `j_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `j_modules`
--

CREATE TABLE IF NOT EXISTS `j_modules` (
`id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=89 ;

--
-- Дамп данных таблицы `j_modules`
--

INSERT INTO `j_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 55, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"nav","startLevel":"0","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 56, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 57, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 58, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 59, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 60, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 61, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 62, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 63, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 64, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 65, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 66, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 67, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 68, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 69, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 54, 'Widgetkit', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_widgetkit', 1, 1, '', 0, '*'),
(88, 55, 'Widgetkit Twitter', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_widgetkit_twitter', 1, 1, '', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `j_modules_menu`
--

CREATE TABLE IF NOT EXISTS `j_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `j_modules_menu`
--

INSERT INTO `j_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `j_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `j_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
`id` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `j_overrider`
--

CREATE TABLE IF NOT EXISTS `j_overrider` (
`id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `j_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `j_postinstall_messages` (
`postinstall_message_id` bigint(20) unsigned NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `j_postinstall_messages`
--

INSERT INTO `j_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),
(3, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(4, 700, 'COM_CPANEL_MSG_PHPVERSION_TITLE', 'COM_CPANEL_MSG_PHPVERSION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/phpversion.php', 'admin_postinstall_phpversion_condition', '3.2.2', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `j_redirect_links`
--

CREATE TABLE IF NOT EXISTS `j_redirect_links` (
`id` int(10) unsigned NOT NULL,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `j_schemas`
--

CREATE TABLE IF NOT EXISTS `j_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `j_schemas`
--

INSERT INTO `j_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.3.0-2014-04-02');

-- --------------------------------------------------------

--
-- Структура таблицы `j_session`
--

CREATE TABLE IF NOT EXISTS `j_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `j_session`
--

INSERT INTO `j_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('3tt0ku24dk8258mm38hjhvo1g4', 0, 1, '1407791576', '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1407791576;s:18:"session.timer.last";i:1407791576;s:17:"session.timer.now";i:1407791576;s:22:"session.client.browser";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}}', 0, ''),
('5c1927c712fohlt6n3r4q3tmr0', 1, 0, '1407779426', '__default|a:8:{s:15:"session.counter";i:50;s:19:"session.timer.start";i:1407775275;s:18:"session.timer.last";i:1407779425;s:17:"session.timer.now";i:1407779425;s:22:"session.client.browser";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":6:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:0:"";}s:11:"com_content";O:8:"stdClass":1:{s:4:"edit";O:8:"stdClass":1:{s:7:"article";O:8:"stdClass":2:{s:2:"id";a:1:{i:0;i:1;}s:4:"data";N;}}}s:11:"com_modules";O:8:"stdClass":1:{s:7:"modules";O:8:"stdClass":1:{s:6:"filter";O:8:"stdClass":1:{s:18:"client_id_previous";i:0;}}}s:10:"com_config";O:8:"stdClass":1:{s:6:"config";O:8:"stdClass":1:{s:6:"global";O:8:"stdClass":1:{s:4:"data";N;}}}s:11:"com_plugins";O:8:"stdClass":1:{s:7:"plugins";O:8:"stdClass":4:{s:6:"filter";O:8:"stdClass":4:{s:6:"search";s:0:"";s:6:"access";i:0;s:7:"enabled";s:0:"";s:6:"folder";s:0:"";}s:8:"ordercol";s:6:"folder";s:9:"orderdirn";s:3:"asc";s:10:"limitstart";s:1:"0";}}s:6:"global";O:8:"stdClass":1:{s:4:"list";O:8:"stdClass":1:{s:5:"limit";i:0;}}}}s:4:"user";O:5:"JUser":27:{s:9:"\\0\\0\\0isRoot";b:1;s:2:"id";s:3:"821";s:4:"name";s:10:"Super User";s:8:"username";s:5:"admin";s:5:"email";s:25:"office@unrealprojects.com";s:8:"password";s:60:"$2y$10$EnnigNbMVdajy9ztsZT2eeBDPjsRmn3aQWdc9UdicO9D9gUG4v0Na";s:14:"password_clear";s:0:"";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2014-08-07 13:43:41";s:13:"lastvisitDate";s:19:"2014-08-11 09:21:25";s:10:"activation";s:1:"0";s:6:"params";s:0:"";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:12:"requireReset";s:1:"0";s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\\0\\0\\0_authLevels";a:5:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:6;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;s:6:"otpKey";s:0:"";s:4:"otep";s:0:"";}s:13:"session.token";s:32:"738f5b5a61fcea78d80e52ef30b448e9";}__wf|a:1:{s:13:"session.token";s:32:"1803d1dae98bc4b6541106f5b588d84e";}', 821, 'admin'),
('6pfoeuof3ffl2jg3cf9bhocpk0', 0, 1, '1407791560', '__default|a:7:{s:15:"session.counter";i:63;s:19:"session.timer.start";i:1407784929;s:18:"session.timer.last";i:1407791379;s:17:"session.timer.now";i:1407791559;s:22:"session.client.browser";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}}', 0, ''),
('9ignoef0tf7fakc8b6c5hevnl2', 0, 1, '1407783819', '__default|a:7:{s:15:"session.counter";i:24;s:19:"session.timer.start";i:1407779762;s:18:"session.timer.last";i:1407783427;s:17:"session.timer.now";i:1407783819;s:22:"session.client.browser";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}}', 0, ''),
('cebmh0fhcdn46k25gbhkjs7on0', 0, 1, '1407779265', '__default|a:8:{s:15:"session.counter";i:119;s:19:"session.timer.start";i:1407772337;s:18:"session.timer.last";i:1407779261;s:17:"session.timer.now";i:1407779265;s:22:"session.client.browser";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:16:"com_mailto.links";a:1:{s:40:"ea5d88a66a3ddefb4996d6426623292d6a80470d";O:8:"stdClass":2:{s:4:"link";s:16:"http://moto/teem";s:6:"expiry";i:1407773372;}}}', 0, ''),
('ovjjrhrl0qtenp1e5rd1gmie93', 1, 0, '1407791376', '__default|a:8:{s:15:"session.counter";i:34;s:19:"session.timer.start";i:1407786575;s:18:"session.timer.last";i:1407791375;s:17:"session.timer.now";i:1407791375;s:22:"session.client.browser";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":4:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:0:"";}s:13:"com_installer";O:8:"stdClass":2:{s:7:"message";s:0:"";s:17:"extension_message";s:0:"";}s:11:"com_modules";O:8:"stdClass":1:{s:7:"modules";O:8:"stdClass":1:{s:6:"filter";O:8:"stdClass":1:{s:18:"client_id_previous";i:0;}}}s:11:"com_content";O:8:"stdClass":1:{s:4:"edit";O:8:"stdClass":1:{s:7:"article";O:8:"stdClass":2:{s:2:"id";a:1:{i:0;i:1;}s:4:"data";N;}}}}}s:4:"user";O:5:"JUser":27:{s:9:"\\0\\0\\0isRoot";b:1;s:2:"id";s:3:"821";s:4:"name";s:10:"Super User";s:8:"username";s:5:"admin";s:5:"email";s:25:"office@unrealprojects.com";s:8:"password";s:60:"$2y$10$EnnigNbMVdajy9ztsZT2eeBDPjsRmn3aQWdc9UdicO9D9gUG4v0Na";s:14:"password_clear";s:0:"";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2014-08-07 13:43:41";s:13:"lastvisitDate";s:19:"2014-08-11 16:41:25";s:10:"activation";s:1:"0";s:6:"params";s:0:"";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:12:"requireReset";s:1:"0";s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\\0\\0\\0_authLevels";a:5:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:6;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;s:6:"otpKey";s:0:"";s:4:"otep";s:0:"";}s:13:"session.token";s:32:"4dd3d2950d2c4db667efd3d3fa188946";}__wf|a:1:{s:13:"session.token";s:32:"a55e38f1606dac054dc7556e03ee85fb";}', 821, 'admin'),
('qsoifhbnrf1f7jk2lblpcel2g4', 0, 1, '1407784169', '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1407784169;s:18:"session.timer.last";i:1407784169;s:17:"session.timer.now";i:1407784169;s:22:"session.client.browser";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}}', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `j_tags`
--

CREATE TABLE IF NOT EXISTS `j_tags` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `j_tags`
--

INSERT INTO `j_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 0, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `j_template_styles`
--

CREATE TABLE IF NOT EXISTS `j_template_styles` (
`id` int(10) unsigned NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `j_template_styles`
--

INSERT INTO `j_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'moto', 0, '1', 'moto', '{}');

-- --------------------------------------------------------

--
-- Структура таблицы `j_ucm_base`
--

CREATE TABLE IF NOT EXISTS `j_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `j_ucm_content`
--

CREATE TABLE IF NOT EXISTS `j_ucm_content` (
`core_content_id` int(10) unsigned NOT NULL,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `j_ucm_history`
--

CREATE TABLE IF NOT EXISTS `j_ucm_history` (
`version_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Дамп данных таблицы `j_ucm_history`
--

INSERT INTO `j_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(4, 1, 1, '', '2014-08-11 06:58:38', 821, 12211, '0f24ac9f43d7d14528fc6710a6087021ac88e5d0', '{"id":1,"asset_id":"57","title":"\\u0421\\u043b\\u0430\\u0439\\u0434\\u0435\\u0440","alias":"slajder","introtext":"            <div class=\\"slider\\">\\r\\n                 <div class=\\"slides\\">\\r\\n                     <div class=\\"slide\\" number=\\"1\\"  id=\\"slide1\\">\\r\\n                         <div class=\\"slidecontent\\">\\r\\n                             <img src=\\"\\/templates\\/moto\\/images\\/photo2.png\\" alt=\\"\\">\\r\\n                             <div class=\\"info_icon\\">\\r\\n                                 <span><\\/span>\\r\\n                                 <p>\\u0417\\u0430\\u0449\\u0438\\u0442\\u0430<br>\\u043e\\u0442 \\u0432\\u043b\\u0430\\u0433\\u0438<\\/p>\\r\\n                                 <div>\\r\\n                                     Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.\\r\\n                                 <\\/div>\\r\\n                             <\\/div>\\r\\n                             <div class=\\"info_icon\\">\\r\\n                                 <span><\\/span>\\r\\n                                 <p>\\u0412\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u044b\\u0439<br>\\u043c\\u0438\\u043a\\u0440\\u043e\\u0444\\u043e\\u043d<\\/p>\\r\\n                                 <div>\\r\\n                                     Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.\\r\\n                                 <\\/div>\\r\\n                             <\\/div>\\r\\n                             <div class=\\"info_icon\\">\\r\\n                                 <span><\\/span>\\r\\n                                 <p>USB<br>\\u0437\\u0430\\u0440\\u044f\\u0434\\u043a\\u0430<\\/p>\\r\\n                                 <div>\\r\\n                                     Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.\\r\\n                                 <\\/div>\\r\\n                             <\\/div>\\r\\n                             <div class=\\"info_icon\\">\\r\\n                                 <span><\\/span>\\r\\n                                 <p>\\u0418\\u043d\\u0436\\u0435\\u043d\\u0435\\u0440\\u044b<br>\\u0422\\u0430\\u0439\\u0432\\u0430\\u043d\\u044c<\\/p>\\r\\n                                 <div>\\r\\n                                     Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.\\r\\n                                 <\\/div>\\r\\n                             <\\/div>\\r\\n                         <\\/div>\\r\\n                     <\\/div>\\r\\n\\r\\n                     <div class=\\"slide\\" number=\\"2\\" id=\\"slide2\\" style=\\"display: block\\">\\r\\n                         <div class=\\"slidecontent\\">\\r\\n                            <img src=\\"\\/templates\\/moto\\/images\\/photo1.png\\" alt=\\"\\">\\r\\n                             <div class=\\"info_icon\\">\\r\\n                                 <span><\\/span>\\r\\n                                 <p>Wi-fi<br>\\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n                                 <div>\\r\\n                                     Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.\\r\\n                                 <\\/div>\\r\\n                             <\\/div>\\r\\n                             <div class=\\"info_icon\\">\\r\\n                                 <span><\\/span>\\r\\n                                 <p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435<br>\\u0440\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n                                 <div>\\r\\n                                     Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.\\r\\n                                 <\\/div>\\r\\n                             <\\/div>\\r\\n                             <div class=\\"info_icon\\">\\r\\n                                 <span><\\/span>\\r\\n                                 <p>\\u0412\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u044f\\u044f<br>\\u043f\\u0430\\u043c\\u044f\\u0442\\u044c<\\/p>\\r\\n                                 <div>\\r\\n                                     Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.\\r\\n                                 <\\/div>\\r\\n                             <\\/div>\\r\\n                             <div class=\\"info_icon\\">\\r\\n                                 <span><\\/span>\\r\\n                                 <p>\\u0428\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439<br>\\u0443\\u0433\\u043e\\u043b \\u043e\\u0431\\u0437\\u043e\\u0440\\u0430<\\/p>\\r\\n                                 <div>\\r\\n                                     Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.\\r\\n                                 <\\/div>\\r\\n                             <\\/div>\\r\\n                         <\\/div>\\r\\n                     <\\/div>\\r\\n                     <div class=\\"slide\\" number=\\"3\\" id=\\"slide3\\">\\r\\n                         <div class=\\"slidecontent\\">\\r\\n                             <img src=\\"\\/templates\\/moto\\/images\\/photo1.png\\" alt=\\"\\">\\r\\n                             <div class=\\"info_icon\\">\\r\\n                                 <span><\\/span>\\r\\n                                 <p>Wi-fi<br>\\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n                                 <div>\\r\\n                                     Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.\\r\\n                                 <\\/div>\\r\\n                             <\\/div>\\r\\n                             <div class=\\"info_icon\\">\\r\\n                                 <span><\\/span>\\r\\n                                 <p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435<br>\\u0440\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n                                 <div>\\r\\n                                     Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.\\r\\n                                 <\\/div>\\r\\n                             <\\/div>\\r\\n                             <div class=\\"info_icon\\">\\r\\n                                 <span><\\/span>\\r\\n                                 <p>\\u0412\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u044f\\u044f<br>\\u043f\\u0430\\u043c\\u044f\\u0442\\u044c<\\/p>\\r\\n                                 <div>\\r\\n                                     Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.\\r\\n                                 <\\/div>\\r\\n                             <\\/div>\\r\\n                             <div class=\\"info_icon\\">\\r\\n                                 <span><\\/span>\\r\\n                                 <p>\\u0428\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439<br>\\u0443\\u0433\\u043e\\u043b \\u043e\\u0431\\u0437\\u043e\\u0440\\u0430<\\/p>\\r\\n                                 <div>\\r\\n                                     Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.\\r\\n                                 <\\/div>\\r\\n                             <\\/div>\\r\\n                         <\\/div>\\r\\n                     <\\/div>\\r\\n                     <div class=\\"slide\\" number=\\"4\\" id=\\"slide4\\">\\r\\n                         <div class=\\"slidecontent\\">\\r\\n                             <img src=\\"\\/templates\\/moto\\/images\\/photo1.png\\" alt=\\"\\">\\r\\n                             <div class=\\"info_icon\\">\\r\\n                                 <span><\\/span>\\r\\n                                 <p>Wi-fi<br>\\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n                                 <div>\\r\\n                                     Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.\\r\\n                                 <\\/div>\\r\\n                             <\\/div>\\r\\n                             <div class=\\"info_icon\\">\\r\\n                                 <span><\\/span>\\r\\n                                 <p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435<br>\\u0440\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n                                 <div>\\r\\n                                     Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.\\r\\n                                 <\\/div>\\r\\n                             <\\/div>\\r\\n                             <div class=\\"info_icon\\">\\r\\n                                 <span><\\/span>\\r\\n                                 <p>\\u0412\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u044f\\u044f<br>\\u043f\\u0430\\u043c\\u044f\\u0442\\u044c<\\/p>\\r\\n                                 <div>\\r\\n                                     Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.\\r\\n                                 <\\/div>\\r\\n                             <\\/div>\\r\\n                             <div class=\\"info_icon\\">\\r\\n                                 <span><\\/span>\\r\\n                                 <p>\\u0428\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439<br>\\u0443\\u0433\\u043e\\u043b \\u043e\\u0431\\u0437\\u043e\\u0440\\u0430<\\/p>\\r\\n                                 <div>\\r\\n                                     Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.\\r\\n                                 <\\/div>\\r\\n                             <\\/div>\\r\\n                         <\\/div>\\r\\n                     <\\/div>\\r\\n                 <\\/div>\\r\\n                <div class=\\"slide_left\\"><\\/div>\\r\\n                <div class=\\"slide_right\\"><\\/div>\\r\\n            <\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-08-09 14:40:52","created_by":"821","created_by_alias":"","modified":"2014-08-11 06:58:38","modified_by":"821","checked_out":"821","checked_out_time":"2014-08-11 06:57:35","publish_up":"2014-08-09 14:40:52","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"399","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(5, 1, 1, '', '2014-08-11 07:18:37', 821, 7812, '7b999f81a307adb9b0dcb470ec6279b768816c10', '{"id":1,"asset_id":"57","title":"\\u0421\\u043b\\u0430\\u0439\\u0434\\u0435\\u0440","alias":"slajder","introtext":"<div class=\\"slider\\">\\r\\n<div class=\\"slides\\">\\r\\n<div id=\\"slide1\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"\\/templates\\/moto\\/images\\/photo2.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0417\\u0430\\u0449\\u0438\\u0442\\u0430<br \\/>\\u043e\\u0442 \\u0432\\u043b\\u0430\\u0433\\u0438<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u044b\\u0439<br \\/>\\u043c\\u0438\\u043a\\u0440\\u043e\\u0444\\u043e\\u043d<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>USB<br \\/>\\u0437\\u0430\\u0440\\u044f\\u0434\\u043a\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0418\\u043d\\u0436\\u0435\\u043d\\u0435\\u0440\\u044b<br \\/>\\u0422\\u0430\\u0439\\u0432\\u0430\\u043d\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide2\\" class=\\"slide\\" style=\\"display: block;\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"\\/templates\\/moto\\/images\\/photo1.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>Wi-fi<br \\/>\\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435<br \\/>\\u0440\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u044f\\u044f<br \\/>\\u043f\\u0430\\u043c\\u044f\\u0442\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0428\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439<br \\/>\\u0443\\u0433\\u043e\\u043b \\u043e\\u0431\\u0437\\u043e\\u0440\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide3\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"\\/templates\\/moto\\/images\\/photo1.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>Wi-fi<br \\/>\\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435<br \\/>\\u0440\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u044f\\u044f<br \\/>\\u043f\\u0430\\u043c\\u044f\\u0442\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0428\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439<br \\/>\\u0443\\u0433\\u043e\\u043b \\u043e\\u0431\\u0437\\u043e\\u0440\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide4\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"\\/templates\\/moto\\/images\\/photo1.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>Wi-fi<br \\/>\\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435<br \\/>\\u0440\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u044f\\u044f<br \\/>\\u043f\\u0430\\u043c\\u044f\\u0442\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0428\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439<br \\/>\\u0443\\u0433\\u043e\\u043b \\u043e\\u0431\\u0437\\u043e\\u0440\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"slide_left\\">&nbsp;<\\/div>\\r\\n<div class=\\"slide_right\\">&nbsp;<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-08-09 14:40:52","created_by":"821","created_by_alias":"","modified":"2014-08-11 07:18:37","modified_by":"821","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","publish_up":"2014-08-09 14:40:52","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"410","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(6, 1, 1, '', '2014-08-11 07:19:14', 821, 7818, '36f04a53bf2c112f4db011b13145a9b270d971a4', '{"id":1,"asset_id":"57","title":"\\u0421\\u043b\\u0430\\u0439\\u0434\\u0435\\u0440","alias":"slajder","introtext":"<div class=\\"slider\\">\\r\\n<div class=\\"slides\\">\\r\\n<div id=\\"slide1\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"\\/templates\\/moto\\/images\\/photo2.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0417\\u0430\\u0449\\u0438\\u0442\\u0430<br \\/>\\u043e\\u0442 \\u0432\\u043b\\u0430\\u0433\\u0438<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u044b\\u0439<br \\/>\\u043c\\u0438\\u043a\\u0440\\u043e\\u0444\\u043e\\u043d<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>USB<br \\/>\\u0437\\u0430\\u0440\\u044f\\u0434\\u043a\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0418\\u043d\\u0436\\u0435\\u043d\\u0435\\u0440\\u044b<br \\/>\\u0422\\u0430\\u0439\\u0432\\u0430\\u043d\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide2\\" class=\\"slide\\" style=\\"display: block;\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"\\/templates\\/moto\\/images\\/photo1.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>Wi-fi<br \\/>\\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435<br \\/>\\u0440\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u044f\\u044f<br \\/>\\u043f\\u0430\\u043c\\u044f\\u0442\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0428\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439<br \\/>\\u0443\\u0433\\u043e\\u043b \\u043e\\u0431\\u0437\\u043e\\u0440\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide3\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"\\/templates\\/moto\\/images\\/photo1.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>Wi-fi<br \\/>\\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435<br \\/>\\u0440\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u044f\\u044f<br \\/>\\u043f\\u0430\\u043c\\u044f\\u0442\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0428\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439<br \\/>\\u0443\\u0433\\u043e\\u043b \\u043e\\u0431\\u0437\\u043e\\u0440\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide4\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"\\/templates\\/moto\\/images\\/photo1.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>Wi-fi<br \\/>\\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435<br \\/>\\u0440\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u044f\\u044f<br \\/>\\u043f\\u0430\\u043c\\u044f\\u0442\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0428\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439<br \\/>\\u0443\\u0433\\u043e\\u043b \\u043e\\u0431\\u0437\\u043e\\u0440\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n\\r\\n<\\/div>\\r\\n<div class=\\"slide_left\\">&nbsp;<\\/div>\\r\\n<div class=\\"slide_right\\">&nbsp;<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-08-09 14:40:52","created_by":"821","created_by_alias":"","modified":"2014-08-11 07:19:14","modified_by":"821","checked_out":"821","checked_out_time":"2014-08-11 07:18:37","publish_up":"2014-08-09 14:40:52","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"411","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(7, 1, 1, '', '2014-08-11 07:28:01', 821, 7818, '9e051b69e354ab6c1d71468ca1e171353faa86b9', '{"id":1,"asset_id":"57","title":"\\u0421\\u043b\\u0430\\u0439\\u0434\\u0435\\u0440","alias":"slajder","introtext":"<div class=\\"slider\\">\\r\\n<div class=\\"slides\\">\\r\\n<div id=\\"slide1\\" class=\\"slide\\" style=\\"display: block;\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"\\/templates\\/moto\\/images\\/photo2.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0417\\u0430\\u0449\\u0438\\u0442\\u0430<br \\/>\\u043e\\u0442 \\u0432\\u043b\\u0430\\u0433\\u0438<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u044b\\u0439<br \\/>\\u043c\\u0438\\u043a\\u0440\\u043e\\u0444\\u043e\\u043d<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>USB<br \\/>\\u0437\\u0430\\u0440\\u044f\\u0434\\u043a\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0418\\u043d\\u0436\\u0435\\u043d\\u0435\\u0440\\u044b<br \\/>\\u0422\\u0430\\u0439\\u0432\\u0430\\u043d\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide2\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"\\/templates\\/moto\\/images\\/photo1.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>Wi-fi<br \\/>\\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435<br \\/>\\u0440\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u044f\\u044f<br \\/>\\u043f\\u0430\\u043c\\u044f\\u0442\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0428\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439<br \\/>\\u0443\\u0433\\u043e\\u043b \\u043e\\u0431\\u0437\\u043e\\u0440\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide3\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"\\/templates\\/moto\\/images\\/photo1.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>Wi-fi<br \\/>\\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435<br \\/>\\u0440\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u044f\\u044f<br \\/>\\u043f\\u0430\\u043c\\u044f\\u0442\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0428\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439<br \\/>\\u0443\\u0433\\u043e\\u043b \\u043e\\u0431\\u0437\\u043e\\u0440\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide4\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"\\/templates\\/moto\\/images\\/photo1.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>Wi-fi<br \\/>\\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435<br \\/>\\u0440\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u044f\\u044f<br \\/>\\u043f\\u0430\\u043c\\u044f\\u0442\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0428\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439<br \\/>\\u0443\\u0433\\u043e\\u043b \\u043e\\u0431\\u0437\\u043e\\u0440\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n\\r\\n<\\/div>\\r\\n<div class=\\"slide_left\\">&nbsp;<\\/div>\\r\\n<div class=\\"slide_right\\">&nbsp;<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-08-09 14:40:52","created_by":"821","created_by_alias":"","modified":"2014-08-11 07:28:01","modified_by":"821","checked_out":"821","checked_out_time":"2014-08-11 07:19:14","publish_up":"2014-08-09 14:40:52","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":8,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"426","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(8, 1, 1, '', '2014-08-11 08:04:21', 821, 7731, '0497d836f6283e322a0f092e54c91eb33d3bf729', '{"id":1,"asset_id":"57","title":"\\u0421\\u043b\\u0430\\u0439\\u0434\\u0435\\u0440","alias":"slajder","introtext":"<div class=\\"slider\\">\\r\\n<div class=\\"slides\\">\\r\\n<div id=\\"slide1\\" class=\\"slide\\" style=\\"display: block;\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"\\/templates\\/moto\\/images\\/photo2.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0417\\u0430\\u0449\\u0438\\u0442\\u0430<br \\/>\\u043e\\u0442 \\u0432\\u043b\\u0430\\u0433\\u0438<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u044b\\u0439<br \\/>\\u043c\\u0438\\u043a\\u0440\\u043e\\u0444\\u043e\\u043d<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>USB<br \\/>\\u0437\\u0430\\u0440\\u044f\\u0434\\u043a\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0418\\u043d\\u0436\\u0435\\u043d\\u0435\\u0440\\u044b<br \\/>\\u0422\\u0430\\u0439\\u0432\\u0430\\u043d\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide2\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"\\/templates\\/moto\\/images\\/photo1.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>Wi-fi<br \\/>\\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435<br \\/>\\u0440\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u044f\\u044f<br \\/>\\u043f\\u0430\\u043c\\u044f\\u0442\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0428\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439<br \\/>\\u0443\\u0433\\u043e\\u043b \\u043e\\u0431\\u0437\\u043e\\u0440\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide3\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"\\/templates\\/moto\\/images\\/moto.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0426\\u0438\\u043a\\u043b\\u0438\\u0447\\u0435\\u0441\\u043a\\u0430<br \\/>\\u0437\\u0430\\u043f\\u0438\\u0441\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>Gsensor<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0410\\u0432\\u0442\\u043e\\u0441\\u0442\\u0430\\u0440\\u0442<br\\/>\\u0437\\u0430\\u043f\\u0438\\u0441\\u0438<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0421\\u043a\\u0440\\u044b\\u0442\\u0430\\u044f<br \\/>\\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043a\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide4\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"\\/templates\\/moto\\/images\\/photo1.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>Wi-fi<br \\/>\\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435<br \\/>\\u0440\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u044f\\u044f<br \\/>\\u043f\\u0430\\u043c\\u044f\\u0442\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0428\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439<br \\/>\\u0443\\u0433\\u043e\\u043b \\u043e\\u0431\\u0437\\u043e\\u0440\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n\\r\\n<\\/div>\\r\\n<div class=\\"slide_left\\">&nbsp;<\\/div>\\r\\n<div class=\\"slide_right\\">&nbsp;<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-08-09 14:40:52","created_by":"821","created_by_alias":"","modified":"2014-08-11 08:04:21","modified_by":"821","checked_out":"821","checked_out_time":"2014-08-11 07:28:01","publish_up":"2014-08-09 14:40:52","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"453","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `j_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(9, 1, 1, '', '2014-08-11 08:07:26', 821, 7732, '01621d737b29300b333e6532ab4f70b4d22479fe', '{"id":1,"asset_id":"57","title":"\\u0421\\u043b\\u0430\\u0439\\u0434\\u0435\\u0440","alias":"slajder","introtext":"<div class=\\"slider\\">\\r\\n<div class=\\"slides\\">\\r\\n<div id=\\"slide1\\" class=\\"slide\\" style=\\"display: block;\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"\\/templates\\/moto\\/images\\/photo2.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0417\\u0430\\u0449\\u0438\\u0442\\u0430<br \\/>\\u043e\\u0442 \\u0432\\u043b\\u0430\\u0433\\u0438<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u044b\\u0439<br \\/>\\u043c\\u0438\\u043a\\u0440\\u043e\\u0444\\u043e\\u043d<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>USB<br \\/>\\u0437\\u0430\\u0440\\u044f\\u0434\\u043a\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0418\\u043d\\u0436\\u0435\\u043d\\u0435\\u0440\\u044b<br \\/>\\u0422\\u0430\\u0439\\u0432\\u0430\\u043d\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide2\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"\\/templates\\/moto\\/images\\/photo1.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>Wi-fi<br \\/>\\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435<br \\/>\\u0440\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u044f\\u044f<br \\/>\\u043f\\u0430\\u043c\\u044f\\u0442\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0428\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439<br \\/>\\u0443\\u0433\\u043e\\u043b \\u043e\\u0431\\u0437\\u043e\\u0440\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide3\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"\\/templates\\/moto\\/images\\/moto.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0426\\u0438\\u043a\\u043b\\u0438\\u0447\\u0435\\u0441\\u043a\\u0430<br \\/>\\u0437\\u0430\\u043f\\u0438\\u0441\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>Gsensor<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0421\\u043a\\u0440\\u044b\\u0442\\u0430\\u044f<br \\/>\\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043a\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0410\\u0432\\u0442\\u043e\\u0441\\u0442\\u0430\\u0440\\u0442<br\\/>\\u0437\\u0430\\u043f\\u0438\\u0441\\u0438<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide4\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"\\/templates\\/moto\\/images\\/photo1.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>Wi-fi<br \\/>\\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435<br \\/>\\u0440\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0412\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u044f\\u044f<br \\/>\\u043f\\u0430\\u043c\\u044f\\u0442\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\"><span><\\/span>\\r\\n<p>\\u0428\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439<br \\/>\\u0443\\u0433\\u043e\\u043b \\u043e\\u0431\\u0437\\u043e\\u0440\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n\\r\\n<\\/div>\\r\\n<div class=\\"slide_left\\">&nbsp;<\\/div>\\r\\n<div class=\\"slide_right\\">&nbsp;<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-08-09 14:40:52","created_by":"821","created_by_alias":"","modified":"2014-08-11 08:07:26","modified_by":"821","checked_out":"821","checked_out_time":"2014-08-11 08:04:21","publish_up":"2014-08-09 14:40:52","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":10,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"455","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(10, 2, 1, '', '2014-08-11 15:59:51', 821, 5554, '78e3ae7f8ef447c9eec71708f0dee5985fde88bf', '{"id":2,"asset_id":59,"title":"\\u041a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430","alias":"komanda","introtext":"<section class=\\"group\\">\\r\\n                <h1 class=\\"header\\">\\u041a\\u041e\\u041c\\u0410\\u041d\\u0414\\u0410 FOXEYE<\\/h1>\\r\\n                 <div class=\\"command\\">\\r\\n                   <div class=\\"photo_project_manager\\"><\\/div>\\r\\n                   <div class=\\"info\\"><h2 class=\\"group_name\\">\\u041c\\u041e\\u041b\\u041e\\u0422\\u041e\\u041a \\u041c\\u0410\\u041a\\u0421\\u0418\\u041c<\\/h2>\\r\\n                   <p class=\\"group_info\\">\\r\\n                        \\u0420\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<br>\\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: HONDA CBR 900 RR<br><\\/p>\\r\\n                   <hr class=\\"line_1\\"\\/>\\r\\n                   <p class=\\"mail\\">molotok@foxeye.ru<\\/p>\\r\\n\\r\\n                   <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                   <div class=\\"photo_filial_1\\"><\\/div>\\r\\n                      <div class=\\"info\\"><h2 class=\\"group_name\\">\\u0411\\u0423\\u0428\\u041c\\u0410\\u041d \\u0421\\u0415\\u0420\\u0413\\u0415\\u0419<\\/h2>\\r\\n                        <p class=\\"group_info\\">\\r\\n                            \\u0424\\u0438\\u043b\\u0438\\u0430\\u043b \\u0421\\u0435\\u0432\\u0435\\u0440\\u043e-\\u0437\\u0430\\u043f\\u0430\\u0434<br>\\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: SUZUKI RMZ250<br>\\r\\n                        <\\/p>\\r\\n                        <hr class=\\"line_1\\"\\/>\\r\\n                        <p class=\\"mail\\">bushman@foxeye.ru<\\/p>\\r\\n\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                    <div class=\\"photo_manager_development\\"><\\/div>\\r\\n                    <div class=\\"info\\"><h2 class=\\"group_name\\">\\u0410\\u041b\\u0415\\u0425\\u0410\\u041d\\u041a\\u041e\\u0412 \\u0421\\u0415\\u0420\\u0413\\u0415\\u0419<\\/h2>\\r\\n                        <p class=\\"group_info\\">\\r\\n                            \\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440 \\u043f\\u043e \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u0438\\u044e \\u0440\\u0435\\u0433\\u0438\\u043e\\u043d\\u043e\\u0432<br>\\u0421\\u043a\\u0443\\u0442\\u0435\\u0440: YAMAHA VINO<br>\\r\\n                        <\\/p>\\r\\n                            <hr class=\\"line_1\\"\\/>\\r\\n                        <p class=\\"mail\\">plehanov@foxeye.ru<\\/p>\\r\\n\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                    <div class=\\"photo_filial_2\\">\\r\\n                    <\\/div>\\r\\n                    <div class=\\"info\\"><h2 class=\\"group_name\\">\\u0421\\u041b\\u0410\\u0421\\u0422\\u0415\\u041b\\u0418\\u041d \\u0414\\u041c\\u0418\\u0422\\u0420\\u0418\\u0419<\\/h2>\\r\\n                         <p class=\\"group_info\\">\\r\\n                             \\u0424\\u0438\\u043b\\u0438\\u0430\\u043b \\u0421\\u0435\\u0432\\u0435\\u0440\\u043e-\\u0437\\u0430\\u043f\\u0430\\u0434<br>\\u041c\\u043e\\u0442\\u043e\\u0446\\u0444\\u0438\\u043a\\u043b: SUZUKI RMZ250<br>\\r\\n                         <\\/p>\\r\\n                         <hr class=\\"line_1\\"\\/>\\r\\n                         <p class=\\"mail\\">bushman@foxeye.ru<\\/p>\\r\\n\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                    <div class=\\"photo_it_director\\">\\r\\n                    <\\/div>\\r\\n                    <div class=\\"info\\"><h2 class=\\"group_name\\">\\u0424\\u0418\\u0420\\u0421\\u0410\\u041d\\u041e\\u0412 \\u0410\\u041b\\u0415\\u041a\\u0421\\u0415\\u0419<\\/h2>\\r\\n                        <p class=\\"group_info\\">\\r\\n                            IT-\\u0434\\u0438\\u0440\\u0435\\u043a\\u0442\\u043e\\u0440<br> \\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: HONDA CBR 900 RR<br>\\r\\n                        <\\/p>\\r\\n                        <hr class=\\"line_1\\"\\/>\\r\\n                        <p class=\\"mail\\">molotok@foxeye.ru<\\/p>\\r\\n\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n              <\\/section>","fulltext":"","state":1,"catid":"2","created":"2014-08-11 15:59:51","created_by":"821","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-08-11 15:59:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(11, 2, 1, '', '2014-08-11 16:49:37', 821, 5675, '36395a6b45b485354be922a9bc4caccb448335f7', '{"id":2,"asset_id":"59","title":"\\u041a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430","alias":"komanda","introtext":"<section class=\\"group\\">\\r\\n                <h1 class=\\"header\\">\\u041a\\u041e\\u041c\\u0410\\u041d\\u0414\\u0410 FOXEYE<\\/h1>\\r\\n                 <div class=\\"command\\">\\r\\n                   <div class=\\"photo_project_manager\\"><\\/div>\\r\\n                   <div class=\\"info\\"><h2 class=\\"group_name\\">\\u041c\\u041e\\u041b\\u041e\\u0422\\u041e\\u041a \\u041c\\u0410\\u041a\\u0421\\u0418\\u041c<\\/h2>\\r\\n                   <hr class=\\"line_1\\"\\/>\\r\\n                   <p class=\\"group_info\\">\\r\\n                        \\u0420\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<br>\\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: HONDA CBR 900 RR<\\/p>\\r\\n                   \\r\\n                   <p class=\\"mail\\">molotok@foxeye.ru<\\/p>\\r\\n\\r\\n                   <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                   <div class=\\"photo_filial_1\\"><\\/div>\\r\\n                      <div class=\\"info\\"><h2 class=\\"group_name\\">\\u0411\\u0423\\u0428\\u041c\\u0410\\u041d \\u0421\\u0415\\u0420\\u0413\\u0415\\u0419<\\/h2>\\r\\n                      <hr class=\\"line_1\\"\\/>\\r\\n                        <p class=\\"group_info\\">\\r\\n                            \\u0424\\u0438\\u043b\\u0438\\u0430\\u043b \\u0421\\u0435\\u0432\\u0435\\u0440\\u043e-\\u0437\\u0430\\u043f\\u0430\\u0434<br>\\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: SUZUKI RMZ250<br>\\r\\n                        <\\/p>\\r\\n                        \\r\\n                        <p class=\\"mail\\">bushman@foxeye.ru<\\/p>\\r\\n\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                    <div class=\\"photo_manager_development\\"><\\/div>\\r\\n                    <div class=\\"info\\"><h2 class=\\"group_name\\">\\u0410\\u041b\\u0415\\u0425\\u0410\\u041d\\u041a\\u041e\\u0412 \\u0421\\u0415\\u0420\\u0413\\u0415\\u0419<\\/h2>\\r\\n                            <hr class=\\"line_1\\"\\/>\\r\\n                        <p class=\\"group_info\\">\\r\\n                            \\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440 \\u043f\\u043e \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u0438\\u044e \\u0440\\u0435\\u0433\\u0438\\u043e\\u043d\\u043e\\u0432<br>\\u0421\\u043a\\u0443\\u0442\\u0435\\u0440: YAMAHA VINO<br>\\r\\n                        <\\/p>\\r\\n\\r\\n                        <p class=\\"mail\\">plehanov@foxeye.ru<\\/p>\\r\\n\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                    <div class=\\"photo_filial_2\\">\\r\\n                    <\\/div>\\r\\n                    <div class=\\"info\\"><h2 class=\\"group_name\\">\\u0421\\u041b\\u0410\\u0421\\u0422\\u0415\\u041b\\u0418\\u041d \\u0414\\u041c\\u0418\\u0422\\u0420\\u0418\\u0419<\\/h2>\\r\\n                         <hr class=\\"line_1\\"\\/>\\r\\n                         <p class=\\"group_info\\">\\r\\n                             \\u0424\\u0438\\u043b\\u0438\\u0430\\u043b \\u0421\\u0435\\u0432\\u0435\\u0440\\u043e-\\u0437\\u0430\\u043f\\u0430\\u0434<br>\\u041c\\u043e\\u0442\\u043e\\u0446\\u0444\\u0438\\u043a\\u043b: SUZUKI RMZ250<br>\\r\\n                         <\\/p>\\r\\n                         \\r\\n                         <p class=\\"mail\\">bushman@foxeye.ru<\\/p>\\r\\n\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                    <div class=\\"photo_it_director\\">\\r\\n                    <\\/div>\\r\\n                    <div class=\\"info\\"><h2 class=\\"group_name\\">\\u0424\\u0418\\u0420\\u0421\\u0410\\u041d\\u041e\\u0412 \\u0410\\u041b\\u0415\\u041a\\u0421\\u0415\\u0419<\\/h2>\\r\\n                        <hr class=\\"line_1\\"\\/>\\r\\n                        <p class=\\"group_info\\">\\r\\n                            IT-\\u0434\\u0438\\u0440\\u0435\\u043a\\u0442\\u043e\\u0440<br> \\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: HONDA CBR 900 RR<br>\\r\\n                        <\\/p>\\r\\n\\r\\n                        <p class=\\"mail\\">molotok@foxeye.ru<\\/p>\\r\\n\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n              <\\/section>","fulltext":"","state":1,"catid":"2","created":"2014-08-11 15:59:51","created_by":"821","created_by_alias":"","modified":"2014-08-11 16:49:37","modified_by":"821","checked_out":"821","checked_out_time":"2014-08-11 16:44:50","publish_up":"2014-08-11 15:59:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"55","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(12, 2, 1, '', '2014-08-11 16:52:26', 821, 5653, '1fe43244fd59fdb1f261f2fae8c5f066f1cab49a', '{"id":2,"asset_id":"59","title":"\\u041a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430","alias":"komanda","introtext":"<section class=\\"group\\">\\r\\n                <h1 class=\\"header\\">\\u041a\\u041e\\u041c\\u0410\\u041d\\u0414\\u0410 FOXEYE<\\/h1>\\r\\n                 <div class=\\"command\\">\\r\\n                   <div class=\\"photo_project_manager\\"><\\/div>\\r\\n                   <div class=\\"info\\"><h2 class=\\"group_name\\">\\u041c\\u041e\\u041b\\u041e\\u0422\\u041e\\u041a \\u041c\\u0410\\u041a\\u0421\\u0418\\u041c<\\/h2>\\r\\n                  \\r\\n                   <p class=\\"group_info\\">\\u0420\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/p>\\r\\n                   <hr class=\\"line_1\\"\\/>\\r\\n                   <p class=\\"group_info\\">\\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: HONDA CBR 900 RR<\\/p>\\r\\n                   <p class=\\"mail\\">molotok@foxeye.ru<\\/p>\\r\\n\\r\\n                   <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                   <div class=\\"photo_filial_1\\"><\\/div>\\r\\n                      <div class=\\"info\\"><h2 class=\\"group_name\\">\\u0411\\u0423\\u0428\\u041c\\u0410\\u041d \\u0421\\u0415\\u0420\\u0413\\u0415\\u0419<\\/h2>\\r\\n                        <p class=\\"group_info\\">\\u0424\\u0438\\u043b\\u0438\\u0430\\u043b \\u0421\\u0435\\u0432\\u0435\\u0440\\u043e-\\u0437\\u0430\\u043f\\u0430\\u0434<\\/p>\\r\\n                        <hr class=\\"line_1\\"\\/>\\r\\n                        <p class=\\"group_info\\">\\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: SUZUKI RMZ250<\\/p>\\r\\n                        <p class=\\"mail\\">bushman@foxeye.ru<\\/p>\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                    <div class=\\"photo_manager_development\\"><\\/div>\\r\\n                    <div class=\\"info\\"><h2 class=\\"group_name\\">\\u0410\\u041b\\u0415\\u0425\\u0410\\u041d\\u041a\\u041e\\u0412 \\u0421\\u0415\\u0420\\u0413\\u0415\\u0419<\\/h2>\\r\\n                            <hr class=\\"line_1\\"\\/>\\r\\n                        <p class=\\"group_info\\">\\r\\n                            \\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440 \\u043f\\u043e \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u0438\\u044e \\u0440\\u0435\\u0433\\u0438\\u043e\\u043d\\u043e\\u0432<br>\\u0421\\u043a\\u0443\\u0442\\u0435\\u0440: YAMAHA VINO<br>\\r\\n                        <\\/p>\\r\\n\\r\\n                        <p class=\\"mail\\">plehanov@foxeye.ru<\\/p>\\r\\n\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                    <div class=\\"photo_filial_2\\">\\r\\n                    <\\/div>\\r\\n                    <div class=\\"info\\"><h2 class=\\"group_name\\">\\u0421\\u041b\\u0410\\u0421\\u0422\\u0415\\u041b\\u0418\\u041d \\u0414\\u041c\\u0418\\u0422\\u0420\\u0418\\u0419<\\/h2>\\r\\n                         <hr class=\\"line_1\\"\\/>\\r\\n                         <p class=\\"group_info\\">\\r\\n                             \\u0424\\u0438\\u043b\\u0438\\u0430\\u043b \\u0421\\u0435\\u0432\\u0435\\u0440\\u043e-\\u0437\\u0430\\u043f\\u0430\\u0434<br>\\u041c\\u043e\\u0442\\u043e\\u0446\\u0444\\u0438\\u043a\\u043b: SUZUKI RMZ250<br>\\r\\n                         <\\/p>\\r\\n                         \\r\\n                         <p class=\\"mail\\">bushman@foxeye.ru<\\/p>\\r\\n\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                    <div class=\\"photo_it_director\\">\\r\\n                    <\\/div>\\r\\n                    <div class=\\"info\\"><h2 class=\\"group_name\\">\\u0424\\u0418\\u0420\\u0421\\u0410\\u041d\\u041e\\u0412 \\u0410\\u041b\\u0415\\u041a\\u0421\\u0415\\u0419<\\/h2>\\r\\n                        <hr class=\\"line_1\\"\\/>\\r\\n                        <p class=\\"group_info\\">\\r\\n                            IT-\\u0434\\u0438\\u0440\\u0435\\u043a\\u0442\\u043e\\u0440<br> \\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: HONDA CBR 900 RR<br>\\r\\n                        <\\/p>\\r\\n\\r\\n                        <p class=\\"mail\\">molotok@foxeye.ru<\\/p>\\r\\n\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n              <\\/section>","fulltext":"","state":1,"catid":"2","created":"2014-08-11 15:59:51","created_by":"821","created_by_alias":"","modified":"2014-08-11 16:52:26","modified_by":"821","checked_out":"821","checked_out_time":"2014-08-11 16:49:37","publish_up":"2014-08-11 15:59:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"56","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(13, 2, 1, '', '2014-08-11 16:58:58', 821, 5560, 'b65de1dec06e249ae0762f95031fc396e21c3295', '{"id":2,"asset_id":"59","title":"\\u041a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430","alias":"komanda","introtext":"<section class=\\"group\\">\\r\\n                <h1 class=\\"header\\">\\u041a\\u041e\\u041c\\u0410\\u041d\\u0414\\u0410 FOXEYE<\\/h1>\\r\\n                 <div class=\\"command\\">\\r\\n                   <div class=\\"photo_project_manager\\"><\\/div>\\r\\n                   <div class=\\"info\\"><h2 class=\\"group_name\\">\\u041c\\u041e\\u041b\\u041e\\u0422\\u041e\\u041a \\u041c\\u0410\\u041a\\u0421\\u0418\\u041c<\\/h2>\\r\\n                   <p class=\\"group_info\\">\\u0420\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/p>\\r\\n                   <hr class=\\"line_1\\"\\/>\\r\\n                   <p class=\\"group_info\\">\\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: HONDA CBR 900 RR<\\/p>\\r\\n                   <p class=\\"mail\\">molotok@foxeye.ru<\\/p>\\r\\n                   <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                   <div class=\\"photo_filial_1\\"><\\/div>\\r\\n                      <div class=\\"info\\"><h2 class=\\"group_name\\">\\u0411\\u0423\\u0428\\u041c\\u0410\\u041d \\u0421\\u0415\\u0420\\u0413\\u0415\\u0419<\\/h2>\\r\\n                        <p class=\\"group_info\\">\\u0424\\u0438\\u043b\\u0438\\u0430\\u043b \\u0421\\u0435\\u0432\\u0435\\u0440\\u043e-\\u0437\\u0430\\u043f\\u0430\\u0434<\\/p>\\r\\n                        <hr class=\\"line_1\\"\\/>\\r\\n                        <p class=\\"group_info\\">\\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: SUZUKI RMZ250<\\/p>\\r\\n                        <p class=\\"mail\\">bushman@foxeye.ru<\\/p>\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                    <div class=\\"photo_manager_development\\"><\\/div>\\r\\n                    <div class=\\"info\\"><h2 class=\\"group_name\\">\\u0410\\u041b\\u0415\\u0425\\u0410\\u041d\\u041a\\u041e\\u0412 \\u0421\\u0415\\u0420\\u0413\\u0415\\u0419<\\/h2>\\r\\n                            \\r\\n                        <p class=\\"group_info\\">\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440 \\u043f\\u043e \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u0438\\u044e \\u0440\\u0435\\u0433\\u0438\\u043e\\u043d\\u043e\\u0432<\\/p>\\r\\n<hr class=\\"line_1\\"\\/>\\r\\n                        <p class=\\"group_info\\">\\u0421\\u043a\\u0443\\u0442\\u0435\\u0440: YAMAHA VINO<\\/p>\\r\\n\\r\\n                        <p class=\\"mail\\">plehanov@foxeye.ru<\\/p>\\r\\n\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                    <div class=\\"photo_filial_2\\">\\r\\n                    <\\/div>\\r\\n                    <div class=\\"info\\"><h2 class=\\"group_name\\">\\u0421\\u041b\\u0410\\u0421\\u0422\\u0415\\u041b\\u0418\\u041d \\u0414\\u041c\\u0418\\u0422\\u0420\\u0418\\u0419<\\/h2>\\r\\n                         <p class=\\"group_info\\">\\u0424\\u0438\\u043b\\u0438\\u0430\\u043b \\u0421\\u0435\\u0432\\u0435\\u0440\\u043e-\\u0437\\u0430\\u043f\\u0430\\u0434<\\/p>\\r\\n                         <hr class=\\"line_1\\"\\/>\\r\\n                         <p class=\\"group_info\\">\\u041c\\u043e\\u0442\\u043e\\u0446\\u0444\\u0438\\u043a\\u043b: SUZUKI RMZ250<\\/p>\\r\\n                         <p class=\\"mail\\">bushman@foxeye.ru<\\/p>\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                    <div class=\\"photo_it_director\\">\\r\\n                    <\\/div>\\r\\n                    <div class=\\"info\\"><h2 class=\\"group_name\\">\\u0424\\u0418\\u0420\\u0421\\u0410\\u041d\\u041e\\u0412 \\u0410\\u041b\\u0415\\u041a\\u0421\\u0415\\u0419<\\/h2>\\r\\n \\r\\n                        <p class=\\"group_info\\">IT-\\u0434\\u0438\\u0440\\u0435\\u043a\\u0442\\u043e\\u0440<\\/p>\\r\\n                        <hr class=\\"line_1\\"\\/>\\r\\n                        <p class=\\"group_info\\">\\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: HONDA CBR 900 RR<\\/p>\\r\\n                        <p class=\\"mail\\">molotok@foxeye.ru<\\/p>\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n              <\\/section>","fulltext":"","state":1,"catid":"2","created":"2014-08-11 15:59:51","created_by":"821","created_by_alias":"","modified":"2014-08-11 16:58:58","modified_by":"821","checked_out":"821","checked_out_time":"2014-08-11 16:52:26","publish_up":"2014-08-11 15:59:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"58","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(14, 2, 1, '', '2014-08-11 17:02:05', 821, 5603, '572277a9ba6288513a5fe6516f10bdcdacf3288c', '{"id":2,"asset_id":"59","title":"\\u041a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430","alias":"komanda","introtext":"<section class=\\"group\\">\\r\\n                <h1 class=\\"header\\">\\u041a\\u041e\\u041c\\u0410\\u041d\\u0414\\u0410 FOXEYE<\\/h1>\\r\\n                 <div class=\\"command\\">\\r\\n                   <div class=\\"photo_project_manager\\"><\\/div>\\r\\n                   <div class=\\"info\\"><h2 class=\\"group_name\\">\\u041c\\u041e\\u041b\\u041e\\u0422\\u041e\\u041a \\u041c\\u0410\\u041a\\u0421\\u0418\\u041c<\\/h2>\\r\\n                   <p class=\\"group_info\\">\\u0420\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/p>\\r\\n                   <hr class=\\"line_1\\">\\r\\n                   <p class=\\"group_info\\">\\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: HONDA CBR 900 RR<\\/p>\\r\\n                   <p class=\\"mail\\">molotok@foxeye.ru<\\/p>\\r\\n                   <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                   <div class=\\"photo_filial_1\\"><\\/div>\\r\\n                      <div class=\\"info\\">\\r\\n                        <h2 class=\\"group_name\\">\\u0411\\u0423\\u0428\\u041c\\u0410\\u041d \\u0421\\u0415\\u0420\\u0413\\u0415\\u0419<\\/h2>\\r\\n                        <p class=\\"group_info\\">\\u0424\\u0438\\u043b\\u0438\\u0430\\u043b \\u0421\\u0435\\u0432\\u0435\\u0440\\u043e-\\u0437\\u0430\\u043f\\u0430\\u0434<\\/p>\\r\\n                        <hr class=\\"line_1\\">\\r\\n                        <p class=\\"group_info\\">\\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: SUZUKI RMZ250<\\/p>\\r\\n                        <p class=\\"mail\\">bushman@foxeye.ru<\\/p>\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                    <div class=\\"photo_manager_development\\"><\\/div>\\r\\n                    <div class=\\"info\\"><h2 class=\\"group_name\\">\\u0410\\u041b\\u0415\\u0425\\u0410\\u041d\\u041a\\u041e\\u0412 \\u0421\\u0415\\u0420\\u0413\\u0415\\u0419<\\/h2>\\r\\n                            \\r\\n                        <p class=\\"group_info\\">\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440 \\u043f\\u043e \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u0438\\u044e \\u0440\\u0435\\u0433\\u0438\\u043e\\u043d\\u043e\\u0432<\\/p>\\r\\n<hr class=\\"line_1\\"\\/>\\r\\n                        <p class=\\"group_info\\">\\u0421\\u043a\\u0443\\u0442\\u0435\\u0440: YAMAHA VINO<\\/p>\\r\\n\\r\\n                        <p class=\\"mail\\">plehanov@foxeye.ru<\\/p>\\r\\n\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                    <div class=\\"photo_filial_2\\">\\r\\n                    <\\/div>\\r\\n                    <div class=\\"info\\"><h2 class=\\"group_name\\">\\u0421\\u041b\\u0410\\u0421\\u0422\\u0415\\u041b\\u0418\\u041d \\u0414\\u041c\\u0418\\u0422\\u0420\\u0418\\u0419<\\/h2>\\r\\n                         <p class=\\"group_info\\">\\u0424\\u0438\\u043b\\u0438\\u0430\\u043b \\u0421\\u0435\\u0432\\u0435\\u0440\\u043e-\\u0437\\u0430\\u043f\\u0430\\u0434<\\/p>\\r\\n                         <hr class=\\"line_1\\">\\r\\n                         <p class=\\"group_info\\">\\u041c\\u043e\\u0442\\u043e\\u0446\\u0444\\u0438\\u043a\\u043b: SUZUKI RMZ250<\\/p>\\r\\n                         <p class=\\"mail\\">bushman@foxeye.ru<\\/p>\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                    <div class=\\"photo_it_director\\">\\r\\n                    <\\/div>\\r\\n                    <div class=\\"info\\">\\r\\n                        <h2 class=\\"group_name\\">\\u0424\\u0418\\u0420\\u0421\\u0410\\u041d\\u041e\\u0412 \\u0410\\u041b\\u0415\\u041a\\u0421\\u0415\\u0419<\\/h2>\\r\\n                        <p class=\\"group_info\\">IT-\\u0434\\u0438\\u0440\\u0435\\u043a\\u0442\\u043e\\u0440<\\/p>\\r\\n                        <hr class=\\"line_1\\">\\r\\n                        <p class=\\"group_info\\">\\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: HONDA CBR 900 RR<\\/p>\\r\\n                        <p class=\\"mail\\">molotok@foxeye.ru<\\/p>\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n              <\\/section>","fulltext":"","state":1,"catid":"2","created":"2014-08-11 15:59:51","created_by":"821","created_by_alias":"","modified":"2014-08-11 17:02:05","modified_by":"821","checked_out":"821","checked_out_time":"2014-08-11 16:58:58","publish_up":"2014-08-11 15:59:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"60","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(15, 2, 1, '', '2014-08-11 17:06:55', 821, 5643, '4d670b96e7f0bfb8d81343b64eeb2d25aca2a30c', '{"id":2,"asset_id":"59","title":"\\u041a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430","alias":"komanda","introtext":"<section class=\\"group\\">\\r\\n                <h1 class=\\"header\\">\\u041a\\u041e\\u041c\\u0410\\u041d\\u0414\\u0410 FOXEYE<\\/h1>\\r\\n                 <div class=\\"command\\">\\r\\n                   <div class=\\"photo_project_manager\\"><\\/div>\\r\\n                   <div class=\\"info\\"><h2 class=\\"group_name\\">\\u041c\\u041e\\u041b\\u041e\\u0422\\u041e\\u041a \\u041c\\u0410\\u041a\\u0421\\u0418\\u041c<\\/h2>\\r\\n                   <p class=\\"group_info\\">\\u0420\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/p>\\r\\n                   <hr class=\\"line_1\\">\\r\\n                   <p class=\\"group_info\\">\\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: HONDA CBR 900 RR<\\/p>\\r\\n                   <p class=\\"mail\\">molotok@foxeye.ru<\\/p>\\r\\n                   <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                   <div class=\\"photo_filial_1\\"><\\/div>\\r\\n                      <div class=\\"info\\">\\r\\n                        <h2 class=\\"group_name\\">\\u0411\\u0423\\u0428\\u041c\\u0410\\u041d \\u0421\\u0415\\u0420\\u0413\\u0415\\u0419<\\/h2>\\r\\n                        <p class=\\"group_info\\">\\u0424\\u0438\\u043b\\u0438\\u0430\\u043b \\u0421\\u0435\\u0432\\u0435\\u0440\\u043e-\\u0437\\u0430\\u043f\\u0430\\u0434<\\/p>\\r\\n                        <hr class=\\"line_1\\">\\r\\n                        <p class=\\"group_info\\">\\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: SUZUKI RMZ250<\\/p>\\r\\n                        <p class=\\"mail\\"><a href=''mailto:bushman@foxeye.ru''>bushman@foxeye.ru<\\/a><\\/p>\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                    <div class=\\"photo_manager_development\\"><\\/div>\\r\\n                    <div class=\\"info\\"><h2 class=\\"group_name\\">\\u0410\\u041b\\u0415\\u0425\\u0410\\u041d\\u041a\\u041e\\u0412 \\u0421\\u0415\\u0420\\u0413\\u0415\\u0419<\\/h2>\\r\\n                            \\r\\n                        <p class=\\"group_info\\">\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440 \\u043f\\u043e \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u0438\\u044e \\u0440\\u0435\\u0433\\u0438\\u043e\\u043d\\u043e\\u0432<\\/p>\\r\\n<hr class=\\"line_1\\"\\/>\\r\\n                        <p class=\\"group_info\\">\\u0421\\u043a\\u0443\\u0442\\u0435\\u0440: YAMAHA VINO<\\/p>\\r\\n\\r\\n                        <p class=\\"mail\\">plehanov@foxeye.ru<\\/p>\\r\\n\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                    <div class=\\"photo_filial_2\\">\\r\\n                    <\\/div>\\r\\n                    <div class=\\"info\\"><h2 class=\\"group_name\\">\\u0421\\u041b\\u0410\\u0421\\u0422\\u0415\\u041b\\u0418\\u041d \\u0414\\u041c\\u0418\\u0422\\u0420\\u0418\\u0419<\\/h2>\\r\\n                         <p class=\\"group_info\\">\\u0424\\u0438\\u043b\\u0438\\u0430\\u043b \\u0421\\u0435\\u0432\\u0435\\u0440\\u043e-\\u0437\\u0430\\u043f\\u0430\\u0434<\\/p>\\r\\n                         <hr class=\\"line_1\\">\\r\\n                         <p class=\\"group_info\\">\\u041c\\u043e\\u0442\\u043e\\u0446\\u0444\\u0438\\u043a\\u043b: SUZUKI RMZ250<\\/p>\\r\\n                         <p class=\\"mail\\">bushman@foxeye.ru<\\/p>\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                    <div class=\\"photo_it_director\\">\\r\\n                    <\\/div>\\r\\n                    <div class=\\"info\\">\\r\\n                        <h2 class=\\"group_name\\">\\u0424\\u0418\\u0420\\u0421\\u0410\\u041d\\u041e\\u0412 \\u0410\\u041b\\u0415\\u041a\\u0421\\u0415\\u0419<\\/h2>\\r\\n                        <p class=\\"group_info\\">IT-\\u0434\\u0438\\u0440\\u0435\\u043a\\u0442\\u043e\\u0440<\\/p>\\r\\n                        <hr class=\\"line_1\\">\\r\\n                        <p class=\\"group_info\\">\\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: HONDA CBR 900 RR<\\/p>\\r\\n                        <p class=\\"mail\\">molotok@foxeye.ru<\\/p>\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n              <\\/section>","fulltext":"","state":1,"catid":"2","created":"2014-08-11 15:59:51","created_by":"821","created_by_alias":"","modified":"2014-08-11 17:06:55","modified_by":"821","checked_out":"821","checked_out_time":"2014-08-11 17:02:05","publish_up":"2014-08-11 15:59:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"61","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `j_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(16, 2, 1, '', '2014-08-11 17:08:17', 821, 5645, 'f485f5aefd2f2604930c934517a31ae10885baf1', '{"id":2,"asset_id":"59","title":"\\u041a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430","alias":"komanda","introtext":"<section class=\\"group\\">\\r\\n                <h1 class=\\"header\\">\\u041a\\u041e\\u041c\\u0410\\u041d\\u0414\\u0410 FOXEYE<\\/h1>\\r\\n                 <div class=\\"command\\">\\r\\n                   <div class=\\"photo_project_manager\\"><\\/div>\\r\\n                   <div class=\\"info\\"><h2 class=\\"group_name\\">\\u041c\\u041e\\u041b\\u041e\\u0422\\u041e\\u041a \\u041c\\u0410\\u041a\\u0421\\u0418\\u041c<\\/h2>\\r\\n                   <p class=\\"group_info\\">\\u0420\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/p>\\r\\n                   <hr class=\\"line_1\\">\\r\\n                   <p class=\\"group_info\\">\\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: HONDA CBR 900 RR<\\/p>\\r\\n                   <p class=\\"mail\\">molotok@foxeye.ru<\\/p>\\r\\n                   <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                   <div class=\\"photo_filial_1\\"><\\/div>\\r\\n                      <div class=\\"info\\">\\r\\n                        <h2 class=\\"group_name\\">\\u0411\\u0423\\u0428\\u041c\\u0410\\u041d \\u0421\\u0415\\u0420\\u0413\\u0415\\u0419<\\/h2>\\r\\n                        <p class=\\"group_info\\">\\u0424\\u0438\\u043b\\u0438\\u0430\\u043b \\u0421\\u0435\\u0432\\u0435\\u0440\\u043e-\\u0437\\u0430\\u043f\\u0430\\u0434<\\/p>\\r\\n                        <hr class=\\"line_1\\">\\r\\n                        <p class=\\"group_info\\">\\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: SUZUKI RMZ250<\\/p>\\r\\n                        <p class=\\"mailto\\"><a href=''mailto:bushman@foxeye.ru''>bushman@foxeye.ru<\\/a><\\/p>\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                    <div class=\\"photo_manager_development\\"><\\/div>\\r\\n                    <div class=\\"info\\"><h2 class=\\"group_name\\">\\u0410\\u041b\\u0415\\u0425\\u0410\\u041d\\u041a\\u041e\\u0412 \\u0421\\u0415\\u0420\\u0413\\u0415\\u0419<\\/h2>\\r\\n                            \\r\\n                        <p class=\\"group_info\\">\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440 \\u043f\\u043e \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u0438\\u044e \\u0440\\u0435\\u0433\\u0438\\u043e\\u043d\\u043e\\u0432<\\/p>\\r\\n<hr class=\\"line_1\\"\\/>\\r\\n                        <p class=\\"group_info\\">\\u0421\\u043a\\u0443\\u0442\\u0435\\u0440: YAMAHA VINO<\\/p>\\r\\n\\r\\n                        <p class=\\"mail\\">plehanov@foxeye.ru<\\/p>\\r\\n\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                    <div class=\\"photo_filial_2\\">\\r\\n                    <\\/div>\\r\\n                    <div class=\\"info\\"><h2 class=\\"group_name\\">\\u0421\\u041b\\u0410\\u0421\\u0422\\u0415\\u041b\\u0418\\u041d \\u0414\\u041c\\u0418\\u0422\\u0420\\u0418\\u0419<\\/h2>\\r\\n                         <p class=\\"group_info\\">\\u0424\\u0438\\u043b\\u0438\\u0430\\u043b \\u0421\\u0435\\u0432\\u0435\\u0440\\u043e-\\u0437\\u0430\\u043f\\u0430\\u0434<\\/p>\\r\\n                         <hr class=\\"line_1\\">\\r\\n                         <p class=\\"group_info\\">\\u041c\\u043e\\u0442\\u043e\\u0446\\u0444\\u0438\\u043a\\u043b: SUZUKI RMZ250<\\/p>\\r\\n                         <p class=\\"mail\\">bushman@foxeye.ru<\\/p>\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n                <div class=\\"command\\">\\r\\n                    <div class=\\"photo_it_director\\">\\r\\n                    <\\/div>\\r\\n                    <div class=\\"info\\">\\r\\n                        <h2 class=\\"group_name\\">\\u0424\\u0418\\u0420\\u0421\\u0410\\u041d\\u041e\\u0412 \\u0410\\u041b\\u0415\\u041a\\u0421\\u0415\\u0419<\\/h2>\\r\\n                        <p class=\\"group_info\\">IT-\\u0434\\u0438\\u0440\\u0435\\u043a\\u0442\\u043e\\u0440<\\/p>\\r\\n                        <hr class=\\"line_1\\">\\r\\n                        <p class=\\"group_info\\">\\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: HONDA CBR 900 RR<\\/p>\\r\\n                        <p class=\\"mail\\">molotok@foxeye.ru<\\/p>\\r\\n                    <\\/div>\\r\\n                <\\/div>\\r\\n              <\\/section>","fulltext":"","state":1,"catid":"2","created":"2014-08-11 15:59:51","created_by":"821","created_by_alias":"","modified":"2014-08-11 17:08:17","modified_by":"821","checked_out":"821","checked_out_time":"2014-08-11 17:06:55","publish_up":"2014-08-11 15:59:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"62","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(17, 2, 1, '', '2014-08-11 17:16:38', 821, 4667, '79da6b2d16e5af73239e4ae65056d012ce0ff672', '{"id":2,"asset_id":"59","title":"\\u041a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430","alias":"komanda","introtext":"<p>{ emailcloak=off }<\\/p>\\r\\n<section class=\\"group\\">\\r\\n<h1 class=\\"header\\">\\u041a\\u041e\\u041c\\u0410\\u041d\\u0414\\u0410 FOXEYE<\\/h1>\\r\\n<div class=\\"command\\">\\r\\n<div class=\\"photo_project_manager\\">\\u00a0<\\/div>\\r\\n<div class=\\"info\\">\\r\\n<h2 class=\\"group_name\\">\\u041c\\u041e\\u041b\\u041e\\u0422\\u041e\\u041a \\u041c\\u0410\\u041a\\u0421\\u0418\\u041c<\\/h2>\\r\\n<p class=\\"group_info\\">\\u0420\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/p>\\r\\n<hr class=\\"line_1\\" \\/>\\r\\n<p class=\\"group_info\\">\\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: HONDA CBR 900 RR<\\/p>\\r\\n<p class=\\"mail\\">molotok@foxeye.ru<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"command\\">\\r\\n<div class=\\"photo_filial_1\\">\\u00a0<\\/div>\\r\\n<div class=\\"info\\">\\r\\n<h2 class=\\"group_name\\">\\u0411\\u0423\\u0428\\u041c\\u0410\\u041d \\u0421\\u0415\\u0420\\u0413\\u0415\\u0419<\\/h2>\\r\\n<p class=\\"group_info\\">\\u0424\\u0438\\u043b\\u0438\\u0430\\u043b \\u0421\\u0435\\u0432\\u0435\\u0440\\u043e-\\u0437\\u0430\\u043f\\u0430\\u0434<\\/p>\\r\\n<hr class=\\"line_1\\" \\/>\\r\\n<p class=\\"group_info\\">\\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: SUZUKI RMZ250<\\/p>\\r\\n<p class=\\"mailto\\"><a href=\\"mailto:bushman@foxeye.ru\\">bushman@foxeye.ru<\\/a><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"command\\">\\r\\n<div class=\\"photo_manager_development\\">\\u00a0<\\/div>\\r\\n<div class=\\"info\\">\\r\\n<h2 class=\\"group_name\\">\\u0410\\u041b\\u0415\\u0425\\u0410\\u041d\\u041a\\u041e\\u0412 \\u0421\\u0415\\u0420\\u0413\\u0415\\u0419<\\/h2>\\r\\n<p class=\\"group_info\\">\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440 \\u043f\\u043e \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u0438\\u044e \\u0440\\u0435\\u0433\\u0438\\u043e\\u043d\\u043e\\u0432<\\/p>\\r\\n<hr class=\\"line_1\\" \\/>\\r\\n<p class=\\"group_info\\">\\u0421\\u043a\\u0443\\u0442\\u0435\\u0440: YAMAHA VINO<\\/p>\\r\\n<p class=\\"mail\\">plehanov@foxeye.ru<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"command\\">\\r\\n<div class=\\"photo_filial_2\\">\\u00a0<\\/div>\\r\\n<div class=\\"info\\">\\r\\n<h2 class=\\"group_name\\">\\u0421\\u041b\\u0410\\u0421\\u0422\\u0415\\u041b\\u0418\\u041d \\u0414\\u041c\\u0418\\u0422\\u0420\\u0418\\u0419<\\/h2>\\r\\n<p class=\\"group_info\\">\\u0424\\u0438\\u043b\\u0438\\u0430\\u043b \\u0421\\u0435\\u0432\\u0435\\u0440\\u043e-\\u0437\\u0430\\u043f\\u0430\\u0434<\\/p>\\r\\n<hr class=\\"line_1\\" \\/>\\r\\n<p class=\\"group_info\\">\\u041c\\u043e\\u0442\\u043e\\u0446\\u0444\\u0438\\u043a\\u043b: SUZUKI RMZ250<\\/p>\\r\\n<p class=\\"mail\\">bushman@foxeye.ru<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"command\\">\\r\\n<div class=\\"photo_it_director\\">\\u00a0<\\/div>\\r\\n<div class=\\"info\\">\\r\\n<h2 class=\\"group_name\\">\\u0424\\u0418\\u0420\\u0421\\u0410\\u041d\\u041e\\u0412 \\u0410\\u041b\\u0415\\u041a\\u0421\\u0415\\u0419<\\/h2>\\r\\n<p class=\\"group_info\\">IT-\\u0434\\u0438\\u0440\\u0435\\u043a\\u0442\\u043e\\u0440<\\/p>\\r\\n<hr class=\\"line_1\\" \\/>\\r\\n<p class=\\"group_info\\">\\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: HONDA CBR 900 RR<\\/p>\\r\\n<p class=\\"mail\\">molotok@foxeye.ru<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/section>","fulltext":"","state":1,"catid":"2","created":"2014-08-11 15:59:51","created_by":"821","created_by_alias":"","modified":"2014-08-11 17:16:38","modified_by":"821","checked_out":"821","checked_out_time":"2014-08-11 17:16:28","publish_up":"2014-08-11 15:59:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":8,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"64","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(18, 2, 1, '', '2014-08-11 17:17:17', 821, 4637, '2711984924dbf750cebf483331f7be56d1034d89', '{"id":2,"asset_id":"59","title":"\\u041a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430","alias":"komanda","introtext":"<section class=\\"group\\">\\r\\n<h1 class=\\"header\\">\\u041a\\u041e\\u041c\\u0410\\u041d\\u0414\\u0410 FOXEYE<\\/h1>\\r\\n<div class=\\"command\\">\\r\\n<div class=\\"photo_project_manager\\">\\u00a0<\\/div>\\r\\n<div class=\\"info\\">\\r\\n<h2 class=\\"group_name\\">\\u041c\\u041e\\u041b\\u041e\\u0422\\u041e\\u041a \\u041c\\u0410\\u041a\\u0421\\u0418\\u041c<\\/h2>\\r\\n<p class=\\"group_info\\">\\u0420\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/p>\\r\\n<hr class=\\"line_1\\" \\/>\\r\\n<p class=\\"group_info\\">\\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: HONDA CBR 900 RR<\\/p>\\r\\n<p class=\\"mail\\">molotok@foxeye.ru<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"command\\">\\r\\n<div class=\\"photo_filial_1\\">\\u00a0<\\/div>\\r\\n<div class=\\"info\\">\\r\\n<h2 class=\\"group_name\\">\\u0411\\u0423\\u0428\\u041c\\u0410\\u041d \\u0421\\u0415\\u0420\\u0413\\u0415\\u0419<\\/h2>\\r\\n<p class=\\"group_info\\">\\u0424\\u0438\\u043b\\u0438\\u0430\\u043b \\u0421\\u0435\\u0432\\u0435\\u0440\\u043e-\\u0437\\u0430\\u043f\\u0430\\u0434<\\/p>\\r\\n<hr class=\\"line_1\\" \\/>\\r\\n<p class=\\"group_info\\">\\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: SUZUKI RMZ250<\\/p>\\r\\n<p class=\\"mailto\\"><a href=\\"mailto:bushman@foxeye.ru\\">bushman@foxeye.ru<\\/a><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"command\\">\\r\\n<div class=\\"photo_manager_development\\">\\u00a0<\\/div>\\r\\n<div class=\\"info\\">\\r\\n<h2 class=\\"group_name\\">\\u0410\\u041b\\u0415\\u0425\\u0410\\u041d\\u041a\\u041e\\u0412 \\u0421\\u0415\\u0420\\u0413\\u0415\\u0419<\\/h2>\\r\\n<p class=\\"group_info\\">\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440 \\u043f\\u043e \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u0438\\u044e \\u0440\\u0435\\u0433\\u0438\\u043e\\u043d\\u043e\\u0432<\\/p>\\r\\n<hr class=\\"line_1\\" \\/>\\r\\n<p class=\\"group_info\\">\\u0421\\u043a\\u0443\\u0442\\u0435\\u0440: YAMAHA VINO<\\/p>\\r\\n<p class=\\"mail\\">plehanov@foxeye.ru<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"command\\">\\r\\n<div class=\\"photo_filial_2\\">\\u00a0<\\/div>\\r\\n<div class=\\"info\\">\\r\\n<h2 class=\\"group_name\\">\\u0421\\u041b\\u0410\\u0421\\u0422\\u0415\\u041b\\u0418\\u041d \\u0414\\u041c\\u0418\\u0422\\u0420\\u0418\\u0419<\\/h2>\\r\\n<p class=\\"group_info\\">\\u0424\\u0438\\u043b\\u0438\\u0430\\u043b \\u0421\\u0435\\u0432\\u0435\\u0440\\u043e-\\u0437\\u0430\\u043f\\u0430\\u0434<\\/p>\\r\\n<hr class=\\"line_1\\" \\/>\\r\\n<p class=\\"group_info\\">\\u041c\\u043e\\u0442\\u043e\\u0446\\u0444\\u0438\\u043a\\u043b: SUZUKI RMZ250<\\/p>\\r\\n<p class=\\"mail\\">bushman@foxeye.ru<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"command\\">\\r\\n<div class=\\"photo_it_director\\">\\u00a0<\\/div>\\r\\n<div class=\\"info\\">\\r\\n<h2 class=\\"group_name\\">\\u0424\\u0418\\u0420\\u0421\\u0410\\u041d\\u041e\\u0412 \\u0410\\u041b\\u0415\\u041a\\u0421\\u0415\\u0419<\\/h2>\\r\\n<p class=\\"group_info\\">IT-\\u0434\\u0438\\u0440\\u0435\\u043a\\u0442\\u043e\\u0440<\\/p>\\r\\n<hr class=\\"line_1\\" \\/>\\r\\n<p class=\\"group_info\\">\\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b: HONDA CBR 900 RR<\\/p>\\r\\n<p class=\\"mail\\">molotok@foxeye.ru<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/section>","fulltext":"","state":1,"catid":"2","created":"2014-08-11 15:59:51","created_by":"821","created_by_alias":"","modified":"2014-08-11 17:17:17","modified_by":"821","checked_out":"821","checked_out_time":"2014-08-11 17:16:38","publish_up":"2014-08-11 15:59:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"65","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(19, 1, 1, '', '2014-08-11 19:52:43', 821, 7497, '6d9a6ef6dc62c74105e4e405508025f5e8282043', '{"id":1,"asset_id":"57","title":"\\u0421\\u043b\\u0430\\u0439\\u0434\\u0435\\u0440","alias":"slajder","introtext":"<div class=\\"slider\\">\\r\\n<div class=\\"slides\\">\\r\\n<div id=\\"slide1\\" class=\\"slide\\" style=\\"display: block;\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"templates\\/moto\\/images\\/moto.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\">\\r\\n<p>\\u0417\\u0430\\u0449\\u0438\\u0442\\u0430<br \\/>\\u043e\\u0442 \\u0432\\u043b\\u0430\\u0433\\u0438<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<p>\\u0412\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u044b\\u0439<br \\/>\\u043c\\u0438\\u043a\\u0440\\u043e\\u0444\\u043e\\u043d<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<p>USB<br \\/>\\u0437\\u0430\\u0440\\u044f\\u0434\\u043a\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<p>\\u0418\\u043d\\u0436\\u0435\\u043d\\u0435\\u0440\\u044b<br \\/>\\u0422\\u0430\\u0439\\u0432\\u0430\\u043d\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide2\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"templates\\/moto\\/images\\/photo1.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\">\\r\\n<p>Wi-fi<br \\/>\\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435<br \\/>\\u0440\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<p>\\u0412\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u044f\\u044f<br \\/>\\u043f\\u0430\\u043c\\u044f\\u0442\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<p>\\u0428\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439<br \\/>\\u0443\\u0433\\u043e\\u043b \\u043e\\u0431\\u0437\\u043e\\u0440\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide3\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"templates\\/moto\\/images\\/photo2.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\">\\r\\n<p>\\u0426\\u0438\\u043a\\u043b\\u0438\\u0447\\u0435\\u0441\\u043a\\u0430<br \\/>\\u0437\\u0430\\u043f\\u0438\\u0441\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<p>Gsensor<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<p>\\u0421\\u043a\\u0440\\u044b\\u0442\\u0430\\u044f<br \\/>\\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043a\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<p>\\u0410\\u0432\\u0442\\u043e\\u0441\\u0442\\u0430\\u0440\\u0442<br \\/>\\u0437\\u0430\\u043f\\u0438\\u0441\\u0438<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide4\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"templates\\/moto\\/images\\/photo1.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\">\\r\\n<p>Wi-fi<br \\/>\\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435<br \\/>\\u0440\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<p>\\u0412\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u044f\\u044f<br \\/>\\u043f\\u0430\\u043c\\u044f\\u0442\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<p>\\u0428\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439<br \\/>\\u0443\\u0433\\u043e\\u043b \\u043e\\u0431\\u0437\\u043e\\u0440\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"slide_left\\">\\u00a0<\\/div>\\r\\n<div class=\\"slide_right\\">\\u00a0<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-08-09 14:40:52","created_by":"821","created_by_alias":"","modified":"2014-08-11 19:52:43","modified_by":"821","checked_out":"821","checked_out_time":"2014-08-11 19:51:37","publish_up":"2014-08-09 14:40:52","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":11,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"694","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(20, 1, 1, '', '2014-08-11 19:58:56', 821, 7785, '422e5fd155f062efaac97e63b408c977e3074121', '{"id":1,"asset_id":"57","title":"\\u0421\\u043b\\u0430\\u0439\\u0434\\u0435\\u0440","alias":"slajder","introtext":"<div class=\\"slider\\">\\r\\n<div class=\\"slides\\">\\r\\n<div id=\\"slide1\\" class=\\"slide\\" style=\\"display: block;\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"templates\\/moto\\/images\\/moto.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0417\\u0430\\u0449\\u0438\\u0442\\u0430<br \\/>\\u043e\\u0442 \\u0432\\u043b\\u0430\\u0433\\u0438<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0412\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u044b\\u0439<br \\/>\\u043c\\u0438\\u043a\\u0440\\u043e\\u0444\\u043e\\u043d<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>USB<br \\/>\\u0437\\u0430\\u0440\\u044f\\u0434\\u043a\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0418\\u043d\\u0436\\u0435\\u043d\\u0435\\u0440\\u044b<br \\/>\\u0422\\u0430\\u0439\\u0432\\u0430\\u043d\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide2\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"templates\\/moto\\/images\\/photo1.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>Wi-fi<br \\/>\\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435<br \\/>\\u0440\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0412\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u044f\\u044f<br \\/>\\u043f\\u0430\\u043c\\u044f\\u0442\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0428\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439<br \\/>\\u0443\\u0433\\u043e\\u043b \\u043e\\u0431\\u0437\\u043e\\u0440\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide3\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"templates\\/moto\\/images\\/photo2.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0426\\u0438\\u043a\\u043b\\u0438\\u0447\\u0435\\u0441\\u043a\\u0430<br \\/>\\u0437\\u0430\\u043f\\u0438\\u0441\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>Gsensor<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0421\\u043a\\u0440\\u044b\\u0442\\u0430\\u044f<br \\/>\\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043a\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0410\\u0432\\u0442\\u043e\\u0441\\u0442\\u0430\\u0440\\u0442<br \\/>\\u0437\\u0430\\u043f\\u0438\\u0441\\u0438<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide4\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"templates\\/moto\\/images\\/photo1.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>Wi-fi<br \\/>\\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435<br \\/>\\u0440\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0412\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u044f\\u044f<br \\/>\\u043f\\u0430\\u043c\\u044f\\u0442\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0428\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439<br \\/>\\u0443\\u0433\\u043e\\u043b \\u043e\\u0431\\u0437\\u043e\\u0440\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"slide_left\\">&nbsp;<\\/div>\\r\\n<div class=\\"slide_right\\">&nbsp;<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-08-09 14:40:52","created_by":"821","created_by_alias":"","modified":"2014-08-11 19:58:56","modified_by":"821","checked_out":"821","checked_out_time":"2014-08-11 19:57:10","publish_up":"2014-08-09 14:40:52","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":12,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"699","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(21, 1, 1, '', '2014-08-11 21:05:08', 821, 9725, '9da64a96c533535ef1ec3046b8b268244209e7f1', '{"id":1,"asset_id":"57","title":"\\u0421\\u043b\\u0430\\u0439\\u0434\\u0435\\u0440","alias":"slajder","introtext":"<div class=\\"slider\\">\\r\\n<div class=\\"slides\\">\\r\\n<div id=\\"slide1\\" class=\\"slide\\" style=\\"display: block;\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"templates\\/moto\\/images\\/moto.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0417\\u0430\\u0449\\u0438\\u0442\\u0430<br \\/>\\u043e\\u0442 \\u0432\\u043b\\u0430\\u0433\\u0438<\\/p>\\r\\n<div>\\u041a\\u043e\\u0440\\u043f\\u0443\\u0441 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440\\u0430 \\u043e\\u0442\\u0432\\u0435\\u0447\\u0430\\u0435\\u0442 \\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f\\u043c \\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u0430 IPX6\\r\\n\\u0438 \\u0441\\u043e\\u0445\\u0440\\u0430\\u043d\\u044f\\u0435\\u0442 \\u0433\\u0435\\u0440\\u043c\\u0435\\u0442\\u0438\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u043d\\u0430 \\u0432\\u044b\\u0441\\u043e\\u043a\\u0438\\u0445 \\u0441\\u043a\\u043e\\u0440\\u043e\\u0441\\u0442\\u044f\\u0445 \\u0432 \\u043b\\u044e\\u0431\\u0443\\u044e \\u043f\\u043e\\u0433\\u043e\\u0434\\u0443<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0412\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u044b\\u0439<br \\/>\\u043c\\u0438\\u043a\\u0440\\u043e\\u0444\\u043e\\u043d<\\/p>\\r\\n<div>\\u0412 \\u043f\\u0443\\u043b\\u044c\\u0442\\u0435 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440\\u043e\\u043c \\u043d\\u0430\\u0445\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0432\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043c\\u0438\\u043a\\u0440\\u043e\\u0444\\u043e\\u043d.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>USB<br \\/>\\u0437\\u0430\\u0440\\u044f\\u0434\\u043a\\u0430<\\/p>\\r\\n<div>\\u041e\\u0447\\u0435\\u043d\\u044c \\u0443\\u0434\\u043e\\u0431\\u043d\\u044b\\u0439 \\u0430\\u043a\\u0441\\u0435\\u0441\\u0441\\u0443\\u0430\\u0440 - \\u0430\\u0434\\u0430\\u043f\\u0442\\u0435\\u0440 \\u043f\\u0438\\u0442\\u0430\\u043d\\u0438\\u044f \\u0438\\u043c\\u0435\\u0435\\u0442 USB \\u0437\\u0430\\u0440\\u044f\\u0434\\u043a\\u0443 \\u0434\\u043b\\u044f \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u0430, \\u043d\\u0430\\u0432\\u0438\\u0433\\u0430\\u0442\\u043e\\u0440\\u0430 \\u0438 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432. \\r\\n\\u0410\\u0434\\u0430\\u043f\\u0442\\u0435\\u0440 \\u043f\\u0438\\u0442\\u0430\\u043d\\u0438\\u044f \\u0442\\u0430\\u043a \\u0436\\u0435 \\u0437\\u0430\\u0449\\u0438\\u0449\\u0435\\u043d \\u043e\\u0442 \\u043f\\u043e\\u043f\\u0430\\u0434\\u0430\\u043d\\u0438\\u044f \\u0432\\u043e\\u0434\\u044b.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0418\\u043d\\u0436\\u0435\\u043d\\u0435\\u0440\\u044b<br \\/>\\u0422\\u0430\\u0439\\u0432\\u0430\\u043d\\u044c<\\/p>\\r\\n<div>\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u043d \\u043d\\u0430 \\u0422\\u0430\\u0439\\u0432\\u0430\\u043d\\u0435 \\u0438 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u043f\\u043e\\u0434 \\u043a\\u043e\\u043d\\u0442\\u0440\\u043e\\u043b\\u0435\\u043c \\u0422\\u0430\\u0439\\u0432\\u0430\\u043d\\u044c\\u0441\\u043a\\u0438\\u0445 \\u0438\\u043d\\u0436\\u0435\\u043d\\u0435\\u0440\\u043e\\u0432.\\r\\n\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440\\u044b FOXEYE \\u043f\\u0440\\u043e\\u0434\\u0430\\u044e\\u0442\\u0441\\u044f \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0430\\u0445 \\u041a\\u043e\\u0440\\u0435\\u0438, \\u041a\\u0438\\u0442\\u0430\\u044f, \\u0422\\u0430\\u0439\\u0432\\u0430\\u043d\\u0438 \\u0438 \\u042f\\u043f\\u043e\\u043d\\u0438\\u0438. <\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide2\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"templates\\/moto\\/images\\/photo1.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>Wi-fi<br \\/>\\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435<br \\/>\\u0440\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0412\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u044f\\u044f<br \\/>\\u043f\\u0430\\u043c\\u044f\\u0442\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0428\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439<br \\/>\\u0443\\u0433\\u043e\\u043b \\u043e\\u0431\\u0437\\u043e\\u0440\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide3\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"templates\\/moto\\/images\\/photo2.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0426\\u0438\\u043a\\u043b\\u0438\\u0447\\u0435\\u0441\\u043a\\u0430<br \\/>\\u0437\\u0430\\u043f\\u0438\\u0441\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>Gsensor<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0421\\u043a\\u0440\\u044b\\u0442\\u0430\\u044f<br \\/>\\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043a\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0410\\u0432\\u0442\\u043e\\u0441\\u0442\\u0430\\u0440\\u0442<br \\/>\\u0437\\u0430\\u043f\\u0438\\u0441\\u0438<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide4\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"templates\\/moto\\/images\\/photo1.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>Wi-fi<br \\/>\\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435<br \\/>\\u0440\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0412\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u044f\\u044f<br \\/>\\u043f\\u0430\\u043c\\u044f\\u0442\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0428\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439<br \\/>\\u0443\\u0433\\u043e\\u043b \\u043e\\u0431\\u0437\\u043e\\u0440\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"slide_left\\">&nbsp;<\\/div>\\r\\n<div class=\\"slide_right\\">&nbsp;<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-08-09 14:40:52","created_by":"821","created_by_alias":"","modified":"2014-08-11 21:05:08","modified_by":"821","checked_out":"821","checked_out_time":"2014-08-11 19:58:56","publish_up":"2014-08-09 14:40:52","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":13,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"732","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `j_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(22, 1, 1, '', '2014-08-11 21:09:35', 821, 16261, '0b9ed827cf8634c7d5ce444fa40b4c19f2adaae0', '{"id":1,"asset_id":"57","title":"\\u0421\\u043b\\u0430\\u0439\\u0434\\u0435\\u0440","alias":"slajder","introtext":"<div class=\\"slider\\">\\r\\n<div class=\\"slides\\">\\r\\n<div id=\\"slide1\\" class=\\"slide\\" style=\\"display: block;\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"templates\\/moto\\/images\\/moto.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0417\\u0430\\u0449\\u0438\\u0442\\u0430<br \\/>\\u043e\\u0442 \\u0432\\u043b\\u0430\\u0433\\u0438<\\/p>\\r\\n<div>\\u041a\\u043e\\u0440\\u043f\\u0443\\u0441 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440\\u0430 \\u043e\\u0442\\u0432\\u0435\\u0447\\u0430\\u0435\\u0442 \\u0442\\u0440\\u0435\\u0431\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f\\u043c \\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u0430 IPX6\\r\\n\\u0438 \\u0441\\u043e\\u0445\\u0440\\u0430\\u043d\\u044f\\u0435\\u0442 \\u0433\\u0435\\u0440\\u043c\\u0435\\u0442\\u0438\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u043d\\u0430 \\u0432\\u044b\\u0441\\u043e\\u043a\\u0438\\u0445 \\u0441\\u043a\\u043e\\u0440\\u043e\\u0441\\u0442\\u044f\\u0445 \\u0432 \\u043b\\u044e\\u0431\\u0443\\u044e \\u043f\\u043e\\u0433\\u043e\\u0434\\u0443<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0412\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u044b\\u0439<br \\/>\\u043c\\u0438\\u043a\\u0440\\u043e\\u0444\\u043e\\u043d<\\/p>\\r\\n<div>\\u0412 \\u043f\\u0443\\u043b\\u044c\\u0442\\u0435 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440\\u043e\\u043c \\u043d\\u0430\\u0445\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0432\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043c\\u0438\\u043a\\u0440\\u043e\\u0444\\u043e\\u043d.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>USB<br \\/>\\u0437\\u0430\\u0440\\u044f\\u0434\\u043a\\u0430<\\/p>\\r\\n<div>\\u041e\\u0447\\u0435\\u043d\\u044c \\u0443\\u0434\\u043e\\u0431\\u043d\\u044b\\u0439 \\u0430\\u043a\\u0441\\u0435\\u0441\\u0441\\u0443\\u0430\\u0440 - \\u0430\\u0434\\u0430\\u043f\\u0442\\u0435\\u0440 \\u043f\\u0438\\u0442\\u0430\\u043d\\u0438\\u044f \\u0438\\u043c\\u0435\\u0435\\u0442 USB \\u0437\\u0430\\u0440\\u044f\\u0434\\u043a\\u0443 \\u0434\\u043b\\u044f \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u0430, \\u043d\\u0430\\u0432\\u0438\\u0433\\u0430\\u0442\\u043e\\u0440\\u0430 \\u0438 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432. \\r\\n\\u0410\\u0434\\u0430\\u043f\\u0442\\u0435\\u0440 \\u043f\\u0438\\u0442\\u0430\\u043d\\u0438\\u044f \\u0442\\u0430\\u043a \\u0436\\u0435 \\u0437\\u0430\\u0449\\u0438\\u0449\\u0435\\u043d \\u043e\\u0442 \\u043f\\u043e\\u043f\\u0430\\u0434\\u0430\\u043d\\u0438\\u044f \\u0432\\u043e\\u0434\\u044b.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0418\\u043d\\u0436\\u0435\\u043d\\u0435\\u0440\\u044b<br \\/>\\u0422\\u0430\\u0439\\u0432\\u0430\\u043d\\u044c<\\/p>\\r\\n<div>\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440 \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u043d \\u043d\\u0430 \\u0422\\u0430\\u0439\\u0432\\u0430\\u043d\\u0435 \\u0438 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u043f\\u043e\\u0434 \\u043a\\u043e\\u043d\\u0442\\u0440\\u043e\\u043b\\u0435\\u043c \\u0422\\u0430\\u0439\\u0432\\u0430\\u043d\\u044c\\u0441\\u043a\\u0438\\u0445 \\u0438\\u043d\\u0436\\u0435\\u043d\\u0435\\u0440\\u043e\\u0432.\\r\\n\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440\\u044b FOXEYE \\u043f\\u0440\\u043e\\u0434\\u0430\\u044e\\u0442\\u0441\\u044f \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0430\\u0445 \\u041a\\u043e\\u0440\\u0435\\u0438, \\u041a\\u0438\\u0442\\u0430\\u044f, \\u0422\\u0430\\u0439\\u0432\\u0430\\u043d\\u0438 \\u0438 \\u042f\\u043f\\u043e\\u043d\\u0438\\u0438. <\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide2\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"templates\\/moto\\/images\\/photo1.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>Wi-fi<br \\/>\\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>\\u0423\\u0434\\u043e\\u0431\\u043d\\u044b\\u0439 \\u043f\\u0443\\u043b\\u044c\\u0442 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u043f\\u0440\\u0438\\u043a\\u0440\\u0435\\u043f\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0440\\u044f\\u0434\\u043e\\u043c \\u0441 \\u043f\\u0440\\u0438\\u0431\\u043e\\u0440\\u0430\\u043c\\u0438 (\\u0441\\u043f\\u0438\\u0434\\u043e\\u043c\\u0435\\u0442\\u0440\\/\\u0442\\u0430\\u0445\\u043e\\u043c\\u0435\\u0442\\u0440).\\r\\n\\u041f\\u0443\\u043b\\u044c\\u0442 \\u0438\\u043c\\u0435\\u0435\\u0442 \\u0441\\u0432\\u0435\\u0442\\u043e\\u0434\\u0438\\u043e\\u0434\\u044b \\u0434\\u043b\\u044f \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0446\\u0438\\u0438 \\u043f\\u0438\\u0442\\u0430\\u043d\\u0438\\u044f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430, \\u0437\\u0430\\u043f\\u0438\\u0441\\u0438 \\u0438 \\u043f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0438\\u044f \\u043f\\u043e wi-fi.\\r\\n\\u041f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u0442\\u044c \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0438\\u0435\\u043c\\/\\u0432\\u044b\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0438\\u0435\\u043c \\u0437\\u0430\\u043f\\u0438\\u0441\\u0438,\\r\\n\\u043f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0438\\u0435\\u043c wi-fi, \\u0444\\u043e\\u0440\\u043c\\u0430\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435\\u043c \\u043a\\u0430\\u0440\\u0442\\u044b \\u0430 \\u0442\\u0430\\u043a \\u0436\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0438\\u0435\\u043c\\/\\u0432\\u044b\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0438\\u0435\\u043c \\u0437\\u0430\\u043f\\u0438\\u0441\\u0438 \\u0437\\u0432\\u0443\\u043a\\u0430.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435<br \\/>\\u0440\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>\\u0412 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440\\u0435 \\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0430 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u0430\\u044f \\u043e\\u043f\\u0442\\u0438\\u043a\\u0430 \\u0438\\u0437 6-\\u0442\\u0438 \\u0441\\u0442\\u0435\\u043a\\u043b\\u044f\\u043d\\u043d\\u044b\\u0445 \\u044d\\u043b\\u0435\\u043c\\u0435\\u043d\\u0442\\u043e\\u0432\\r\\n\\u041c\\u0430\\u0442\\u0440\\u0438\\u0446\\u0430 APTINA AR330 \\u0441 \\u0448\\u0438\\u0440\\u043e\\u043a\\u0438\\u043c \\u0434\\u0438\\u043d\\u0430\\u043c\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u043c \\u0434\\u0438\\u0430\\u043f\\u0430\\u0437\\u043e\\u043d\\u043e\\u043c \\u0438 \\u0432\\u0438\\u0434\\u0435\\u043e\\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u043e\\u0440 AMBARELLA A5.\\r\\n\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440 \\u043c\\u043e\\u0436\\u0435\\u0442 \\u0441\\u043d\\u0438\\u043c\\u0430\\u0442\\u044c \\u0441 \\u0440\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435\\u043c FULL HD 1920*1080 30\\u043a\\/\\u0441\\u0435\\u043a \\u0438 HD 1280*720 60\\u043a\\/\\u0441\\u0435\\u043a.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0412\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u044f\\u044f<br \\/>\\u043f\\u0430\\u043c\\u044f\\u0442\\u044c<\\/p>\\r\\n<div>\\u041d\\u0430 \\u0437\\u0430\\u0432\\u043e\\u0434\\u0435 \\u0432 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440\\u0430 \\u0443\\u0441\\u0442\\u0430\\u043d\\u0430\\u0432\\u043b\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043d\\u0430\\u0434\\u0435\\u0436\\u043d\\u0430\\u044f \\r\\n\\u043a\\u0430\\u0440\\u0442\\u0430 \\u043f\\u0430\\u043c\\u044f\\u0442\\u0438 microSD 32Gb 10class,\\r\\n\\u0447\\u0442\\u043e \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u0441\\u043e\\u0445\\u0440\\u0430\\u043d\\u044f\\u0442\\u044c \\u0434\\u043e 8\\u043c\\u0438 \\u0447\\u0430\\u0441\\u043e\\u0432 FullHD \\u0432\\u0438\\u0434\\u0435\\u043e.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0428\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439<br \\/>\\u0443\\u0433\\u043e\\u043b \\u043e\\u0431\\u0437\\u043e\\u0440\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide3\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"templates\\/moto\\/images\\/photo2.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0426\\u0438\\u043a\\u043b\\u0438\\u0447\\u0435\\u0441\\u043a\\u0430<br \\/>\\u0437\\u0430\\u043f\\u0438\\u0441\\u044c<\\/p>\\r\\n<div>\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440 \\u043f\\u0438\\u0448\\u0435\\u0442 \\u0432\\u0438\\u0434\\u0435\\u043e\\u0444\\u0430\\u0439\\u043b\\u044b \\u043f\\u043e 1-2-3 \\u043c\\u0438\\u043d\\u0443\\u0442\\u044b (\\u0437\\u0430\\u0434\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u043d\\u0430\\u0441\\u0442\\u0440\\u043e\\u0439\\u043a\\u0430\\u0445)\\r\\n\\u043d\\u0430 \\u0432\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u0443\\u044e \\u043a\\u0430\\u0440\\u0442\\u0443 \\u043f\\u0430\\u043c\\u044f\\u0442\\u0438 32Gb,\\r\\n\\u043f\\u0440\\u0438 \\u044d\\u0442\\u043e\\u043c \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043c\\u0435\\u0436\\u0434\\u0443 \\u0444\\u0430\\u0439\\u043b\\u0430\\u043c\\u0438 \\u043d\\u0435 \\u0442\\u0435\\u0440\\u044f\\u0435\\u0442\\u0441\\u044f, \\u0432\\u0438\\u0434\\u0435\\u043e \\u043f\\u0438\\u0448\\u0435\\u0442\\u0441\\u044f \\u0441\\u0442\\u044b\\u043a \\u0432 \\u0441\\u0442\\u044b\\u043a.\\r\\n\\u041f\\u043e \\u0437\\u0430\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d\\u0438\\u044e \\u043a\\u0430\\u0440\\u0442\\u044b \\u043f\\u0430\\u043c\\u044f\\u0442\\u0438 \\u0441\\u0430\\u043c\\u044b\\u0439 \\u0441\\u0442\\u0430\\u0440\\u044b\\u0439 \\u0444\\u0430\\u0439\\u043b \\u0441\\u0442\\u0438\\u0440\\u0430\\u0435\\u0442\\u0441\\u044f \\u0438 \\u043d\\u0430 \\u0435\\u0433\\u043e \\u043c\\u0435\\u0441\\u0442\\u043e \\u0437\\u0430\\u043f\\u0438\\u0441\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043d\\u043e\\u0432\\u044b\\u0439.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>Gsensor<\\/p>\\r\\n<div>\\u0412\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0434\\u0430\\u0442\\u0447\\u0438\\u043a \\u0443\\u0434\\u0430\\u0440\\u0430 G-sensor \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u0437\\u0430\\u0449\\u0438\\u0442\\u0438\\u0442\\u044c \\u0432\\u0438\\u0434\\u0435\\u043e\\u0444\\u0440\\u0430\\u0433\\u043c\\u0435\\u043d\\u0442 \\u043e\\u0442 \\u043f\\u0435\\u0440\\u0435\\u0437\\u0430\\u043f\\u0438\\u0441\\u0438 \\u0432 \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u0440\\u0435\\u0437\\u043a\\u043e\\u0433\\u043e \\u0437\\u0430\\u043c\\u0435\\u0434\\u043b\\u0435\\u043d\\u0438\\u044f.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0421\\u043a\\u0440\\u044b\\u0442\\u0430\\u044f<br \\/>\\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043a\\u0430<\\/p>\\r\\n<div>\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d \\u0434\\u043b\\u044f \\u0441\\u0442\\u0430\\u0446\\u0438\\u043e\\u043d\\u0430\\u0440\\u043d\\u043e\\u0439 \\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043a\\u0438 \\u043d\\u0430 \\u043c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b\\u0435\\/\\u0441\\u043a\\u0443\\u0442\\u0435\\u0440\\u0435.\\r\\n\\u0421\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043a\\u0440\\u043e\\u043d\\u0448\\u0442\\u0435\\u0439\\u043d \\u043f\\u043e\\u043c\\u043e\\u0436\\u0435\\u0442 \\u0437\\u0430\\u043a\\u0440\\u0435\\u043f\\u0438\\u0442\\u044c \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440 \\u043f\\u043e\\u0434 \\u043f\\u043b\\u0430\\u0441\\u0442\\u0438\\u043a\\u043e\\u043c,\\r\\n\\u0430 \\u0432\\u0440\\u0430\\u0449\\u0430\\u044e\\u0449\\u0438\\u0439\\u0441\\u044f \\u0431\\u043b\\u043e\\u043a \\u043b\\u0438\\u043d\\u0437\\u044b - \\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u0438\\u0442\\u044c \\u043d\\u0443\\u0436\\u043d\\u044b\\u0439 \\u0443\\u0433\\u043e\\u043b \\u043e\\u0431\\u0437\\u043e\\u0440\\u0430.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0410\\u0432\\u0442\\u043e\\u0441\\u0442\\u0430\\u0440\\u0442<br \\/>\\u0437\\u0430\\u043f\\u0438\\u0441\\u0438<\\/p>\\r\\n<div>\\u041f\\u0440\\u0438 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0438\\u0438 \\u0437\\u0430\\u0436\\u0438\\u0433\\u0430\\u043d\\u0438\\u044f \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440 \\u0430\\u0432\\u0442\\u043e\\u043c\\u0430\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u0441\\u044f \\u0438 \\u043d\\u0430\\u0447\\u043d\\u0435\\u0442 \\u0437\\u0430\\u043f\\u0438\\u0441\\u044c.\\r\\n\\u0412\\u0441\\u0442\\u0440\\u043e\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0430\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440 \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u0438\\u0442 \\u043a\\u043e\\u0440\\u0440\\u0435\\u043a\\u0442\\u043d\\u043e \\u0437\\u0430\\u0432\\u0435\\u0440\\u0448\\u0438\\u0442\\u044c \\u0437\\u0430\\u0432\\u0435\\u0440\\u0448\\u0438\\u0442\\u044c \\u0437\\u0430\\u043f\\u0438\\u0441\\u044c \\r\\n\\u0438 \\u0441\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u044c \\u0437\\u0430\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0444\\u0430\\u0439\\u043b, \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0432\\u044b\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0438\\u044f \\u0434\\u0432\\u0438\\u0433\\u0430\\u0442\\u0435\\u043b\\u044f.\\r\\n\\u041f\\u0438\\u0442\\u0430\\u043d\\u0438\\u0435 \\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440\\u0430 \\u043f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0430\\u0435\\u0442\\u0441\\u044f \\u043a \\u043b\\u0438\\u043d\\u0438\\u0438 \\u0437\\u0430\\u0436\\u0438\\u0433\\u0430\\u043d\\u0438\\u044f.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"slide4\\" class=\\"slide\\">\\r\\n<div class=\\"slidecontent\\"><img src=\\"templates\\/moto\\/images\\/photo1.png\\" alt=\\"\\" \\/>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>Wi-fi<br \\/>\\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0412\\u044b\\u0441\\u043e\\u043a\\u043e\\u0435<br \\/>\\u0440\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0412\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u044f\\u044f<br \\/>\\u043f\\u0430\\u043c\\u044f\\u0442\\u044c<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"info_icon\\">\\r\\n<span><\\/span>\\r\\n<p>\\u0428\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439<br \\/>\\u0443\\u0433\\u043e\\u043b \\u043e\\u0431\\u0437\\u043e\\u0440\\u0430<\\/p>\\r\\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"slide_left\\">&nbsp;<\\/div>\\r\\n<div class=\\"slide_right\\">&nbsp;<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-08-09 14:40:52","created_by":"821","created_by_alias":"","modified":"2014-08-11 21:09:35","modified_by":"821","checked_out":"821","checked_out_time":"2014-08-11 21:05:08","publish_up":"2014-08-09 14:40:52","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"0\\",\\"show_tags\\":\\"0\\",\\"show_intro\\":\\"0\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"0\\",\\"link_category\\":\\"0\\",\\"show_parent_category\\":\\"0\\",\\"link_parent_category\\":\\"0\\",\\"show_author\\":\\"0\\",\\"link_author\\":\\"0\\",\\"show_create_date\\":\\"0\\",\\"show_modify_date\\":\\"0\\",\\"show_publish_date\\":\\"0\\",\\"show_item_navigation\\":\\"0\\",\\"show_icons\\":\\"0\\",\\"show_print_icon\\":\\"0\\",\\"show_email_icon\\":\\"0\\",\\"show_vote\\":\\"0\\",\\"show_hits\\":\\"0\\",\\"show_noauth\\":\\"0\\",\\"urls_position\\":\\"0\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":14,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"732","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `j_updates`
--

CREATE TABLE IF NOT EXISTS `j_updates` (
`update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `j_update_sites`
--

CREATE TABLE IF NOT EXISTS `j_update_sites` (
`update_site_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `j_update_sites`
--

INSERT INTO `j_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 0, 0, ''),
(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 0, 0, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 0, 0, ''),
(4, 'WebInstaller Update Site', 'extension', 'http://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 1, 1407786595, ''),
(5, 'JCE Editor Updates', 'extension', 'https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1&file=extension.xml', 1, 1407786595, '');

-- --------------------------------------------------------

--
-- Структура таблицы `j_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `j_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `j_update_sites_extensions`
--

INSERT INTO `j_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(3, 10002),
(4, 10011),
(5, 10014);

-- --------------------------------------------------------

--
-- Структура таблицы `j_usergroups`
--

CREATE TABLE IF NOT EXISTS `j_usergroups` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `j_usergroups`
--

INSERT INTO `j_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Структура таблицы `j_users`
--

CREATE TABLE IF NOT EXISTS `j_users` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=822 ;

--
-- Дамп данных таблицы `j_users`
--

INSERT INTO `j_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(821, 'Super User', 'admin', 'office@unrealprojects.com', '$2y$10$EnnigNbMVdajy9ztsZT2eeBDPjsRmn3aQWdc9UdicO9D9gUG4v0Na', 0, 1, '2014-08-07 13:43:41', '2014-08-11 19:49:52', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `j_user_keys`
--

CREATE TABLE IF NOT EXISTS `j_user_keys` (
`id` int(10) unsigned NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `j_user_notes`
--

CREATE TABLE IF NOT EXISTS `j_user_notes` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `j_user_profiles`
--

CREATE TABLE IF NOT EXISTS `j_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `j_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `j_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `j_user_usergroup_map`
--

INSERT INTO `j_user_usergroup_map` (`user_id`, `group_id`) VALUES
(821, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `j_viewlevels`
--

CREATE TABLE IF NOT EXISTS `j_viewlevels` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `j_viewlevels`
--

INSERT INTO `j_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(5, 'Guest', 0, '[9]'),
(6, 'Super Users', 0, '[8]');

-- --------------------------------------------------------

--
-- Структура таблицы `j_weblinks`
--

CREATE TABLE IF NOT EXISTS `j_weblinks` (
`id` int(10) unsigned NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `j_wf_profiles`
--

CREATE TABLE IF NOT EXISTS `j_wf_profiles` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `j_wf_profiles`
--

INSERT INTO `j_wf_profiles` (`id`, `name`, `description`, `users`, `types`, `components`, `area`, `device`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Default', 'Default Profile for all users', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,forecolor,backcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,preview,source,print,searchreplace,spacer,table;visualaid,visualchars,visualblocks,nonbreaking,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,browser,inlinepopups,media,help,clipboard,searchreplace,directionality,fullscreen,preview,source,table,textcase,print,style,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,formatselect,styleselect,fontselect,fontsizeselect,fontcolor', 1, 1, 0, '0000-00-00 00:00:00', ''),
(2, 'Front End', 'Sample Front-end Profile', '', '3,4,5', '', 1, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,formatselect,styleselect', 0, 2, 0, '0000-00-00 00:00:00', ''),
(3, 'Blogger', 'Simple Blogging Profile', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,styleselect,underline,justifyfull,clipboard,removeformat,charmap,indent,outdent,undo,redo,help', 'link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists,formatselect,styleselect', 0, 3, 0, '0000-00-00 00:00:00', '{"editor":{"toggle":"0"}}'),
(4, 'Mobile', 'Sample Mobile Profile', '', '3,4,5,6,8,7', '', 0, 'tablet,phone', 'undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink', 'fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists,formatselect,styleselect', 0, 4, 0, '0000-00-00 00:00:00', '{"editor":{"toolbar_theme":"mobile","resizing":"0","resize_horizontal":"0","resizing_use_cookie":"0","toggle":"0","links":{"popups":{"default":"","jcemediabox":{"enable":"0"},"window":{"enable":"0"}}}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `j_widgetkit_widget`
--

CREATE TABLE IF NOT EXISTS `j_widgetkit_widget` (
`id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `style` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `j_widgetkit_widget`
--

INSERT INTO `j_widgetkit_widget` (`id`, `type`, `style`, `name`, `content`, `created`, `modified`) VALUES
(1, 'slideshow', 'default', 'Main slider', '{"type":"slideshow","id":1,"name":"Main slider","settings":{"style":"default","autoplay":0,"interval":5000,"width":"auto","height":"auto","duration":2000,"index":0,"order":"default","navigation":0,"buttons":1,"slices":20,"animated":"scale","caption_animation_duration":1000},"style":"default","items":{"53e630ef17baf":{"title":"\\u041c\\u043e\\u0442\\u043e\\u0446\\u0438\\u043a\\u043b","content":"<img src=\\"templates\\/moto\\/images\\/photo2.png\\" alt=\\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440\\" width=\\"652\\" height=\\"533\\" \\/>","caption":""},"53e632015b588":{"title":"\\u0421\\u043b\\u0430\\u0439\\u0434 2","content":"<img src=\\"templates\\/moto\\/images\\/photo1.png\\" alt=\\"\\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440\\" width=\\"652\\" height=\\"533\\" \\/>","caption":""}}}', '2014-08-09 14:33:03', '2014-08-09 15:08:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `j_assets`
--
ALTER TABLE `j_assets`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_asset_name` (`name`), ADD KEY `idx_lft_rgt` (`lft`,`rgt`), ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `j_associations`
--
ALTER TABLE `j_associations`
 ADD PRIMARY KEY (`context`,`id`), ADD KEY `idx_key` (`key`);

--
-- Indexes for table `j_banners`
--
ALTER TABLE `j_banners`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_state` (`state`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`), ADD KEY `idx_banner_catid` (`catid`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `j_banner_clients`
--
ALTER TABLE `j_banner_clients`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`);

--
-- Indexes for table `j_banner_tracks`
--
ALTER TABLE `j_banner_tracks`
 ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`), ADD KEY `idx_track_date` (`track_date`), ADD KEY `idx_track_type` (`track_type`), ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `j_categories`
--
ALTER TABLE `j_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `cat_idx` (`extension`,`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `j_contact_details`
--
ALTER TABLE `j_contact_details`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `j_content`
--
ALTER TABLE `j_content`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`state`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `j_contentitem_tag_map`
--
ALTER TABLE `j_contentitem_tag_map`
 ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`), ADD KEY `idx_tag_type` (`tag_id`,`type_id`), ADD KEY `idx_date_id` (`tag_date`,`tag_id`), ADD KEY `idx_tag` (`tag_id`), ADD KEY `idx_type` (`type_id`), ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `j_content_frontpage`
--
ALTER TABLE `j_content_frontpage`
 ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `j_content_rating`
--
ALTER TABLE `j_content_rating`
 ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `j_content_types`
--
ALTER TABLE `j_content_types`
 ADD PRIMARY KEY (`type_id`), ADD KEY `idx_alias` (`type_alias`);

--
-- Indexes for table `j_extensions`
--
ALTER TABLE `j_extensions`
 ADD PRIMARY KEY (`extension_id`), ADD KEY `element_clientid` (`element`,`client_id`), ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`), ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `j_finder_filters`
--
ALTER TABLE `j_finder_filters`
 ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `j_finder_links`
--
ALTER TABLE `j_finder_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `idx_type` (`type_id`), ADD KEY `idx_title` (`title`), ADD KEY `idx_md5` (`md5sum`), ADD KEY `idx_url` (`url`(75)), ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`), ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `j_finder_links_terms0`
--
ALTER TABLE `j_finder_links_terms0`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j_finder_links_terms1`
--
ALTER TABLE `j_finder_links_terms1`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j_finder_links_terms2`
--
ALTER TABLE `j_finder_links_terms2`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j_finder_links_terms3`
--
ALTER TABLE `j_finder_links_terms3`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j_finder_links_terms4`
--
ALTER TABLE `j_finder_links_terms4`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j_finder_links_terms5`
--
ALTER TABLE `j_finder_links_terms5`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j_finder_links_terms6`
--
ALTER TABLE `j_finder_links_terms6`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j_finder_links_terms7`
--
ALTER TABLE `j_finder_links_terms7`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j_finder_links_terms8`
--
ALTER TABLE `j_finder_links_terms8`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j_finder_links_terms9`
--
ALTER TABLE `j_finder_links_terms9`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j_finder_links_termsa`
--
ALTER TABLE `j_finder_links_termsa`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j_finder_links_termsb`
--
ALTER TABLE `j_finder_links_termsb`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j_finder_links_termsc`
--
ALTER TABLE `j_finder_links_termsc`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j_finder_links_termsd`
--
ALTER TABLE `j_finder_links_termsd`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j_finder_links_termse`
--
ALTER TABLE `j_finder_links_termse`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j_finder_links_termsf`
--
ALTER TABLE `j_finder_links_termsf`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `j_finder_taxonomy`
--
ALTER TABLE `j_finder_taxonomy`
 ADD PRIMARY KEY (`id`), ADD KEY `parent_id` (`parent_id`), ADD KEY `state` (`state`), ADD KEY `ordering` (`ordering`), ADD KEY `access` (`access`), ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `j_finder_taxonomy_map`
--
ALTER TABLE `j_finder_taxonomy_map`
 ADD PRIMARY KEY (`link_id`,`node_id`), ADD KEY `link_id` (`link_id`), ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `j_finder_terms`
--
ALTER TABLE `j_finder_terms`
 ADD PRIMARY KEY (`term_id`), ADD UNIQUE KEY `idx_term` (`term`), ADD KEY `idx_term_phrase` (`term`,`phrase`), ADD KEY `idx_stem_phrase` (`stem`,`phrase`), ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `j_finder_terms_common`
--
ALTER TABLE `j_finder_terms_common`
 ADD KEY `idx_word_lang` (`term`,`language`), ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `j_finder_tokens`
--
ALTER TABLE `j_finder_tokens`
 ADD KEY `idx_word` (`term`), ADD KEY `idx_context` (`context`);

--
-- Indexes for table `j_finder_tokens_aggregate`
--
ALTER TABLE `j_finder_tokens_aggregate`
 ADD KEY `token` (`term`), ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `j_finder_types`
--
ALTER TABLE `j_finder_types`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `j_languages`
--
ALTER TABLE `j_languages`
 ADD PRIMARY KEY (`lang_id`), ADD UNIQUE KEY `idx_sef` (`sef`), ADD UNIQUE KEY `idx_image` (`image`), ADD UNIQUE KEY `idx_langcode` (`lang_code`), ADD KEY `idx_access` (`access`), ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `j_menu`
--
ALTER TABLE `j_menu`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`), ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`), ADD KEY `idx_menutype` (`menutype`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_path` (`path`(255)), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `j_menu_types`
--
ALTER TABLE `j_menu_types`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `j_messages`
--
ALTER TABLE `j_messages`
 ADD PRIMARY KEY (`message_id`), ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `j_messages_cfg`
--
ALTER TABLE `j_messages_cfg`
 ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `j_modules`
--
ALTER TABLE `j_modules`
 ADD PRIMARY KEY (`id`), ADD KEY `published` (`published`,`access`), ADD KEY `newsfeeds` (`module`,`published`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `j_modules_menu`
--
ALTER TABLE `j_modules_menu`
 ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `j_newsfeeds`
--
ALTER TABLE `j_newsfeeds`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `j_overrider`
--
ALTER TABLE `j_overrider`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `j_postinstall_messages`
--
ALTER TABLE `j_postinstall_messages`
 ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `j_redirect_links`
--
ALTER TABLE `j_redirect_links`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_link_old` (`old_url`), ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `j_schemas`
--
ALTER TABLE `j_schemas`
 ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `j_session`
--
ALTER TABLE `j_session`
 ADD PRIMARY KEY (`session_id`), ADD KEY `userid` (`userid`), ADD KEY `time` (`time`);

--
-- Indexes for table `j_tags`
--
ALTER TABLE `j_tags`
 ADD PRIMARY KEY (`id`), ADD KEY `tag_idx` (`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `j_template_styles`
--
ALTER TABLE `j_template_styles`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_template` (`template`), ADD KEY `idx_home` (`home`);

--
-- Indexes for table `j_ucm_base`
--
ALTER TABLE `j_ucm_base`
 ADD PRIMARY KEY (`ucm_id`), ADD KEY `idx_ucm_item_id` (`ucm_item_id`), ADD KEY `idx_ucm_type_id` (`ucm_type_id`), ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `j_ucm_content`
--
ALTER TABLE `j_ucm_content`
 ADD PRIMARY KEY (`core_content_id`), ADD KEY `tag_idx` (`core_state`,`core_access`), ADD KEY `idx_access` (`core_access`), ADD KEY `idx_alias` (`core_alias`), ADD KEY `idx_language` (`core_language`), ADD KEY `idx_title` (`core_title`), ADD KEY `idx_modified_time` (`core_modified_time`), ADD KEY `idx_created_time` (`core_created_time`), ADD KEY `idx_content_type` (`core_type_alias`), ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`), ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`), ADD KEY `idx_core_created_user_id` (`core_created_user_id`), ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `j_ucm_history`
--
ALTER TABLE `j_ucm_history`
 ADD PRIMARY KEY (`version_id`), ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`), ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `j_updates`
--
ALTER TABLE `j_updates`
 ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `j_update_sites`
--
ALTER TABLE `j_update_sites`
 ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `j_update_sites_extensions`
--
ALTER TABLE `j_update_sites_extensions`
 ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `j_usergroups`
--
ALTER TABLE `j_usergroups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`), ADD KEY `idx_usergroup_title_lookup` (`title`), ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`), ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `j_users`
--
ALTER TABLE `j_users`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_name` (`name`), ADD KEY `idx_block` (`block`), ADD KEY `username` (`username`), ADD KEY `email` (`email`);

--
-- Indexes for table `j_user_keys`
--
ALTER TABLE `j_user_keys`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `series` (`series`), ADD UNIQUE KEY `series_2` (`series`), ADD UNIQUE KEY `series_3` (`series`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `j_user_notes`
--
ALTER TABLE `j_user_notes`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_user_id` (`user_id`), ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `j_user_profiles`
--
ALTER TABLE `j_user_profiles`
 ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `j_user_usergroup_map`
--
ALTER TABLE `j_user_usergroup_map`
 ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `j_viewlevels`
--
ALTER TABLE `j_viewlevels`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indexes for table `j_weblinks`
--
ALTER TABLE `j_weblinks`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`state`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `j_wf_profiles`
--
ALTER TABLE `j_wf_profiles`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `j_widgetkit_widget`
--
ALTER TABLE `j_widgetkit_widget`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `j_assets`
--
ALTER TABLE `j_assets`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `j_banners`
--
ALTER TABLE `j_banners`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j_banner_clients`
--
ALTER TABLE `j_banner_clients`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j_categories`
--
ALTER TABLE `j_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `j_contact_details`
--
ALTER TABLE `j_contact_details`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j_content`
--
ALTER TABLE `j_content`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `j_content_types`
--
ALTER TABLE `j_content_types`
MODIFY `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `j_extensions`
--
ALTER TABLE `j_extensions`
MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10015;
--
-- AUTO_INCREMENT for table `j_finder_filters`
--
ALTER TABLE `j_finder_filters`
MODIFY `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j_finder_links`
--
ALTER TABLE `j_finder_links`
MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j_finder_taxonomy`
--
ALTER TABLE `j_finder_taxonomy`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `j_finder_terms`
--
ALTER TABLE `j_finder_terms`
MODIFY `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j_finder_types`
--
ALTER TABLE `j_finder_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j_languages`
--
ALTER TABLE `j_languages`
MODIFY `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `j_menu`
--
ALTER TABLE `j_menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `j_menu_types`
--
ALTER TABLE `j_menu_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `j_messages`
--
ALTER TABLE `j_messages`
MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j_modules`
--
ALTER TABLE `j_modules`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `j_newsfeeds`
--
ALTER TABLE `j_newsfeeds`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j_overrider`
--
ALTER TABLE `j_overrider`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `j_postinstall_messages`
--
ALTER TABLE `j_postinstall_messages`
MODIFY `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `j_redirect_links`
--
ALTER TABLE `j_redirect_links`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j_tags`
--
ALTER TABLE `j_tags`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `j_template_styles`
--
ALTER TABLE `j_template_styles`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `j_ucm_content`
--
ALTER TABLE `j_ucm_content`
MODIFY `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j_ucm_history`
--
ALTER TABLE `j_ucm_history`
MODIFY `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `j_updates`
--
ALTER TABLE `j_updates`
MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j_update_sites`
--
ALTER TABLE `j_update_sites`
MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `j_usergroups`
--
ALTER TABLE `j_usergroups`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `j_users`
--
ALTER TABLE `j_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=822;
--
-- AUTO_INCREMENT for table `j_user_keys`
--
ALTER TABLE `j_user_keys`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j_user_notes`
--
ALTER TABLE `j_user_notes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j_viewlevels`
--
ALTER TABLE `j_viewlevels`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `j_weblinks`
--
ALTER TABLE `j_weblinks`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j_wf_profiles`
--
ALTER TABLE `j_wf_profiles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `j_widgetkit_widget`
--
ALTER TABLE `j_widgetkit_widget`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
