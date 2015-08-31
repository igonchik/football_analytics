-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Авг 31 2015 г., 14:11
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

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `twitter_tworldcountry`
--
ALTER TABLE `twitter_tworldcountry`
  ADD PRIMARY KEY (`wc_id`),
  ADD KEY `twitter__wr_id_id_70f5d8de3373eceb_fk_twitter_tworldregion_wr_id` (`wr_id_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `twitter_tworldcountry`
--
ALTER TABLE `twitter_tworldcountry`
  MODIFY `wc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=249;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `twitter_tworldcountry`
--
ALTER TABLE `twitter_tworldcountry`
  ADD CONSTRAINT `twitter__wr_id_id_70f5d8de3373eceb_fk_twitter_tworldregion_wr_id` FOREIGN KEY (`wr_id_id`) REFERENCES `twitter_tworldregion` (`wr_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
