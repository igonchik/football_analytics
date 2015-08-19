CREATE TABLE IF NOT EXISTS `auth_group` (
`id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
`id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=124 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
`id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tcontentclubarticlerel`
--

CREATE TABLE IF NOT EXISTS `twitter_tcontentclubarticlerel` (
`id` int(11) NOT NULL,
  `fc_id_id` int(11) NOT NULL,
  `ca_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tcontentclubphotorel`
--

CREATE TABLE IF NOT EXISTS `twitter_tcontentclubphotorel` (
`id` int(11) NOT NULL,
  `fc_id_id` int(11) NOT NULL,
  `cp_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tcontentclubvideorel`
--

CREATE TABLE IF NOT EXISTS `twitter_tcontentclubvideorel` (
`id` int(11) NOT NULL,
  `fc_id_id` int(11) NOT NULL,
  `cv_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tcontentclubvideoviewrel`
--

CREATE TABLE IF NOT EXISTS `twitter_tcontentclubvideoviewrel` (
`id` int(11) NOT NULL,
  `fc_id_id` int(11) NOT NULL,
  `cvv_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tcontentphoto`
--

CREATE TABLE IF NOT EXISTS `twitter_tcontentphoto` (
`cvv_id` int(11) NOT NULL,
  `tstamp_update` datetime(6) NOT NULL,
  `content` varchar(100) NOT NULL,
  `logo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tcontentvideo`
--

CREATE TABLE IF NOT EXISTS `twitter_tcontentvideo` (
`cvv_id` int(11) NOT NULL,
  `tstamp_update` datetime(6) NOT NULL,
  `content` varchar(100) NOT NULL,
  `logo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tcontentvideoview`
--

CREATE TABLE IF NOT EXISTS `twitter_tcontentvideoview` (
`cvv_id` int(11) NOT NULL,
  `tstamp_update` datetime(6) NOT NULL,
  `content` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tfootballclub`
--

CREATE TABLE IF NOT EXISTS `twitter_tfootballclub` (
`fc_id` int(11) NOT NULL,
  `stat_url` varchar(200) DEFAULT NULL,
  `official_url` varchar(200) DEFAULT NULL,
  `twitter` varchar(200) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tfootballdiv`
--

CREATE TABLE IF NOT EXISTS `twitter_tfootballdiv` (
`fd_id` int(11) NOT NULL,
  `url` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tfootballdivtr`
--

CREATE TABLE IF NOT EXISTS `twitter_tfootballdivtr` (
`id` int(11) NOT NULL,
  `fd_id_id` int(11) NOT NULL,
  `langcode_id` varchar(5) NOT NULL,
  `fd_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tlocalization`
--

CREATE TABLE IF NOT EXISTS `twitter_tlocalization` (
  `langcode` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_ttweetsauthor`
--

CREATE TABLE IF NOT EXISTS `twitter_ttweetsauthor` (
`ta_id` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rating` int(10) unsigned NOT NULL,
  `maxid` int(10) unsigned NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `realname` varchar(255) NOT NULL,
  `descr` longtext
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `twitter_ttweetsauthor`
--

INSERT INTO `twitter_ttweetsauthor` (`ta_id`, `url`, `name`, `rating`, `maxid`, `logo`, `realname`, `descr`) VALUES
(1, 'https://twitter.com/prostodimo4ka', 'prostodimo4ka', 100, 0, NULL, 'Belkin Dmitriy', 'Gonner since 2004.');

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_ttweetsclubhashtag`
--

CREATE TABLE IF NOT EXISTS `twitter_ttweetsclubhashtag` (
`tch_id` int(11) NOT NULL,
  `fc_id_id` int(11) NOT NULL,
  `th_id_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_ttweetsclubtweetrel`
--

CREATE TABLE IF NOT EXISTS `twitter_ttweetsclubtweetrel` (
`id` int(11) NOT NULL,
  `fc_id_id` int(11) NOT NULL,
  `tt_id_id` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_ttweetshashtag`
--

CREATE TABLE IF NOT EXISTS `twitter_ttweetshashtag` (
  `hashtag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_ttweetsplayerhashtag`
--

CREATE TABLE IF NOT EXISTS `twitter_ttweetsplayerhashtag` (
`tph_id` int(11) NOT NULL,
  `fp_id_id` int(11) NOT NULL,
  `th_id_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_ttweetsplayertweetrel`
--

CREATE TABLE IF NOT EXISTS `twitter_ttweetsplayertweetrel` (
`id` int(11) NOT NULL,
  `fp_id_id` int(11) NOT NULL,
  `tt_id_id` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_ttweetstweet`
--

CREATE TABLE IF NOT EXISTS `twitter_ttweetstweet` (
`tt_id` bigint(20) unsigned NOT NULL,
  `ta_id_id` int(11) NOT NULL,
  `text` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_ttweetstweethashtag`
--

CREATE TABLE IF NOT EXISTS `twitter_ttweetstweethashtag` (
`id` int(11) NOT NULL,
  `th_id_id` varchar(255) NOT NULL,
  `tt_id_id` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tworldcity`
--

CREATE TABLE IF NOT EXISTS `twitter_tworldcity` (
`wcity_id` int(11) NOT NULL,
  `wc_id_id` int(11) NOT NULL,
  `coordX` int(10) unsigned NOT NULL,
  `coordY` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tworldcitytr`
--

CREATE TABLE IF NOT EXISTS `twitter_tworldcitytr` (
`id` int(11) NOT NULL,
  `wcity_id_id` int(11) NOT NULL,
  `langcode_id` varchar(5) NOT NULL,
  `wcity_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tworldcountry`
--

CREATE TABLE IF NOT EXISTS `twitter_tworldcountry` (
`wc_id` int(11) NOT NULL,
  `wr_id_id` int(11) NOT NULL,
  `coordX` int(10) unsigned NOT NULL,
  `coordY` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tworldcountrytr`
--

CREATE TABLE IF NOT EXISTS `twitter_tworldcountrytr` (
`id` int(11) NOT NULL,
  `wc_id_id` int(11) NOT NULL,
  `langcode_id` varchar(5) NOT NULL,
  `wc_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tworldpart`
--

CREATE TABLE IF NOT EXISTS `twitter_tworldpart` (
`wp_id` int(11) NOT NULL,
  `coordX` int(10) unsigned NOT NULL,
  `coordY` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tworldparttr`
--

CREATE TABLE IF NOT EXISTS `twitter_tworldparttr` (
`id` int(11) NOT NULL,
  `wp_id_id` int(11) NOT NULL,
  `langcode_id` varchar(5) NOT NULL,
  `wp_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tworldregion`
--

CREATE TABLE IF NOT EXISTS `twitter_tworldregion` (
`wr_id` int(11) NOT NULL,
  `wp_id_id` int(11) NOT NULL,
  `coordX` int(10) unsigned NOT NULL,
  `coordY` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `twitter_tworldregiontr`
--

CREATE TABLE IF NOT EXISTS `twitter_tworldregiontr` (
`id` int(11) NOT NULL,
  `wr_id_id` int(11) NOT NULL,
  `langcode_id` varchar(5) NOT NULL,
  `wr_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `group_id` (`group_id`,`permission_id`), ADD KEY `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `content_type_id` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`,`group_id`), ADD KEY `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`,`permission_id`), ADD KEY `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
 ADD PRIMARY KEY (`session_key`), ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Indexes for table `twitter_tcontentarticle`
--
ALTER TABLE `twitter_tcontentarticle`
 ADD PRIMARY KEY (`ca_id`);

--
-- Indexes for table `twitter_tcontentarticletr`
--
ALTER TABLE `twitter_tcontentarticletr`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twitter_tcontentclubarticlerel`
--
ALTER TABLE `twitter_tcontentclubarticlerel`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twitter_tcontentclubphotorel`
--
ALTER TABLE `twitter_tcontentclubphotorel`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twitter_tcontentclubvideorel`
--
ALTER TABLE `twitter_tcontentclubvideorel`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twitter_tcontentclubvideoviewrel`
--
ALTER TABLE `twitter_tcontentclubvideoviewrel`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twitter_tcontentphoto`
--
ALTER TABLE `twitter_tcontentphoto`
 ADD PRIMARY KEY (`cvv_id`);

--
-- Indexes for table `twitter_tcontentphototr`
--
ALTER TABLE `twitter_tcontentphototr`
 ADD PRIMARY KEY (`id`), ADD KEY `twitter_cp_id_id_13c49d5be696358_fk_twitter_tcontentphoto_cvv_id` (`cp_id_id`), ADD KEY `t_langcode_id_2d015196edc07d23_fk_twitter_tlocalization_langcode` (`langcode_id`);

--
-- Indexes for table `twitter_tcontentvideo`
--
ALTER TABLE `twitter_tcontentvideo`
 ADD PRIMARY KEY (`cvv_id`);

--
-- Indexes for table `twitter_tcontentvideotr`
--
ALTER TABLE `twitter_tcontentvideotr`
 ADD PRIMARY KEY (`id`), ADD KEY `twitte_cv_id_id_7e9cc8c1ec46d725_fk_twitter_tcontentvideo_cvv_id` (`cv_id_id`), ADD KEY `t_langcode_id_6962a9cbe3203394_fk_twitter_tlocalization_langcode` (`langcode_id`);

--
-- Indexes for table `twitter_tcontentvideoview`
--
ALTER TABLE `twitter_tcontentvideoview`
 ADD PRIMARY KEY (`cvv_id`);

--
-- Indexes for table `twitter_tcontentvideoviewtr`
--
ALTER TABLE `twitter_tcontentvideoviewtr`
 ADD PRIMARY KEY (`id`), ADD KEY `t_cvv_id_id_1d16ce10495b866f_fk_twitter_tcontentvideoview_cvv_id` (`cvv_id_id`), ADD KEY `t_langcode_id_51d094a47f5d3661_fk_twitter_tlocalization_langcode` (`langcode_id`);

--
-- Indexes for table `twitter_tfootballclub`
--
ALTER TABLE `twitter_tfootballclub`
 ADD PRIMARY KEY (`fc_id`);

--
-- Indexes for table `twitter_tfootballclubplayerrel`
--
ALTER TABLE `twitter_tfootballclubplayerrel`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twitter_tfootballclubtr`
--
ALTER TABLE `twitter_tfootballclubtr`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twitter_tfootballdiv`
--
ALTER TABLE `twitter_tfootballdiv`
 ADD PRIMARY KEY (`fd_id`);

--
-- Indexes for table `twitter_tfootballdivtr`
--
ALTER TABLE `twitter_tfootballdivtr`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twitter_tfootballplayer`
--
ALTER TABLE `twitter_tfootballplayer`
 ADD PRIMARY KEY (`fp_id`);

--
-- Indexes for table `twitter_tfootballplayertr`
--
ALTER TABLE `twitter_tfootballplayertr`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twitter_tlocalization`
--
ALTER TABLE `twitter_tlocalization`
 ADD PRIMARY KEY (`langcode`);

--
-- Indexes for table `twitter_ttweetsauthor`
--
ALTER TABLE `twitter_ttweetsauthor`
 ADD PRIMARY KEY (`ta_id`);

--
-- Indexes for table `twitter_ttweetsclubhashtag`
--
ALTER TABLE `twitter_ttweetsclubhashtag`
 ADD PRIMARY KEY (`tch_id`);

--
-- Indexes for table `twitter_ttweetsclubtweetrel`
--
ALTER TABLE `twitter_ttweetsclubtweetrel`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twitter_ttweetshashtag`
--
ALTER TABLE `twitter_ttweetshashtag`
 ADD PRIMARY KEY (`hashtag`);

--
-- Indexes for table `twitter_ttweetsplayerhashtag`
--
ALTER TABLE `twitter_ttweetsplayerhashtag`
 ADD PRIMARY KEY (`tph_id`);

--
-- Indexes for table `twitter_ttweetsplayertweetrel`
--
ALTER TABLE `twitter_ttweetsplayertweetrel`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twitter_ttweetstweet`
--
ALTER TABLE `twitter_ttweetstweet`
 ADD PRIMARY KEY (`tt_id`), ADD KEY `twitter_ta_id_id_5f74573702e96731_fk_twitter_ttweetsauthor_ta_id` (`ta_id_id`);

--
-- Indexes for table `twitter_ttweetstweethashtag`
--
ALTER TABLE `twitter_ttweetstweethashtag`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twitter_tworldcity`
--
ALTER TABLE `twitter_tworldcity`
 ADD PRIMARY KEY (`wcity_id`), ADD KEY `twitter_wc_id_id_365a40fe7c58204e_fk_twitter_tworldcountry_wc_id` (`wc_id_id`);

--
-- Indexes for table `twitter_tworldcitytr`
--
ALTER TABLE `twitter_tworldcitytr`
 ADD PRIMARY KEY (`id`), ADD KEY `twit_wcity_id_id_423cdad3bb697135_fk_twitter_tworldcity_wcity_id` (`wcity_id_id`), ADD KEY `t_langcode_id_75e8297ed9cf7cd2_fk_twitter_tlocalization_langcode` (`langcode_id`);

--
-- Indexes for table `twitter_tworldcountry`
--
ALTER TABLE `twitter_tworldcountry`
 ADD PRIMARY KEY (`wc_id`), ADD KEY `twitter__wr_id_id_70f5d8de3373eceb_fk_twitter_tworldregion_wr_id` (`wr_id_id`);

--
-- Indexes for table `twitter_tworldcountrytr`
--
ALTER TABLE `twitter_tworldcountrytr`
 ADD PRIMARY KEY (`id`), ADD KEY `twitter_wc_id_id_6de0c25c57ced5ea_fk_twitter_tworldcountry_wc_id` (`wc_id_id`), ADD KEY `t_langcode_id_3982867d066d94f6_fk_twitter_tlocalization_langcode` (`langcode_id`);

--
-- Indexes for table `twitter_tworldpart`
--
ALTER TABLE `twitter_tworldpart`
 ADD PRIMARY KEY (`wp_id`);

--
-- Indexes for table `twitter_tworldparttr`
--
ALTER TABLE `twitter_tworldparttr`
 ADD PRIMARY KEY (`id`), ADD KEY `twitter_tw_wp_id_id_1d61daf16823da77_fk_twitter_tworldpart_wp_id` (`wp_id_id`), ADD KEY `t_langcode_id_720bc9a21c187080_fk_twitter_tlocalization_langcode` (`langcode_id`);

--
-- Indexes for table `twitter_tworldregion`
--
ALTER TABLE `twitter_tworldregion`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `twitter_tw_wp_id_id_36fa205ee50f42a8_fk_twitter_tworldpart_wp_id` (`wp_id_id`);

--
-- Indexes for table `twitter_tworldregiontr`
--
ALTER TABLE `twitter_tworldregiontr`
 ADD PRIMARY KEY (`id`), ADD KEY `twitter__wr_id_id_78a3bd5227251dae_fk_twitter_tworldregion_wr_id` (`wr_id_id`), ADD KEY `t_langcode_id_18ad2454196e8d1d_fk_twitter_tlocalization_langcode` (`langcode_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `twitter_tcontentarticle`
--
ALTER TABLE `twitter_tcontentarticle`
MODIFY `ca_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_tcontentarticletr`
--
ALTER TABLE `twitter_tcontentarticletr`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_tcontentclubarticlerel`
--
ALTER TABLE `twitter_tcontentclubarticlerel`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_tcontentclubphotorel`
--
ALTER TABLE `twitter_tcontentclubphotorel`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_tcontentclubvideorel`
--
ALTER TABLE `twitter_tcontentclubvideorel`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_tcontentclubvideoviewrel`
--
ALTER TABLE `twitter_tcontentclubvideoviewrel`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_tcontentphoto`
--
ALTER TABLE `twitter_tcontentphoto`
MODIFY `cvv_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_tcontentphototr`
--
ALTER TABLE `twitter_tcontentphototr`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_tcontentvideo`
--
ALTER TABLE `twitter_tcontentvideo`
MODIFY `cvv_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_tcontentvideotr`
--
ALTER TABLE `twitter_tcontentvideotr`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_tcontentvideoview`
--
ALTER TABLE `twitter_tcontentvideoview`
MODIFY `cvv_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_tcontentvideoviewtr`
--
ALTER TABLE `twitter_tcontentvideoviewtr`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_tfootballclub`
--
ALTER TABLE `twitter_tfootballclub`
MODIFY `fc_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_tfootballclubplayerrel`
--
ALTER TABLE `twitter_tfootballclubplayerrel`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_tfootballclubtr`
--
ALTER TABLE `twitter_tfootballclubtr`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_tfootballdiv`
--
ALTER TABLE `twitter_tfootballdiv`
MODIFY `fd_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_tfootballdivtr`
--
ALTER TABLE `twitter_tfootballdivtr`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_tfootballplayer`
--
ALTER TABLE `twitter_tfootballplayer`
MODIFY `fp_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_tfootballplayertr`
--
ALTER TABLE `twitter_tfootballplayertr`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_ttweetsauthor`
--
ALTER TABLE `twitter_ttweetsauthor`
MODIFY `ta_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `twitter_ttweetsclubhashtag`
--
ALTER TABLE `twitter_ttweetsclubhashtag`
MODIFY `tch_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_ttweetsclubtweetrel`
--
ALTER TABLE `twitter_ttweetsclubtweetrel`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_ttweetsplayerhashtag`
--
ALTER TABLE `twitter_ttweetsplayerhashtag`
MODIFY `tph_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_ttweetsplayertweetrel`
--
ALTER TABLE `twitter_ttweetsplayertweetrel`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_ttweetstweet`
--
ALTER TABLE `twitter_ttweetstweet`
MODIFY `tt_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_ttweetstweethashtag`
--
ALTER TABLE `twitter_ttweetstweethashtag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_tworldcity`
--
ALTER TABLE `twitter_tworldcity`
MODIFY `wcity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_tworldcitytr`
--
ALTER TABLE `twitter_tworldcitytr`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_tworldcountry`
--
ALTER TABLE `twitter_tworldcountry`
MODIFY `wc_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_tworldcountrytr`
--
ALTER TABLE `twitter_tworldcountrytr`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_tworldpart`
--
ALTER TABLE `twitter_tworldpart`
MODIFY `wp_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_tworldparttr`
--
ALTER TABLE `twitter_tworldparttr`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_tworldregion`
--
ALTER TABLE `twitter_tworldregion`
MODIFY `wr_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_tworldregiontr`
--
ALTER TABLE `twitter_tworldregiontr`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
-- Ограничения внешнего ключа таблицы `twitter_tworldparttr`
--
ALTER TABLE `twitter_tworldparttr`
ADD CONSTRAINT `t_langcode_id_720bc9a21c187080_fk_twitter_tlocalization_langcode` FOREIGN KEY (`langcode_id`) REFERENCES `twitter_tlocalization` (`langcode`),
ADD CONSTRAINT `twitter_tw_wp_id_id_1d61daf16823da77_fk_twitter_tworldpart_wp_id` FOREIGN KEY (`wp_id_id`) REFERENCES `twitter_tworldpart` (`wp_id`);

--
-- Ограничения внешнего ключа таблицы `twitter_tworldregion`
--
ALTER TABLE `twitter_tworldregion`
ADD CONSTRAINT `twitter_tw_wp_id_id_36fa205ee50f42a8_fk_twitter_tworldpart_wp_id` FOREIGN KEY (`wp_id_id`) REFERENCES `twitter_tworldpart` (`wp_id`);

--
-- Ограничения внешнего ключа таблицы `twitter_tworldregiontr`
--
ALTER TABLE `twitter_tworldregiontr`
ADD CONSTRAINT `t_langcode_id_18ad2454196e8d1d_fk_twitter_tlocalization_langcode` FOREIGN KEY (`langcode_id`) REFERENCES `twitter_tlocalization` (`langcode`),
ADD CONSTRAINT `twitter__wr_id_id_78a3bd5227251dae_fk_twitter_tworldregion_wr_id` FOREIGN KEY (`wr_id_id`) REFERENCES `twitter_tworldregion` (`wr_id`);
