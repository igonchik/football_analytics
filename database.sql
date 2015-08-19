BEGIN;
CREATE TABLE `twitter_tlocalization` (
    `langcode` varchar(5) NOT NULL PRIMARY KEY
)
;
CREATE TABLE `twitter_ttweetsauthor` (
    `ta_id` integer UNSIGNED NOT NULL PRIMARY KEY,
    `url` varchar(200) NOT NULL,
    `name` varchar(255) NOT NULL,
    `rating` integer UNSIGNED NOT NULL
)
;
CREATE TABLE `twitter_ttweetshashtag` (
    `hashtag` varchar(255) NOT NULL PRIMARY KEY
)
;
CREATE TABLE `twitter_ttweetstweet` (
    `tt_id` integer UNSIGNED NOT NULL PRIMARY KEY,
    `ta_id_id` integer UNSIGNED NOT NULL,
    `text` longtext NOT NULL,
    `created_at` datetime NOT NULL
)
;
ALTER TABLE `twitter_ttweetstweet` ADD CONSTRAINT `ta_id_id_refs_ta_id_96b698b1` FOREIGN KEY (`ta_id_id`) REFERENCES `twitter_ttweetsauthor` (`ta_id`);
CREATE TABLE `twitter_tworldpart` (
    `wp_id` integer UNSIGNED NOT NULL PRIMARY KEY,
    `coordX` integer UNSIGNED NOT NULL,
    `coordY` integer UNSIGNED NOT NULL
)
;
CREATE TABLE `twitter_tworldparttr` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `wp_id_id` integer UNSIGNED NOT NULL,
    `langcode_id` varchar(5) NOT NULL,
    `wp_name` varchar(255) NOT NULL
)
;
ALTER TABLE `twitter_tworldparttr` ADD CONSTRAINT `wp_id_id_refs_wp_id_d68fa37a` FOREIGN KEY (`wp_id_id`) REFERENCES `twitter_tworldpart` (`wp_id`);
ALTER TABLE `twitter_tworldparttr` ADD CONSTRAINT `langcode_id_refs_langcode_2e270a7e` FOREIGN KEY (`langcode_id`) REFERENCES `twitter_tlocalization` (`langcode`);
CREATE TABLE `twitter_tworldregion` (
    `wr_id` integer UNSIGNED NOT NULL PRIMARY KEY,
    `wp_id_id` integer UNSIGNED NOT NULL,
    `coordX` integer UNSIGNED NOT NULL,
    `coordY` integer UNSIGNED NOT NULL
)
;
ALTER TABLE `twitter_tworldregion` ADD CONSTRAINT `wp_id_id_refs_wp_id_2080a1ff` FOREIGN KEY (`wp_id_id`) REFERENCES `twitter_tworldpart` (`wp_id`);
CREATE TABLE `twitter_tworldregiontr` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `wr_id_id` integer UNSIGNED NOT NULL,
    `langcode_id` varchar(5) NOT NULL,
    `wr_name` varchar(255) NOT NULL
)
;
ALTER TABLE `twitter_tworldregiontr` ADD CONSTRAINT `wr_id_id_refs_wr_id_bad61477` FOREIGN KEY (`wr_id_id`) REFERENCES `twitter_tworldregion` (`wr_id`);
ALTER TABLE `twitter_tworldregiontr` ADD CONSTRAINT `langcode_id_refs_langcode_cd755d46` FOREIGN KEY (`langcode_id`) REFERENCES `twitter_tlocalization` (`langcode`);
CREATE TABLE `twitter_tworldcountry` (
    `wc_id` integer UNSIGNED NOT NULL PRIMARY KEY,
    `wr_id_id` integer UNSIGNED NOT NULL,
    `coordX` integer UNSIGNED NOT NULL,
    `coordY` integer UNSIGNED NOT NULL
)
;
ALTER TABLE `twitter_tworldcountry` ADD CONSTRAINT `wr_id_id_refs_wr_id_401493dd` FOREIGN KEY (`wr_id_id`) REFERENCES `twitter_tworldregion` (`wr_id`);
CREATE TABLE `twitter_tworldcountrytr` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `wc_id_id` integer UNSIGNED NOT NULL,
    `langcode_id` varchar(5) NOT NULL,
    `wc_name` varchar(255) NOT NULL
)
;
ALTER TABLE `twitter_tworldcountrytr` ADD CONSTRAINT `langcode_id_refs_langcode_21ddd0df` FOREIGN KEY (`langcode_id`) REFERENCES `twitter_tlocalization` (`langcode`);
ALTER TABLE `twitter_tworldcountrytr` ADD CONSTRAINT `wc_id_id_refs_wc_id_2fa9337d` FOREIGN KEY (`wc_id_id`) REFERENCES `twitter_tworldcountry` (`wc_id`);
CREATE TABLE `twitter_tworldcity` (
    `wcity_id` integer UNSIGNED NOT NULL PRIMARY KEY,
    `wc_id_id` integer UNSIGNED NOT NULL,
    `coordX` integer UNSIGNED NOT NULL,
    `coordY` integer UNSIGNED NOT NULL
)
;
ALTER TABLE `twitter_tworldcity` ADD CONSTRAINT `wc_id_id_refs_wc_id_524e12fd` FOREIGN KEY (`wc_id_id`) REFERENCES `twitter_tworldcountry` (`wc_id`);
CREATE TABLE `twitter_tworldcitytr` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `wcity_id_id` integer UNSIGNED NOT NULL,
    `langcode_id` varchar(5) NOT NULL,
    `wcity_name` varchar(255) NOT NULL
)
;
ALTER TABLE `twitter_tworldcitytr` ADD CONSTRAINT `wcity_id_id_refs_wcity_id_59834d64` FOREIGN KEY (`wcity_id_id`) REFERENCES `twitter_tworldcity` (`wcity_id`);
ALTER TABLE `twitter_tworldcitytr` ADD CONSTRAINT `langcode_id_refs_langcode_9861cfd4` FOREIGN KEY (`langcode_id`) REFERENCES `twitter_tlocalization` (`langcode`);
CREATE TABLE `twitter_tcontentvideoview` (
    `cvv_id` integer UNSIGNED NOT NULL PRIMARY KEY,
    `tstamp_update` datetime NOT NULL,
    `content` varchar(100) NOT NULL,
    `logo` varchar(100) NOT NULL
)
;
CREATE TABLE `twitter_tcontentvideoviewtr` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `cvv_id_id` integer UNSIGNED NOT NULL,
    `langcode_id` varchar(5) NOT NULL,
    `cvv_name` varchar(255) NOT NULL,
    `cvv_desk` varchar(500)
)
;
ALTER TABLE `twitter_tcontentvideoviewtr` ADD CONSTRAINT `cvv_id_id_refs_cvv_id_6657e0e9` FOREIGN KEY (`cvv_id_id`) REFERENCES `twitter_tcontentvideoview` (`cvv_id`);
ALTER TABLE `twitter_tcontentvideoviewtr` ADD CONSTRAINT `langcode_id_refs_langcode_3673e184` FOREIGN KEY (`langcode_id`) REFERENCES `twitter_tlocalization` (`langcode`);
CREATE TABLE `twitter_tcontentvideo` (
    `cvv_id` integer UNSIGNED NOT NULL PRIMARY KEY,
    `tstamp_update` datetime NOT NULL,
    `content` varchar(100) NOT NULL,
    `logo` varchar(100)
)
;
CREATE TABLE `twitter_tcontentvideotr` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `cv_id_id` integer UNSIGNED NOT NULL,
    `langcode_id` varchar(5) NOT NULL,
    `cv_name` varchar(255) NOT NULL,
    `cv_desk` varchar(255) NOT NULL
)
;
ALTER TABLE `twitter_tcontentvideotr` ADD CONSTRAINT `cv_id_id_refs_cvv_id_09f445f9` FOREIGN KEY (`cv_id_id`) REFERENCES `twitter_tcontentvideo` (`cvv_id`);
ALTER TABLE `twitter_tcontentvideotr` ADD CONSTRAINT `langcode_id_refs_langcode_1ab9fd70` FOREIGN KEY (`langcode_id`) REFERENCES `twitter_tlocalization` (`langcode`);
CREATE TABLE `twitter_tcontentphoto` (
    `cvv_id` integer UNSIGNED NOT NULL PRIMARY KEY,
    `tstamp_update` datetime NOT NULL,
    `content` varchar(100) NOT NULL,
    `logo` varchar(100)
)
;
CREATE TABLE `twitter_tcontentphototr` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `cp_id_id` integer UNSIGNED NOT NULL,
    `langcode_id` varchar(5) NOT NULL,
    `cp_name` varchar(255) NOT NULL,
    `cp_desk` varchar(500)
)
;
ALTER TABLE `twitter_tcontentphototr` ADD CONSTRAINT `langcode_id_refs_langcode_23040f17` FOREIGN KEY (`langcode_id`) REFERENCES `twitter_tlocalization` (`langcode`);
ALTER TABLE `twitter_tcontentphototr` ADD CONSTRAINT `cp_id_id_refs_cvv_id_bf864801` FOREIGN KEY (`cp_id_id`) REFERENCES `twitter_tcontentphoto` (`cvv_id`);
CREATE TABLE `twitter_tcontentarticle` (
    `ca_id` integer UNSIGNED NOT NULL PRIMARY KEY,
    `tstamp_update` datetime NOT NULL,
    `content` longtext NOT NULL,
    `logo` varchar(100),
    `author_id` integer NOT NULL
)
;
CREATE TABLE `twitter_tcontentarticletr` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `ca_id_id` integer UNSIGNED NOT NULL,
    `langcode_id` varchar(5) NOT NULL,
    `ca_name` varchar(255) NOT NULL,
    `ca_desk` varchar(500)
)
;
ALTER TABLE `twitter_tcontentarticletr` ADD CONSTRAINT `ca_id_id_refs_ca_id_3a4469f5` FOREIGN KEY (`ca_id_id`) REFERENCES `twitter_tcontentarticle` (`ca_id`);
ALTER TABLE `twitter_tcontentarticletr` ADD CONSTRAINT `langcode_id_refs_langcode_43454fd8` FOREIGN KEY (`langcode_id`) REFERENCES `twitter_tlocalization` (`langcode`);
CREATE TABLE `twitter_tfootballdiv` (
    `fd_id` integer UNSIGNED NOT NULL PRIMARY KEY,
    `url` varchar(200)
)
;
CREATE TABLE `twitter_tfootballdivtr` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `fd_id_id` integer UNSIGNED NOT NULL,
    `langcode_id` varchar(5) NOT NULL,
    `fd_name` varchar(255) NOT NULL
)
;
ALTER TABLE `twitter_tfootballdivtr` ADD CONSTRAINT `fd_id_id_refs_fd_id_e892d28b` FOREIGN KEY (`fd_id_id`) REFERENCES `twitter_tfootballdiv` (`fd_id`);
ALTER TABLE `twitter_tfootballdivtr` ADD CONSTRAINT `langcode_id_refs_langcode_76d4cea5` FOREIGN KEY (`langcode_id`) REFERENCES `twitter_tlocalization` (`langcode`);
CREATE TABLE `twitter_tfootballplayer` (
    `fp_id` integer UNSIGNED NOT NULL PRIMARY KEY,
    `official_url` varchar(200),
    `stat_url` varchar(200),
    `twitter` varchar(200),
    `photo` varchar(100)
)
;
CREATE TABLE `twitter_tfootballplayertr` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `fp_id_id` integer UNSIGNED NOT NULL,
    `langcode_id` varchar(5) NOT NULL,
    `fc_name` varchar(255) NOT NULL,
    `fc_desc` varchar(500)
)
;
ALTER TABLE `twitter_tfootballplayertr` ADD CONSTRAINT `fp_id_id_refs_fp_id_94a5e905` FOREIGN KEY (`fp_id_id`) REFERENCES `twitter_tfootballplayer` (`fp_id`);
ALTER TABLE `twitter_tfootballplayertr` ADD CONSTRAINT `langcode_id_refs_langcode_9fc9edb8` FOREIGN KEY (`langcode_id`) REFERENCES `twitter_tlocalization` (`langcode`);
CREATE TABLE `twitter_tfootballclub` (
    `fc_id` integer UNSIGNED NOT NULL PRIMARY KEY,
    `stat_url` varchar(200),
    `official_url` varchar(200),
    `twitter` varchar(200),
    `logo` varchar(100)
)
;
CREATE TABLE `twitter_tfootballclubtr` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `fc_id_id` integer UNSIGNED NOT NULL,
    `langcode_id` varchar(5) NOT NULL,
    `fc_name` varchar(255) NOT NULL,
    `fc_desc` varchar(500)
)
;
ALTER TABLE `twitter_tfootballclubtr` ADD CONSTRAINT `langcode_id_refs_langcode_a44d6da5` FOREIGN KEY (`langcode_id`) REFERENCES `twitter_tlocalization` (`langcode`);
ALTER TABLE `twitter_tfootballclubtr` ADD CONSTRAINT `fc_id_id_refs_fc_id_a6566086` FOREIGN KEY (`fc_id_id`) REFERENCES `twitter_tfootballclub` (`fc_id`);
CREATE TABLE `twitter_tfootballclubplayerrel` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `fc_id_id` integer UNSIGNED NOT NULL,
    `fp_id_id` integer UNSIGNED NOT NULL,
    `rumor_tstamp` datetime,
    `active` bool NOT NULL
)
;
ALTER TABLE `twitter_tfootballclubplayerrel` ADD CONSTRAINT `fp_id_id_refs_fp_id_88c7a773` FOREIGN KEY (`fp_id_id`) REFERENCES `twitter_tfootballplayer` (`fp_id`);
ALTER TABLE `twitter_tfootballclubplayerrel` ADD CONSTRAINT `fc_id_id_refs_fc_id_1265bdb3` FOREIGN KEY (`fc_id_id`) REFERENCES `twitter_tfootballclub` (`fc_id`);
CREATE TABLE `twitter_tcontentclubvideoviewrel` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `fc_id_id` integer UNSIGNED NOT NULL,
    `cvv_id_id` integer UNSIGNED NOT NULL
)
;
ALTER TABLE `twitter_tcontentclubvideoviewrel` ADD CONSTRAINT `cvv_id_id_refs_cvv_id_ce07020d` FOREIGN KEY (`cvv_id_id`) REFERENCES `twitter_tcontentvideoview` (`cvv_id`);
ALTER TABLE `twitter_tcontentclubvideoviewrel` ADD CONSTRAINT `fc_id_id_refs_fc_id_1862df29` FOREIGN KEY (`fc_id_id`) REFERENCES `twitter_tfootballclub` (`fc_id`);
CREATE TABLE `twitter_tcontentclubvideorel` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `fc_id_id` integer UNSIGNED NOT NULL,
    `cv_id_id` integer UNSIGNED NOT NULL
)
;
ALTER TABLE `twitter_tcontentclubvideorel` ADD CONSTRAINT `cv_id_id_refs_cvv_id_61ce7e84` FOREIGN KEY (`cv_id_id`) REFERENCES `twitter_tcontentvideo` (`cvv_id`);
ALTER TABLE `twitter_tcontentclubvideorel` ADD CONSTRAINT `fc_id_id_refs_fc_id_1991b046` FOREIGN KEY (`fc_id_id`) REFERENCES `twitter_tfootballclub` (`fc_id`);
CREATE TABLE `twitter_tcontentclubphotorel` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `fc_id_id` integer UNSIGNED NOT NULL,
    `cp_id_id` integer UNSIGNED NOT NULL
)
;
ALTER TABLE `twitter_tcontentclubphotorel` ADD CONSTRAINT `cp_id_id_refs_cvv_id_ee6ed045` FOREIGN KEY (`cp_id_id`) REFERENCES `twitter_tcontentphoto` (`cvv_id`);
ALTER TABLE `twitter_tcontentclubphotorel` ADD CONSTRAINT `fc_id_id_refs_fc_id_887a1308` FOREIGN KEY (`fc_id_id`) REFERENCES `twitter_tfootballclub` (`fc_id`);
CREATE TABLE `twitter_tcontentclubarticlerel` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `fc_id_id` integer UNSIGNED NOT NULL,
    `ca_id_id` integer UNSIGNED NOT NULL
)
;
ALTER TABLE `twitter_tcontentclubarticlerel` ADD CONSTRAINT `ca_id_id_refs_ca_id_82249ab3` FOREIGN KEY (`ca_id_id`) REFERENCES `twitter_tcontentarticle` (`ca_id`);
ALTER TABLE `twitter_tcontentclubarticlerel` ADD CONSTRAINT `fc_id_id_refs_fc_id_1079d6ca` FOREIGN KEY (`fc_id_id`) REFERENCES `twitter_tfootballclub` (`fc_id`);
CREATE TABLE `twitter_ttweetsclubtweetrel` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `fc_id_id` integer UNSIGNED NOT NULL,
    `tt_id_id` integer UNSIGNED NOT NULL
)
;
ALTER TABLE `twitter_ttweetsclubtweetrel` ADD CONSTRAINT `tt_id_id_refs_tt_id_d9d4146e` FOREIGN KEY (`tt_id_id`) REFERENCES `twitter_ttweetstweet` (`tt_id`);
ALTER TABLE `twitter_ttweetsclubtweetrel` ADD CONSTRAINT `fc_id_id_refs_fc_id_4fd07c4e` FOREIGN KEY (`fc_id_id`) REFERENCES `twitter_tfootballclub` (`fc_id`);
CREATE TABLE `twitter_ttweetsplayertweetrel` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `fp_id_id` integer UNSIGNED NOT NULL,
    `tt_id_id` integer UNSIGNED NOT NULL
)
;
ALTER TABLE `twitter_ttweetsplayertweetrel` ADD CONSTRAINT `fp_id_id_refs_fp_id_6b82f392` FOREIGN KEY (`fp_id_id`) REFERENCES `twitter_tfootballplayer` (`fp_id`);
ALTER TABLE `twitter_ttweetsplayertweetrel` ADD CONSTRAINT `tt_id_id_refs_tt_id_5f515a3a` FOREIGN KEY (`tt_id_id`) REFERENCES `twitter_ttweetstweet` (`tt_id`);
CREATE TABLE `twitter_ttweetstweethashtag` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `th_id_id` varchar(255) NOT NULL,
    `tt_id_id` integer UNSIGNED NOT NULL
)
;
ALTER TABLE `twitter_ttweetstweethashtag` ADD CONSTRAINT `tt_id_id_refs_tt_id_3fe5bf09` FOREIGN KEY (`tt_id_id`) REFERENCES `twitter_ttweetstweet` (`tt_id`);
ALTER TABLE `twitter_ttweetstweethashtag` ADD CONSTRAINT `th_id_id_refs_hashtag_6f6f93b8` FOREIGN KEY (`th_id_id`) REFERENCES `twitter_ttweetshashtag` (`hashtag`);
CREATE TABLE `twitter_ttweetsclubhashtag` (
    `tch_id` integer UNSIGNED NOT NULL PRIMARY KEY,
    `fc_id_id` integer UNSIGNED NOT NULL,
    `th_id_id` varchar(255) NOT NULL
)
;
ALTER TABLE `twitter_ttweetsclubhashtag` ADD CONSTRAINT `th_id_id_refs_hashtag_df890f1c` FOREIGN KEY (`th_id_id`) REFERENCES `twitter_ttweetshashtag` (`hashtag`);
ALTER TABLE `twitter_ttweetsclubhashtag` ADD CONSTRAINT `fc_id_id_refs_fc_id_94517bd4` FOREIGN KEY (`fc_id_id`) REFERENCES `twitter_tfootballclub` (`fc_id`);
CREATE TABLE `twitter_ttweetsplayerhashtag` (
    `tph_id` integer UNSIGNED NOT NULL PRIMARY KEY,
    `fp_id_id` integer UNSIGNED NOT NULL,
    `th_id_id` varchar(255) NOT NULL
)
;
ALTER TABLE `twitter_ttweetsplayerhashtag` ADD CONSTRAINT `fp_id_id_refs_fp_id_340edd65` FOREIGN KEY (`fp_id_id`) REFERENCES `twitter_tfootballplayer` (`fp_id`);
ALTER TABLE `twitter_ttweetsplayerhashtag` ADD CONSTRAINT `th_id_id_refs_hashtag_5db9fa63` FOREIGN KEY (`th_id_id`) REFERENCES `twitter_ttweetshashtag` (`hashtag`);
-- The following references should be added but depend on non-existent tables:
-- ALTER TABLE `twitter_tcontentarticle` ADD CONSTRAINT `author_id_refs_id_b4fdec07` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`);
CREATE INDEX `twitter_ttweetstweet_4ed2f6b5` ON `twitter_ttweetstweet` (`ta_id_id`);
CREATE INDEX `twitter_tworldparttr_8749cee7` ON `twitter_tworldparttr` (`wp_id_id`);
CREATE INDEX `twitter_tworldparttr_a41585d1` ON `twitter_tworldparttr` (`langcode_id`);
CREATE INDEX `twitter_tworldregion_8749cee7` ON `twitter_tworldregion` (`wp_id_id`);
CREATE INDEX `twitter_tworldregiontr_9f9495d4` ON `twitter_tworldregiontr` (`wr_id_id`);
CREATE INDEX `twitter_tworldregiontr_a41585d1` ON `twitter_tworldregiontr` (`langcode_id`);
CREATE INDEX `twitter_tworldcountry_9f9495d4` ON `twitter_tworldcountry` (`wr_id_id`);
CREATE INDEX `twitter_tworldcountrytr_346206a5` ON `twitter_tworldcountrytr` (`wc_id_id`);
CREATE INDEX `twitter_tworldcountrytr_a41585d1` ON `twitter_tworldcountrytr` (`langcode_id`);
CREATE INDEX `twitter_tworldcity_346206a5` ON `twitter_tworldcity` (`wc_id_id`);
CREATE INDEX `twitter_tworldcitytr_7c65e524` ON `twitter_tworldcitytr` (`wcity_id_id`);
CREATE INDEX `twitter_tworldcitytr_a41585d1` ON `twitter_tworldcitytr` (`langcode_id`);
CREATE INDEX `twitter_tcontentvideoviewtr_c310672b` ON `twitter_tcontentvideoviewtr` (`cvv_id_id`);
CREATE INDEX `twitter_tcontentvideoviewtr_a41585d1` ON `twitter_tcontentvideoviewtr` (`langcode_id`);
CREATE INDEX `twitter_tcontentvideotr_f33a7ad1` ON `twitter_tcontentvideotr` (`cv_id_id`);
CREATE INDEX `twitter_tcontentvideotr_a41585d1` ON `twitter_tcontentvideotr` (`langcode_id`);
CREATE INDEX `twitter_tcontentphototr_a51f72b7` ON `twitter_tcontentphototr` (`cp_id_id`);
CREATE INDEX `twitter_tcontentphototr_a41585d1` ON `twitter_tcontentphototr` (`langcode_id`);
CREATE INDEX `twitter_tcontentarticle_e969df21` ON `twitter_tcontentarticle` (`author_id`);
CREATE INDEX `twitter_tcontentarticletr_1485c213` ON `twitter_tcontentarticletr` (`ca_id_id`);
CREATE INDEX `twitter_tcontentarticletr_a41585d1` ON `twitter_tcontentarticletr` (`langcode_id`);
CREATE INDEX `twitter_tfootballdivtr_886782cd` ON `twitter_tfootballdivtr` (`fd_id_id`);
CREATE INDEX `twitter_tfootballdivtr_a41585d1` ON `twitter_tfootballdivtr` (`langcode_id`);
CREATE INDEX `twitter_tfootballplayertr_4c444bd5` ON `twitter_tfootballplayertr` (`fp_id_id`);
CREATE INDEX `twitter_tfootballplayertr_a41585d1` ON `twitter_tfootballplayertr` (`langcode_id`);
CREATE INDEX `twitter_tfootballclubtr_2d33742e` ON `twitter_tfootballclubtr` (`fc_id_id`);
CREATE INDEX `twitter_tfootballclubtr_a41585d1` ON `twitter_tfootballclubtr` (`langcode_id`);
CREATE INDEX `twitter_tfootballclubplayerrel_2d33742e` ON `twitter_tfootballclubplayerrel` (`fc_id_id`);
CREATE INDEX `twitter_tfootballclubplayerrel_4c444bd5` ON `twitter_tfootballclubplayerrel` (`fp_id_id`);
CREATE INDEX `twitter_tcontentclubvideoviewrel_2d33742e` ON `twitter_tcontentclubvideoviewrel` (`fc_id_id`);
CREATE INDEX `twitter_tcontentclubvideoviewrel_c310672b` ON `twitter_tcontentclubvideoviewrel` (`cvv_id_id`);
CREATE INDEX `twitter_tcontentclubvideorel_2d33742e` ON `twitter_tcontentclubvideorel` (`fc_id_id`);
CREATE INDEX `twitter_tcontentclubvideorel_f33a7ad1` ON `twitter_tcontentclubvideorel` (`cv_id_id`);
CREATE INDEX `twitter_tcontentclubphotorel_2d33742e` ON `twitter_tcontentclubphotorel` (`fc_id_id`);
CREATE INDEX `twitter_tcontentclubphotorel_a51f72b7` ON `twitter_tcontentclubphotorel` (`cp_id_id`);
CREATE INDEX `twitter_tcontentclubarticlerel_2d33742e` ON `twitter_tcontentclubarticlerel` (`fc_id_id`);
CREATE INDEX `twitter_tcontentclubarticlerel_1485c213` ON `twitter_tcontentclubarticlerel` (`ca_id_id`);
CREATE INDEX `twitter_ttweetsclubtweetrel_2d33742e` ON `twitter_ttweetsclubtweetrel` (`fc_id_id`);
CREATE INDEX `twitter_ttweetsclubtweetrel_7c83e96d` ON `twitter_ttweetsclubtweetrel` (`tt_id_id`);
CREATE INDEX `twitter_ttweetsplayertweetrel_4c444bd5` ON `twitter_ttweetsplayertweetrel` (`fp_id_id`);
CREATE INDEX `twitter_ttweetsplayertweetrel_7c83e96d` ON `twitter_ttweetsplayertweetrel` (`tt_id_id`);
CREATE INDEX `twitter_ttweetstweethashtag_451fff59` ON `twitter_ttweetstweethashtag` (`th_id_id`);
CREATE INDEX `twitter_ttweetstweethashtag_7c83e96d` ON `twitter_ttweetstweethashtag` (`tt_id_id`);
CREATE INDEX `twitter_ttweetsclubhashtag_2d33742e` ON `twitter_ttweetsclubhashtag` (`fc_id_id`);
CREATE INDEX `twitter_ttweetsclubhashtag_451fff59` ON `twitter_ttweetsclubhashtag` (`th_id_id`);
CREATE INDEX `twitter_ttweetsplayerhashtag_4c444bd5` ON `twitter_ttweetsplayerhashtag` (`fp_id_id`);
CREATE INDEX `twitter_ttweetsplayerhashtag_451fff59` ON `twitter_ttweetsplayerhashtag` (`th_id_id`);

COMMIT;
