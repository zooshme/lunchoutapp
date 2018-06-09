
-- *** STRUCTURE:`tbl_fields_association` ***
DROP TABLE IF EXISTS`tbl_fields_association`;
CREATE TABLE`tbl_fields_association` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `hide_when_prepopulated` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_association` ***

-- *** STRUCTURE:`tbl_fields_author` ***
DROP TABLE IF EXISTS`tbl_fields_author`;
CREATE TABLE`tbl_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `author_types` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_author` ***

-- *** STRUCTURE:`tbl_fields_checkbox` ***
DROP TABLE IF EXISTS`tbl_fields_checkbox`;
CREATE TABLE`tbl_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_checkbox` ***

-- *** STRUCTURE:`tbl_fields_date` ***
DROP TABLE IF EXISTS`tbl_fields_date`;
CREATE TABLE`tbl_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calendar` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `time` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_date` ***

-- *** STRUCTURE:`tbl_fields_datetime` ***
DROP TABLE IF EXISTS`tbl_fields_datetime`;
CREATE TABLE`tbl_fields_datetime` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `prepopulate` tinyint(1) DEFAULT '1',
  `time` tinyint(1) DEFAULT '1',
  `multiple` tinyint(1) DEFAULT '1',
  `range` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_datetime` ***
INSERT INTO`tbl_fields_datetime` (`id`, `field_id`, `prepopulate`, `time`, `multiple`, `range`) VALUES (9, 41, 0, 1, 0, 0);

-- *** STRUCTURE:`tbl_fields_field_group_end` ***
DROP TABLE IF EXISTS`tbl_fields_field_group_end`;
CREATE TABLE`tbl_fields_field_group_end` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_field_group_end` ***
INSERT INTO`tbl_fields_field_group_end` (`id`, `field_id`) VALUES (29, 61);
INSERT INTO`tbl_fields_field_group_end` (`id`, `field_id`) VALUES (30, 63);
INSERT INTO`tbl_fields_field_group_end` (`id`, `field_id`) VALUES (24, 70);
INSERT INTO`tbl_fields_field_group_end` (`id`, `field_id`) VALUES (23, 71);

-- *** STRUCTURE:`tbl_fields_field_group_start` ***
DROP TABLE IF EXISTS`tbl_fields_field_group_start`;
CREATE TABLE`tbl_fields_field_group_start` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_field_group_start` ***
INSERT INTO`tbl_fields_field_group_start` (`id`, `field_id`) VALUES (33, 56);
INSERT INTO`tbl_fields_field_group_start` (`id`, `field_id`) VALUES (34, 62);
INSERT INTO`tbl_fields_field_group_start` (`id`, `field_id`) VALUES (27, 65);
INSERT INTO`tbl_fields_field_group_start` (`id`, `field_id`) VALUES (28, 68);

-- *** STRUCTURE:`tbl_fields_hashid_field` ***
DROP TABLE IF EXISTS`tbl_fields_hashid_field`;
CREATE TABLE`tbl_fields_hashid_field` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `length` int(2) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_hashid_field` ***
INSERT INTO`tbl_fields_hashid_field` (`id`, `field_id`, `salt`, `length`) VALUES (8, 42, 'Lunch Out', 5);

-- *** STRUCTURE:`tbl_fields_input` ***
DROP TABLE IF EXISTS`tbl_fields_input`;
CREATE TABLE`tbl_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=170 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_input` ***
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (142, 32, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (143, 33, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (140, 43, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (141, 31, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (138, 29, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (139, 30, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (26, 27, NULL);

-- *** STRUCTURE:`tbl_fields_maplocation` ***
DROP TABLE IF EXISTS`tbl_fields_maplocation`;
CREATE TABLE`tbl_fields_maplocation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_location` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `default_location_coords` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `default_zoom` int(11) unsigned NOT NULL,
  `api_key` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_maplocation` ***

-- *** STRUCTURE:`tbl_fields_memberemail` ***
DROP TABLE IF EXISTS`tbl_fields_memberemail`;
CREATE TABLE`tbl_fields_memberemail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_memberemail` ***
INSERT INTO`tbl_fields_memberemail` (`id`, `field_id`) VALUES (1, 25);

-- *** STRUCTURE:`tbl_fields_memberpassword` ***
DROP TABLE IF EXISTS`tbl_fields_memberpassword`;
CREATE TABLE`tbl_fields_memberpassword` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `length` tinyint(2) NOT NULL,
  `strength` enum('weak','good','strong') COLLATE utf8_unicode_ci NOT NULL,
  `code_expiry` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_memberpassword` ***
INSERT INTO`tbl_fields_memberpassword` (`id`, `field_id`, `length`, `strength`, `code_expiry`) VALUES (1, 24, 6, 'good', '4 hour');

-- *** STRUCTURE:`tbl_fields_memberrole` ***
DROP TABLE IF EXISTS`tbl_fields_memberrole`;
CREATE TABLE`tbl_fields_memberrole` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_role` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_memberrole` ***
INSERT INTO`tbl_fields_memberrole` (`id`, `field_id`, `default_role`) VALUES (1, 26, 1);

-- *** STRUCTURE:`tbl_fields_memberusername` ***
DROP TABLE IF EXISTS`tbl_fields_memberusername`;
CREATE TABLE`tbl_fields_memberusername` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_memberusername` ***
INSERT INTO`tbl_fields_memberusername` (`id`, `field_id`, `validator`) VALUES (1, 23, NULL);

-- *** STRUCTURE:`tbl_fields_number` ***
DROP TABLE IF EXISTS`tbl_fields_number`;
CREATE TABLE`tbl_fields_number` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_number` ***
INSERT INTO`tbl_fields_number` (`id`, `field_id`) VALUES (5, 49);
INSERT INTO`tbl_fields_number` (`id`, `field_id`) VALUES (6, 50);

-- *** STRUCTURE:`tbl_fields_select` ***
DROP TABLE IF EXISTS`tbl_fields_select`;
CREATE TABLE`tbl_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `sort_options` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_options` text COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_select` ***
INSERT INTO`tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `sort_options`, `static_options`, `dynamic_options`) VALUES (53, 55, 'yes', 'no', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', NULL);
INSERT INTO`tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `sort_options`, `static_options`, `dynamic_options`) VALUES (49, 79, 'no', 'no', '00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23', NULL);
INSERT INTO`tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `sort_options`, `static_options`, `dynamic_options`) VALUES (36, 75, 'no', 'no', '00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23', NULL);
INSERT INTO`tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `sort_options`, `static_options`, `dynamic_options`) VALUES (40, 74, 'yes', 'no', 'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday', NULL);
INSERT INTO`tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `sort_options`, `static_options`, `dynamic_options`) VALUES (37, 76, 'no', 'no', '00,15,30,45', NULL);
INSERT INTO`tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `sort_options`, `static_options`, `dynamic_options`) VALUES (38, 77, 'no', 'no', '00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23', NULL);
INSERT INTO`tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `sort_options`, `static_options`, `dynamic_options`) VALUES (39, 78, 'no', 'no', '00,15,30,45', NULL);
INSERT INTO`tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `sort_options`, `static_options`, `dynamic_options`) VALUES (50, 80, 'no', 'no', '00,15,30,45', NULL);
INSERT INTO`tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `sort_options`, `static_options`, `dynamic_options`) VALUES (51, 81, 'no', 'no', '00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23', NULL);
INSERT INTO`tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `sort_options`, `static_options`, `dynamic_options`) VALUES (52, 82, 'no', 'no', '00,15,30,45', NULL);

-- *** STRUCTURE:`tbl_fields_selectbox_link` ***
DROP TABLE IF EXISTS`tbl_fields_selectbox_link`;
CREATE TABLE`tbl_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `hide_when_prepopulated` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_selectbox_link` ***
INSERT INTO`tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `hide_when_prepopulated`, `related_field_id`, `limit`) VALUES (44, 36, 'no', 'yes', 27, 20);
INSERT INTO`tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `hide_when_prepopulated`, `related_field_id`, `limit`) VALUES (59, 38, 'no', 'yes', 27, 20);
INSERT INTO`tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `hide_when_prepopulated`, `related_field_id`, `limit`) VALUES (60, 39, 'no', 'yes', 29, 20);
INSERT INTO`tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `hide_when_prepopulated`, `related_field_id`, `limit`) VALUES (58, 40, 'no', 'no', 23, 20);
INSERT INTO`tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `hide_when_prepopulated`, `related_field_id`, `limit`) VALUES (57, 51, 'no', 'yes', 29, 20);
INSERT INTO`tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `hide_when_prepopulated`, `related_field_id`, `limit`) VALUES (82, 54, 'no', 'yes', 29, 20);
INSERT INTO`tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `hide_when_prepopulated`, `related_field_id`, `limit`) VALUES (79, 64, 'no', 'yes', 29, 20);

-- *** STRUCTURE:`tbl_fields_taglist` ***
DROP TABLE IF EXISTS`tbl_fields_taglist`;
CREATE TABLE`tbl_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_taglist` ***

-- *** STRUCTURE:`tbl_fields_textarea` ***
DROP TABLE IF EXISTS`tbl_fields_textarea`;
CREATE TABLE`tbl_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_textarea` ***

-- *** STRUCTURE:`tbl_fields_upload` ***
DROP TABLE IF EXISTS`tbl_fields_upload`;
CREATE TABLE`tbl_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_upload` ***

-- *** STRUCTURE:`tbl_entries_data_23` ***
DROP TABLE IF EXISTS`tbl_entries_data_23`;
CREATE TABLE`tbl_entries_data_23` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`handle`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_23` ***
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`, `handle`) VALUES (1, 11, 'ovidiust', 'ovidiust');
INSERT INTO`tbl_entries_data_23` (`id`, `entry_id`, `value`, `handle`) VALUES (2, 12, 'tom.sawyer', 'tom-sawyer');

-- *** STRUCTURE:`tbl_entries_data_24` ***
DROP TABLE IF EXISTS`tbl_entries_data_24`;
CREATE TABLE`tbl_entries_data_24` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `password` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recovery-code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `length` tinyint(2) NOT NULL,
  `strength` enum('weak','good','strong') COLLATE utf8_unicode_ci NOT NULL,
  `reset` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  `expires` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `recovery-code` (`recovery-code`),
  KEY `entry_id` (`entry_id`),
  KEY `length` (`length`),
  KEY `password` (`password`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_24` ***
INSERT INTO`tbl_entries_data_24` (`id`, `entry_id`, `password`, `recovery-code`, `length`, `strength`, `reset`, `expires`) VALUES (1, 11, 'PBKDF2v1|10000|647f49f4307f5356af46|MAYhtr53tM0/CDzQbIdhUrSF/4/GwwLd/UqsM6dXpLwYWK1Gnv9ySg==', NULL, 10, 'good', 'no', NULL);
INSERT INTO`tbl_entries_data_24` (`id`, `entry_id`, `password`, `recovery-code`, `length`, `strength`, `reset`, `expires`) VALUES (2, 12, 'PBKDF2v1|10000|086b5b2361abe8050146|mEZ3olDGKl8VEL/VIm1ZX9rsyDdSX5818ZmjXsCeNRbpsc1qgOZguA==', NULL, 9, 'good', 'no', NULL);

-- *** STRUCTURE:`tbl_entries_data_25` ***
DROP TABLE IF EXISTS`tbl_entries_data_25`;
CREATE TABLE`tbl_entries_data_25` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_25` ***
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `value`) VALUES (1, 11, 'me@ovidiust.com');
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `value`) VALUES (2, 12, 'tom@zoosh.me');

-- *** STRUCTURE:`tbl_entries_data_26` ***
DROP TABLE IF EXISTS`tbl_entries_data_26`;
CREATE TABLE`tbl_entries_data_26` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `role_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_26` ***
INSERT INTO`tbl_entries_data_26` (`id`, `entry_id`, `role_id`) VALUES (1, 11, 1);
INSERT INTO`tbl_entries_data_26` (`id`, `entry_id`, `role_id`) VALUES (2, 12, 1);

-- *** STRUCTURE:`tbl_entries_data_27` ***
DROP TABLE IF EXISTS`tbl_entries_data_27`;
CREATE TABLE`tbl_entries_data_27` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_27` ***
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 7, 'mozza', 'MOZZA');
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 14, 'cubatas', 'Cubatas');
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 19, 'cafe-andaluz', 'Café Andaluz');

-- *** STRUCTURE:`tbl_entries_data_29` ***
DROP TABLE IF EXISTS`tbl_entries_data_29`;
CREATE TABLE`tbl_entries_data_29` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_29` ***
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 8, 'glasgow', 'Glasgow');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 9, 'st-andrews', 'St Andrews');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 10, 'dundee', 'Dundee');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 15, 'glasgow', 'Glasgow');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 20, 'edinburgh-nr-grassmarket', 'Edinburgh Nr Grassmarket');

-- *** STRUCTURE:`tbl_entries_data_30` ***
DROP TABLE IF EXISTS`tbl_entries_data_30`;
CREATE TABLE`tbl_entries_data_30` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_30` ***
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 8, '39-renfield-street', '39 Renfield Street');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 9, '39-bell-street', '39 Bell Street');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 10, '13-whitehall-st', '13 Whitehall St');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 15, '108-elderslie-street', '108 Elderslie Street');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 20, '10-11-george-iv-bridge', '10-11 George IV Bridge');

-- *** STRUCTURE:`tbl_entries_data_31` ***
DROP TABLE IF EXISTS`tbl_entries_data_31`;
CREATE TABLE`tbl_entries_data_31` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_31` ***
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 8, 'glasgow', 'Glasgow');
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 9, 'st-andrews', 'St Andrews');
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 10, 'dundee', 'Dundee');
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 15, 'glasgow', 'Glasgow');
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 20, 'edinburgh', 'Edinburgh');

-- *** STRUCTURE:`tbl_entries_data_32` ***
DROP TABLE IF EXISTS`tbl_entries_data_32`;
CREATE TABLE`tbl_entries_data_32` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_32` ***
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 8, 'united-kingdom', 'United Kingdom ');
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 9, 'united-kingdom', 'United Kingdom');
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 10, 'united-kingdom', 'United Kingdom');
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 15, 'united-kingdom', 'United Kingdom');
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 20, 'united-kingdom', 'United Kingdom');

-- *** STRUCTURE:`tbl_entries_data_33` ***
DROP TABLE IF EXISTS`tbl_entries_data_33`;
CREATE TABLE`tbl_entries_data_33` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_33` ***
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 8, 'g2-1js', 'G2 1JS');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 9, 'ky16-9ur', 'KY16 9UR');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 10, 'dd1-4aa', 'DD1 4AA');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 15, 'g37ar', 'G37AR');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 20, 'eh1-1ee', 'EH1 1EE');

-- *** STRUCTURE:`tbl_entries_data_36` ***
DROP TABLE IF EXISTS`tbl_entries_data_36`;
CREATE TABLE`tbl_entries_data_36` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_36` ***
INSERT INTO`tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (1, 10, 7);
INSERT INTO`tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (2, 8, 7);
INSERT INTO`tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (3, 9, 7);
INSERT INTO`tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (5, 15, 14);
INSERT INTO`tbl_entries_data_36` (`id`, `entry_id`, `relation_id`) VALUES (6, 20, 19);

-- *** STRUCTURE:`tbl_entries_data_38` ***
DROP TABLE IF EXISTS`tbl_entries_data_38`;
CREATE TABLE`tbl_entries_data_38` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_38` ***
INSERT INTO`tbl_entries_data_38` (`id`, `entry_id`, `relation_id`) VALUES (1, 13, 7);
INSERT INTO`tbl_entries_data_38` (`id`, `entry_id`, `relation_id`) VALUES (2, 16, 14);
INSERT INTO`tbl_entries_data_38` (`id`, `entry_id`, `relation_id`) VALUES (3, 17, 7);
INSERT INTO`tbl_entries_data_38` (`id`, `entry_id`, `relation_id`) VALUES (4, 18, 7);

-- *** STRUCTURE:`tbl_entries_data_39` ***
DROP TABLE IF EXISTS`tbl_entries_data_39`;
CREATE TABLE`tbl_entries_data_39` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_39` ***
INSERT INTO`tbl_entries_data_39` (`id`, `entry_id`, `relation_id`) VALUES (1, 13, 10);
INSERT INTO`tbl_entries_data_39` (`id`, `entry_id`, `relation_id`) VALUES (2, 16, 8);
INSERT INTO`tbl_entries_data_39` (`id`, `entry_id`, `relation_id`) VALUES (3, 17, 8);
INSERT INTO`tbl_entries_data_39` (`id`, `entry_id`, `relation_id`) VALUES (4, 18, 10);

-- *** STRUCTURE:`tbl_entries_data_40` ***
DROP TABLE IF EXISTS`tbl_entries_data_40`;
CREATE TABLE`tbl_entries_data_40` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_40` ***
INSERT INTO`tbl_entries_data_40` (`id`, `entry_id`, `relation_id`) VALUES (1, 13, 11);
INSERT INTO`tbl_entries_data_40` (`id`, `entry_id`, `relation_id`) VALUES (2, 16, 11);
INSERT INTO`tbl_entries_data_40` (`id`, `entry_id`, `relation_id`) VALUES (3, 17, 11);
INSERT INTO`tbl_entries_data_40` (`id`, `entry_id`, `relation_id`) VALUES (4, 18, 11);

-- *** STRUCTURE:`tbl_entries_data_41` ***
DROP TABLE IF EXISTS`tbl_entries_data_41`;
CREATE TABLE`tbl_entries_data_41` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_41` ***
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `start`, `end`) VALUES (1, 16, '2018-02-27 12:25:00', '2018-02-27 12:25:00');
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `start`, `end`) VALUES (2, 17, '2018-05-07 12:00:00', '2018-05-07 12:00:00');
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `start`, `end`) VALUES (3, 18, '2018-06-01 15:00:00', '2018-06-01 15:00:00');

-- *** STRUCTURE:`tbl_entries_data_42` ***
DROP TABLE IF EXISTS`tbl_entries_data_42`;
CREATE TABLE`tbl_entries_data_42` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_42` ***
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`) VALUES (1, 16, 'mMWbE');
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`) VALUES (2, 17, 'Q5lAE');
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`) VALUES (3, 18, 'DyV4E');

-- *** STRUCTURE:`tbl_entries_data_43` ***
DROP TABLE IF EXISTS`tbl_entries_data_43`;
CREATE TABLE`tbl_entries_data_43` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_43` ***
INSERT INTO`tbl_entries_data_43` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 20, 'old-town', 'Old Town');

-- *** STRUCTURE:`tbl_entries_data_49` ***
DROP TABLE IF EXISTS`tbl_entries_data_49`;
CREATE TABLE`tbl_entries_data_49` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_49` ***
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (1, 21, 1);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (2, 22, 2);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (3, 23, 3);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (4, 24, 4);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (5, 25, 5);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (6, 26, 6);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (7, 27, 7);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (8, 28, 8);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (9, 29, 9);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (10, 30, 10);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (11, 31, 11);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (12, 32, 12);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (13, 33, 1);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (14, 34, 2);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (15, 35, 3);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (16, 36, 4);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (17, 37, 5);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (18, 38, 6);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (19, 39, 7);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (20, 40, 8);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (21, 41, 9);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (22, 42, 10);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (23, 43, 11);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (24, 44, 12);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (25, 45, 1);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (26, 46, 2);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (27, 47, 3);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (28, 48, 4);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (29, 49, 5);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (30, 50, 6);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (31, 51, 7);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (32, 52, 8);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (33, 53, 9);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (34, 54, 10);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (35, 55, 11);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (36, 56, 12);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (37, 57, 1);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (38, 58, 2);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (39, 59, 3);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (40, 60, 4);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (41, 61, 5);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (42, 62, 6);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (43, 63, 7);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (44, 64, 8);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (45, 65, 9);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (47, 66, 10);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (48, 67, 11);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (49, 68, 12);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (50, 69, 1);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (52, 70, 2);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (53, 71, 3);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (54, 72, 4);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (55, 73, 5);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (56, 74, 6);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (57, 75, 7);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (58, 76, 8);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (59, 77, 9);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (60, 78, 10);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (61, 79, 11);
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (62, 80, 12);

-- *** STRUCTURE:`tbl_entries_data_50` ***
DROP TABLE IF EXISTS`tbl_entries_data_50`;
CREATE TABLE`tbl_entries_data_50` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_50` ***
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (1, 21, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (2, 22, 2);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (3, 23, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (4, 24, 2);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (5, 25, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (6, 26, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (7, 27, 8);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (8, 28, 6);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (9, 29, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (10, 30, 2);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (11, 31, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (12, 32, 8);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (13, 33, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (14, 34, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (15, 35, 6);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (16, 36, 2);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (17, 37, 8);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (18, 38, 2);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (19, 39, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (20, 40, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (21, 41, 2);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (22, 42, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (23, 43, 2);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (24, 44, 2);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (25, 45, 2);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (26, 46, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (27, 47, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (28, 48, 2);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (29, 49, 2);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (30, 50, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (31, 51, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (32, 52, 2);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (33, 53, 6);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (34, 54, 8);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (35, 55, 2);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (36, 56, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (37, 57, 2);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (38, 58, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (39, 59, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (40, 60, 8);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (41, 61, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (42, 62, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (43, 63, 2);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (44, 64, 2);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (45, 65, 2);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (47, 66, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (48, 67, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (49, 68, 2);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (50, 69, 2);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (52, 70, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (53, 71, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (54, 72, 6);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (55, 73, 2);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (56, 74, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (57, 75, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (58, 76, 2);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (59, 77, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (60, 78, 2);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (61, 79, 4);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `value`) VALUES (62, 80, 4);

-- *** STRUCTURE:`tbl_entries_data_51` ***
DROP TABLE IF EXISTS`tbl_entries_data_51`;
CREATE TABLE`tbl_entries_data_51` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_51` ***
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (1, 21, 10);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (2, 22, 10);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (3, 23, 10);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (4, 24, 10);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (5, 25, 10);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (6, 26, 10);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (7, 27, 10);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (8, 28, 10);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (9, 29, 10);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (10, 30, 10);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (11, 31, 10);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (12, 32, 10);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (13, 33, 20);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (14, 34, 20);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (15, 35, 20);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (16, 36, 20);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (17, 37, 20);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (18, 38, 20);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (19, 39, 20);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (20, 40, 20);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (21, 41, 20);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (22, 42, 20);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (23, 43, 20);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (24, 44, 20);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (25, 45, 8);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (26, 46, 8);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (27, 47, 8);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (28, 48, 8);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (29, 49, 8);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (30, 50, 8);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (31, 51, 8);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (32, 52, 8);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (33, 53, 8);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (34, 54, 8);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (35, 55, 8);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (36, 56, 8);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (37, 57, 15);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (38, 58, 15);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (39, 59, 15);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (40, 60, 15);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (41, 61, 15);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (42, 62, 15);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (43, 63, 15);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (44, 64, 15);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (45, 65, 15);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (47, 66, 15);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (48, 67, 15);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (49, 68, 15);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (50, 69, 9);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (52, 70, 9);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (53, 71, 9);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (54, 72, 9);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (55, 73, 9);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (56, 74, 9);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (57, 75, 9);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (58, 76, 9);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (59, 77, 9);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (60, 78, 9);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (61, 79, 9);
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `relation_id`) VALUES (62, 80, 9);

-- *** STRUCTURE:`tbl_entries_data_54` ***
DROP TABLE IF EXISTS`tbl_entries_data_54`;
CREATE TABLE`tbl_entries_data_54` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_54` ***
INSERT INTO`tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (16, 81, 10);
INSERT INTO`tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (3, 82, 10);
INSERT INTO`tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (5, 83, 20);
INSERT INTO`tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (6, 84, 20);
INSERT INTO`tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (8, 85, 8);
INSERT INTO`tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (9, 86, 8);
INSERT INTO`tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (10, 87, 15);
INSERT INTO`tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (11, 88, 15);
INSERT INTO`tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (12, 89, 9);
INSERT INTO`tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (15, 91, 9);

-- *** STRUCTURE:`tbl_entries_data_55` ***
DROP TABLE IF EXISTS`tbl_entries_data_55`;
CREATE TABLE`tbl_entries_data_55` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_55` ***
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (57, 81, 'thursday', 'Thursday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (56, 81, 'wednesday', 'Wednesday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (55, 81, 'tuesday', 'Tuesday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 82, 'sunday', 'Sunday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 82, 'saturday', 'Saturday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 82, 'friday', 'Friday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (54, 81, 'monday', 'Monday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 83, 'monday', 'Monday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 83, 'tuesday', 'Tuesday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 83, 'wednesday', 'Wednesday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 83, 'thursday', 'Thursday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 84, 'friday', 'Friday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (20, 84, 'saturday', 'Saturday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (21, 84, 'sunday', 'Sunday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 85, 'monday', 'Monday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 85, 'tuesday', 'Tuesday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (28, 85, 'wednesday', 'Wednesday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 85, 'thursday', 'Thursday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 86, 'friday', 'Friday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (31, 86, 'saturday', 'Saturday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 86, 'sunday', 'Sunday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 87, 'monday', 'Monday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (34, 87, 'tuesday', 'Tuesday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 87, 'wednesday', 'Wednesday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 87, 'thursday', 'Thursday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 88, 'friday', 'Friday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (38, 88, 'saturday', 'Saturday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (39, 88, 'sunday', 'Sunday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (40, 89, 'monday', 'Monday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (41, 89, 'tuesday', 'Tuesday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (42, 89, 'wednesday', 'Wednesday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (43, 89, 'thursday', 'Thursday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (53, 91, 'sunday', 'Sunday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (52, 91, 'saturday', 'Saturday');
INSERT INTO`tbl_entries_data_55` (`id`, `entry_id`, `handle`, `value`) VALUES (51, 91, 'friday', 'Friday');

-- *** STRUCTURE:`tbl_entries_data_56` ***
DROP TABLE IF EXISTS`tbl_entries_data_56`;
CREATE TABLE`tbl_entries_data_56` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_56` ***
INSERT INTO`tbl_entries_data_56` (`id`, `entry_id`, `value`) VALUES (16, 81, NULL);
INSERT INTO`tbl_entries_data_56` (`id`, `entry_id`, `value`) VALUES (3, 82, NULL);
INSERT INTO`tbl_entries_data_56` (`id`, `entry_id`, `value`) VALUES (5, 83, NULL);
INSERT INTO`tbl_entries_data_56` (`id`, `entry_id`, `value`) VALUES (6, 84, NULL);
INSERT INTO`tbl_entries_data_56` (`id`, `entry_id`, `value`) VALUES (8, 85, NULL);
INSERT INTO`tbl_entries_data_56` (`id`, `entry_id`, `value`) VALUES (9, 86, NULL);
INSERT INTO`tbl_entries_data_56` (`id`, `entry_id`, `value`) VALUES (10, 87, NULL);
INSERT INTO`tbl_entries_data_56` (`id`, `entry_id`, `value`) VALUES (11, 88, NULL);
INSERT INTO`tbl_entries_data_56` (`id`, `entry_id`, `value`) VALUES (12, 89, NULL);
INSERT INTO`tbl_entries_data_56` (`id`, `entry_id`, `value`) VALUES (15, 91, NULL);

-- *** STRUCTURE:`tbl_entries_data_61` ***
DROP TABLE IF EXISTS`tbl_entries_data_61`;
CREATE TABLE`tbl_entries_data_61` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_61` ***
INSERT INTO`tbl_entries_data_61` (`id`, `entry_id`, `value`) VALUES (16, 81, NULL);
INSERT INTO`tbl_entries_data_61` (`id`, `entry_id`, `value`) VALUES (3, 82, NULL);
INSERT INTO`tbl_entries_data_61` (`id`, `entry_id`, `value`) VALUES (5, 83, NULL);
INSERT INTO`tbl_entries_data_61` (`id`, `entry_id`, `value`) VALUES (6, 84, NULL);
INSERT INTO`tbl_entries_data_61` (`id`, `entry_id`, `value`) VALUES (8, 85, NULL);
INSERT INTO`tbl_entries_data_61` (`id`, `entry_id`, `value`) VALUES (9, 86, NULL);
INSERT INTO`tbl_entries_data_61` (`id`, `entry_id`, `value`) VALUES (10, 87, NULL);
INSERT INTO`tbl_entries_data_61` (`id`, `entry_id`, `value`) VALUES (11, 88, NULL);
INSERT INTO`tbl_entries_data_61` (`id`, `entry_id`, `value`) VALUES (12, 89, NULL);
INSERT INTO`tbl_entries_data_61` (`id`, `entry_id`, `value`) VALUES (15, 91, NULL);

-- *** STRUCTURE:`tbl_entries_data_62` ***
DROP TABLE IF EXISTS`tbl_entries_data_62`;
CREATE TABLE`tbl_entries_data_62` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_62` ***
INSERT INTO`tbl_entries_data_62` (`id`, `entry_id`, `value`) VALUES (16, 81, NULL);
INSERT INTO`tbl_entries_data_62` (`id`, `entry_id`, `value`) VALUES (3, 82, NULL);
INSERT INTO`tbl_entries_data_62` (`id`, `entry_id`, `value`) VALUES (5, 83, NULL);
INSERT INTO`tbl_entries_data_62` (`id`, `entry_id`, `value`) VALUES (6, 84, NULL);
INSERT INTO`tbl_entries_data_62` (`id`, `entry_id`, `value`) VALUES (8, 85, NULL);
INSERT INTO`tbl_entries_data_62` (`id`, `entry_id`, `value`) VALUES (9, 86, NULL);
INSERT INTO`tbl_entries_data_62` (`id`, `entry_id`, `value`) VALUES (10, 87, NULL);
INSERT INTO`tbl_entries_data_62` (`id`, `entry_id`, `value`) VALUES (11, 88, NULL);
INSERT INTO`tbl_entries_data_62` (`id`, `entry_id`, `value`) VALUES (12, 89, NULL);
INSERT INTO`tbl_entries_data_62` (`id`, `entry_id`, `value`) VALUES (15, 91, NULL);

-- *** STRUCTURE:`tbl_entries_data_63` ***
DROP TABLE IF EXISTS`tbl_entries_data_63`;
CREATE TABLE`tbl_entries_data_63` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_63` ***
INSERT INTO`tbl_entries_data_63` (`id`, `entry_id`, `value`) VALUES (16, 81, NULL);
INSERT INTO`tbl_entries_data_63` (`id`, `entry_id`, `value`) VALUES (3, 82, NULL);
INSERT INTO`tbl_entries_data_63` (`id`, `entry_id`, `value`) VALUES (5, 83, NULL);
INSERT INTO`tbl_entries_data_63` (`id`, `entry_id`, `value`) VALUES (6, 84, NULL);
INSERT INTO`tbl_entries_data_63` (`id`, `entry_id`, `value`) VALUES (8, 85, NULL);
INSERT INTO`tbl_entries_data_63` (`id`, `entry_id`, `value`) VALUES (9, 86, NULL);
INSERT INTO`tbl_entries_data_63` (`id`, `entry_id`, `value`) VALUES (10, 87, NULL);
INSERT INTO`tbl_entries_data_63` (`id`, `entry_id`, `value`) VALUES (11, 88, NULL);
INSERT INTO`tbl_entries_data_63` (`id`, `entry_id`, `value`) VALUES (12, 89, NULL);
INSERT INTO`tbl_entries_data_63` (`id`, `entry_id`, `value`) VALUES (15, 91, NULL);

-- *** STRUCTURE:`tbl_entries_data_64` ***
DROP TABLE IF EXISTS`tbl_entries_data_64`;
CREATE TABLE`tbl_entries_data_64` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_64` ***
INSERT INTO`tbl_entries_data_64` (`id`, `entry_id`, `relation_id`) VALUES (7, 92, 10);
INSERT INTO`tbl_entries_data_64` (`id`, `entry_id`, `relation_id`) VALUES (8, 93, 20);
INSERT INTO`tbl_entries_data_64` (`id`, `entry_id`, `relation_id`) VALUES (9, 94, 8);
INSERT INTO`tbl_entries_data_64` (`id`, `entry_id`, `relation_id`) VALUES (10, 95, 15);
INSERT INTO`tbl_entries_data_64` (`id`, `entry_id`, `relation_id`) VALUES (11, 96, 9);

-- *** STRUCTURE:`tbl_entries_data_65` ***
DROP TABLE IF EXISTS`tbl_entries_data_65`;
CREATE TABLE`tbl_entries_data_65` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_65` ***
INSERT INTO`tbl_entries_data_65` (`id`, `entry_id`, `value`) VALUES (7, 92, NULL);
INSERT INTO`tbl_entries_data_65` (`id`, `entry_id`, `value`) VALUES (8, 93, NULL);
INSERT INTO`tbl_entries_data_65` (`id`, `entry_id`, `value`) VALUES (9, 94, NULL);
INSERT INTO`tbl_entries_data_65` (`id`, `entry_id`, `value`) VALUES (10, 95, NULL);
INSERT INTO`tbl_entries_data_65` (`id`, `entry_id`, `value`) VALUES (11, 96, NULL);

-- *** STRUCTURE:`tbl_entries_data_68` ***
DROP TABLE IF EXISTS`tbl_entries_data_68`;
CREATE TABLE`tbl_entries_data_68` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_68` ***
INSERT INTO`tbl_entries_data_68` (`id`, `entry_id`, `value`) VALUES (7, 92, NULL);
INSERT INTO`tbl_entries_data_68` (`id`, `entry_id`, `value`) VALUES (8, 93, NULL);
INSERT INTO`tbl_entries_data_68` (`id`, `entry_id`, `value`) VALUES (9, 94, NULL);
INSERT INTO`tbl_entries_data_68` (`id`, `entry_id`, `value`) VALUES (10, 95, NULL);
INSERT INTO`tbl_entries_data_68` (`id`, `entry_id`, `value`) VALUES (11, 96, NULL);

-- *** STRUCTURE:`tbl_entries_data_70` ***
DROP TABLE IF EXISTS`tbl_entries_data_70`;
CREATE TABLE`tbl_entries_data_70` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_70` ***
INSERT INTO`tbl_entries_data_70` (`id`, `entry_id`, `value`) VALUES (7, 92, NULL);
INSERT INTO`tbl_entries_data_70` (`id`, `entry_id`, `value`) VALUES (8, 93, NULL);
INSERT INTO`tbl_entries_data_70` (`id`, `entry_id`, `value`) VALUES (9, 94, NULL);
INSERT INTO`tbl_entries_data_70` (`id`, `entry_id`, `value`) VALUES (10, 95, NULL);
INSERT INTO`tbl_entries_data_70` (`id`, `entry_id`, `value`) VALUES (11, 96, NULL);

-- *** STRUCTURE:`tbl_entries_data_71` ***
DROP TABLE IF EXISTS`tbl_entries_data_71`;
CREATE TABLE`tbl_entries_data_71` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_71` ***
INSERT INTO`tbl_entries_data_71` (`id`, `entry_id`, `value`) VALUES (7, 92, NULL);
INSERT INTO`tbl_entries_data_71` (`id`, `entry_id`, `value`) VALUES (8, 93, NULL);
INSERT INTO`tbl_entries_data_71` (`id`, `entry_id`, `value`) VALUES (9, 94, NULL);
INSERT INTO`tbl_entries_data_71` (`id`, `entry_id`, `value`) VALUES (10, 95, NULL);
INSERT INTO`tbl_entries_data_71` (`id`, `entry_id`, `value`) VALUES (11, 96, NULL);

-- *** STRUCTURE:`tbl_entries_data_74` ***
DROP TABLE IF EXISTS`tbl_entries_data_74`;
CREATE TABLE`tbl_entries_data_74` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_74` ***
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (49, 92, 'sunday', 'Sunday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (48, 92, 'saturday', 'Saturday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (47, 92, 'friday', 'Friday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (46, 92, 'thursday', 'Thursday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (45, 92, 'wednesday', 'Wednesday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (44, 92, 'tuesday', 'Tuesday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (43, 92, 'monday', 'Monday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (55, 93, 'saturday', 'Saturday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (54, 93, 'friday', 'Friday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (53, 93, 'thursday', 'Thursday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (52, 93, 'wednesday', 'Wednesday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (51, 93, 'tuesday', 'Tuesday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (50, 93, 'monday', 'Monday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (62, 94, 'saturday', 'Saturday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (61, 94, 'friday', 'Friday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 94, 'thursday', 'Thursday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (59, 94, 'wednesday', 'Wednesday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 94, 'tuesday', 'Tuesday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (57, 94, 'monday', 'Monday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (69, 95, 'saturday', 'Saturday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (68, 95, 'friday', 'Friday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (67, 95, 'thursday', 'Thursday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (66, 95, 'wednesday', 'Wednesday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (65, 95, 'tuesday', 'Tuesday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (64, 95, 'monday', 'Monday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (76, 96, 'saturday', 'Saturday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (75, 96, 'friday', 'Friday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (74, 96, 'thursday', 'Thursday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (73, 96, 'wednesday', 'Wednesday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (72, 96, 'tuesday', 'Tuesday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (71, 96, 'monday', 'Monday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (56, 93, 'sunday', 'Sunday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (63, 94, 'sunday', 'Sunday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (70, 95, 'sunday', 'Sunday');
INSERT INTO`tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (77, 96, 'sunday', 'Sunday');

-- *** STRUCTURE:`tbl_entries_data_75` ***
DROP TABLE IF EXISTS`tbl_entries_data_75`;
CREATE TABLE`tbl_entries_data_75` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_75` ***
INSERT INTO`tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 92, 12, 12);
INSERT INTO`tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 93, 13, 13);
INSERT INTO`tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 94, 12, 12);
INSERT INTO`tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 95, 12, 12);
INSERT INTO`tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 96, 13, 13);

-- *** STRUCTURE:`tbl_entries_data_76` ***
DROP TABLE IF EXISTS`tbl_entries_data_76`;
CREATE TABLE`tbl_entries_data_76` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_76` ***
INSERT INTO`tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 92, 00, 00);
INSERT INTO`tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 93, 00, 00);
INSERT INTO`tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 94, 00, 00);
INSERT INTO`tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 95, 00, 00);
INSERT INTO`tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 96, 00, 00);

-- *** STRUCTURE:`tbl_entries_data_77` ***
DROP TABLE IF EXISTS`tbl_entries_data_77`;
CREATE TABLE`tbl_entries_data_77` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_77` ***
INSERT INTO`tbl_entries_data_77` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 92, 17, 17);
INSERT INTO`tbl_entries_data_77` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 93, 15, 15);
INSERT INTO`tbl_entries_data_77` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 94, 17, 17);
INSERT INTO`tbl_entries_data_77` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 95, 15, 15);
INSERT INTO`tbl_entries_data_77` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 96, 16, 16);

-- *** STRUCTURE:`tbl_entries_data_78` ***
DROP TABLE IF EXISTS`tbl_entries_data_78`;
CREATE TABLE`tbl_entries_data_78` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_78` ***
INSERT INTO`tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 92, 00, 00);
INSERT INTO`tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 93, 00, 00);
INSERT INTO`tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 94, 00, 00);
INSERT INTO`tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 95, 00, 00);
INSERT INTO`tbl_entries_data_78` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 96, 00, 00);

-- *** STRUCTURE:`tbl_entries_data_79` ***
DROP TABLE IF EXISTS`tbl_entries_data_79`;
CREATE TABLE`tbl_entries_data_79` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_79` ***
INSERT INTO`tbl_entries_data_79` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 81, 09, 09);

-- *** STRUCTURE:`tbl_entries_data_80` ***
DROP TABLE IF EXISTS`tbl_entries_data_80`;
CREATE TABLE`tbl_entries_data_80` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_80` ***
INSERT INTO`tbl_entries_data_80` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 81, 00, 00);

-- *** STRUCTURE:`tbl_entries_data_81` ***
DROP TABLE IF EXISTS`tbl_entries_data_81`;
CREATE TABLE`tbl_entries_data_81` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_81` ***
INSERT INTO`tbl_entries_data_81` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 81, 23, 23);

-- *** STRUCTURE:`tbl_entries_data_82` ***
DROP TABLE IF EXISTS`tbl_entries_data_82`;
CREATE TABLE`tbl_entries_data_82` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_82` ***
INSERT INTO`tbl_entries_data_82` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 81, 00, 00);

-- *** DATA:`tbl_entries` ***
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (10, 9, 1, 1, '2018-06-02 13:44:41', '2018-06-02 12:44:41', '2018-06-02 13:46:33', '2018-06-02 12:46:33');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (9, 9, 1, 1, '2018-06-02 13:43:29', '2018-06-02 12:43:29', '2018-06-02 13:48:30', '2018-06-02 12:48:30');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (12, 7, 1, 1, '2018-06-02 14:42:14', '2018-06-02 13:42:14', '2018-06-02 14:42:14', '2018-06-02 13:42:14');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (11, 7, 1, 1, '2018-06-02 14:41:19', '2018-06-02 13:41:19', '2018-06-02 14:41:19', '2018-06-02 13:41:19');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (8, 9, 1, 1, '2018-06-02 13:42:06', '2018-06-02 12:42:06', '2018-06-02 13:48:30', '2018-06-02 12:48:30');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (7, 8, 1, 1, '2018-06-02 13:34:25', '2018-06-02 12:34:25', '2018-06-02 13:34:25', '2018-06-02 12:34:25');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (13, 10, 1, 1, '2018-06-02 14:43:03', '2018-06-02 13:43:03', '2018-06-02 14:43:03', '2018-06-02 13:43:03');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (14, 8, 1, 1, '2018-06-02 16:05:19', '2018-06-02 15:05:19', '2018-06-02 16:05:19', '2018-06-02 15:05:19');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (15, 9, 1, 1, '2018-06-02 16:06:48', '2018-06-02 15:06:48', '2018-06-02 16:07:12', '2018-06-02 15:07:12');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (16, 10, 1, 1, '2018-06-02 16:12:05', '2018-06-02 15:12:05', '2018-06-02 16:12:05', '2018-06-02 15:12:05');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (17, 10, 1, 1, '2018-06-02 16:12:32', '2018-06-02 15:12:32', '2018-06-02 16:12:32', '2018-06-02 15:12:32');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (18, 10, 1, 1, '2018-06-02 16:22:43', '2018-06-02 15:22:43', '2018-06-02 16:22:43', '2018-06-02 15:22:43');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (19, 8, 1, 1, '2018-06-02 18:54:50', '2018-06-02 17:54:50', '2018-06-02 18:54:50', '2018-06-02 17:54:50');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (20, 9, 1, 1, '2018-06-02 19:04:17', '2018-06-02 18:04:17', '2018-06-02 19:04:17', '2018-06-02 18:04:17');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (21, 11, 1, 1, '2018-06-03 12:30:11', '2018-06-03 11:30:11', '2018-06-03 12:30:11', '2018-06-03 11:30:11');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (22, 11, 1, 1, '2018-06-03 12:30:32', '2018-06-03 11:30:32', '2018-06-03 12:30:32', '2018-06-03 11:30:32');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (23, 11, 1, 1, '2018-06-03 12:30:46', '2018-06-03 11:30:46', '2018-06-03 12:30:46', '2018-06-03 11:30:46');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (24, 11, 1, 1, '2018-06-03 12:30:58', '2018-06-03 11:30:58', '2018-06-03 12:30:58', '2018-06-03 11:30:58');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (25, 11, 1, 1, '2018-06-03 12:31:08', '2018-06-03 11:31:08', '2018-06-03 12:31:08', '2018-06-03 11:31:08');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (26, 11, 1, 1, '2018-06-03 12:31:14', '2018-06-03 11:31:14', '2018-06-03 12:31:14', '2018-06-03 11:31:14');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (27, 11, 1, 1, '2018-06-03 12:31:38', '2018-06-03 11:31:38', '2018-06-03 12:31:38', '2018-06-03 11:31:38');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (28, 11, 1, 1, '2018-06-03 12:31:49', '2018-06-03 11:31:49', '2018-06-03 12:31:49', '2018-06-03 11:31:49');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (29, 11, 1, 1, '2018-06-03 12:32:15', '2018-06-03 11:32:15', '2018-06-03 12:32:15', '2018-06-03 11:32:15');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (30, 11, 1, 1, '2018-06-03 12:32:21', '2018-06-03 11:32:21', '2018-06-03 12:32:21', '2018-06-03 11:32:21');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (31, 11, 1, 1, '2018-06-03 12:32:26', '2018-06-03 11:32:26', '2018-06-03 12:32:26', '2018-06-03 11:32:26');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (32, 11, 1, 1, '2018-06-03 12:32:30', '2018-06-03 11:32:30', '2018-06-03 12:32:30', '2018-06-03 11:32:30');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (33, 11, 1, 1, '2018-06-03 12:32:52', '2018-06-03 11:32:52', '2018-06-03 12:32:52', '2018-06-03 11:32:52');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (34, 11, 1, 1, '2018-06-03 12:32:57', '2018-06-03 11:32:57', '2018-06-03 12:32:57', '2018-06-03 11:32:57');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (35, 11, 1, 1, '2018-06-03 12:33:03', '2018-06-03 11:33:03', '2018-06-03 12:33:03', '2018-06-03 11:33:03');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (36, 11, 1, 1, '2018-06-03 12:33:11', '2018-06-03 11:33:11', '2018-06-03 12:33:11', '2018-06-03 11:33:11');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (37, 11, 1, 1, '2018-06-03 12:33:17', '2018-06-03 11:33:17', '2018-06-03 12:33:17', '2018-06-03 11:33:17');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (38, 11, 1, 1, '2018-06-03 12:33:23', '2018-06-03 11:33:23', '2018-06-03 12:33:23', '2018-06-03 11:33:23');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (39, 11, 1, 1, '2018-06-03 12:33:38', '2018-06-03 11:33:38', '2018-06-03 12:33:38', '2018-06-03 11:33:38');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (40, 11, 1, 1, '2018-06-03 12:33:45', '2018-06-03 11:33:45', '2018-06-03 12:33:45', '2018-06-03 11:33:45');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (41, 11, 1, 1, '2018-06-03 12:33:52', '2018-06-03 11:33:52', '2018-06-03 12:33:52', '2018-06-03 11:33:52');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (42, 11, 1, 1, '2018-06-03 12:34:00', '2018-06-03 11:34:00', '2018-06-03 12:34:00', '2018-06-03 11:34:00');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (43, 11, 1, 1, '2018-06-03 12:34:06', '2018-06-03 11:34:06', '2018-06-03 12:34:06', '2018-06-03 11:34:06');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (44, 11, 1, 1, '2018-06-03 12:34:11', '2018-06-03 11:34:11', '2018-06-03 12:34:11', '2018-06-03 11:34:11');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (45, 11, 1, 1, '2018-06-03 12:35:42', '2018-06-03 11:35:42', '2018-06-03 12:35:42', '2018-06-03 11:35:42');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (46, 11, 1, 1, '2018-06-03 12:35:47', '2018-06-03 11:35:47', '2018-06-03 12:35:47', '2018-06-03 11:35:47');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (47, 11, 1, 1, '2018-06-03 12:35:53', '2018-06-03 11:35:53', '2018-06-03 12:35:53', '2018-06-03 11:35:53');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (48, 11, 1, 1, '2018-06-03 12:35:58', '2018-06-03 11:35:58', '2018-06-03 12:35:58', '2018-06-03 11:35:58');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (49, 11, 1, 1, '2018-06-03 12:36:07', '2018-06-03 11:36:07', '2018-06-03 12:36:07', '2018-06-03 11:36:07');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (50, 11, 1, 1, '2018-06-03 12:36:13', '2018-06-03 11:36:13', '2018-06-03 12:36:13', '2018-06-03 11:36:13');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (51, 11, 1, 1, '2018-06-03 12:36:17', '2018-06-03 11:36:17', '2018-06-03 12:36:17', '2018-06-03 11:36:17');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (52, 11, 1, 1, '2018-06-03 12:36:22', '2018-06-03 11:36:22', '2018-06-03 12:36:22', '2018-06-03 11:36:22');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (53, 11, 1, 1, '2018-06-03 12:36:30', '2018-06-03 11:36:30', '2018-06-03 12:36:30', '2018-06-03 11:36:30');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (54, 11, 1, 1, '2018-06-03 12:36:36', '2018-06-03 11:36:36', '2018-06-03 12:36:36', '2018-06-03 11:36:36');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (55, 11, 1, 1, '2018-06-03 12:37:02', '2018-06-03 11:37:02', '2018-06-03 12:37:02', '2018-06-03 11:37:02');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (56, 11, 1, 1, '2018-06-03 12:37:06', '2018-06-03 11:37:06', '2018-06-03 12:37:06', '2018-06-03 11:37:06');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (57, 11, 1, 1, '2018-06-03 12:37:29', '2018-06-03 11:37:29', '2018-06-03 12:37:29', '2018-06-03 11:37:29');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (58, 11, 1, 1, '2018-06-03 12:37:33', '2018-06-03 11:37:33', '2018-06-03 12:37:33', '2018-06-03 11:37:33');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (59, 11, 1, 1, '2018-06-03 12:37:37', '2018-06-03 11:37:37', '2018-06-03 12:37:37', '2018-06-03 11:37:37');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (60, 11, 1, 1, '2018-06-03 12:37:44', '2018-06-03 11:37:44', '2018-06-03 12:37:44', '2018-06-03 11:37:44');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (61, 11, 1, 1, '2018-06-03 12:37:51', '2018-06-03 11:37:51', '2018-06-03 12:37:51', '2018-06-03 11:37:51');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (62, 11, 1, 1, '2018-06-03 12:37:58', '2018-06-03 11:37:58', '2018-06-03 12:37:58', '2018-06-03 11:37:58');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (63, 11, 1, 1, '2018-06-03 12:38:04', '2018-06-03 11:38:04', '2018-06-03 12:38:04', '2018-06-03 11:38:04');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (64, 11, 1, 1, '2018-06-03 12:38:13', '2018-06-03 11:38:13', '2018-06-03 12:38:13', '2018-06-03 11:38:13');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (65, 11, 1, 1, '2018-06-03 12:38:18', '2018-06-03 11:38:18', '2018-06-03 12:38:18', '2018-06-03 11:38:18');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (66, 11, 1, 1, '2018-06-03 12:38:26', '2018-06-03 11:38:26', '2018-06-03 12:38:30', '2018-06-03 11:38:30');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (67, 11, 1, 1, '2018-06-03 12:38:38', '2018-06-03 11:38:38', '2018-06-03 12:38:38', '2018-06-03 11:38:38');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (68, 11, 1, 1, '2018-06-03 12:38:43', '2018-06-03 11:38:43', '2018-06-03 12:38:43', '2018-06-03 11:38:43');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (69, 11, 1, 1, '2018-06-03 12:47:16', '2018-06-03 11:47:16', '2018-06-03 12:47:16', '2018-06-03 11:47:16');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (70, 11, 1, 1, '2018-06-03 12:47:24', '2018-06-03 11:47:24', '2018-06-03 12:47:27', '2018-06-03 11:47:27');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (71, 11, 1, 1, '2018-06-03 12:47:33', '2018-06-03 11:47:33', '2018-06-03 12:47:33', '2018-06-03 11:47:33');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (72, 11, 1, 1, '2018-06-03 12:47:39', '2018-06-03 11:47:39', '2018-06-03 12:47:39', '2018-06-03 11:47:39');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (73, 11, 1, 1, '2018-06-03 12:47:45', '2018-06-03 11:47:45', '2018-06-03 12:47:45', '2018-06-03 11:47:45');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (74, 11, 1, 1, '2018-06-03 12:47:51', '2018-06-03 11:47:51', '2018-06-03 12:47:51', '2018-06-03 11:47:51');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (75, 11, 1, 1, '2018-06-03 12:47:58', '2018-06-03 11:47:58', '2018-06-03 12:47:58', '2018-06-03 11:47:58');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (76, 11, 1, 1, '2018-06-03 12:48:04', '2018-06-03 11:48:04', '2018-06-03 12:48:04', '2018-06-03 11:48:04');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (77, 11, 1, 1, '2018-06-03 12:48:10', '2018-06-03 11:48:10', '2018-06-03 12:48:10', '2018-06-03 11:48:10');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (78, 11, 1, 1, '2018-06-03 12:48:16', '2018-06-03 11:48:16', '2018-06-03 12:48:16', '2018-06-03 11:48:16');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (79, 11, 1, 1, '2018-06-03 12:48:21', '2018-06-03 11:48:21', '2018-06-03 12:48:21', '2018-06-03 11:48:21');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (80, 11, 1, 1, '2018-06-03 12:48:25', '2018-06-03 11:48:25', '2018-06-03 12:48:25', '2018-06-03 11:48:25');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (81, 12, 1, 1, '2018-06-03 17:57:00', '2018-06-03 16:57:00', '2018-06-04 16:23:53', '2018-06-04 15:23:53');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (82, 12, 1, 1, '2018-06-03 17:57:39', '2018-06-03 16:57:39', '2018-06-03 17:57:48', '2018-06-03 16:57:48');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (83, 12, 1, 1, '2018-06-03 18:22:44', '2018-06-03 17:22:44', '2018-06-03 18:22:44', '2018-06-03 17:22:44');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (84, 12, 1, 1, '2018-06-03 18:23:19', '2018-06-03 17:23:19', '2018-06-03 18:23:19', '2018-06-03 17:23:19');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (85, 12, 1, 1, '2018-06-03 18:25:30', '2018-06-03 17:25:30', '2018-06-03 18:25:30', '2018-06-03 17:25:30');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (86, 12, 1, 1, '2018-06-03 18:25:57', '2018-06-03 17:25:57', '2018-06-03 18:25:57', '2018-06-03 17:25:57');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (87, 12, 1, 1, '2018-06-03 18:26:40', '2018-06-03 17:26:40', '2018-06-03 18:26:40', '2018-06-03 17:26:40');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (88, 12, 1, 1, '2018-06-03 18:27:27', '2018-06-03 17:27:27', '2018-06-03 18:27:27', '2018-06-03 17:27:27');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (89, 12, 1, 1, '2018-06-03 18:27:51', '2018-06-03 17:27:51', '2018-06-03 18:27:51', '2018-06-03 17:27:51');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (92, 13, 1, 1, '2018-06-03 19:03:45', '2018-06-03 18:03:45', '2018-06-04 16:18:30', '2018-06-04 15:18:30');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (91, 12, 1, 1, '2018-06-03 18:28:27', '2018-06-03 17:28:27', '2018-06-03 18:28:50', '2018-06-03 17:28:50');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (93, 13, 1, 1, '2018-06-03 19:04:36', '2018-06-03 18:04:36', '2018-06-04 16:19:02', '2018-06-04 15:19:02');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (94, 13, 1, 1, '2018-06-03 19:05:08', '2018-06-03 18:05:08', '2018-06-04 16:19:31', '2018-06-04 15:19:31');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (95, 13, 1, 1, '2018-06-03 19:05:28', '2018-06-03 18:05:28', '2018-06-04 16:19:48', '2018-06-04 15:19:48');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (96, 13, 1, 1, '2018-06-03 19:05:49', '2018-06-03 18:05:49', '2018-06-04 16:20:16', '2018-06-04 15:20:16');

-- *** DATA:`tbl_extensions` ***
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (1, 'debugdevkit', 'enabled', '1.3.4');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (2, 'export_ensemble', 'enabled', '2.2.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (3, 'jit_image_manipulation', 'enabled', 1.47);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (4, 'maintenance_mode', 'enabled', '1.9.4');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (5, 'markdown', 'enabled', 1.21);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (6, 'profiledevkit', 'enabled', '1.5.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (7, 'selectbox_link_field', 'enabled', '2.0.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (8, 'xssfilter', 'enabled', '1.5.0');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (9, 'extension_downloader', 'enabled', '1.1.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (10, 'maplocationfield', 'enabled', '3.4.5');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (11, 'members', 'enabled', '1.10.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (12, 'assets', 'enabled', 1.0);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (13, 'association_field', 'enabled', '2.0.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (14, 'datetime', 'enabled', '3.9.0');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (15, 'hashid_field', 'enabled', '2.0.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (16, 'cache_management', 'enabled', '1.3.4');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (17, 'numberfield', 'enabled', '1.7.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (18, 'field_group', 'enabled', 1.1);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (19, 'globalparamloader', 'enabled', '1.5.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (20, 'storage', 'enabled', '1.6.5');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (21, 'email_template_manager', 'enabled', '7.5.1');

-- *** DATA:`tbl_extensions_delegates` ***
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (1, 1, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (2, 1, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (3, 2, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (4, 3, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (5, 3, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (6, 4, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (7, 4, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (8, 4, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (9, 4, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (10, 4, '/blueprints/pages/', 'AppendPageContent', '__appendType');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (11, 4, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (12, 4, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (13, 6, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (14, 6, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (15, 8, '/blueprints/events/', 'AppendEventFilterDocumentation', 'appendEventFilterDocumentation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (16, 8, '/blueprints/events/new/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (17, 8, '/blueprints/events/edit/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (18, 8, '/frontend/', 'EventPreSaveFilter', 'eventPreSaveFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (19, 8, '/frontend/', 'FrontendParamsResolve', 'frontendParamsResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (20, 9, '/backend/', 'InitaliseAdminPageHead', 'appendAssets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (21, 11, '/frontend/', 'FrontendPageResolved', 'checkFrontendPagePermissions');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (22, 11, '/frontend/', 'FrontendParamsResolve', 'addMemberDetailsToPageParams');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (23, 11, '/frontend/', 'FrontendProcessEvents', 'appendLoginStatusToEventXML');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (24, 11, '/frontend/', 'EventPreSaveFilter', 'checkEventPermissions');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (25, 11, '/frontend/', 'EventPostSaveFilter', 'processPostSaveFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (26, 11, '/frontend/', 'CacheliteBypass', 'processCacheliteBypass');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (27, 11, '/backend/', 'AdminPagePreGenerate', 'appendAssets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (28, 11, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (29, 11, '/system/preferences/', 'Save', 'savePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (30, 11, '/blueprints/events/new/', 'AppendEventFilter', 'appendFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (31, 11, '/blueprints/events/edit/', 'AppendEventFilter', 'appendFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (32, 12, '/backend/', 'InitialiseAdminPageHead', 'dInitialiseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (33, 13, '/backend/', 'InitaliseAdminPageHead', 'appendAssets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (34, 14, '/system/preferences/', 'AddCustomPreferenceFieldsets', '__addPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (35, 14, '/system/preferences/', 'Save', '__savePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (36, 15, '/publish/edit/', 'EntryPostEdit', 'compileBackendFields');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (37, 15, '/publish/new/', 'EntryPostCreate', 'compileBackendFields');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (38, 15, '/xmlimporter/importers/run/', 'XMLImporterEntryPostCreate', 'compileBackendFields');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (39, 15, '/xmlimporter/importers/run/', 'XMLImporterEntryPostEdit', 'compileBackendFields');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (40, 15, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'addPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (41, 15, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (42, 15, '/frontend/', 'EventPostSaveFilter', 'compileFrontendFields');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (43, 16, '/backend/', 'NavigationPreRender', 'navigationPreRender');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (44, 18, '/backend/', 'InitaliseAdminPageHead', 'initializeAdmin');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (45, 19, '/frontend/', 'FrontendParamsResolve', 'addParam');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (46, 19, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (47, 20, '/blueprints/events/new/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (48, 20, '/blueprints/events/edit/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (49, 20, '/frontend/', 'EventFinalSaveFilter', 'eventFinalSaveFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (50, 21, '/blueprints/events/edit/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (51, 21, '/blueprints/events/new/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (52, 21, '/frontend/', 'EventFinalSaveFilter', 'eventFinalSaveFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (53, 21, '/blueprints/events/edit/', 'AppendEventFilterDocumentation', 'appendEventFilterDocumentation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (54, 21, '/blueprints/datasources/', 'DatasourcePostEdit', 'datasourcePostEdit');

-- *** DATA:`tbl_fields` ***
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (49, 'Table Number', 'table-number', 'number', 11, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (36, 'Restaurant', 'restaurant', 'selectbox_link', 9, 'yes', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (33, 'Postcode', 'postcode', 'input', 9, 'no', 6, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (32, 'Country', 'country', 'input', 9, 'no', 5, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (31, 'Town/City', 'town-city', 'input', 9, 'no', 4, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (30, 'Street Address', 'street-address', 'input', 9, 'no', 2, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (29, 'Name', 'name', 'input', 9, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (41, 'Date and Time', 'date-and-time', 'datetime', 10, 'yes', 2, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (38, 'Restaurant', 'restaurant', 'selectbox_link', 10, 'yes', 3, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (27, 'Name', 'name', 'input', 8, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (26, 'Role', 'role', 'memberrole', 7, 'yes', 3, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (25, 'Email', 'email', 'memberemail', 7, 'yes', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (24, 'Password', 'password', 'memberpassword', 7, 'yes', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (23, 'Username', 'username', 'memberusername', 7, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (39, 'Location', 'location', 'selectbox_link', 10, 'yes', 4, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (40, 'User', 'user', 'selectbox_link', 10, 'yes', 1, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (42, 'Hash ID', 'hash-id', 'hashid_field', 10, 'no', 0, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (43, 'Street Address 2', 'street-address-2', 'input', 9, 'no', 3, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (50, 'Seats', 'seats', 'number', 11, 'yes', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (51, 'Location', 'location', 'selectbox_link', 11, 'yes', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (54, 'Location', 'location', 'selectbox_link', 12, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (55, 'Days of Week', 'days-of-week', 'select', 12, 'yes', 9, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (56, 'Opens at', 'opens-at-start', 'field_group_start', 12, 'no', 1, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (81, 'Hours', 'hours-closes-at', 'select', 12, 'yes', 6, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (80, 'Minutes', 'minutes-opens-at', 'select', 12, 'yes', 3, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (79, 'Hours', 'hours-opens-at', 'select', 12, 'yes', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (61, 'Opens at', 'opens-at-end', 'field_group_end', 12, 'no', 4, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (62, 'Closes at', 'closes-at-start', 'field_group_start', 12, 'no', 5, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (63, 'Closes at', 'closes-at-end', 'field_group_end', 12, 'no', 8, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (64, 'Location', 'location', 'selectbox_link', 13, 'yes', 8, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (65, 'Opens at', 'opens-at-start', 'field_group_start', 13, 'no', 0, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (77, 'Hours', 'hours-closes-at', 'select', 13, 'yes', 5, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (71, 'Opens at', 'opens-at-end', 'field_group_end', 13, 'no', 3, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (68, 'Closes at', 'closes-at-start', 'field_group_start', 13, 'no', 4, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (70, 'Closes at', 'closes-at-end', 'field_group_end', 13, 'no', 7, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (76, 'Minutes', 'minutes-opens-at', 'select', 13, 'yes', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (75, 'Hours', 'hours-opens-at', 'select', 13, 'yes', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (74, 'Days of Week', 'days-of-week', 'select', 13, 'yes', 9, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (78, 'Minutes', 'minutes-closes-at', 'select', 13, 'yes', 6, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (82, 'Minutes', 'minutes-closes-at', 'select', 12, 'yes', 7, 'sidebar', 'yes');

-- *** DATA:`tbl_gpl_params` ***
INSERT INTO`tbl_gpl_params` (`id`, `set_id`, `param`, `value`, `type`, `sortorder`) VALUES (1, 1, 'this-weekday', 'return date(\"l\", time());', 'definition', 0);

-- *** DATA:`tbl_gpl_sets` ***
INSERT INTO`tbl_gpl_sets` (`id`, `name`, `params`, `exclude_page`) VALUES (1, 'Global Settings', 1, NULL);

-- *** DATA:`tbl_members_roles` ***
INSERT INTO`tbl_members_roles` (`id`, `name`, `handle`) VALUES (1, 'Public', 'public');
INSERT INTO`tbl_members_roles` (`id`, `name`, `handle`) VALUES (2, 'Restaurant Owner', 'restaurant-owner');

-- *** DATA:`tbl_members_roles_event_permissions` ***
INSERT INTO`tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (1, 2, 'register_user', 'edit', 0);

-- *** DATA:`tbl_members_roles_forbidden_pages` ***

-- *** DATA:`tbl_pages` ***
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (83, NULL, 'Style Guide', 'style-guide', NULL, NULL, NULL, NULL, 7);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (82, NULL, 'Your Peers', 'your-peers', NULL, NULL, 'jit_image_manipulation_recipes,navigation', NULL, 6);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (78, NULL, 'Register', 'register', NULL, NULL, 'navigation', 'register_user', 2);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (79, NULL, 'Booking', 'booking', NULL, NULL, 'jit_image_manipulation_recipes,restaurants,locations,peers,tables_for_location,lunch_hours_for_location,navigation', NULL, 3);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (80, NULL, 'Restaurants', 'restaurants', NULL, 'restaurant-id', 'navigation', NULL, 4);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (81, NULL, 'Admin', 'admin', NULL, NULL, NULL, NULL, 5);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (77, NULL, 'Home', 'home', NULL, NULL, 'jit_image_manipulation_recipes,previous_bookings,restaurants_for_previous_bookings,locations_for_previous_bookings,navigation', NULL, 1);

-- *** DATA:`tbl_pages_types` ***
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (681, 77, 'index');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (685, 82, 'navigation');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (686, 83, 'admin');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (683, 80, 'navigation');

-- *** DATA:`tbl_sections` ***
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (10, 'Bookings', 'bookings', 4, 'yes', 'no', 'Restaurants', 1, 1, '2018-06-02 14:30:29', '2018-06-02 13:30:29', '2018-06-03 12:29:21', '2018-06-03 11:29:21');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (9, 'Locations', 'locations', 3, 'no', 'no', 'Restaurants', 1, 1, '2018-06-02 13:36:36', '2018-06-02 12:36:36', '2018-06-03 12:25:43', '2018-06-03 11:25:43');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (8, 'Restaurants', 'restaurants', 2, 'no', 'no', 'Restaurants', 1, 1, '2018-06-02 12:56:30', '2018-06-02 11:56:30', '2018-06-03 12:16:49', '2018-06-03 11:16:49');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (7, 'Users', 'users', 1, 'no', 'no', 'Community', 1, 1, '2018-06-02 11:29:35', '2018-06-02 10:29:35', '2018-06-02 11:29:35', '2018-06-02 10:29:35');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (11, 'Tables', 'tables', 5, 'yes', 'no', 'Restaurants', 1, 1, '2018-06-03 12:16:20', '2018-06-03 11:16:20', '2018-06-03 12:29:07', '2018-06-03 11:29:07');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (12, 'Opening Hours', 'opening-hours', 6, 'yes', 'no', 'Restaurants', 1, 1, '2018-06-03 12:54:09', '2018-06-03 11:54:09', '2018-06-04 16:33:40', '2018-06-04 15:33:40');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`, `author_id`, `modification_author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (13, 'Lunch Hours', 'lunch-hours', 7, 'yes', 'no', 'Restaurants', 1, 1, '2018-06-03 18:08:29', '2018-06-03 17:08:29', '2018-06-04 16:18:06', '2018-06-04 15:18:06');

-- *** DATA:`tbl_sections_association` ***
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`, `interface`, `editor`) VALUES (59, 8, 27, 10, 38, 'yes', NULL, NULL);
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`, `interface`, `editor`) VALUES (44, 8, 27, 9, 36, 'no', NULL, NULL);
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`, `interface`, `editor`) VALUES (60, 9, 29, 10, 39, 'yes', NULL, NULL);
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`, `interface`, `editor`) VALUES (58, 7, 23, 10, 40, 'no', NULL, NULL);
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`, `interface`, `editor`) VALUES (57, 9, 29, 11, 51, 'no', NULL, NULL);
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`, `interface`, `editor`) VALUES (82, 9, 29, 12, 54, 'no', NULL, NULL);
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`, `interface`, `editor`) VALUES (79, 9, 29, 13, 64, 'no', NULL, NULL);
