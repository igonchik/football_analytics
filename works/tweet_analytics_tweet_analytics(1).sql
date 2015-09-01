-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Сен 01 2015 г., 16:58
-- Версия сервера: 5.6.25
-- Версия PHP: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tweet_analytics_tweet_analytics`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add t localization', 6, 'add_tlocalization'),
(17, 'Can change t localization', 6, 'change_tlocalization'),
(18, 'Can delete t localization', 6, 'delete_tlocalization'),
(19, 'Can add t tweets author', 7, 'add_ttweetsauthor'),
(20, 'Can change t tweets author', 7, 'change_ttweetsauthor'),
(21, 'Can delete t tweets author', 7, 'delete_ttweetsauthor'),
(22, 'Can add t tweets hash tag', 8, 'add_ttweetshashtag'),
(23, 'Can change t tweets hash tag', 8, 'change_ttweetshashtag'),
(24, 'Can delete t tweets hash tag', 8, 'delete_ttweetshashtag'),
(25, 'Can add t tweets tweet', 9, 'add_ttweetstweet'),
(26, 'Can change t tweets tweet', 9, 'change_ttweetstweet'),
(27, 'Can delete t tweets tweet', 9, 'delete_ttweetstweet'),
(28, 'Can add t world part', 10, 'add_tworldpart'),
(29, 'Can change t world part', 10, 'change_tworldpart'),
(30, 'Can delete t world part', 10, 'delete_tworldpart'),
(31, 'Can add t world part tr', 11, 'add_tworldparttr'),
(32, 'Can change t world part tr', 11, 'change_tworldparttr'),
(33, 'Can delete t world part tr', 11, 'delete_tworldparttr'),
(34, 'Can add t world region', 12, 'add_tworldregion'),
(35, 'Can change t world region', 12, 'change_tworldregion'),
(36, 'Can delete t world region', 12, 'delete_tworldregion'),
(37, 'Can add t world region tr', 13, 'add_tworldregiontr'),
(38, 'Can change t world region tr', 13, 'change_tworldregiontr'),
(39, 'Can delete t world region tr', 13, 'delete_tworldregiontr'),
(40, 'Can add t world country', 14, 'add_tworldcountry'),
(41, 'Can change t world country', 14, 'change_tworldcountry'),
(42, 'Can delete t world country', 14, 'delete_tworldcountry'),
(43, 'Can add t world country tr', 15, 'add_tworldcountrytr'),
(44, 'Can change t world country tr', 15, 'change_tworldcountrytr'),
(45, 'Can delete t world country tr', 15, 'delete_tworldcountrytr'),
(46, 'Can add t world city', 16, 'add_tworldcity'),
(47, 'Can change t world city', 16, 'change_tworldcity'),
(48, 'Can delete t world city', 16, 'delete_tworldcity'),
(49, 'Can add t world city tr', 17, 'add_tworldcitytr'),
(50, 'Can change t world city tr', 17, 'change_tworldcitytr'),
(51, 'Can delete t world city tr', 17, 'delete_tworldcitytr'),
(52, 'Can add t content video view', 18, 'add_tcontentvideoview'),
(53, 'Can change t content video view', 18, 'change_tcontentvideoview'),
(54, 'Can delete t content video view', 18, 'delete_tcontentvideoview'),
(55, 'Can add t content video view tr', 19, 'add_tcontentvideoviewtr'),
(56, 'Can change t content video view tr', 19, 'change_tcontentvideoviewtr'),
(57, 'Can delete t content video view tr', 19, 'delete_tcontentvideoviewtr'),
(58, 'Can add t content video', 20, 'add_tcontentvideo'),
(59, 'Can change t content video', 20, 'change_tcontentvideo'),
(60, 'Can delete t content video', 20, 'delete_tcontentvideo'),
(61, 'Can add t content video tr', 21, 'add_tcontentvideotr'),
(62, 'Can change t content video tr', 21, 'change_tcontentvideotr'),
(63, 'Can delete t content video tr', 21, 'delete_tcontentvideotr'),
(64, 'Can add t content photo', 22, 'add_tcontentphoto'),
(65, 'Can change t content photo', 22, 'change_tcontentphoto'),
(66, 'Can delete t content photo', 22, 'delete_tcontentphoto'),
(67, 'Can add t content photo tr', 23, 'add_tcontentphototr'),
(68, 'Can change t content photo tr', 23, 'change_tcontentphototr'),
(69, 'Can delete t content photo tr', 23, 'delete_tcontentphototr'),
(70, 'Can add t content article', 24, 'add_tcontentarticle'),
(71, 'Can change t content article', 24, 'change_tcontentarticle'),
(72, 'Can delete t content article', 24, 'delete_tcontentarticle'),
(73, 'Can add t content article tr', 25, 'add_tcontentarticletr'),
(74, 'Can change t content article tr', 25, 'change_tcontentarticletr'),
(75, 'Can delete t content article tr', 25, 'delete_tcontentarticletr'),
(76, 'Can add t football div', 26, 'add_tfootballdiv'),
(77, 'Can change t football div', 26, 'change_tfootballdiv'),
(78, 'Can delete t football div', 26, 'delete_tfootballdiv'),
(79, 'Can add t football div tr', 27, 'add_tfootballdivtr'),
(80, 'Can change t football div tr', 27, 'change_tfootballdivtr'),
(81, 'Can delete t football div tr', 27, 'delete_tfootballdivtr'),
(82, 'Can add t football player', 28, 'add_tfootballplayer'),
(83, 'Can change t football player', 28, 'change_tfootballplayer'),
(84, 'Can delete t football player', 28, 'delete_tfootballplayer'),
(85, 'Can add t football player tr', 29, 'add_tfootballplayertr'),
(86, 'Can change t football player tr', 29, 'change_tfootballplayertr'),
(87, 'Can delete t football player tr', 29, 'delete_tfootballplayertr'),
(88, 'Can add t football club', 30, 'add_tfootballclub'),
(89, 'Can change t football club', 30, 'change_tfootballclub'),
(90, 'Can delete t football club', 30, 'delete_tfootballclub'),
(91, 'Can add t football club tr', 31, 'add_tfootballclubtr'),
(92, 'Can change t football club tr', 31, 'change_tfootballclubtr'),
(93, 'Can delete t football club tr', 31, 'delete_tfootballclubtr'),
(94, 'Can add t football club player rel', 32, 'add_tfootballclubplayerrel'),
(95, 'Can change t football club player rel', 32, 'change_tfootballclubplayerrel'),
(96, 'Can delete t football club player rel', 32, 'delete_tfootballclubplayerrel'),
(97, 'Can add t content club video view rel', 33, 'add_tcontentclubvideoviewrel'),
(98, 'Can change t content club video view rel', 33, 'change_tcontentclubvideoviewrel'),
(99, 'Can delete t content club video view rel', 33, 'delete_tcontentclubvideoviewrel'),
(100, 'Can add t content club video rel', 34, 'add_tcontentclubvideorel'),
(101, 'Can change t content club video rel', 34, 'change_tcontentclubvideorel'),
(102, 'Can delete t content club video rel', 34, 'delete_tcontentclubvideorel'),
(103, 'Can add t content club photo rel', 35, 'add_tcontentclubphotorel'),
(104, 'Can change t content club photo rel', 35, 'change_tcontentclubphotorel'),
(105, 'Can delete t content club photo rel', 35, 'delete_tcontentclubphotorel'),
(106, 'Can add t content club article rel', 36, 'add_tcontentclubarticlerel'),
(107, 'Can change t content club article rel', 36, 'change_tcontentclubarticlerel'),
(108, 'Can delete t content club article rel', 36, 'delete_tcontentclubarticlerel'),
(109, 'Can add t tweets club tweet rel', 37, 'add_ttweetsclubtweetrel'),
(110, 'Can change t tweets club tweet rel', 37, 'change_ttweetsclubtweetrel'),
(111, 'Can delete t tweets club tweet rel', 37, 'delete_ttweetsclubtweetrel'),
(112, 'Can add t tweets player tweet rel', 38, 'add_ttweetsplayertweetrel'),
(113, 'Can change t tweets player tweet rel', 38, 'change_ttweetsplayertweetrel'),
(114, 'Can delete t tweets player tweet rel', 38, 'delete_ttweetsplayertweetrel'),
(115, 'Can add t tweets tweet hash tag', 39, 'add_ttweetstweethashtag'),
(116, 'Can change t tweets tweet hash tag', 39, 'change_ttweetstweethashtag'),
(117, 'Can delete t tweets tweet hash tag', 39, 'delete_ttweetstweethashtag'),
(118, 'Can add t tweets club hash tag', 40, 'add_ttweetsclubhashtag'),
(119, 'Can change t tweets club hash tag', 40, 'change_ttweetsclubhashtag'),
(120, 'Can delete t tweets club hash tag', 40, 'delete_ttweetsclubhashtag'),
(121, 'Can add t tweets player hash tag', 41, 'add_ttweetsplayerhashtag'),
(122, 'Can change t tweets player hash tag', 41, 'change_ttweetsplayerhashtag'),
(123, 'Can delete t tweets player hash tag', 41, 'delete_ttweetsplayerhashtag');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'auth', 'group'),
(1, 'auth', 'permission'),
(3, 'auth', 'user'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session'),
(24, 'twitter', 'tcontentarticle'),
(25, 'twitter', 'tcontentarticletr'),
(36, 'twitter', 'tcontentclubarticlerel'),
(35, 'twitter', 'tcontentclubphotorel'),
(34, 'twitter', 'tcontentclubvideorel'),
(33, 'twitter', 'tcontentclubvideoviewrel'),
(22, 'twitter', 'tcontentphoto'),
(23, 'twitter', 'tcontentphototr'),
(20, 'twitter', 'tcontentvideo'),
(21, 'twitter', 'tcontentvideotr'),
(18, 'twitter', 'tcontentvideoview'),
(19, 'twitter', 'tcontentvideoviewtr'),
(30, 'twitter', 'tfootballclub'),
(32, 'twitter', 'tfootballclubplayerrel'),
(31, 'twitter', 'tfootballclubtr'),
(26, 'twitter', 'tfootballdiv'),
(27, 'twitter', 'tfootballdivtr'),
(28, 'twitter', 'tfootballplayer'),
(29, 'twitter', 'tfootballplayertr'),
(6, 'twitter', 'tlocalization'),
(7, 'twitter', 'ttweetsauthor'),
(40, 'twitter', 'ttweetsclubhashtag'),
(37, 'twitter', 'ttweetsclubtweetrel'),
(8, 'twitter', 'ttweetshashtag'),
(41, 'twitter', 'ttweetsplayerhashtag'),
(38, 'twitter', 'ttweetsplayertweetrel'),
(9, 'twitter', 'ttweetstweet'),
(39, 'twitter', 'ttweetstweethashtag'),
(16, 'twitter', 'tworldcity'),
(17, 'twitter', 'tworldcitytr'),
(14, 'twitter', 'tworldcountry'),
(15, 'twitter', 'tworldcountrytr'),
(10, 'twitter', 'tworldpart'),
(11, 'twitter', 'tworldparttr'),
(12, 'twitter', 'tworldregion'),
(13, 'twitter', 'tworldregiontr');

-- --------------------------------------------------------

--
-- Структура таблицы `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2015-08-19 20:57:36.165355'),
(2, 'contenttypes', '0002_remove_content_type_name', '2015-08-19 20:57:36.766178'),
(3, 'auth', '0001_initial', '2015-08-19 20:57:39.512852'),
(4, 'auth', '0002_alter_permission_name_max_length', '2015-08-19 20:57:39.915994'),
(5, 'auth', '0003_alter_user_email_max_length', '2015-08-19 20:57:40.086195'),
(6, 'auth', '0004_alter_user_username_opts', '2015-08-19 20:57:40.105982'),
(7, 'auth', '0005_alter_user_last_login_null', '2015-08-19 20:57:40.285503'),
(8, 'auth', '0006_require_contenttypes_0002', '2015-08-19 20:57:40.290266'),
(9, 'sessions', '0001_initial', '2015-08-19 20:57:41.105648');

-- --------------------------------------------------------

--
-- Структура таблицы `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tcontentarticle`
--

CREATE TABLE IF NOT EXISTS `twitter_tcontentarticle` (
  `ca_id` int(11) NOT NULL,
  `tstamp_update` datetime(6) NOT NULL,
  `content` longtext NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tcontentarticletr`
--

CREATE TABLE IF NOT EXISTS `twitter_tcontentarticletr` (
  `id` int(11) NOT NULL,
  `ca_id_id` int(11) NOT NULL,
  `langcode_id` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `ca_desk` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tcontentclubarticlerel`
--

CREATE TABLE IF NOT EXISTS `twitter_tcontentclubarticlerel` (
  `id` int(11) NOT NULL,
  `fc_id_id` int(11) NOT NULL,
  `ca_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tcontentclubphotorel`
--

CREATE TABLE IF NOT EXISTS `twitter_tcontentclubphotorel` (
  `id` int(11) NOT NULL,
  `fc_id_id` int(11) NOT NULL,
  `cp_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tcontentclubvideorel`
--

CREATE TABLE IF NOT EXISTS `twitter_tcontentclubvideorel` (
  `id` int(11) NOT NULL,
  `fc_id_id` int(11) NOT NULL,
  `cv_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tcontentclubvideoviewrel`
--

CREATE TABLE IF NOT EXISTS `twitter_tcontentclubvideoviewrel` (
  `id` int(11) NOT NULL,
  `fc_id_id` int(11) NOT NULL,
  `cvv_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tcontentphoto`
--

CREATE TABLE IF NOT EXISTS `twitter_tcontentphoto` (
  `cvv_id` int(11) NOT NULL,
  `tstamp_update` datetime(6) NOT NULL,
  `content` varchar(100) NOT NULL,
  `logo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tcontentphototr`
--

CREATE TABLE IF NOT EXISTS `twitter_tcontentphototr` (
  `id` int(11) NOT NULL,
  `cp_id_id` int(11) NOT NULL,
  `langcode_id` varchar(5) NOT NULL,
  `cp_name` varchar(255) NOT NULL,
  `cp_desk` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tcontentvideo`
--

CREATE TABLE IF NOT EXISTS `twitter_tcontentvideo` (
  `cvv_id` int(11) NOT NULL,
  `tstamp_update` datetime(6) NOT NULL,
  `content` varchar(100) NOT NULL,
  `logo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tcontentvideotr`
--

CREATE TABLE IF NOT EXISTS `twitter_tcontentvideotr` (
  `id` int(11) NOT NULL,
  `cv_id_id` int(11) NOT NULL,
  `langcode_id` varchar(5) NOT NULL,
  `cv_name` varchar(255) NOT NULL,
  `cv_desk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tcontentvideoview`
--

CREATE TABLE IF NOT EXISTS `twitter_tcontentvideoview` (
  `cvv_id` int(11) NOT NULL,
  `tstamp_update` datetime(6) NOT NULL,
  `content` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tcontentvideoviewtr`
--

CREATE TABLE IF NOT EXISTS `twitter_tcontentvideoviewtr` (
  `id` int(11) NOT NULL,
  `cvv_id_id` int(11) NOT NULL,
  `langcode_id` varchar(5) NOT NULL,
  `cvv_name` varchar(255) NOT NULL,
  `cvv_desk` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tfootballclub`
--

CREATE TABLE IF NOT EXISTS `twitter_tfootballclub` (
  `fc_id` int(11) NOT NULL,
  `stat_url` varchar(200) DEFAULT NULL,
  `official_url` varchar(200) DEFAULT NULL,
  `twitter` varchar(200) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `wcity_id_id` int(11) NOT NULL,
  `fd_id_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `twitter_tfootballclub`
--

INSERT INTO `twitter_tfootballclub` (`fc_id`, `stat_url`, `official_url`, `twitter`, `logo`, `wcity_id_id`, `fd_id_id`) VALUES
(1, NULL, NULL, NULL, NULL, 169, 1),
(2, NULL, NULL, NULL, NULL, 84, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tfootballclubplayerrel`
--

CREATE TABLE IF NOT EXISTS `twitter_tfootballclubplayerrel` (
  `id` int(11) NOT NULL,
  `fc_id_id` int(11) NOT NULL,
  `fp_id_id` int(11) NOT NULL,
  `rumor_tstamp` datetime(6) DEFAULT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tfootballclubtr`
--

CREATE TABLE IF NOT EXISTS `twitter_tfootballclubtr` (
  `id` int(11) NOT NULL,
  `fc_id_id` int(11) NOT NULL,
  `langcode_id` varchar(5) NOT NULL,
  `fc_name` varchar(255) NOT NULL,
  `fc_desc` varchar(500) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `twitter_tfootballclubtr`
--

INSERT INTO `twitter_tfootballclubtr` (`id`, `fc_id_id`, `langcode_id`, `fc_name`, `fc_desc`) VALUES
(1, 1, 'ru', 'ПФК ЦСКА Москва', NULL),
(2, 2, 'ru', 'ПСЖ', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tfootballdiv`
--

CREATE TABLE IF NOT EXISTS `twitter_tfootballdiv` (
  `fd_id` int(11) NOT NULL,
  `url` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `twitter_tfootballdiv`
--

INSERT INTO `twitter_tfootballdiv` (`fd_id`, `url`) VALUES
(1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tfootballdivtr`
--

CREATE TABLE IF NOT EXISTS `twitter_tfootballdivtr` (
  `id` int(11) NOT NULL,
  `fd_id_id` int(11) NOT NULL,
  `langcode_id` varchar(5) NOT NULL,
  `fd_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tfootballplayer`
--

CREATE TABLE IF NOT EXISTS `twitter_tfootballplayer` (
  `fp_id` int(11) NOT NULL,
  `official_url` varchar(200) DEFAULT NULL,
  `stat_url` varchar(200) DEFAULT NULL,
  `twitter` varchar(200) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tfootballplayertr`
--

CREATE TABLE IF NOT EXISTS `twitter_tfootballplayertr` (
  `id` int(11) NOT NULL,
  `fp_id_id` int(11) NOT NULL,
  `langcode_id` varchar(5) NOT NULL,
  `fc_name` varchar(255) NOT NULL,
  `fc_desc` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tlocalization`
--

CREATE TABLE IF NOT EXISTS `twitter_tlocalization` (
  `langcode` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `twitter_tlocalization`
--

INSERT INTO `twitter_tlocalization` (`langcode`) VALUES
('en'),
('ru');

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_ttweetsauthor`
--

CREATE TABLE IF NOT EXISTS `twitter_ttweetsauthor` (
  `ta_id` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rating` int(10) unsigned NOT NULL,
  `maxid` bigint(20) unsigned NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `descr` longtext,
  `logo_url` varchar(200) DEFAULT NULL,
  `banner_url` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `twitter_ttweetsauthor`
--

INSERT INTO `twitter_ttweetsauthor` (`ta_id`, `url`, `name`, `rating`, `maxid`, `logo`, `realname`, `descr`, `logo_url`, `banner_url`) VALUES
(1, 'https://twitter.com/prostodimo4ka', 'prostodimo4ka', 100, 560192717981229057, '', 'Belkin Dmitriy', 'Gonner since 2004.', NULL, NULL),
(3, 'https://t.co/S47kRTPeKM', 'BrazilStats', 100, 635981470771769344, 'twitter/photo/Etxn0mT0_normal.png', 'Seleção Brasileira', 'I write about Brazilian football on: https://t.co/AhPJ9wkyVx For Business info, contact me via BrazilStatsInfo@gmail.com', 'http://pbs.twimg.com/profile_images/612161257601273856/Etxn0mT0_normal.png', NULL),
(4, 'http://t.co/n4lujxyKt9', 'DeadlineDayLive', 100, 636090650279088129, 'twitter/photo/c820d7a60fc99a0cd89f67272fee07bc_normal.jpeg', 'Transfer News Live', 'The biggest transfer account on Twitter. Bringing you the latest news and updates all year round.', 'http://pbs.twimg.com/profile_images/378800000364992874/c820d7a60fc99a0cd89f67272fee07bc_normal.jpeg', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_ttweetsclubhashtag`
--

CREATE TABLE IF NOT EXISTS `twitter_ttweetsclubhashtag` (
  `tch_id` int(11) NOT NULL,
  `fc_id_id` int(11) NOT NULL,
  `th_id_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_ttweetsclubtweetrel`
--

CREATE TABLE IF NOT EXISTS `twitter_ttweetsclubtweetrel` (
  `id` int(11) NOT NULL,
  `fc_id_id` int(11) NOT NULL,
  `tt_id_id` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `twitter_ttweetsclubtweetrel`
--

INSERT INTO `twitter_ttweetsclubtweetrel` (`id`, `fc_id_id`, `tt_id_id`) VALUES
(1, 1, 111152639747690496),
(2, 2, 111152639747690496);

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_ttweetshashtag`
--

CREATE TABLE IF NOT EXISTS `twitter_ttweetshashtag` (
  `hashtag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `twitter_ttweetshashtag`
--

INSERT INTO `twitter_ttweetshashtag` (`hashtag`) VALUES
('CARLINGCUP'),
('CDR'),
('CHELIV'),
('CORINTHIANS'),
('CRUZEIRO'),
('DEUSNOCOMANDO'),
('FELIZDEMAIS'),
('FLAMENGO'),
('GERRARD'),
('IVANOVICH'),
('JÁDSON'),
('NEYMAR'),
('PALMEIRAS'),
('PLAYFORGERRARD'),
('SANTOSSEMPRESANTOS'),
('SCCP'),
('START'),
('THROWBACKTHURSDAY'),
('TITE'),
('VASCO'),
('ГРУСТНО');

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_ttweetsplayerhashtag`
--

CREATE TABLE IF NOT EXISTS `twitter_ttweetsplayerhashtag` (
  `tph_id` int(11) NOT NULL,
  `fp_id_id` int(11) NOT NULL,
  `th_id_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_ttweetsplayertweetrel`
--

CREATE TABLE IF NOT EXISTS `twitter_ttweetsplayertweetrel` (
  `id` int(11) NOT NULL,
  `fp_id_id` int(11) NOT NULL,
  `tt_id_id` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_ttweetstweet`
--

CREATE TABLE IF NOT EXISTS `twitter_ttweetstweet` (
  `tt_id` bigint(20) unsigned NOT NULL,
  `ta_id_id` int(11) NOT NULL,
  `text` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=636090650279088130 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `twitter_ttweetstweet`
--

INSERT INTO `twitter_ttweetstweet` (`tt_id`, `ta_id_id`, `text`, `created_at`) VALUES
(111152639747690496, 1, 'boring ...', '2011-09-06 19:03:49.000000'),
(343927488616988672, 1, 'Начинаю работать) http://t.co/4qFDWiM3Yx', '2013-06-10 03:07:57.000000'),
(343960047073763329, 1, 'Стало известно имя информатора, обнародовавшего данные о секретном проекте американских спецслужб http://t.co/hoIZa307ev', '2013-06-10 05:17:20.000000'),
(343964355232165888, 1, 'http://t.co/Mc6XG33TpP', '2013-06-10 05:34:27.000000'),
(358292969948205056, 1, 'RT @DeadlineDayLive: DONE DEAL: Arsenal defender André Santos has signed a two-year deal with Brazilian side Flamengo. (Source: http://t.co…', '2013-07-19 18:31:15.000000'),
(358623829784281088, 1, 'RT @BrazilStats: Arsenal are closing in on Bernard, GoalUK have claimed. Also ESPN had reported earlier that The Gunners appear to be close…', '2013-07-20 16:25:58.000000'),
(358674950909362176, 1, 'RT @ArsenalNewsUK: Luis Suarez set to officially request a move to Arsenal http://t.co/TlWmJLFEzl', '2013-07-20 19:49:06.000000'),
(418294388272676864, 1, 'Дома!', '2014-01-01 08:15:28.000000'),
(523519980458237953, 1, '#грустно', '2014-10-18 17:04:24.000000'),
(531380831194210305, 1, 'Пора начинать новую жизнь) #start', '2014-11-09 09:40:37.000000'),
(560180882393554946, 1, 'I make it a point to go to as many events as time will allow. #CHELIV #carlingcup #playforgerrard', '2015-01-27 21:01:44.000000'),
(560192717981229057, 1, 'Thx for #Ivanovich! Sry, #Gerrard...', '2015-01-27 21:48:46.000000'),
(635876995813912576, 4, 'Brazil star Neymar has made it clear he is open to a move to Manchester United. (Source: Guardian)', '2015-08-24 18:11:04.000000'),
(635892091143348224, 4, 'Manchester Utd''s move for Neymar has picked up steam after the player''s agent was welcomed at Old Trafford on Saturday. (Source: Sun Sport)', '2015-08-24 19:11:03.000000'),
(635907442216316928, 4, 'Everton are closing in on a deal for Manchester United forward Adnan Januzaj. (Source: Liverpool Echo)', '2015-08-24 20:12:03.000000'),
(635923059556290561, 4, 'Manchester United will make a last-ditch attempt to sign Thomas Müller this week &amp; submit a bid of €80m. (Source: BILD)', '2015-08-24 21:14:06.000000'),
(635923115512565760, 4, 'DEAL DONE: Lewis Dunk has signed a new 5-year contract at Brighton &amp; Hove Albion. (Source: @OfficialBHAFC)', '2015-08-24 21:14:20.000000'),
(635925046008115205, 4, 'DEAL DONE: Modibo Maïga has joined Saudi Arabia side Al Nassr FC. (Source: @AlNassrFC) http://t.co/oKetBNe683', '2015-08-24 21:22:00.000000'),
(635925658032570369, 4, 'DEAL DONE: Fulham have signed Joe Lewis on a season-long loan from Cardiff City. (Source: @FulhamFC) http://t.co/nSe6q9mJaI', '2015-08-24 21:24:26.000000'),
(635930359432118272, 4, 'Arsenal have turned their attentions to PSG striker Edinson Cavani after missing out on Karim Benzema. (Source: Daily Mail)', '2015-08-24 21:43:07.000000'),
(635931029056946177, 4, 'Manchester United won''t flinch at a mega deal for Barcelona star Neymar. (Source: Sun Sport) http://t.co/5Hu7Lw8JmI', '2015-08-24 21:45:47.000000'),
(635934484672720896, 4, '"Don’t worry, we have bigger targets. The Pedro thing will eventually be forgotten." - Ed Woodward. (Source: Daily Mail)', '2015-08-24 21:59:30.000000'),
(635936787685371904, 4, 'Juan Cuadrado has arrived in Turin to complete his loan move to Juventus. (Source: @juventusfc) http://t.co/o1IuRqW6r0', '2015-08-24 22:08:39.000000'),
(635939162428846081, 4, 'Fábio Coentrão could finally be set to leave Real Madrid as he edges closer to a move to PSG. (Source: L’Equipe)', '2015-08-24 22:18:06.000000'),
(635956260404269056, 4, 'Manchester United have made a colossal £140m bid for Neymar, according to reports in Brazil. (Source: Daily Mirror)', '2015-08-24 23:26:02.000000'),
(635958834800934912, 3, '@gunner_ash I do hope Dunga lets him start because the main goal of friendlies is in the end to "test" players.', '2015-08-24 23:36:16.000000'),
(635969085684056064, 3, 'Wrote a review about Coutinho''s performance. I thought he was brilliant. Feedback appreciated https://t.co/jNc2XtFJyP http://t.co/S6bCmTuBo4', '2015-08-25 00:17:00.000000'),
(635970928266973184, 3, '@Joe_prol @DiegoAleEsco Denilson, Robinho and Neymar have so many points in common. The 3 of them are lovely to watch.', '2015-08-25 00:24:19.000000'),
(635971068285485056, 3, '@Forbesy602 I think that Kenedy has the potential to become good enough in 2 years, but I don''t think so for Nathan.', '2015-08-25 00:24:53.000000'),
(635971128670875648, 3, '@Firmino_ynwa Good idea, maybe in the next few days once he gets more games.', '2015-08-25 00:25:07.000000'),
(635971996392644610, 3, '@Firmino_ynwa Thank you! I thought he had a decent performance. It would be a shame if he leaves the club after so many years,', '2015-08-25 00:28:34.000000'),
(635972120137236481, 4, 'Bayern Munich sporting director Matthias Sammer has insisted that Thomas Müller will be staying at the club. (Source: Daily Mirror)', '2015-08-25 00:29:03.000000'),
(635972187480920064, 3, '@aflockofbeagles He was sloppy at the start but improved a lot towards the end of the 1st half. He set up Benteke with a wonderful cross+', '2015-08-25 00:29:19.000000'),
(635972264677261312, 3, '@aflockofbeagles +which almost led to a goal, and he bothered Arsenal''s defense with 1 or 2 shots. But he''s obviously not fully fit yet.', '2015-08-25 00:29:38.000000'),
(635974615433539584, 3, 'Lahm (ex-GER captain): "I''d be happy if Löw calls Rafinha to represent Germany. He''s a great player at a high level." http://t.co/kU63LWyLgN', '2015-08-25 00:38:58.000000'),
(635975099733032961, 3, '@aflockofbeagles I don''t know, because he''s playing at a different position. At Hoffenheim he was more central and closer to the penalty+', '2015-08-25 00:40:54.000000'),
(635975154401579008, 3, '@aflockofbeagles +area. Brendan has so far used him as a right midfielder. It''s not his best position.', '2015-08-25 00:41:07.000000'),
(635975347868057600, 3, '@The_Classic10 It depends on a team''s needs. Isco is better at holding the ball whereas Coutinho is a better difference maker.', '2015-08-25 00:41:53.000000'),
(635975928472989700, 3, '@The_Classic10 Coutinho''s passes in the final third are more dangerous.', '2015-08-25 00:44:11.000000'),
(635976256186544129, 3, 'With Dani Alves'' injury, Dunga has the possibility to give Rafinha a call-up to avoid losing him to Germany. Personally, I like Bruno Peres.', '2015-08-25 00:45:29.000000'),
(635976983273345024, 3, '@_imaginary1 Danilo is already selected.', '2015-08-25 00:48:23.000000'),
(635977052269711360, 3, '@joaopdias16 Concordo.', '2015-08-25 00:48:39.000000'),
(635978330106257408, 3, '@brandNJR I think Danilo will most probably be the right back, but I don''t rule out that Dunga doesn''t call an extra player (since it''s 24)', '2015-08-25 00:53:44.000000'),
(635980017227337728, 3, 'Barcelona plans to renew #Neymar''s contract and raise his release clause to €250M. No chance he leaves to United, according to ESPN Brasil.', '2015-08-25 01:00:26.000000'),
(635980232579641346, 3, '@ArianBela Very good choices. Thanks for the answer.', '2015-08-25 01:01:18.000000'),
(635981470771769344, 3, '#Jádson: "Houve interesse do #Flamengo, mas uma das coisas que me fez ficar no #Corinthians foi o #Tite." #sccp http://t.co/vM7VaSrfAu', '2015-08-25 01:06:13.000000'),
(636059998045474816, 4, 'Manchester United are willing to spend £240m on a deal for Barcelona forward Neymar. (Source: Sun Sport)', '2015-08-25 06:18:15.000000'),
(636074498069012484, 4, 'RT @SundayLeagueFC: This lot can certainly take a good free-kick! Unbelievable scenes http://t.co/49UaiSQ5rt', '2015-08-25 07:15:52.000000'),
(636075571252883456, 4, 'Chelsea will continue to pursue Juventus midfielder Paul Pogba until the transfer window closes. (Source: Evening Standard)', '2015-08-25 07:20:08.000000'),
(636076016658718720, 4, 'Liverpool striker Mario Balotelli has arrived in Italy for his AC Milan medical this morning. (Source: GdS) http://t.co/GG2yQrroiv', '2015-08-25 07:21:54.000000'),
(636090143263338496, 4, 'RT @Football__Tweet: 10 years ago, Ronaldinho broke the internet with the first YouTube video to reach 1 million views. https://t.co/ooFBLD…', '2015-08-25 08:18:02.000000'),
(636090650279088129, 4, 'Arsenal are considering a move for Paris Saint-Germain''s Uruguay striker Edinson Cavani. (Source: Daily Mirror)', '2015-08-25 08:20:03.000000');

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_ttweetstweethashtag`
--

CREATE TABLE IF NOT EXISTS `twitter_ttweetstweethashtag` (
  `id` int(11) NOT NULL,
  `th_id_id` varchar(255) NOT NULL,
  `tt_id_id` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `twitter_ttweetstweethashtag`
--

INSERT INTO `twitter_ttweetstweethashtag` (`id`, `th_id_id`, `tt_id_id`) VALUES
(122, 'IVANOVICH', 560192717981229057),
(123, 'GERRARD', 560192717981229057),
(124, 'CHELIV', 560180882393554946),
(125, 'CARLINGCUP', 560180882393554946),
(126, 'PLAYFORGERRARD', 560180882393554946),
(127, 'START', 531380831194210305),
(128, 'ГРУСТНО', 523519980458237953),
(129, 'JÁDSON', 635981470771769344),
(130, 'FLAMENGO', 635981470771769344),
(131, 'CORINTHIANS', 635981470771769344),
(132, 'TITE', 635981470771769344),
(133, 'SCCP', 635981470771769344),
(134, 'NEYMAR', 635980017227337728);

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tworldcity`
--

CREATE TABLE IF NOT EXISTS `twitter_tworldcity` (
  `wcity_id` int(11) NOT NULL,
  `wc_id_id` int(11) NOT NULL,
  `coordX` float unsigned NOT NULL,
  `coordY` float unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `twitter_tworldcity`
--

INSERT INTO `twitter_tworldcity` (`wcity_id`, `wc_id_id`, `coordX`, `coordY`) VALUES
(1, 1, 0, 0),
(2, 2, 0, 0),
(3, 3, 0, 0),
(4, 4, 0, 0),
(5, 5, 0, 0),
(6, 6, 0, 0),
(7, 7, 0, 0),
(8, 8, 0, 0),
(9, 9, 0, 0),
(10, 10, 0, 0),
(11, 11, 0, 0),
(12, 12, 0, 0),
(13, 13, 0, 0),
(14, 14, 0, 0),
(15, 15, 0, 0),
(16, 16, 0, 0),
(17, 17, 0, 0),
(18, 18, 0, 0),
(19, 19, 0, 0),
(20, 20, 0, 0),
(21, 21, 0, 0),
(22, 22, 0, 0),
(23, 23, 0, 0),
(24, 24, 0, 0),
(25, 25, 0, 0),
(26, 26, 0, 0),
(27, 27, 0, 0),
(28, 28, 0, 0),
(29, 29, 0, 0),
(30, 30, 0, 0),
(31, 31, 0, 0),
(32, 32, 0, 0),
(33, 33, 0, 0),
(34, 34, 0, 0),
(35, 35, 0, 0),
(36, 36, 0, 0),
(37, 37, 0, 0),
(38, 38, 0, 0),
(39, 39, 0, 0),
(40, 40, 0, 0),
(41, 41, 0, 0),
(42, 42, 0, 0),
(43, 43, 0, 0),
(44, 44, 0, 0),
(45, 45, 0, 0),
(46, 46, 0, 0),
(47, 47, 0, 0),
(48, 48, 0, 0),
(49, 49, 0, 0),
(50, 50, 0, 0),
(51, 51, 0, 0),
(52, 52, 0, 0),
(53, 53, 0, 0),
(54, 54, 0, 0),
(55, 55, 0, 0),
(56, 56, 0, 0),
(57, 57, 0, 0),
(58, 58, 0, 0),
(59, 59, 0, 0),
(60, 60, 0, 0),
(61, 61, 0, 0),
(62, 62, 0, 0),
(63, 63, 0, 0),
(64, 64, 0, 0),
(65, 65, 0, 0),
(66, 66, 0, 0),
(67, 67, 0, 0),
(68, 68, 0, 0),
(69, 69, 0, 0),
(70, 70, 0, 0),
(71, 71, 0, 0),
(72, 72, 0, 0),
(73, 73, 0, 0),
(74, 74, 0, 0),
(75, 75, 0, 0),
(76, 76, 0, 0),
(77, 77, 0, 0),
(78, 78, 0, 0),
(79, 79, 0, 0),
(80, 80, 0, 0),
(81, 81, 0, 0),
(82, 82, 0, 0),
(83, 83, 0, 0),
(84, 84, 41.8276, 12.4627),
(85, 85, 0, 0),
(86, 86, 0, 0),
(87, 87, 0, 0),
(88, 88, 0, 0),
(89, 89, 0, 0),
(90, 90, 0, 0),
(91, 91, 0, 0),
(92, 92, 0, 0),
(93, 93, 0, 0),
(94, 94, 0, 0),
(95, 95, 0, 0),
(96, 96, 0, 0),
(97, 97, 0, 0),
(98, 98, 0, 0),
(99, 99, 0, 0),
(100, 100, 0, 0),
(101, 101, 0, 0),
(102, 102, 0, 0),
(103, 103, 0, 0),
(104, 104, 0, 0),
(105, 105, 0, 0),
(106, 106, 0, 0),
(107, 107, 0, 0),
(108, 108, 0, 0),
(109, 109, 0, 0),
(110, 110, 0, 0),
(111, 111, 0, 0),
(112, 112, 0, 0),
(113, 113, 0, 0),
(114, 114, 0, 0),
(115, 115, 0, 0),
(116, 116, 0, 0),
(117, 117, 0, 0),
(118, 118, 0, 0),
(119, 119, 0, 0),
(120, 120, 0, 0),
(121, 121, 0, 0),
(122, 122, 0, 0),
(123, 123, 0, 0),
(124, 124, 0, 0),
(125, 125, 0, 0),
(126, 126, 0, 0),
(127, 127, 0, 0),
(128, 128, 0, 0),
(129, 129, 0, 0),
(130, 130, 0, 0),
(131, 131, 0, 0),
(132, 132, 0, 0),
(133, 133, 0, 0),
(134, 134, 0, 0),
(135, 135, 0, 0),
(136, 136, 0, 0),
(137, 137, 0, 0),
(138, 138, 0, 0),
(139, 139, 0, 0),
(140, 140, 0, 0),
(141, 141, 0, 0),
(142, 142, 0, 0),
(143, 143, 0, 0),
(144, 144, 0, 0),
(145, 145, 0, 0),
(146, 146, 0, 0),
(147, 147, 0, 0),
(148, 148, 0, 0),
(149, 149, 0, 0),
(150, 150, 0, 0),
(151, 151, 0, 0),
(152, 152, 0, 0),
(153, 153, 0, 0),
(154, 154, 0, 0),
(155, 155, 0, 0),
(156, 156, 0, 0),
(157, 157, 0, 0),
(158, 158, 0, 0),
(159, 159, 0, 0),
(160, 160, 0, 0),
(161, 161, 0, 0),
(162, 162, 0, 0),
(163, 163, 0, 0),
(164, 164, 0, 0),
(165, 165, 0, 0),
(166, 166, 0, 0),
(167, 167, 0, 0),
(168, 168, 0, 0),
(169, 169, 55.7522, 37.6156),
(170, 170, 0, 0),
(171, 171, 0, 0),
(172, 172, 0, 0),
(173, 173, 0, 0),
(174, 174, 0, 0),
(175, 175, 0, 0),
(176, 176, 0, 0),
(177, 177, 0, 0),
(178, 178, 0, 0),
(179, 179, 0, 0),
(180, 180, 0, 0),
(181, 181, 0, 0),
(182, 182, 0, 0),
(183, 183, 0, 0),
(184, 184, 0, 0),
(185, 185, 0, 0),
(186, 186, 0, 0),
(187, 187, 0, 0),
(188, 188, 0, 0),
(189, 189, 0, 0),
(190, 190, 0, 0),
(191, 191, 0, 0),
(192, 192, 0, 0),
(193, 193, 0, 0),
(194, 194, 0, 0),
(195, 195, 0, 0),
(196, 196, 0, 0),
(197, 197, 0, 0),
(198, 198, 0, 0),
(199, 199, 0, 0),
(200, 200, 0, 0),
(201, 201, 0, 0),
(202, 202, 0, 0),
(203, 203, 0, 0),
(204, 204, 0, 0),
(205, 205, 0, 0),
(206, 206, 0, 0),
(207, 207, 0, 0),
(208, 208, 0, 0),
(209, 209, 0, 0),
(210, 210, 0, 0),
(211, 211, 0, 0),
(212, 212, 0, 0),
(213, 213, 0, 0),
(214, 214, 0, 0),
(215, 215, 0, 0),
(216, 216, 0, 0),
(217, 217, 0, 0),
(218, 218, 0, 0),
(219, 219, 0, 0),
(220, 220, 0, 0),
(221, 221, 0, 0),
(222, 222, 0, 0),
(223, 223, 0, 0),
(224, 224, 0, 0),
(225, 225, 48.86, 2.3444),
(226, 226, 0, 0),
(227, 227, 0, 0),
(228, 228, 0, 0),
(229, 229, 0, 0),
(230, 230, 0, 0),
(231, 231, 0, 0),
(232, 232, 0, 0),
(233, 233, 0, 0),
(234, 234, 0, 0),
(235, 235, 0, 0),
(236, 236, 0, 0),
(237, 237, 0, 0),
(238, 238, 0, 0),
(239, 239, 0, 0),
(240, 240, 0, 0),
(241, 241, 0, 0),
(242, 242, 0, 0),
(243, 243, 0, 0),
(244, 244, 0, 0),
(245, 245, 0, 0),
(246, 246, 0, 0),
(247, 247, 0, 0),
(248, 248, 35.6874, 139.692);

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tworldcitytr`
--

CREATE TABLE IF NOT EXISTS `twitter_tworldcitytr` (
  `id` int(11) NOT NULL,
  `wcity_id_id` int(11) NOT NULL,
  `langcode_id` varchar(5) NOT NULL,
  `wcity_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `twitter_tworldcitytr`
--

INSERT INTO `twitter_tworldcitytr` (`id`, `wcity_id_id`, `langcode_id`, `wcity_name`) VALUES
(1, 1, 'ru', 'Канберра'),
(2, 2, 'ru', 'Вена'),
(3, 3, 'ru', 'Баку'),
(4, 4, 'ru', 'Мариехамн'),
(5, 5, 'ru', 'Тирана'),
(6, 6, 'ru', 'Алжир'),
(7, 7, 'ru', 'Шарлотта-Амалия'),
(8, 8, 'ru', 'Паго-Паго'),
(9, 9, 'ru', 'Валли'),
(10, 10, 'ru', 'Лондон'),
(11, 11, 'ru', 'Луанда'),
(12, 12, 'ru', 'Андорра-ла-Велья'),
(13, 13, 'ru', 'Сент-Джонс'),
(14, 14, 'ru', 'Буэнос-Айрес'),
(15, 15, 'ru', 'Ереван'),
(16, 16, 'ru', 'Ораньестад'),
(17, 17, 'ru', 'Кабул'),
(18, 18, 'ru', 'Нассау'),
(19, 19, 'ru', 'Дакка'),
(20, 20, 'ru', 'Бриджтаун'),
(21, 21, 'ru', 'Манама'),
(22, 22, 'ru', 'Бельмопан'),
(23, 23, 'ru', 'Минск'),
(24, 24, 'ru', 'Брюссель'),
(25, 25, 'ru', 'Порто-Ново'),
(26, 26, 'ru', 'Гамильтон'),
(27, 27, 'ru', 'София'),
(28, 28, 'ru', 'Сукре'),
(29, 29, 'ru', 'Кралендейк'),
(30, 30, 'ru', 'Сараево'),
(31, 31, 'ru', 'Габороне'),
(32, 32, 'ru', 'Бразилиа'),
(33, 33, 'ru', 'Диего-Гарсия'),
(34, 34, 'ru', 'Род-Таун'),
(35, 35, 'ru', 'Бандар-Сери-Бегаван'),
(36, 36, 'ru', 'Уагадугу'),
(37, 37, 'ru', 'Бужумбура'),
(38, 38, 'ru', 'Тхимпху'),
(39, 39, 'ru', 'Порт-Вила'),
(40, 40, 'ru', 'Ватикан'),
(41, 41, 'ru', 'Лондон'),
(42, 42, 'ru', 'Будапешт'),
(43, 43, 'ru', 'Каракас'),
(44, 44, 'ru', 'Дили'),
(45, 45, 'ru', 'Ханой'),
(46, 46, 'ru', 'Либревиль'),
(47, 47, 'ru', 'Порт-о-Пренс'),
(48, 48, 'ru', 'Джорджтаун'),
(49, 49, 'ru', 'Банжул'),
(50, 50, 'ru', 'Аккра'),
(51, 51, 'ru', 'Бас-Тер'),
(52, 52, 'ru', 'Гватемала'),
(53, 53, 'ru', 'Кайенна'),
(54, 54, 'ru', 'Конакри'),
(55, 55, 'ru', 'Бисау'),
(56, 56, 'ru', 'Берлин'),
(57, 57, 'ru', 'Сент-Питер-Порт'),
(58, 58, 'ru', 'Гибралтар'),
(59, 59, 'ru', 'Тегусигальпа'),
(60, 60, 'ru', 'Гонконг'),
(61, 61, 'ru', 'Сент-Джорджес'),
(62, 62, 'ru', 'Нуук'),
(63, 63, 'ru', 'Афины'),
(64, 64, 'ru', 'Тбилиси'),
(65, 65, 'ru', 'Хагатна'),
(66, 66, 'ru', 'Копенгаген'),
(67, 67, 'ru', 'Киншаса'),
(68, 68, 'ru', 'Сент-Хельер'),
(69, 69, 'ru', 'Джибути'),
(70, 70, 'ru', 'Розо'),
(71, 71, 'ru', 'Санто-Доминго'),
(72, 72, 'ru', 'Каир'),
(73, 73, 'ru', 'Лусака'),
(74, 74, 'ru', 'Эль-Аюн'),
(75, 75, 'ru', 'Хараре'),
(76, 76, 'ru', 'Иерусалим'),
(77, 77, 'ru', 'Нью-Дели'),
(78, 78, 'ru', 'Джакарта'),
(79, 79, 'ru', 'Амман'),
(80, 80, 'ru', 'Тегеран'),
(81, 81, 'ru', 'Дублин'),
(82, 82, 'ru', 'Рейкьявик'),
(83, 83, 'ru', 'Мадрид'),
(84, 84, 'ru', 'Рим'),
(85, 85, 'ru', 'Сана'),
(86, 86, 'ru', 'Прая'),
(87, 87, 'ru', 'Астана'),
(88, 88, 'ru', 'Джорджтаун'),
(89, 89, 'ru', 'Пномпень'),
(90, 90, 'ru', 'Яунде'),
(91, 91, 'ru', 'Оттава'),
(92, 92, 'ru', 'Доха'),
(93, 93, 'ru', 'Найроби'),
(94, 94, 'ru', 'Никосия'),
(95, 95, 'ru', 'Бишкек'),
(96, 96, 'ru', 'Тарава'),
(97, 97, 'ru', 'Пекин'),
(98, 98, 'ru', 'Уэст-Айленд'),
(99, 99, 'ru', 'Богота'),
(100, 100, 'ru', 'Морони'),
(101, 101, 'ru', 'Приштина'),
(102, 102, 'ru', 'Сан-Хосе'),
(103, 103, 'ru', 'Ямусукро'),
(104, 104, 'ru', 'Гавана'),
(105, 105, 'ru', 'Эль-Кувейт'),
(106, 106, 'ru', 'Виллемстад'),
(107, 107, 'ru', 'Вьентьян'),
(108, 108, 'ru', 'Рига'),
(109, 109, 'ru', 'Масеру'),
(110, 110, 'ru', 'Монровия'),
(111, 111, 'ru', 'Бейрут'),
(112, 112, 'ru', 'Триполи'),
(113, 113, 'ru', 'Вильнюс'),
(114, 114, 'ru', 'Вадуц'),
(115, 115, 'ru', 'Люксембург'),
(116, 116, 'ru', 'Порт-Луи'),
(117, 117, 'ru', 'Нуакшот'),
(118, 118, 'ru', 'Антананариву'),
(119, 119, 'ru', 'Мамудзу'),
(120, 120, 'ru', 'Скопье'),
(121, 121, 'ru', 'Лилонгве'),
(122, 122, 'ru', 'Куала-Лумпур'),
(123, 123, 'ru', 'Бамако'),
(124, 124, 'ru', 'Мале'),
(125, 125, 'ru', 'Валлетта'),
(126, 126, 'ru', 'Рабат'),
(127, 127, 'ru', 'Фор-де-Франс'),
(128, 128, 'ru', 'Маджуро'),
(129, 129, 'ru', 'Мехико'),
(130, 130, 'ru', 'Паликир'),
(131, 131, 'ru', 'Мапуту'),
(132, 132, 'ru', 'Кишинёв'),
(133, 133, 'ru', 'Монте-Карло'),
(134, 134, 'ru', 'Улан-Батор'),
(135, 135, 'ru', 'Плимут'),
(136, 136, 'ru', 'Нейпьидо'),
(137, 137, 'ru', 'Виндхук'),
(138, 138, 'ru', 'Ярен'),
(139, 139, 'ru', 'Катманду'),
(140, 140, 'ru', 'Ниамей'),
(141, 141, 'ru', 'Абуджа'),
(142, 142, 'ru', 'Амстердам'),
(143, 143, 'ru', 'Манагуа'),
(144, 144, 'ru', 'Алофи'),
(145, 145, 'ru', 'Веллингтон'),
(146, 146, 'ru', 'Нумеа'),
(147, 147, 'ru', 'Осло'),
(148, 148, 'ru', 'Кингстон'),
(149, 149, 'ru', 'Абу-Даби'),
(150, 150, 'ru', 'Маскат'),
(151, 151, 'ru', 'Дуглас'),
(152, 152, 'ru', 'Флайинг-Фиш-Коув'),
(153, 153, 'ru', 'Аваруа'),
(154, 154, 'ru', 'Адамстаун'),
(155, 155, 'ru', 'Джеймстаун'),
(156, 156, 'ru', 'Исламабад'),
(157, 157, 'ru', 'Мелекеок'),
(158, 158, 'ru', 'Рамалла'),
(159, 159, 'ru', 'Панама'),
(160, 160, 'ru', 'Порт-Морсби'),
(161, 161, 'ru', 'Асунсьон'),
(162, 162, 'ru', 'Лима'),
(163, 163, 'ru', 'Варшава'),
(164, 164, 'ru', 'Лиссабон'),
(165, 165, 'ru', 'Сан-Хуан'),
(166, 166, 'ru', 'Багдад'),
(167, 167, 'ru', 'Браззавиль'),
(168, 168, 'ru', 'Сен-Дени'),
(169, 169, 'ru', 'Москва'),
(170, 170, 'ru', 'Кигали'),
(171, 171, 'ru', 'Бухарест'),
(172, 172, 'ru', 'Сан-Сальвадор'),
(173, 173, 'ru', 'Апиа'),
(174, 174, 'ru', 'Сан-Марино'),
(175, 175, 'ru', 'Сан-Томе'),
(176, 176, 'ru', 'Эр-Рияд'),
(177, 177, 'ru', 'Мбабане'),
(178, 178, 'ru', 'Пхеньян'),
(179, 179, 'ru', 'Сайпан'),
(180, 180, 'ru', 'Виктория'),
(181, 181, 'ru', 'Густавия'),
(182, 182, 'ru', 'Мариго'),
(183, 183, 'ru', 'Сен-Пьер'),
(184, 184, 'ru', 'Дакар'),
(185, 185, 'ru', 'Кингстаун'),
(186, 186, 'ru', 'Бастер'),
(187, 187, 'ru', 'Кастри'),
(188, 188, 'ru', 'Белград'),
(189, 189, 'ru', 'Сингапур'),
(190, 190, 'ru', 'Филипсбург'),
(191, 191, 'ru', 'Дамаск'),
(192, 192, 'ru', 'Братислава'),
(193, 193, 'ru', 'Любляна'),
(194, 194, 'ru', 'Хониара'),
(195, 195, 'ru', 'Могадишо'),
(196, 196, 'ru', 'Москва'),
(197, 197, 'ru', 'Хартум'),
(198, 198, 'ru', 'Парамарибо'),
(199, 199, 'ru', 'Вашингтон'),
(200, 200, 'ru', 'Фритаун'),
(201, 201, 'ru', 'Душанбе'),
(202, 202, 'ru', 'Бангкок'),
(203, 203, 'ru', 'Тайбэй'),
(204, 204, 'ru', 'Додома'),
(205, 205, 'ru', 'Коберн-Таун'),
(206, 206, 'ru', 'Ломе'),
(207, 207, 'ru', 'Нукунону'),
(208, 208, 'ru', 'Нукуалофа'),
(209, 209, 'ru', 'Порт-оф-Спейн'),
(210, 210, 'ru', 'Фунафути'),
(211, 211, 'ru', 'Тунис'),
(212, 212, 'ru', 'Ашхабад'),
(213, 213, 'ru', 'Анкара'),
(214, 214, 'ru', 'Кампала'),
(215, 215, 'ru', 'Ташкент'),
(216, 216, 'ru', 'Киев'),
(217, 217, 'ru', 'Мата-Уту'),
(218, 218, 'ru', 'Монтевидео'),
(219, 219, 'ru', 'Кардифф'),
(220, 220, 'ru', 'Торсхавн'),
(221, 221, 'ru', 'Сува'),
(222, 222, 'ru', 'Манила'),
(223, 223, 'ru', 'Хельсинки'),
(224, 224, 'ru', 'Порт-Стэнли'),
(225, 225, 'ru', 'Париж'),
(226, 226, 'ru', 'Папеэте'),
(227, 227, 'ru', 'Порт-о-Франсэ'),
(228, 228, 'ru', 'Загреб'),
(229, 229, 'ru', 'Банги'),
(230, 230, 'ru', 'Нджамена'),
(231, 231, 'ru', 'Подгорица'),
(232, 232, 'ru', 'Прага'),
(233, 233, 'ru', 'Сантьяго'),
(234, 234, 'ru', 'Берн'),
(235, 235, 'ru', 'Стокгольм'),
(236, 236, 'ru', 'Эдинбург'),
(237, 237, 'ru', 'Шри-Джаяварденепура-Котте'),
(238, 238, 'ru', 'Кито'),
(239, 239, 'ru', 'Малабо'),
(240, 240, 'ru', 'Асмэра'),
(241, 241, 'ru', 'Таллин'),
(242, 242, 'ru', 'Аддис-Абеба'),
(243, 243, 'ru', 'Кейптаун'),
(244, 244, 'ru', 'Грютвикен'),
(245, 245, 'ru', 'Сеул'),
(246, 246, 'ru', 'Джуба'),
(247, 247, 'ru', 'Кингстон'),
(248, 248, 'ru', 'Токио');

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tworldcountry`
--

CREATE TABLE IF NOT EXISTS `twitter_tworldcountry` (
  `wc_id` int(11) NOT NULL,
  `wr_id_id` int(11) NOT NULL,
  `coordX` int(10) unsigned NOT NULL,
  `coordY` int(10) unsigned NOT NULL,
  `logo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `twitter_tworldcountry`
--

INSERT INTO `twitter_tworldcountry` (`wc_id`, `wr_id_id`, `coordX`, `coordY`, `logo`) VALUES
(1, 1, 65, 85, 'flags/australia.png'),
(2, 7, 65, 84, 'flags/austria.png'),
(3, 8, 65, 90, 'flags/azerbaijan.png'),
(4, 7, 65, 88, 'flags/aland_islands.png'),
(5, 7, 65, 76, 'flags/albania.png'),
(6, 9, 68, 90, 'flags/algeria.png'),
(7, 10, 86, 73, 'flags/virgin_islands_us.png'),
(8, 1, 67, 78, 'flags/american_samoa.png'),
(9, 10, 65, 73, 'flags/anguilla.png'),
(10, 7, 71, 66, 'flags/england.png'),
(11, 9, 65, 79, 'flags/angola.png'),
(12, 7, 65, 68, 'flags/andorra.png'),
(13, 10, 65, 71, 'flags/antigua_and_barbuda.png'),
(14, 10, 65, 82, 'flags/argentina.png'),
(15, 8, 65, 77, 'flags/armenia.png'),
(16, 10, 65, 87, 'flags/aruba.png'),
(17, 8, 65, 70, 'flags/afghanistan.png'),
(18, 10, 66, 83, 'flags/bahamas.png'),
(19, 8, 66, 68, 'flags/bangladesh.png'),
(20, 10, 66, 66, 'flags/barbados.png'),
(21, 8, 66, 72, 'flags/bahrain.png'),
(22, 10, 66, 90, 'flags/belize.png'),
(23, 7, 66, 89, 'flags/belarus.png'),
(24, 7, 66, 69, 'flags/belgium.png'),
(25, 9, 66, 74, 'flags/benin.png'),
(26, 10, 66, 77, 'flags/bermuda.png'),
(27, 7, 66, 71, 'flags/bulgaria.png'),
(28, 10, 66, 79, 'flags/bolivia.png'),
(29, 10, 0, 0, 'flags/bonaire.png'),
(30, 7, 66, 65, 'flags/bosnia_and_herzegovina.png'),
(31, 9, 66, 87, 'flags/botswana.png'),
(32, 10, 66, 82, 'flags/brazil.png'),
(33, 8, 73, 79, 'flags/british_indian_ocean_territory.png'),
(34, 10, 86, 71, 'flags/virgin_islands_british.png'),
(35, 8, 66, 78, 'flags/brunei.png'),
(36, 9, 66, 70, 'flags/burkina_faso.png'),
(37, 9, 66, 73, 'flags/burundi.png'),
(38, 8, 66, 84, 'flags/bhutan.png'),
(39, 1, 86, 85, 'flags/vanuatu.png'),
(40, 7, 86, 65, 'flags/vatican_city.png'),
(41, 7, 71, 66, 'flags/united_kingdom.png'),
(42, 7, 72, 85, 'flags/hungary.png'),
(43, 10, 86, 69, 'flags/venezuela.png'),
(44, 8, 84, 76, 'flags/east_timor.png'),
(45, 8, 86, 78, 'flags/vietnam.png'),
(46, 9, 71, 65, 'flags/gabon.png'),
(47, 10, 72, 84, 'flags/haiti.png'),
(48, 10, 71, 89, 'flags/guyana.png'),
(49, 9, 71, 77, 'flags/gambia.png'),
(50, 9, 71, 72, 'flags/ghana.png'),
(51, 10, 71, 80, 'flags/guadeloupe.png'),
(52, 10, 71, 84, 'flags/guatemala.png'),
(53, 10, 0, 0, 'flags/french_guiana.png'),
(54, 9, 71, 78, 'flags/guinea.png'),
(55, 9, 71, 87, 'flags/guinea_bissau.png'),
(56, 7, 68, 69, 'flags/germany.png'),
(57, 7, 0, 0, 'flags/guernsey.png'),
(58, 7, 71, 73, 'flags/gibraltar.png'),
(59, 10, 72, 78, 'flags/honduras.png'),
(60, 8, 72, 75, 'flags/hong_kong.png'),
(61, 10, 71, 68, 'flags/grenada.png'),
(62, 7, 71, 76, 'flags/greenland.png'),
(63, 7, 71, 82, 'flags/greece.png'),
(64, 8, 71, 69, 'flags/georgia.png'),
(65, 8, 71, 85, 'flags/guam.png'),
(66, 7, 68, 75, 'flags/denmark.png'),
(67, 9, 67, 71, 'flags/democratic_republic_of_the_congo.png'),
(68, 7, 0, 0, 'flags/jersey.png'),
(69, 9, 68, 74, 'flags/djibouti.png'),
(70, 10, 68, 77, 'flags/dominica.png'),
(71, 10, 68, 79, 'flags/dominican_republic.png'),
(72, 9, 69, 71, 'flags/egypt.png'),
(73, 9, 90, 77, 'flags/zambia.png'),
(74, 9, 69, 72, 'flags/western_sahara.png'),
(75, 9, 90, 87, 'flags/zimbabwe.png'),
(76, 8, 73, 76, 'flags/israel.png'),
(77, 8, 73, 78, 'flags/india.png'),
(78, 8, 73, 68, 'flags/indonesia.png'),
(79, 8, 74, 79, 'flags/jordan.png'),
(80, 8, 73, 82, 'flags/iran.png'),
(81, 7, 73, 69, 'flags/ireland.png'),
(82, 7, 73, 83, 'flags/iceland.png'),
(83, 7, 69, 83, 'flags/spain.png'),
(84, 7, 73, 84, 'flags/italy.png'),
(85, 8, 89, 69, 'flags/yemen.png'),
(86, 9, 67, 86, 'flags/cape_verde.png'),
(87, 8, 75, 90, 'flags/kazakhstan.png'),
(88, 10, 75, 89, 'flags/cayman_islands.png'),
(89, 8, 75, 72, 'flags/cambodia.png'),
(90, 9, 67, 77, 'flags/cameroon.png'),
(91, 10, 67, 65, 'flags/canada.png'),
(92, 8, 81, 65, 'flags/qatar.png'),
(93, 9, 75, 69, 'flags/kenya.png'),
(94, 7, 67, 89, 'flags/cyprus.png'),
(95, 8, 75, 71, 'flags/kyrgyzstan.png'),
(96, 1, 75, 73, 'flags/kiribati.png'),
(97, 8, 67, 78, 'flags/china.png'),
(98, 1, 67, 67, 'flags/cocos_islands.png'),
(99, 10, 67, 79, 'flags/colombia.png'),
(100, 9, 75, 77, 'flags/comoros.png'),
(101, 7, 0, 0, 'flags/kosovo.png'),
(102, 10, 67, 82, 'flags/costa_rica.png'),
(103, 9, 67, 73, 'flags/cote_d_Ivoire.png'),
(104, 10, 67, 85, 'flags/cuba.png'),
(105, 8, 75, 87, 'flags/kuwait.png'),
(106, 10, 0, 0, 'flags/curacao.png'),
(107, 8, 76, 65, 'flags/laos.png'),
(108, 7, 76, 86, 'flags/latvia.png'),
(109, 9, 76, 83, 'flags/lesotho.png'),
(110, 9, 76, 82, 'flags/liberia.png'),
(111, 8, 76, 66, 'flags/lebanon.png'),
(112, 9, 76, 89, 'flags/libya.png'),
(113, 7, 76, 84, 'flags/lithuania.png'),
(114, 7, 76, 73, 'flags/liechtenstein.png'),
(115, 7, 76, 85, 'flags/luxembourg.png'),
(116, 9, 77, 85, 'flags/mauritius.png'),
(117, 9, 77, 82, 'flags/mauritania.png'),
(118, 9, 77, 71, 'flags/madagascar.png'),
(119, 9, 89, 84, 'flags/mayotte.png'),
(120, 7, 77, 75, 'flags/macedonia.png'),
(121, 9, 77, 87, 'flags/malawi.png'),
(122, 8, 77, 89, 'flags/malaysia.png'),
(123, 9, 77, 76, 'flags/mali.png'),
(124, 8, 77, 86, 'flags/maldives.png'),
(125, 7, 77, 84, 'flags/malta.png'),
(126, 9, 77, 65, 'flags/morocco.png'),
(127, 10, 77, 81, 'flags/martinique.png'),
(128, 1, 77, 72, 'flags/marshall_islands.png'),
(129, 10, 77, 88, 'flags/mexico.png'),
(130, 1, 70, 77, 'flags/micronesia.png'),
(131, 9, 77, 90, 'flags/mozambique.png'),
(132, 7, 77, 68, 'flags/moldova.png'),
(133, 7, 77, 67, 'flags/monaco.png'),
(134, 8, 77, 78, 'flags/mongolia.png'),
(135, 10, 77, 83, 'flags/montserrat.png'),
(136, 8, 77, 77, 'flags/myanmar.png'),
(137, 9, 78, 65, 'flags/namibia.png'),
(138, 1, 78, 82, 'flags/nauru.png'),
(139, 8, 78, 80, 'flags/nepal.png'),
(140, 9, 78, 69, 'flags/niger.png'),
(141, 9, 78, 71, 'flags/nigeria.png'),
(142, 7, 78, 76, 'flags/netherlands.png'),
(143, 10, 78, 73, 'flags/nicaragua.png'),
(144, 1, 78, 85, 'flags/niue.png'),
(145, 1, 78, 90, 'flags/new_zealand.png'),
(146, 1, 78, 67, 'flags/new_caledonia.png'),
(147, 7, 78, 79, 'flags/norway.png'),
(148, 1, 78, 70, 'flags/norfolk_island.png'),
(149, 8, 0, 0, 'flags/united_arab_emirates.png'),
(150, 8, 79, 77, 'flags/oman.png'),
(151, 7, 0, 0, 'flags/isle_of_man.png'),
(152, 1, 67, 88, 'flags/christmas_island.png'),
(153, 1, 67, 75, 'flags/cook_islands.png'),
(154, 1, 80, 78, 'flags/pitcairn_islands.png'),
(155, 9, 83, 72, 'flags/saint_helena.png'),
(156, 8, 80, 75, 'flags/pakistan.png'),
(157, 9, 80, 87, 'flags/palau.png'),
(158, 8, 0, 0, 'flags/palestinian_territory.png'),
(159, 10, 80, 65, 'flags/panama.png'),
(160, 1, 80, 71, 'flags/papua_new_guinea.png'),
(161, 10, 80, 89, 'flags/paraguay.png'),
(162, 10, 80, 69, 'flags/peru.png'),
(163, 7, 80, 76, 'flags/poland.png'),
(164, 7, 80, 84, 'flags/portugal.png'),
(165, 10, 80, 82, 'flags/puerto_rico.png'),
(166, 8, 0, 0, 'flags/iraq.png'),
(167, 9, 67, 71, 'flags/republic_of_the_congo.png'),
(168, 9, 82, 69, 'flags/reunion.png'),
(169, 7, 82, 85, 'flags/russia.png'),
(170, 9, 82, 87, 'flags/rwanda.png'),
(171, 7, 82, 79, 'flags/romania.png'),
(172, 10, 83, 86, 'flags/el_salvador.png'),
(173, 1, 87, 83, 'flags/samoa.png'),
(174, 7, 83, 77, 'flags/san_marino.png'),
(175, 9, 83, 84, 'flags/sao_tome_and_principe.png'),
(176, 8, 83, 65, 'flags/saudi_arabia.png'),
(177, 9, 83, 90, 'flags/swaziland.png'),
(178, 8, 0, 0, 'flags/korea_north.png'),
(179, 1, 77, 80, 'flags/northern_mariana_islands.png'),
(180, 9, 83, 67, 'flags/seychelles.png'),
(181, 10, 0, 0, 'flags/saint_barthelemy.png'),
(182, 10, 0, 0, 'flags/saint_martin.png'),
(183, 10, 80, 77, 'flags/saint_pierre_and_miquelon.png'),
(184, 9, 83, 78, 'flags/senegal.png'),
(185, 10, 86, 67, 'flags/saint_vincent_and_the_grenadines.png'),
(186, 10, 75, 78, 'flags/saint_kitts_and_nevis.png'),
(187, 10, 76, 67, 'flags/saint_lucia.png'),
(188, 7, 82, 83, 'flags/serbia.png'),
(189, 8, 83, 71, 'flags/singapore.png'),
(190, 10, 0, 0, 'flags/sint_maarten.png'),
(191, 8, 83, 89, 'flags/syria.png'),
(192, 7, 83, 75, 'flags/slovakia.png'),
(193, 7, 83, 73, 'flags/slovenia.png'),
(194, 1, 83, 66, 'flags/solomon_islands.png'),
(195, 9, 83, 79, 'flags/somalia.png'),
(196, 7, 0, 0, 'flags/ussr.png'),
(197, 9, 83, 68, 'flags/sudan.png'),
(198, 10, 83, 82, 'flags/suriname.png'),
(199, 10, 85, 83, 'flags/united_states_of_america.png'),
(200, 9, 83, 76, 'flags/sierra_leone.png'),
(201, 8, 84, 74, 'flags/tajikistan.png'),
(202, 8, 84, 72, 'flags/thailand.png'),
(203, 8, 84, 87, 'flags/republic_of_china.png'),
(204, 9, 84, 90, 'flags/tanzania.png'),
(205, 10, 84, 67, 'flags/turks_and_caicos_islands.png'),
(206, 9, 84, 71, 'flags/togo.png'),
(207, 1, 84, 75, 'flags/tokelau.png'),
(208, 1, 84, 79, 'flags/tonga.png'),
(209, 10, 84, 84, 'flags/trinidad_and_tobago.png'),
(210, 1, 84, 86, 'flags/tuvalu.png'),
(211, 9, 84, 78, 'flags/tunisia.png'),
(212, 8, 84, 77, 'flags/turkmenistan.png'),
(213, 8, 84, 82, 'flags/turkey.png'),
(214, 9, 85, 71, 'flags/uganda.png'),
(215, 8, 85, 90, 'flags/uzbekistan.png'),
(216, 7, 85, 65, 'flags/ukraine.png'),
(217, 1, 87, 70, 'flags/wallis_and_futuna.png'),
(218, 10, 85, 89, 'flags/uruguay.png'),
(219, 7, 0, 0, 'flags/wales.png'),
(220, 7, 70, 79, 'flags/faroe_islands.png'),
(221, 1, 70, 74, 'flags/fiji.png'),
(222, 8, 80, 72, 'flags/philippines.png'),
(223, 7, 70, 73, 'flags/finland.png'),
(224, 10, 70, 75, 'flags/falkland_islands.png'),
(225, 7, 70, 82, 'flags/france.png'),
(226, 1, 80, 70, 'flags/french_polynesia.png'),
(227, 11, 84, 70, 'flags/french_southern_territories.png'),
(228, 7, 72, 82, 'flags/croatia.png'),
(229, 9, 0, 0, 'flags/central_african_republic.png'),
(230, 9, 84, 68, 'flags/chad.png'),
(231, 7, 77, 69, 'flags/montenegro.png'),
(232, 7, 67, 90, 'flags/czech_republic.png'),
(233, 10, 67, 76, 'flags/chile.png'),
(234, 7, 67, 72, 'flags/switzerland.png'),
(235, 7, 83, 69, 'flags/sweden.png'),
(236, 7, 0, 0, 'flags/scotland.png'),
(237, 8, 76, 75, 'flags/sri_lanka.png'),
(238, 10, 69, 67, 'flags/ecuador.png'),
(239, 9, 71, 81, 'flags/equatorial_guinea.png'),
(240, 9, 69, 82, 'flags/eritrea.png'),
(241, 7, 69, 69, 'flags/estonia.png'),
(242, 9, 69, 84, 'flags/ethiopia.png'),
(243, 9, 90, 65, 'flags/south_africa.png'),
(244, 10, 71, 83, 'flags/south_georgia_and_the_south_sandwich_islands.png'),
(245, 8, 75, 82, 'flags/korea_south.png'),
(246, 9, 83, 68, 'flags/south_sudan.png'),
(247, 10, 74, 77, 'flags/jamaica.png'),
(248, 8, 74, 80, 'flags/japan.png');

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tworldcountrytr`
--

CREATE TABLE IF NOT EXISTS `twitter_tworldcountrytr` (
  `id` int(11) NOT NULL,
  `wc_id_id` int(11) NOT NULL,
  `langcode_id` varchar(5) NOT NULL,
  `wc_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `twitter_tworldcountrytr`
--

INSERT INTO `twitter_tworldcountrytr` (`id`, `wc_id_id`, `langcode_id`, `wc_name`) VALUES
(1, 1, 'ru', 'Австралийский Союз'),
(2, 2, 'ru', 'Австрия'),
(3, 3, 'ru', 'Азербайджан'),
(4, 4, 'ru', 'Аландские острова'),
(5, 5, 'ru', 'Албания'),
(6, 6, 'ru', 'Алжир'),
(7, 7, 'ru', 'Американские Виргинские острова'),
(8, 8, 'ru', 'Американское Самоа'),
(9, 9, 'ru', 'Ангилья'),
(10, 10, 'ru', 'Англия'),
(11, 11, 'ru', 'Ангола'),
(12, 12, 'ru', 'Андорра'),
(13, 13, 'ru', 'Антигуа и Барбуда'),
(14, 14, 'ru', 'Аргентина'),
(15, 15, 'ru', 'Армения'),
(16, 16, 'ru', 'Аруба'),
(17, 17, 'ru', 'Афганистан'),
(18, 18, 'ru', 'Багамские Острова'),
(19, 19, 'ru', 'Бангладеш'),
(20, 20, 'ru', 'Барбадос'),
(21, 21, 'ru', 'Бахрейн'),
(22, 22, 'ru', 'Белиз'),
(23, 23, 'ru', 'Белоруссия'),
(24, 24, 'ru', 'Бельгия'),
(25, 25, 'ru', 'Бенин'),
(26, 26, 'ru', 'Бермуды'),
(27, 27, 'ru', 'Болгария'),
(28, 28, 'ru', 'Боливия'),
(29, 29, 'ru', 'Бонайре'),
(30, 30, 'ru', 'Босния и Герцеговина'),
(31, 31, 'ru', 'Ботсвана'),
(32, 32, 'ru', 'Бразилия'),
(33, 33, 'ru', 'Британская территория в Индийском океане'),
(34, 34, 'ru', 'Британские Виргинские острова'),
(35, 35, 'ru', 'Бруней'),
(36, 36, 'ru', 'Буркина Фасо'),
(37, 37, 'ru', 'Бурунди'),
(38, 38, 'ru', 'Бутан'),
(39, 39, 'ru', 'Вануату'),
(40, 40, 'ru', 'Ватикан'),
(41, 41, 'ru', 'Великобритания'),
(42, 42, 'ru', 'Венгрия'),
(43, 43, 'ru', 'Венесуэла'),
(44, 44, 'ru', 'Восточный Тимор'),
(45, 45, 'ru', 'Вьетнам'),
(46, 46, 'ru', 'Габон'),
(47, 47, 'ru', 'Гаити'),
(48, 48, 'ru', 'Гайана'),
(49, 49, 'ru', 'Гамбия'),
(50, 50, 'ru', 'Гана'),
(51, 51, 'ru', 'Гваделупа'),
(52, 52, 'ru', 'Гватемала'),
(53, 53, 'ru', 'Гвиана'),
(54, 54, 'ru', 'Гвинея'),
(55, 55, 'ru', 'Гвинея-Бисау'),
(56, 56, 'ru', 'Германия'),
(57, 57, 'ru', 'Гернси'),
(58, 58, 'ru', 'Гибралтар'),
(59, 59, 'ru', 'Гондурас'),
(60, 60, 'ru', 'Гонконг'),
(61, 61, 'ru', 'Гренада'),
(62, 62, 'ru', 'Гренландия'),
(63, 63, 'ru', 'Греция'),
(64, 64, 'ru', 'Грузия'),
(65, 65, 'ru', 'Гуам'),
(66, 66, 'ru', 'Дания'),
(67, 67, 'ru', 'Демократическая Республика Конго'),
(68, 68, 'ru', 'Джерси'),
(69, 69, 'ru', 'Джибути'),
(70, 70, 'ru', 'Доминика'),
(71, 71, 'ru', 'Доминиканская Республика'),
(72, 72, 'ru', 'Египет'),
(73, 73, 'ru', 'Замбия'),
(74, 74, 'ru', 'Западная Сахара'),
(75, 75, 'ru', 'Зимбабве'),
(76, 76, 'ru', 'Израиль'),
(77, 77, 'ru', 'Индия'),
(78, 78, 'ru', 'Индонезия'),
(79, 79, 'ru', 'Иордания'),
(80, 80, 'ru', 'Иран'),
(81, 81, 'ru', 'Ирландия'),
(82, 82, 'ru', 'Исландия'),
(83, 83, 'ru', 'Испания'),
(84, 84, 'ru', 'Италия'),
(85, 85, 'ru', 'Йемен'),
(86, 86, 'ru', 'Кабо-Верде'),
(87, 87, 'ru', 'Казахстан'),
(88, 88, 'ru', 'Каймановы острова'),
(89, 89, 'ru', 'Камбоджа'),
(90, 90, 'ru', 'Камерун'),
(91, 91, 'ru', 'Канада'),
(92, 92, 'ru', 'Катар'),
(93, 93, 'ru', 'Кения'),
(94, 94, 'ru', 'Кипр'),
(95, 95, 'ru', 'Киргизия'),
(96, 96, 'ru', 'Кирибати'),
(97, 97, 'ru', 'Китай'),
(98, 98, 'ru', 'Кокосовые острова'),
(99, 99, 'ru', 'Колумбия'),
(100, 100, 'ru', 'Коморы'),
(101, 101, 'ru', 'Косово'),
(102, 102, 'ru', 'Коста-Рика'),
(103, 103, 'ru', 'Кот-д''Ивуар'),
(104, 104, 'ru', 'Куба'),
(105, 105, 'ru', 'Кувейт'),
(106, 106, 'ru', 'Кюрасао'),
(107, 107, 'ru', 'Лаос'),
(108, 108, 'ru', 'Латвия'),
(109, 109, 'ru', 'Лесото'),
(110, 110, 'ru', 'Либерия'),
(111, 111, 'ru', 'Ливан'),
(112, 112, 'ru', 'Ливия'),
(113, 113, 'ru', 'Литва'),
(114, 114, 'ru', 'Лихтенштейн'),
(115, 115, 'ru', 'Люксембург'),
(116, 116, 'ru', 'Маврикий'),
(117, 117, 'ru', 'Мавритания'),
(118, 118, 'ru', 'Мадагаскар'),
(119, 119, 'ru', 'Майотта'),
(120, 120, 'ru', 'Македония'),
(121, 121, 'ru', 'Малави'),
(122, 122, 'ru', 'Малайзия'),
(123, 123, 'ru', 'Мали'),
(124, 124, 'ru', 'Мальдивы'),
(125, 125, 'ru', 'Мальта'),
(126, 126, 'ru', 'Марокко'),
(127, 127, 'ru', 'Мартиника'),
(128, 128, 'ru', 'Маршалловы Острова'),
(129, 129, 'ru', 'Мексика'),
(130, 130, 'ru', 'Микронезия'),
(131, 131, 'ru', 'Мозамбик'),
(132, 132, 'ru', 'Молдавия'),
(133, 133, 'ru', 'Монако'),
(134, 134, 'ru', 'Монголия'),
(135, 135, 'ru', 'Монтсеррат'),
(136, 136, 'ru', 'Мьянма'),
(137, 137, 'ru', 'Намибия'),
(138, 138, 'ru', 'Науру'),
(139, 139, 'ru', 'Непал'),
(140, 140, 'ru', 'Нигер'),
(141, 141, 'ru', 'Нигерия'),
(142, 142, 'ru', 'Нидерланды'),
(143, 143, 'ru', 'Никарагуа'),
(144, 144, 'ru', 'Ниуэ'),
(145, 145, 'ru', 'Новая Зеландия'),
(146, 146, 'ru', 'Новая Каледония'),
(147, 147, 'ru', 'Норвегия'),
(148, 148, 'ru', 'Норфолк'),
(149, 149, 'ru', 'Объединённые Арабские Эмираты'),
(150, 150, 'ru', 'Оман'),
(151, 151, 'ru', 'Остров Мэн'),
(152, 152, 'ru', 'Остров Рождества'),
(153, 153, 'ru', 'Острова Кука'),
(154, 154, 'ru', 'Острова Питкэрн'),
(155, 155, 'ru', 'Острова Святой Елены, Вознесения и Тристан-да-Кунья'),
(156, 156, 'ru', 'Пакистан'),
(157, 157, 'ru', 'Палау'),
(158, 158, 'ru', 'Палестинские территории'),
(159, 159, 'ru', 'Панама'),
(160, 160, 'ru', 'Папуа — Новая Гвинея'),
(161, 161, 'ru', 'Парагвай'),
(162, 162, 'ru', 'Перу'),
(163, 163, 'ru', 'Польша'),
(164, 164, 'ru', 'Португалия'),
(165, 165, 'ru', 'Пуэрто-Рико'),
(166, 166, 'ru', 'Республика Ирак'),
(167, 167, 'ru', 'Республика Конго'),
(168, 168, 'ru', 'Реюньон'),
(169, 169, 'ru', 'Россия'),
(170, 170, 'ru', 'Руанда'),
(171, 171, 'ru', 'Румыния'),
(172, 172, 'ru', 'Сальвадор'),
(173, 173, 'ru', 'Самоа'),
(174, 174, 'ru', 'Сан-Марино'),
(175, 175, 'ru', 'Сан-Томе и Принсипи'),
(176, 176, 'ru', 'Саудовская Аравия'),
(177, 177, 'ru', 'Свазиленд'),
(178, 178, 'ru', 'Северная Корея'),
(179, 179, 'ru', 'Северные Марианские острова'),
(180, 180, 'ru', 'Сейшельские Острова'),
(181, 181, 'ru', 'Сен-Бартелеми'),
(182, 182, 'ru', 'Сен-Мартен'),
(183, 183, 'ru', 'Сен-Пьер и Микелон'),
(184, 184, 'ru', 'Сенегал'),
(185, 185, 'ru', 'Сент-Винсент и Гренадины'),
(186, 186, 'ru', 'Сент-Китс и Невис'),
(187, 187, 'ru', 'Сент-Люсия'),
(188, 188, 'ru', 'Сербия'),
(189, 189, 'ru', 'Сингапур'),
(190, 190, 'ru', 'Синт-Мартен'),
(191, 191, 'ru', 'Сирия'),
(192, 192, 'ru', 'Словакия'),
(193, 193, 'ru', 'Словения'),
(194, 194, 'ru', 'Соломоновы Острова'),
(195, 195, 'ru', 'Сомали'),
(196, 196, 'ru', 'СССР'),
(197, 197, 'ru', 'Судан'),
(198, 198, 'ru', 'Суринам'),
(199, 199, 'ru', 'США'),
(200, 200, 'ru', 'Сьерра-Леоне'),
(201, 201, 'ru', 'Таджикистан'),
(202, 202, 'ru', 'Таиланд'),
(203, 203, 'ru', 'Тайвань'),
(204, 204, 'ru', 'Танзания'),
(205, 205, 'ru', 'Тёркс и Кайкос'),
(206, 206, 'ru', 'Того'),
(207, 207, 'ru', 'Токелау'),
(208, 208, 'ru', 'Тонга'),
(209, 209, 'ru', 'Тринидад и Тобаго'),
(210, 210, 'ru', 'Тувалу'),
(211, 211, 'ru', 'Тунис'),
(212, 212, 'ru', 'Туркмения'),
(213, 213, 'ru', 'Турция'),
(214, 214, 'ru', 'Уганда'),
(215, 215, 'ru', 'Узбекистан'),
(216, 216, 'ru', 'Украина'),
(217, 217, 'ru', 'Уоллис и Футуна'),
(218, 218, 'ru', 'Уругвай'),
(219, 219, 'ru', 'Уэльс'),
(220, 220, 'ru', 'Фарерские острова'),
(221, 221, 'ru', 'Фиджи'),
(222, 222, 'ru', 'Филиппины'),
(223, 223, 'ru', 'Финляндия'),
(224, 224, 'ru', 'Фолклендские острова'),
(225, 225, 'ru', 'Франция'),
(226, 226, 'ru', 'Французская Полинезия'),
(227, 227, 'ru', 'Французские Южные и Антарктические территории'),
(228, 228, 'ru', 'Хорватия'),
(229, 229, 'ru', 'Центральноафриканская Республика'),
(230, 230, 'ru', 'Чад'),
(231, 231, 'ru', 'Черногория'),
(232, 232, 'ru', 'Чехия'),
(233, 233, 'ru', 'Чили'),
(234, 234, 'ru', 'Швейцария'),
(235, 235, 'ru', 'Швеция'),
(236, 236, 'ru', 'Шотландия'),
(237, 237, 'ru', 'Шри-Ланка'),
(238, 238, 'ru', 'Эквадор'),
(239, 239, 'ru', 'Экваториальная Гвинея'),
(240, 240, 'ru', 'Эритрея'),
(241, 241, 'ru', 'Эстония'),
(242, 242, 'ru', 'Эфиопия'),
(243, 243, 'ru', 'ЮАР'),
(244, 244, 'ru', 'Южная Георгия и Южные Сандвичевы острова'),
(245, 245, 'ru', 'Южная Корея'),
(246, 246, 'ru', 'Южный Судан'),
(247, 247, 'ru', 'Ямайка'),
(248, 248, 'ru', 'Япония');

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tworldregion`
--

CREATE TABLE IF NOT EXISTS `twitter_tworldregion` (
  `wr_id` int(11) NOT NULL,
  `coordX` int(10) unsigned NOT NULL,
  `coordY` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `twitter_tworldregion`
--

INSERT INTO `twitter_tworldregion` (`wr_id`, `coordX`, `coordY`) VALUES
(1, 0, 0),
(7, 0, 0),
(8, 0, 0),
(9, 0, 0),
(10, 0, 0),
(11, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tworldregiontr`
--

CREATE TABLE IF NOT EXISTS `twitter_tworldregiontr` (
  `id` int(11) NOT NULL,
  `wr_id_id` int(11) NOT NULL,
  `langcode_id` varchar(5) NOT NULL,
  `wr_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `twitter_tworldregiontr`
--

INSERT INTO `twitter_tworldregiontr` (`id`, `wr_id_id`, `langcode_id`, `wr_name`) VALUES
(1, 1, 'ru', 'Океания'),
(7, 7, 'ru', 'Европа'),
(8, 8, 'ru', 'Азия'),
(9, 9, 'ru', 'Африка'),
(10, 10, 'ru', 'Америка'),
(11, 11, 'ru', 'Антарктика');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  ADD KEY `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` (`permission_id`);

--
-- Индексы таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_type_id` (`content_type_id`,`codename`);

--
-- Индексы таблицы `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индексы таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` (`group_id`);

--
-- Индексы таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  ADD KEY `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` (`permission_id`);

--
-- Индексы таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`);

--
-- Индексы таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Индексы таблицы `twitter_tcontentarticle`
--
ALTER TABLE `twitter_tcontentarticle`
  ADD PRIMARY KEY (`ca_id`);

--
-- Индексы таблицы `twitter_tcontentarticletr`
--
ALTER TABLE `twitter_tcontentarticletr`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `twitter_tcontentclubarticlerel`
--
ALTER TABLE `twitter_tcontentclubarticlerel`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `twitter_tcontentclubphotorel`
--
ALTER TABLE `twitter_tcontentclubphotorel`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `twitter_tcontentclubvideorel`
--
ALTER TABLE `twitter_tcontentclubvideorel`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `twitter_tcontentclubvideoviewrel`
--
ALTER TABLE `twitter_tcontentclubvideoviewrel`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `twitter_tcontentphoto`
--
ALTER TABLE `twitter_tcontentphoto`
  ADD PRIMARY KEY (`cvv_id`);

--
-- Индексы таблицы `twitter_tcontentphototr`
--
ALTER TABLE `twitter_tcontentphototr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `twitter_cp_id_id_13c49d5be696358_fk_twitter_tcontentphoto_cvv_id` (`cp_id_id`),
  ADD KEY `t_langcode_id_2d015196edc07d23_fk_twitter_tlocalization_langcode` (`langcode_id`);

--
-- Индексы таблицы `twitter_tcontentvideo`
--
ALTER TABLE `twitter_tcontentvideo`
  ADD PRIMARY KEY (`cvv_id`);

--
-- Индексы таблицы `twitter_tcontentvideotr`
--
ALTER TABLE `twitter_tcontentvideotr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `twitte_cv_id_id_7e9cc8c1ec46d725_fk_twitter_tcontentvideo_cvv_id` (`cv_id_id`),
  ADD KEY `t_langcode_id_6962a9cbe3203394_fk_twitter_tlocalization_langcode` (`langcode_id`);

--
-- Индексы таблицы `twitter_tcontentvideoview`
--
ALTER TABLE `twitter_tcontentvideoview`
  ADD PRIMARY KEY (`cvv_id`);

--
-- Индексы таблицы `twitter_tcontentvideoviewtr`
--
ALTER TABLE `twitter_tcontentvideoviewtr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `t_cvv_id_id_1d16ce10495b866f_fk_twitter_tcontentvideoview_cvv_id` (`cvv_id_id`),
  ADD KEY `t_langcode_id_51d094a47f5d3661_fk_twitter_tlocalization_langcode` (`langcode_id`);

--
-- Индексы таблицы `twitter_tfootballclub`
--
ALTER TABLE `twitter_tfootballclub`
  ADD PRIMARY KEY (`fc_id`),
  ADD KEY `t_twitter_tfootballclub_wcity` (`wcity_id_id`),
  ADD KEY `t_twitter_tfootballclub_fd` (`fd_id_id`);

--
-- Индексы таблицы `twitter_tfootballclubplayerrel`
--
ALTER TABLE `twitter_tfootballclubplayerrel`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `twitter_tfootballclubtr`
--
ALTER TABLE `twitter_tfootballclubtr`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `twitter_tfootballdiv`
--
ALTER TABLE `twitter_tfootballdiv`
  ADD PRIMARY KEY (`fd_id`);

--
-- Индексы таблицы `twitter_tfootballdivtr`
--
ALTER TABLE `twitter_tfootballdivtr`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `twitter_tfootballplayer`
--
ALTER TABLE `twitter_tfootballplayer`
  ADD PRIMARY KEY (`fp_id`);

--
-- Индексы таблицы `twitter_tfootballplayertr`
--
ALTER TABLE `twitter_tfootballplayertr`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `twitter_tlocalization`
--
ALTER TABLE `twitter_tlocalization`
  ADD PRIMARY KEY (`langcode`);

--
-- Индексы таблицы `twitter_ttweetsauthor`
--
ALTER TABLE `twitter_ttweetsauthor`
  ADD PRIMARY KEY (`ta_id`);

--
-- Индексы таблицы `twitter_ttweetsclubhashtag`
--
ALTER TABLE `twitter_ttweetsclubhashtag`
  ADD PRIMARY KEY (`tch_id`);

--
-- Индексы таблицы `twitter_ttweetsclubtweetrel`
--
ALTER TABLE `twitter_ttweetsclubtweetrel`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `twitter_ttweetshashtag`
--
ALTER TABLE `twitter_ttweetshashtag`
  ADD PRIMARY KEY (`hashtag`);

--
-- Индексы таблицы `twitter_ttweetsplayerhashtag`
--
ALTER TABLE `twitter_ttweetsplayerhashtag`
  ADD PRIMARY KEY (`tph_id`);

--
-- Индексы таблицы `twitter_ttweetsplayertweetrel`
--
ALTER TABLE `twitter_ttweetsplayertweetrel`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `twitter_ttweetstweet`
--
ALTER TABLE `twitter_ttweetstweet`
  ADD PRIMARY KEY (`tt_id`),
  ADD KEY `twitter_ta_id_id_5f74573702e96731_fk_twitter_ttweetsauthor_ta_id` (`ta_id_id`);

--
-- Индексы таблицы `twitter_ttweetstweethashtag`
--
ALTER TABLE `twitter_ttweetstweethashtag`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `twitter_tworldcity`
--
ALTER TABLE `twitter_tworldcity`
  ADD PRIMARY KEY (`wcity_id`),
  ADD KEY `twitter_wc_id_id_365a40fe7c58204e_fk_twitter_tworldcountry_wc_id` (`wc_id_id`);

--
-- Индексы таблицы `twitter_tworldcitytr`
--
ALTER TABLE `twitter_tworldcitytr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `twit_wcity_id_id_423cdad3bb697135_fk_twitter_tworldcity_wcity_id` (`wcity_id_id`),
  ADD KEY `t_langcode_id_75e8297ed9cf7cd2_fk_twitter_tlocalization_langcode` (`langcode_id`);

--
-- Индексы таблицы `twitter_tworldcountry`
--
ALTER TABLE `twitter_tworldcountry`
  ADD PRIMARY KEY (`wc_id`),
  ADD KEY `twitter__wr_id_id_70f5d8de3373eceb_fk_twitter_tworldregion_wr_id` (`wr_id_id`);

--
-- Индексы таблицы `twitter_tworldcountrytr`
--
ALTER TABLE `twitter_tworldcountrytr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `twitter_wc_id_id_6de0c25c57ced5ea_fk_twitter_tworldcountry_wc_id` (`wc_id_id`),
  ADD KEY `t_langcode_id_3982867d066d94f6_fk_twitter_tlocalization_langcode` (`langcode_id`);

--
-- Индексы таблицы `twitter_tworldregion`
--
ALTER TABLE `twitter_tworldregion`
  ADD PRIMARY KEY (`wr_id`);

--
-- Индексы таблицы `twitter_tworldregiontr`
--
ALTER TABLE `twitter_tworldregiontr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `twitter__wr_id_id_78a3bd5227251dae_fk_twitter_tworldregion_wr_id` (`wr_id_id`),
  ADD KEY `t_langcode_id_18ad2454196e8d1d_fk_twitter_tlocalization_langcode` (`langcode_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT для таблицы `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT для таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `twitter_tcontentarticle`
--
ALTER TABLE `twitter_tcontentarticle`
  MODIFY `ca_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `twitter_tcontentarticletr`
--
ALTER TABLE `twitter_tcontentarticletr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `twitter_tcontentclubarticlerel`
--
ALTER TABLE `twitter_tcontentclubarticlerel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `twitter_tcontentclubphotorel`
--
ALTER TABLE `twitter_tcontentclubphotorel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `twitter_tcontentclubvideorel`
--
ALTER TABLE `twitter_tcontentclubvideorel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `twitter_tcontentclubvideoviewrel`
--
ALTER TABLE `twitter_tcontentclubvideoviewrel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `twitter_tcontentphoto`
--
ALTER TABLE `twitter_tcontentphoto`
  MODIFY `cvv_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `twitter_tcontentphototr`
--
ALTER TABLE `twitter_tcontentphototr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `twitter_tcontentvideo`
--
ALTER TABLE `twitter_tcontentvideo`
  MODIFY `cvv_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `twitter_tcontentvideotr`
--
ALTER TABLE `twitter_tcontentvideotr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `twitter_tcontentvideoview`
--
ALTER TABLE `twitter_tcontentvideoview`
  MODIFY `cvv_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `twitter_tcontentvideoviewtr`
--
ALTER TABLE `twitter_tcontentvideoviewtr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `twitter_tfootballclub`
--
ALTER TABLE `twitter_tfootballclub`
  MODIFY `fc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `twitter_tfootballclubplayerrel`
--
ALTER TABLE `twitter_tfootballclubplayerrel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `twitter_tfootballclubtr`
--
ALTER TABLE `twitter_tfootballclubtr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `twitter_tfootballdiv`
--
ALTER TABLE `twitter_tfootballdiv`
  MODIFY `fd_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `twitter_tfootballdivtr`
--
ALTER TABLE `twitter_tfootballdivtr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `twitter_tfootballplayer`
--
ALTER TABLE `twitter_tfootballplayer`
  MODIFY `fp_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `twitter_tfootballplayertr`
--
ALTER TABLE `twitter_tfootballplayertr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `twitter_ttweetsauthor`
--
ALTER TABLE `twitter_ttweetsauthor`
  MODIFY `ta_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `twitter_ttweetsclubhashtag`
--
ALTER TABLE `twitter_ttweetsclubhashtag`
  MODIFY `tch_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `twitter_ttweetsclubtweetrel`
--
ALTER TABLE `twitter_ttweetsclubtweetrel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `twitter_ttweetsplayerhashtag`
--
ALTER TABLE `twitter_ttweetsplayerhashtag`
  MODIFY `tph_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `twitter_ttweetsplayertweetrel`
--
ALTER TABLE `twitter_ttweetsplayertweetrel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `twitter_ttweetstweet`
--
ALTER TABLE `twitter_ttweetstweet`
  MODIFY `tt_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=636090650279088130;
--
-- AUTO_INCREMENT для таблицы `twitter_ttweetstweethashtag`
--
ALTER TABLE `twitter_ttweetstweethashtag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=135;
--
-- AUTO_INCREMENT для таблицы `twitter_tworldcity`
--
ALTER TABLE `twitter_tworldcity`
  MODIFY `wcity_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=249;
--
-- AUTO_INCREMENT для таблицы `twitter_tworldcitytr`
--
ALTER TABLE `twitter_tworldcitytr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=249;
--
-- AUTO_INCREMENT для таблицы `twitter_tworldcountry`
--
ALTER TABLE `twitter_tworldcountry`
  MODIFY `wc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=249;
--
-- AUTO_INCREMENT для таблицы `twitter_tworldcountrytr`
--
ALTER TABLE `twitter_tworldcountrytr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=249;
--
-- AUTO_INCREMENT для таблицы `twitter_tworldregion`
--
ALTER TABLE `twitter_tworldregion`
  MODIFY `wr_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `twitter_tworldregiontr`
--
ALTER TABLE `twitter_tworldregiontr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `twitter_tcontentphototr`
--
ALTER TABLE `twitter_tcontentphototr`
  ADD CONSTRAINT `t_langcode_id_2d015196edc07d23_fk_twitter_tlocalization_langcode` FOREIGN KEY (`langcode_id`) REFERENCES `twitter_tlocalization` (`langcode`),
  ADD CONSTRAINT `twitter_cp_id_id_13c49d5be696358_fk_twitter_tcontentphoto_cvv_id` FOREIGN KEY (`cp_id_id`) REFERENCES `twitter_tcontentphoto` (`cvv_id`);

--
-- Ограничения внешнего ключа таблицы `twitter_tcontentvideotr`
--
ALTER TABLE `twitter_tcontentvideotr`
  ADD CONSTRAINT `t_langcode_id_6962a9cbe3203394_fk_twitter_tlocalization_langcode` FOREIGN KEY (`langcode_id`) REFERENCES `twitter_tlocalization` (`langcode`),
  ADD CONSTRAINT `twitte_cv_id_id_7e9cc8c1ec46d725_fk_twitter_tcontentvideo_cvv_id` FOREIGN KEY (`cv_id_id`) REFERENCES `twitter_tcontentvideo` (`cvv_id`);

--
-- Ограничения внешнего ключа таблицы `twitter_tcontentvideoviewtr`
--
ALTER TABLE `twitter_tcontentvideoviewtr`
  ADD CONSTRAINT `t_cvv_id_id_1d16ce10495b866f_fk_twitter_tcontentvideoview_cvv_id` FOREIGN KEY (`cvv_id_id`) REFERENCES `twitter_tcontentvideoview` (`cvv_id`),
  ADD CONSTRAINT `t_langcode_id_51d094a47f5d3661_fk_twitter_tlocalization_langcode` FOREIGN KEY (`langcode_id`) REFERENCES `twitter_tlocalization` (`langcode`);

--
-- Ограничения внешнего ключа таблицы `twitter_tfootballclub`
--
ALTER TABLE `twitter_tfootballclub`
  ADD CONSTRAINT `t_twitter_tfootballclub_fd` FOREIGN KEY (`fd_id_id`) REFERENCES `twitter_tfootballdiv` (`fd_id`),
  ADD CONSTRAINT `t_twitter_tfootballclub_wcity` FOREIGN KEY (`wcity_id_id`) REFERENCES `twitter_tworldcity` (`wcity_id`);

--
-- Ограничения внешнего ключа таблицы `twitter_ttweetstweet`
--
ALTER TABLE `twitter_ttweetstweet`
  ADD CONSTRAINT `twitter_ta_id_id_5f74573702e96731_fk_twitter_ttweetsauthor_ta_id` FOREIGN KEY (`ta_id_id`) REFERENCES `twitter_ttweetsauthor` (`ta_id`);

--
-- Ограничения внешнего ключа таблицы `twitter_tworldcity`
--
ALTER TABLE `twitter_tworldcity`
  ADD CONSTRAINT `twitter_wc_id_id_365a40fe7c58204e_fk_twitter_tworldcountry_wc_id` FOREIGN KEY (`wc_id_id`) REFERENCES `twitter_tworldcountry` (`wc_id`);

--
-- Ограничения внешнего ключа таблицы `twitter_tworldcitytr`
--
ALTER TABLE `twitter_tworldcitytr`
  ADD CONSTRAINT `t_langcode_id_75e8297ed9cf7cd2_fk_twitter_tlocalization_langcode` FOREIGN KEY (`langcode_id`) REFERENCES `twitter_tlocalization` (`langcode`),
  ADD CONSTRAINT `twit_wcity_id_id_423cdad3bb697135_fk_twitter_tworldcity_wcity_id` FOREIGN KEY (`wcity_id_id`) REFERENCES `twitter_tworldcity` (`wcity_id`);

--
-- Ограничения внешнего ключа таблицы `twitter_tworldcountry`
--
ALTER TABLE `twitter_tworldcountry`
  ADD CONSTRAINT `twitter__wr_id_id_70f5d8de3373eceb_fk_twitter_tworldregion_wr_id` FOREIGN KEY (`wr_id_id`) REFERENCES `twitter_tworldregion` (`wr_id`);

--
-- Ограничения внешнего ключа таблицы `twitter_tworldcountrytr`
--
ALTER TABLE `twitter_tworldcountrytr`
  ADD CONSTRAINT `t_langcode_id_3982867d066d94f6_fk_twitter_tlocalization_langcode` FOREIGN KEY (`langcode_id`) REFERENCES `twitter_tlocalization` (`langcode`),
  ADD CONSTRAINT `twitter_wc_id_id_6de0c25c57ced5ea_fk_twitter_tworldcountry_wc_id` FOREIGN KEY (`wc_id_id`) REFERENCES `twitter_tworldcountry` (`wc_id`);

--
-- Ограничения внешнего ключа таблицы `twitter_tworldregiontr`
--
ALTER TABLE `twitter_tworldregiontr`
  ADD CONSTRAINT `t_langcode_id_18ad2454196e8d1d_fk_twitter_tlocalization_langcode` FOREIGN KEY (`langcode_id`) REFERENCES `twitter_tlocalization` (`langcode`),
  ADD CONSTRAINT `twitter__wr_id_id_78a3bd5227251dae_fk_twitter_tworldregion_wr_id` FOREIGN KEY (`wr_id_id`) REFERENCES `twitter_tworldregion` (`wr_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
