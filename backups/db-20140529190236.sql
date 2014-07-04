SET FOREIGN_KEY_CHECKS = 0;

--
-- Table structure for table `api_keys`
--

CREATE TABLE `api_keys` (
  `id` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `api_keys`
--

INSERT INTO `api_keys` VALUES ('70da9f1e-e509-5767-2993-537b60d6d82c','KodiCMS API key','2014-05-20 14:02:48');



--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `group_name` varchar(128) NOT NULL,
  `config_key` varchar(128) NOT NULL,
  `config_value` text NOT NULL,
  PRIMARY KEY (`group_name`,`config_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config`
--

INSERT INTO `config` VALUES ('api','key','s:36:\"70da9f1e-e509-5767-2993-537b60d6d82c\";');
INSERT INTO `config` VALUES ('api','mode','s:2:\"no\";');
INSERT INTO `config` VALUES ('cache','front_page','i:86400;');
INSERT INTO `config` VALUES ('cache','page_parts','i:86400;');
INSERT INTO `config` VALUES ('cache','tags','i:86400;');
INSERT INTO `config` VALUES ('email','default','s:18:\"admin@yoursite.com\";');
INSERT INTO `config` VALUES ('email','driver','s:4:\"smtp\";');
INSERT INTO `config` VALUES ('email','options','a:5:{s:8:\"hostname\";s:0:\"\";s:4:\"port\";s:2:\"25\";s:8:\"username\";s:4:\"demo\";s:8:\"password\";s:8:\"demodemo\";s:10:\"encryption\";s:0:\"\";}');
INSERT INTO `config` VALUES ('email_queue','batch_size','i:50;');
INSERT INTO `config` VALUES ('email_queue','interval','i:120;');
INSERT INTO `config` VALUES ('email_queue','max_attempts','i:5;');
INSERT INTO `config` VALUES ('job','agent','s:1:\"0\";');
INSERT INTO `config` VALUES ('oauth','accounts','a:7:{s:2:\"vk\";a:2:{s:2:\"id\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:7:\"twitter\";a:2:{s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:8:\"facebook\";a:2:{s:2:\"id\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"yandex\";a:2:{s:2:\"id\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"google\";a:2:{s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"github\";a:2:{s:2:\"id\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"disqus\";a:2:{s:2:\"id\";s:0:\"\";s:6:\"secret\";s:0:\"\";}}');
INSERT INTO `config` VALUES ('oauth','register','i:0;');
INSERT INTO `config` VALUES ('page','check_date','s:2:\"no\";');
INSERT INTO `config` VALUES ('site','allow_html_title','s:2:\"no\";');
INSERT INTO `config` VALUES ('site','breadcrumbs','s:3:\"yes\";');
INSERT INTO `config` VALUES ('site','date_format','s:5:\"d F Y\";');
INSERT INTO `config` VALUES ('site','debug','s:2:\"no\";');
INSERT INTO `config` VALUES ('site','default_filter_id','s:8:\"redactor\";');
INSERT INTO `config` VALUES ('site','default_locale','s:5:\"ru-ru\";');
INSERT INTO `config` VALUES ('site','default_status_id','s:3:\"100\";');
INSERT INTO `config` VALUES ('site','default_tab','s:4:\"page\";');
INSERT INTO `config` VALUES ('site','description','s:0:\"\";');
INSERT INTO `config` VALUES ('site','find_similar','s:3:\"yes\";');
INSERT INTO `config` VALUES ('site','log_level','s:1:\"0\";');
INSERT INTO `config` VALUES ('site','profiling','s:2:\"no\";');
INSERT INTO `config` VALUES ('site','templates_revision','s:2:\"no\";');
INSERT INTO `config` VALUES ('site','title','s:7:\"KodiCMS\";');



--
-- Table structure for table `datasources`
--

CREATE TABLE `datasources` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(64) NOT NULL,
  `docs` int(6) unsigned NOT NULL DEFAULT '0',
  `indexed` int(1) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locks` int(3) unsigned NOT NULL DEFAULT '0',
  `code` text,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `docs` (`docs`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datasources`
--

INSERT INTO `datasources` VALUES ('1','hybrid','1','1','Datasource Header Test','Datasource Description Test','2014-05-23 00:09:56','2014-05-23 00:14:49','0','O:25:\"DataSource_Section_Hybrid\":12:{s:12:\"\0*\0_ds_table\";s:8:\"dshybrid\";s:8:\"\0*\0_type\";s:6:\"hybrid\";s:16:\"\0*\0_widget_types\";a:2:{i:0;s:15:\"hybrid_headline\";i:1;s:15:\"hybrid_document\";}s:19:\"search_index_fields\";a:1:{i:0;s:1:\"1\";}s:26:\"search_index_doc_id_fields\";a:0:{}s:18:\"search_intro_field\";s:1:\"1\";s:8:\"template\";N;s:6:\"\0*\0_id\";i:1;s:4:\"name\";s:22:\"Datasource Header Test\";s:11:\"description\";s:27:\"Datasource Description Test\";s:12:\"\0*\0_headline\";O:34:\"Datasource_Section_Hybrid_Headline\":3:{s:11:\"\0*\0_sorting\";a:1:{i:0;a:1:{s:10:\"created_on\";s:4:\"desc\";}}s:9:\"\0*\0_limit\";i:20;s:10:\"\0*\0_offset\";i:0;}s:23:\"\0*\0_document_class_name\";s:26:\"Datasource_Hybrid_Document\";}');
INSERT INTO `datasources` VALUES ('2','hybrid','0','0','Hybrid Datasource','','2014-05-23 00:16:38','2014-05-23 00:16:56','0','O:25:\"DataSource_Section_Hybrid\":12:{s:12:\"\0*\0_ds_table\";s:8:\"dshybrid\";s:8:\"\0*\0_type\";s:6:\"hybrid\";s:16:\"\0*\0_widget_types\";a:2:{i:0;s:15:\"hybrid_headline\";i:1;s:15:\"hybrid_document\";}s:19:\"search_index_fields\";a:0:{}s:26:\"search_index_doc_id_fields\";a:0:{}s:18:\"search_intro_field\";N;s:8:\"template\";N;s:6:\"\0*\0_id\";i:2;s:4:\"name\";s:17:\"Hybrid Datasource\";s:11:\"description\";s:0:\"\";s:12:\"\0*\0_headline\";O:34:\"Datasource_Section_Hybrid_Headline\":3:{s:11:\"\0*\0_sorting\";a:3:{i:0;a:1:{s:10:\"created_on\";s:4:\"desc\";}i:1;a:1:{s:6:\"header\";s:3:\"ASC\";}i:2;a:1:{s:2:\"id\";s:3:\"ASC\";}}s:9:\"\0*\0_limit\";i:20;s:10:\"\0*\0_offset\";i:0;}s:23:\"\0*\0_document_class_name\";s:26:\"Datasource_Hybrid_Document\";}');



--
-- Table structure for table `dshfields`
--

CREATE TABLE `dshfields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ds_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `family` varchar(32) NOT NULL,
  `type` varchar(32) NOT NULL DEFAULT '',
  `header` varchar(255) NOT NULL DEFAULT '',
  `from_ds` int(11) unsigned DEFAULT '0',
  `props` text NOT NULL,
  `position` int(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ds_id` (`ds_id`),
  KEY `family` (`family`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dshfields`
--

INSERT INTO `dshfields` VALUES ('1','1','f_datasource_field_header_test','source','source_user','Datasource Field Header Test','0','a:6:{s:7:\"default\";N;s:5:\"isreq\";b:0;s:12:\"only_current\";b:0;s:4:\"hint\";s:0:\"\";s:11:\"in_headline\";b:1;s:6:\"commit\";s:0:\"\";}','500');



--
-- Table structure for table `dshybrid`
--

CREATE TABLE `dshybrid` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ds_id` int(11) unsigned NOT NULL DEFAULT '0',
  `published` int(1) unsigned DEFAULT '0',
  `header` varchar(255) NOT NULL DEFAULT '',
  `meta_title` varchar(255) NOT NULL DEFAULT '',
  `meta_keywords` varchar(255) NOT NULL DEFAULT '',
  `meta_description` text NOT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `ds_id` (`ds_id`,`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dshybrid`
--

INSERT INTO `dshybrid` VALUES ('1','1','1','Datasource Header Document Test','','','','2014-05-23 00:12:26','2014-05-23 00:18:40');
INSERT INTO `dshybrid` VALUES ('2','2','1','Hybrid Document','','','','2014-05-23 00:17:14','2014-05-23 00:17:26');



--
-- Table structure for table `dshybrid_1`
--

CREATE TABLE `dshybrid_1` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `f_datasource_field_header_test` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dshybrid_1`
--

INSERT INTO `dshybrid_1` VALUES ('1','1');



--
-- Table structure for table `dshybrid_2`
--

CREATE TABLE `dshybrid_2` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dshybrid_2`
--

INSERT INTO `dshybrid_2` VALUES ('2');



--
-- Table structure for table `email_queue_bodies`
--

CREATE TABLE `email_queue_bodies` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `queue_id` int(11) unsigned NOT NULL,
  `body` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `queue_id` (`queue_id`),
  CONSTRAINT `email_queue_bodies_ibfk_1` FOREIGN KEY (`queue_id`) REFERENCES `email_queues` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_queue_bodies`
--




--
-- Table structure for table `email_queues`
--

CREATE TABLE `email_queues` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `state` enum('pending','sent','failed') NOT NULL DEFAULT 'pending',
  `sender_name` varchar(128) DEFAULT NULL,
  `sender_email` varchar(320) NOT NULL,
  `recipient_name` varchar(128) DEFAULT NULL,
  `recipient_email` varchar(320) NOT NULL,
  `subject` varchar(78) DEFAULT NULL,
  `priority` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Higher priority is a larger number. Priority 5 is higher than priority 1.',
  `attempts` smallint(5) unsigned NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_queues`
--




--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_on` datetime DEFAULT NULL,
  `email_type` int(5) unsigned NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `use_queue` tinyint(1) NOT NULL DEFAULT '0',
  `email_from` varchar(255) NOT NULL DEFAULT '',
  `email_to` varchar(255) NOT NULL DEFAULT '',
  `subject` varchar(255) DEFAULT NULL,
  `message` text,
  `message_type` varchar(5) NOT NULL DEFAULT 'html',
  `bcc` text,
  `reply_to` varchar(255) DEFAULT NULL,
  `cc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email_template_type` (`email_type`),
  CONSTRAINT `email_templates_ibfk_1` FOREIGN KEY (`email_type`) REFERENCES `email_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` VALUES ('1','2013-12-14 01:45:09','1','1','0','{default_email}','{email}','{site_title}: Ссылка для восстановления пароля','<h3>Здраствуйте {username}!</h3>Чтобы восстановить &nbsp;пароль от своего аккаунта, пройдите, пожалуйста, по ссылке:  <a href=\"{base_url}{reflink}\">{base_url}{reflink}</a>&nbsp;или введите код&nbsp;<b>{code}</b> вручную на странице восстановления.<p>----------------------------------------</p><p>Данное письмо сгенерировано автоматически, отвечать на него не нужно.<span style=\"line-height: 1.45em;\"></span></p>\n','html','','','');
INSERT INTO `email_templates` VALUES ('2','2013-12-14 15:00:31','3','1','0','{email_from}','{email}','{site_title}: Новый пароль от вашего аккаунта','<h3>Здраствуйте {username}!</h3>Ваш новый пароль:&nbsp;<b>{password}</b><p></p><p>Всегда храните свой пароль в тайне и&nbsp;не сообщайте его никому.<br></p><p>----------------------------------------</p><p><p>Данное письмо сгенерировано автоматически, отвечать на него не нужно.</p></p><p></p>','html','','','');



--
-- Table structure for table `email_types`
--

CREATE TABLE `email_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(100) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_type_Code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_types`
--

INSERT INTO `email_types` VALUES ('1','user_request_password','Запрос на восстановление пароля','a:4:{s:4:\"code\";s:48:\"Код восстановления пароля\";s:8:\"username\";s:31:\"Имя пользователя\";s:5:\"email\";s:30:\"Email пользователя\";s:7:\"reflink\";s:61:\"Ссылка для восстановления пароля\";}');
INSERT INTO `email_types` VALUES ('3','user_new_password','Новый пароль','a:3:{s:8:\"password\";s:23:\"Новый пароль\";s:5:\"email\";s:30:\"Email пользователя\";s:8:\"username\";s:31:\"Имя пользователя\";}');
INSERT INTO `email_types` VALUES ('4','sadasd','xsdsadd','a:1:{s:4:\"dasd\";s:7:\"5434534\";}');



--
-- Table structure for table `hybrid_tags`
--

CREATE TABLE `hybrid_tags` (
  `field_id` int(11) unsigned NOT NULL,
  `doc_id` int(11) NOT NULL,
  `tag_id` int(11) unsigned NOT NULL,
  KEY `tag_id` (`tag_id`),
  KEY `field_id` (`field_id`,`doc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hybrid_tags`
--




--
-- Table structure for table `job_logs`
--

CREATE TABLE `job_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` int(11) unsigned NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `status` varchar(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `job_id` (`job_id`),
  CONSTRAINT `job_logs_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job_logs`
--

INSERT INTO `job_logs` VALUES ('1','1','2014-05-27 12:36:58','2014-05-27 12:36:59','-1');
INSERT INTO `job_logs` VALUES ('2','1','2014-05-27 14:04:00','2014-05-27 14:04:00','-1');
INSERT INTO `job_logs` VALUES ('3','1','2014-05-27 15:37:24','2014-05-27 15:37:24','-1');
INSERT INTO `job_logs` VALUES ('4','1','2014-05-27 17:07:42','2014-05-27 17:07:42','-1');
INSERT INTO `job_logs` VALUES ('5','1','2014-05-27 18:17:57','2014-05-27 18:17:57','-1');
INSERT INTO `job_logs` VALUES ('6','1','2014-05-27 19:33:54','2014-05-27 19:33:54','-1');



--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `date_last_run` datetime NOT NULL,
  `date_next_run` datetime NOT NULL,
  `interval` int(11) NOT NULL,
  `crontime` varchar(100) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `attempts` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date_next_run` (`date_next_run`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` VALUES ('1','test jobb','search:reindex','2014-05-27 06:12:17','2014-05-27 12:13:00','2024-05-27 06:11:29','2014-05-27 19:33:54','2014-05-27 20:33:54','3600','','-1','6');



--
-- Table structure for table `layout_blocks`
--

CREATE TABLE `layout_blocks` (
  `layout_name` varchar(100) NOT NULL,
  `block` varchar(100) NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`layout_name`,`block`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `layout_blocks`
--

INSERT INTO `layout_blocks` VALUES ('none','body','0');
INSERT INTO `layout_blocks` VALUES ('normal','body','2');
INSERT INTO `layout_blocks` VALUES ('normal','extended','4');
INSERT INTO `layout_blocks` VALUES ('normal','footer','7');
INSERT INTO `layout_blocks` VALUES ('normal','header','0');
INSERT INTO `layout_blocks` VALUES ('normal','pagination','3');
INSERT INTO `layout_blocks` VALUES ('normal','recent','6');
INSERT INTO `layout_blocks` VALUES ('normal','sidebar','5');
INSERT INTO `layout_blocks` VALUES ('normal','top_banner','1');
INSERT INTO `layout_blocks` VALUES ('normal1','body','3');
INSERT INTO `layout_blocks` VALUES ('normal1','bradcrumbs','1');
INSERT INTO `layout_blocks` VALUES ('normal1','extended','5');
INSERT INTO `layout_blocks` VALUES ('normal1','footer','8');
INSERT INTO `layout_blocks` VALUES ('normal1','header','0');
INSERT INTO `layout_blocks` VALUES ('normal1','pagination','4');
INSERT INTO `layout_blocks` VALUES ('normal1','recent','7');
INSERT INTO `layout_blocks` VALUES ('normal1','sidebar','6');
INSERT INTO `layout_blocks` VALUES ('normal1','top_banner','2');
INSERT INTO `layout_blocks` VALUES ('rss','body','0');



--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created_on` datetime NOT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `level` tinytext NOT NULL,
  `message` text NOT NULL,
  `additional` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` VALUES ('1','2014-05-20 14:02:52','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('2','2014-05-20 14:20:08','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"122.168.209.108\"}');
INSERT INTO `logs` VALUES ('3','2014-05-20 14:20:08','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"122.168.209.108\"}');
INSERT INTO `logs` VALUES ('4','2014-05-20 14:20:16','1','6','Snippet 2321321312312312312 has been deleted by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/snippet\\/delete\\/2321321312312312312\",\":ip\":\"122.168.209.108\"}');
INSERT INTO `logs` VALUES ('5','2014-05-20 15:29:48','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"91.144.150.202\"}');
INSERT INTO `logs` VALUES ('6','2014-05-20 15:29:48','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"91.144.150.202\"}');
INSERT INTO `logs` VALUES ('7','2014-05-20 15:30:04','1','6','Layout normal has been edited by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/layout\\/edit\\/normal\",\":ip\":\"91.144.150.202\"}');
INSERT INTO `logs` VALUES ('8','2014-05-20 15:33:39','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"91.144.150.202\"}');
INSERT INTO `logs` VALUES ('9','2014-05-21 00:01:31','0','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/underscore-min.map\",\":ip\":\"194.28.142.121\"}');
INSERT INTO `logs` VALUES ('10','2014-05-21 00:01:31','0','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/backbone-min.map\",\":ip\":\"194.28.142.121\"}');
INSERT INTO `logs` VALUES ('11','2014-05-21 00:03:14','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"194.28.142.121\"}');
INSERT INTO `logs` VALUES ('12','2014-05-21 00:03:14','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"194.28.142.121\"}');
INSERT INTO `logs` VALUES ('13','2014-05-21 06:35:43','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"188.162.39.196\"}');
INSERT INTO `logs` VALUES ('14','2014-05-21 06:35:43','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"188.162.39.196\"}');
INSERT INTO `logs` VALUES ('15','2014-05-21 06:36:00','1','0','HTTP_Exception_110 [ 110 ]: Missing param pid ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/api\\/page-parts\",\":ip\":\"188.162.39.196\"}');
INSERT INTO `logs` VALUES ('16','2014-05-21 13:19:09','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"93.79.246.210\"}');
INSERT INTO `logs` VALUES ('17','2014-05-21 13:19:09','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"93.79.246.210\"}');
INSERT INTO `logs` VALUES ('18','2014-05-21 13:19:27','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"93.79.246.210\"}');
INSERT INTO `logs` VALUES ('19','2014-05-21 16:22:56','0','0','HTTP_Exception_404 [ 404 ]: The requested URL backend/part/revision/3 was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\\/part\\/revision\\/3\",\":ip\":\"178.92.80.102\"}');
INSERT INTO `logs` VALUES ('20','2014-05-21 16:23:38','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"178.92.80.102\"}');
INSERT INTO `logs` VALUES ('21','2014-05-21 16:23:38','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"178.92.80.102\"}');
INSERT INTO `logs` VALUES ('22','2014-05-21 16:24:12','1','6','<a href=\"/backend/users/profile/1\">@demo</a> activate plugin Revision of parts','{\":url\":\"\\/api-plugins\\/part_revision\",\":ip\":\"178.92.80.102\"}');
INSERT INTO `logs` VALUES ('23','2014-05-21 16:25:15','1','6','Page 3 edited by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/edit\\/3\",\":ip\":\"178.92.80.102\"}');
INSERT INTO `logs` VALUES ('24','2014-05-21 16:25:16','1','6','Page 3 added by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/edit\\/3\",\":ip\":\"178.92.80.102\"}');
INSERT INTO `logs` VALUES ('25','2014-05-21 16:26:44','1','6','Page 3 edited by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/edit\\/3\",\":ip\":\"178.92.80.102\"}');
INSERT INTO `logs` VALUES ('26','2014-05-21 16:26:44','1','6','Page 3 added by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/edit\\/3\",\":ip\":\"178.92.80.102\"}');
INSERT INTO `logs` VALUES ('27','2014-05-21 16:27:18','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/js\\/controller\\/part_revision.js\",\":ip\":\"178.92.80.102\"}');
INSERT INTO `logs` VALUES ('28','2014-05-21 16:27:57','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/js\\/controller\\/part_revision.js\",\":ip\":\"178.92.80.102\"}');
INSERT INTO `logs` VALUES ('29','2014-05-21 19:47:12','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"188.242.56.117\"}');
INSERT INTO `logs` VALUES ('30','2014-05-21 19:47:12','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"188.242.56.117\"}');
INSERT INTO `logs` VALUES ('31','2014-05-22 03:15:55','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"31.163.203.56\"}');
INSERT INTO `logs` VALUES ('32','2014-05-22 03:15:55','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"31.163.203.56\"}');
INSERT INTO `logs` VALUES ('33','2014-05-22 03:16:27','1','0','HTTP_Exception_110 [ 110 ]: Missing param pid ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/api\\/page-parts\",\":ip\":\"31.163.203.56\"}');
INSERT INTO `logs` VALUES ('34','2014-05-22 03:16:33','1','0','HTTP_Exception_110 [ 110 ]: Missing param pid ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/api\\/page-parts\",\":ip\":\"31.163.203.56\"}');
INSERT INTO `logs` VALUES ('35','2014-05-22 03:18:37','1','6','Page 1 edited by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/edit\\/1\",\":ip\":\"31.163.203.56\"}');
INSERT INTO `logs` VALUES ('36','2014-05-22 03:18:38','1','6','Page 1 added by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/edit\\/1\",\":ip\":\"31.163.203.56\"}');
INSERT INTO `logs` VALUES ('37','2014-05-22 07:37:13','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"194.28.142.121\"}');
INSERT INTO `logs` VALUES ('38','2014-05-22 07:37:13','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"194.28.142.121\"}');
INSERT INTO `logs` VALUES ('39','2014-05-22 10:21:27','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"31.163.203.56\"}');
INSERT INTO `logs` VALUES ('40','2014-05-22 10:21:27','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"31.163.203.56\"}');
INSERT INTO `logs` VALUES ('41','2014-05-22 12:22:20','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.239.162.164\"}');
INSERT INTO `logs` VALUES ('42','2014-05-22 12:22:20','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.239.162.164\"}');
INSERT INTO `logs` VALUES ('43','2014-05-22 13:19:16','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"194.28.142.121\"}');
INSERT INTO `logs` VALUES ('44','2014-05-22 13:19:16','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"194.28.142.121\"}');
INSERT INTO `logs` VALUES ('45','2014-05-22 14:15:00','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"194.8.147.42\"}');
INSERT INTO `logs` VALUES ('46','2014-05-22 14:15:00','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"194.8.147.42\"}');
INSERT INTO `logs` VALUES ('47','2014-05-22 16:37:35','0','0','ErrorException [ 1 ]: Call to a member function gravatar() on a non-object ~ MODPATH/kodicms/views/system/blocks/navigation.php [ 65 ]','{\"exception\":{},\":url\":\"\\/backend\\/widgets\\/template\\/12\",\":ip\":\"208.115.111.66\"}');
INSERT INTO `logs` VALUES ('48','2014-05-22 16:53:37','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"92.54.83.210\"}');
INSERT INTO `logs` VALUES ('49','2014-05-22 16:53:37','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"92.54.83.210\"}');
INSERT INTO `logs` VALUES ('50','2014-05-22 16:55:43','1','6','<a href=\"/backend/users/profile/1\">@demo</a> activate plugin Типограф Муравьёва 3.0','{\":url\":\"\\/api-plugins\\/typograf\",\":ip\":\"92.54.83.210\"}');
INSERT INTO `logs` VALUES ('51','2014-05-22 16:55:49','1','6','<a href=\"/backend/users/profile/1\">@demo</a> deactivate plugin Типограф Муравьёва 3.0','{\":url\":\"\\/api-plugins\\/typograf\",\":ip\":\"92.54.83.210\"}');
INSERT INTO `logs` VALUES ('52','2014-05-22 16:55:51','1','6','<a href=\"/backend/users/profile/1\">@demo</a> activate plugin Типограф Муравьёва 3.0','{\":url\":\"\\/api-plugins\\/typograf\",\":ip\":\"92.54.83.210\"}');
INSERT INTO `logs` VALUES ('53','2014-05-22 16:56:17','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"92.54.83.210\"}');
INSERT INTO `logs` VALUES ('54','2014-05-22 16:57:17','1','6','Page 9 edited by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/edit\\/9\",\":ip\":\"92.54.83.210\"}');
INSERT INTO `logs` VALUES ('55','2014-05-22 16:57:17','1','6','Page 9 added by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/edit\\/9\",\":ip\":\"92.54.83.210\"}');
INSERT INTO `logs` VALUES ('56','2014-05-22 16:57:19','1','6','Page 9 edited by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/edit\\/9\",\":ip\":\"92.54.83.210\"}');
INSERT INTO `logs` VALUES ('57','2014-05-22 16:57:19','1','6','Page 9 added by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/edit\\/9\",\":ip\":\"92.54.83.210\"}');
INSERT INTO `logs` VALUES ('58','2014-05-22 16:58:26','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"92.54.83.210\"}');
INSERT INTO `logs` VALUES ('59','2014-05-22 16:58:51','1','6','Email type :type has been added by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/email\\/types\\/add\",\":ip\":\"92.54.83.210\"}');
INSERT INTO `logs` VALUES ('60','2014-05-22 18:34:40','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"37.213.249.20\"}');
INSERT INTO `logs` VALUES ('61','2014-05-22 18:34:40','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"37.213.249.20\"}');
INSERT INTO `logs` VALUES ('62','2014-05-22 22:04:54','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"194.28.142.121\"}');
INSERT INTO `logs` VALUES ('63','2014-05-22 22:04:54','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"194.28.142.121\"}');
INSERT INTO `logs` VALUES ('64','2014-05-22 22:04:58','1','6','<a href=\"/backend/users/profile/1\">@demo</a> clear cache','{\":url\":\"\\/api-cache.clear\",\":ip\":\"194.28.142.121\"}');
INSERT INTO `logs` VALUES ('65','2014-05-23 00:05:22','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"142.32.208.235\"}');
INSERT INTO `logs` VALUES ('66','2014-05-23 00:05:22','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"142.32.208.235\"}');
INSERT INTO `logs` VALUES ('67','2014-05-23 00:08:09','1','6','<a href=\"/backend/users/profile/1\">@demo</a> activate plugin Hybrid Datasource','{\":url\":\"\\/api-plugins\\/hybrid\",\":ip\":\"142.32.208.235\"}');
INSERT INTO `logs` VALUES ('68','2014-05-23 00:09:17','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"142.32.208.235\"}');
INSERT INTO `logs` VALUES ('69','2014-05-23 00:09:17','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"142.32.208.235\"}');
INSERT INTO `logs` VALUES ('70','2014-05-23 00:12:36','1','0','HTTP_Exception_110 [ 110 ]: Missing param pid ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/api\\/page-parts\",\":ip\":\"142.32.208.235\"}');
INSERT INTO `logs` VALUES ('71','2014-05-23 00:12:52','1','6','Page 13 added by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/add\\/1\",\":ip\":\"142.32.208.235\"}');
INSERT INTO `logs` VALUES ('72','2014-05-23 00:18:04','1','6','Page 13 edited by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/edit\\/13\",\":ip\":\"142.32.208.235\"}');
INSERT INTO `logs` VALUES ('73','2014-05-23 00:18:04','1','6','Page 13 added by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/edit\\/13\",\":ip\":\"142.32.208.235\"}');
INSERT INTO `logs` VALUES ('74','2014-05-23 00:29:10','1','0','HTTP_Exception_110 [ 110 ]: Missing param pid ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/api\\/page-parts\",\":ip\":\"142.32.208.235\"}');
INSERT INTO `logs` VALUES ('75','2014-05-23 00:29:27','1','6','Page 14 added by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/add\\/13\",\":ip\":\"142.32.208.235\"}');
INSERT INTO `logs` VALUES ('76','2014-05-23 00:30:49','1','6','Page 14 edited by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/edit\\/14\",\":ip\":\"142.32.208.235\"}');
INSERT INTO `logs` VALUES ('77','2014-05-23 00:30:49','1','6','Page 14 added by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/edit\\/14\",\":ip\":\"142.32.208.235\"}');
INSERT INTO `logs` VALUES ('78','2014-05-23 00:30:52','1','6','Page 14 edited by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/edit\\/14\",\":ip\":\"142.32.208.235\"}');
INSERT INTO `logs` VALUES ('79','2014-05-23 00:30:52','1','6','Page 14 added by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/edit\\/14\",\":ip\":\"142.32.208.235\"}');
INSERT INTO `logs` VALUES ('80','2014-05-23 00:31:31','1','6','Page 13 edited by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/edit\\/13\",\":ip\":\"142.32.208.235\"}');
INSERT INTO `logs` VALUES ('81','2014-05-23 00:31:31','1','6','Page 13 added by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/edit\\/13\",\":ip\":\"142.32.208.235\"}');
INSERT INTO `logs` VALUES ('82','2014-05-23 08:43:06','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"31.163.203.56\"}');
INSERT INTO `logs` VALUES ('83','2014-05-23 08:43:06','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"31.163.203.56\"}');
INSERT INTO `logs` VALUES ('84','2014-05-23 08:43:54','1','0','HTTP_Exception_110 [ 110 ]: Missing param pid ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/api\\/page-parts\",\":ip\":\"31.163.203.56\"}');
INSERT INTO `logs` VALUES ('85','2014-05-23 08:43:57','1','6','Page 15 added by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/add\\/12\",\":ip\":\"31.163.203.56\"}');
INSERT INTO `logs` VALUES ('86','2014-05-23 11:55:09','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"194.28.142.121\"}');
INSERT INTO `logs` VALUES ('87','2014-05-23 11:55:09','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"194.28.142.121\"}');
INSERT INTO `logs` VALUES ('88','2014-05-23 12:43:35','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"78.223.119.247\"}');
INSERT INTO `logs` VALUES ('89','2014-05-23 12:43:35','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"78.223.119.247\"}');
INSERT INTO `logs` VALUES ('90','2014-05-23 18:06:13','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"89.79.102.200\"}');
INSERT INTO `logs` VALUES ('91','2014-05-23 18:06:13','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"89.79.102.200\"}');
INSERT INTO `logs` VALUES ('92','2014-05-23 18:07:08','1','6','<a href=\"/backend/users/profile/1\">@demo</a> activate plugin Backup DB','{\":url\":\"\\/api-plugins\\/backup\",\":ip\":\"89.79.102.200\"}');
INSERT INTO `logs` VALUES ('93','2014-05-23 18:07:46','1','0','ErrorException [ 2 ]: ZipArchive::extractTo(/var/www/demo.kodicms//public/index.html): failed to open stream: Отказано в доступе ~ DOCROOT/cms/plugins/backup/classes/model/backup/filesystem.php [ 118 ]','{\"exception\":{},\":url\":\"\\/backend\\/backup\\/restore\\/filesystem-20140408123032.zip\",\":ip\":\"89.79.102.200\"}');
INSERT INTO `logs` VALUES ('94','2014-05-23 20:24:08','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"85.26.186.104\"}');
INSERT INTO `logs` VALUES ('95','2014-05-23 20:24:08','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"85.26.186.104\"}');
INSERT INTO `logs` VALUES ('96','2014-05-23 20:24:14','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"85.26.186.104\"}');
INSERT INTO `logs` VALUES ('97','2014-05-23 21:38:17','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"187.108.112.106\"}');
INSERT INTO `logs` VALUES ('98','2014-05-23 21:38:17','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"187.108.112.106\"}');
INSERT INTO `logs` VALUES ('99','2014-05-23 21:42:25','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"194.28.142.121\"}');
INSERT INTO `logs` VALUES ('100','2014-05-23 21:42:25','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"194.28.142.121\"}');
INSERT INTO `logs` VALUES ('101','2014-05-23 21:48:36','1','6','<a href=\"/backend/users/profile/1\">@demo</a> deactivate plugin Типограф Муравьёва 3.0','{\":url\":\"\\/api-plugins\\/typograf\",\":ip\":\"187.108.112.106\"}');
INSERT INTO `logs` VALUES ('102','2014-05-23 21:48:42','1','6','<a href=\"/backend/users/profile/1\">@demo</a> deactivate plugin Revision of parts','{\":url\":\"\\/api-plugins\\/part_revision\",\":ip\":\"187.108.112.106\"}');
INSERT INTO `logs` VALUES ('103','2014-05-23 21:48:45','1','6','<a href=\"/backend/users/profile/1\">@demo</a> deactivate plugin Hybrid Datasource','{\":url\":\"\\/api-plugins\\/hybrid\",\":ip\":\"187.108.112.106\"}');
INSERT INTO `logs` VALUES ('104','2014-05-23 21:48:56','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"187.108.112.106\"}');
INSERT INTO `logs` VALUES ('105','2014-05-23 22:52:28','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.95.53.249\"}');
INSERT INTO `logs` VALUES ('106','2014-05-23 22:52:28','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.95.53.249\"}');
INSERT INTO `logs` VALUES ('107','2014-05-23 22:53:22','1','6','<a href=\"/backend/users/profile/1\">@demo</a> activate plugin Disqus','{\":url\":\"\\/api-plugins\\/disqus\",\":ip\":\"77.95.53.249\"}');
INSERT INTO `logs` VALUES ('108','2014-05-23 22:53:25','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change settings for plugin Disqus ','{\":url\":\"\\/backend\\/plugins\\/settings\\/disqus\",\":ip\":\"77.95.53.249\"}');
INSERT INTO `logs` VALUES ('109','2014-05-23 22:53:28','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change settings for plugin Disqus ','{\":url\":\"\\/backend\\/plugins\\/settings\\/disqus\",\":ip\":\"77.95.53.249\"}');
INSERT INTO `logs` VALUES ('110','2014-05-23 22:53:30','1','0','HTTP_Exception_404 [ 404 ]: Behavior hybrid_docs not found! ~ MODPATH/behavior/classes/behavior.php [ 25 ]','{\"exception\":{},\":url\":\"\\/hybrid-test\",\":ip\":\"77.95.53.249\"}');
INSERT INTO `logs` VALUES ('111','2014-05-24 19:26:02','0','0','HTTP_Exception_404 [ 404 ]: Behavior hybrid_docs not found! ~ MODPATH/behavior/classes/behavior.php [ 25 ]','{\"exception\":{},\":url\":\"\\/hybrid-test\",\":ip\":\"92.101.233.92\"}');
INSERT INTO `logs` VALUES ('112','2014-05-24 21:25:45','0','0','HTTP_Exception_404 [ 404 ]: Behavior hybrid_docs not found! ~ MODPATH/behavior/classes/behavior.php [ 25 ]','{\"exception\":{},\":url\":\"\\/hybrid-header\",\":ip\":\"66.249.64.58\"}');
INSERT INTO `logs` VALUES ('113','2014-05-25 07:23:41','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"95.179.43.218\"}');
INSERT INTO `logs` VALUES ('114','2014-05-25 07:23:41','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"95.179.43.218\"}');
INSERT INTO `logs` VALUES ('115','2014-05-25 07:57:59','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.66.227.124\"}');
INSERT INTO `logs` VALUES ('116','2014-05-25 07:57:59','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.66.227.124\"}');
INSERT INTO `logs` VALUES ('117','2014-05-25 07:58:44','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"77.66.227.124\"}');
INSERT INTO `logs` VALUES ('118','2014-05-25 16:42:33','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"37.0.50.100\"}');
INSERT INTO `logs` VALUES ('119','2014-05-25 16:42:33','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"37.0.50.100\"}');
INSERT INTO `logs` VALUES ('120','2014-05-25 17:17:30','0','0','HTTP_Exception_404 [ 404 ]: Behavior hybrid_docs not found! ~ MODPATH/behavior/classes/behavior.php [ 25 ]','{\"exception\":{},\":url\":\"\\/hybred-documents-type\",\":ip\":\"37.58.100.229\"}');
INSERT INTO `logs` VALUES ('121','2014-05-25 18:03:51','0','0','HTTP_Exception_404 [ 404 ]: Behavior hybrid_docs not found! ~ MODPATH/behavior/classes/behavior.php [ 25 ]','{\"exception\":{},\":url\":\"\\/hybrid-test\",\":ip\":\"86.185.251.60\"}');
INSERT INTO `logs` VALUES ('122','2014-05-25 22:29:38','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"178.216.165.11\"}');
INSERT INTO `logs` VALUES ('123','2014-05-25 22:29:38','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"178.216.165.11\"}');
INSERT INTO `logs` VALUES ('124','2014-05-25 22:31:55','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"178.216.165.11\"}');
INSERT INTO `logs` VALUES ('125','2014-05-25 22:31:56','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"178.216.165.11\"}');
INSERT INTO `logs` VALUES ('126','2014-05-26 07:50:13','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"91.144.150.202\"}');
INSERT INTO `logs` VALUES ('127','2014-05-26 07:50:14','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"91.144.150.202\"}');
INSERT INTO `logs` VALUES ('128','2014-05-26 07:55:07','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/underscore-min.map\",\":ip\":\"91.144.150.202\"}');
INSERT INTO `logs` VALUES ('129','2014-05-26 07:55:07','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/backbone-min.map\",\":ip\":\"91.144.150.202\"}');
INSERT INTO `logs` VALUES ('130','2014-05-26 07:55:22','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/backbone-min.map\",\":ip\":\"91.144.150.202\"}');
INSERT INTO `logs` VALUES ('131','2014-05-26 07:55:22','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/underscore-min.map\",\":ip\":\"91.144.150.202\"}');
INSERT INTO `logs` VALUES ('132','2014-05-26 07:55:35','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/underscore-min.map\",\":ip\":\"91.144.150.202\"}');
INSERT INTO `logs` VALUES ('133','2014-05-26 07:55:35','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/backbone-min.map\",\":ip\":\"91.144.150.202\"}');
INSERT INTO `logs` VALUES ('134','2014-05-26 14:47:26','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"179.219.57.69\"}');
INSERT INTO `logs` VALUES ('135','2014-05-26 14:47:26','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"179.219.57.69\"}');
INSERT INTO `logs` VALUES ('136','2014-05-26 14:48:16','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"177.19.178.70\"}');
INSERT INTO `logs` VALUES ('137','2014-05-26 14:48:31','1','0','HTTP_Exception_110 [ 110 ]: Missing param pid ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/api\\/page-parts\",\":ip\":\"179.219.57.69\"}');
INSERT INTO `logs` VALUES ('138','2014-05-26 14:48:58','1','0','HTTP_Exception_404 [ 404 ]: Behavior hybrid_docs not found! ~ MODPATH/behavior/classes/behavior.php [ 25 ]','{\"exception\":{},\":url\":\"\\/hybrid-test\",\":ip\":\"179.219.57.69\"}');
INSERT INTO `logs` VALUES ('139','2014-05-26 14:49:22','1','0','HTTP_Exception_110 [ 110 ]: Missing param pid ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/api\\/page-parts\",\":ip\":\"179.219.57.69\"}');
INSERT INTO `logs` VALUES ('140','2014-05-26 14:49:30','1','6','Page 16 added by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/add\\/5\",\":ip\":\"179.219.57.69\"}');
INSERT INTO `logs` VALUES ('141','2014-05-26 15:48:34','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"95.105.3.245\"}');
INSERT INTO `logs` VALUES ('142','2014-05-26 15:48:34','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"95.105.3.245\"}');
INSERT INTO `logs` VALUES ('143','2014-05-26 18:27:15','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"84.1.121.224\"}');
INSERT INTO `logs` VALUES ('144','2014-05-26 18:27:15','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"84.1.121.224\"}');
INSERT INTO `logs` VALUES ('145','2014-05-26 18:28:11','1','0','HTTP_Exception_110 [ 110 ]: Missing param pid ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/api\\/page-parts\",\":ip\":\"84.1.121.224\"}');
INSERT INTO `logs` VALUES ('146','2014-05-26 18:29:27','1','0','HTTP_Exception_404 [ 404 ]: Behavior hybrid_docs not found! ~ MODPATH/behavior/classes/behavior.php [ 25 ]','{\"exception\":{},\":url\":\"\\/hybrid-test\",\":ip\":\"84.1.121.224\"}');
INSERT INTO `logs` VALUES ('147','2014-05-26 18:56:04','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"188.242.56.117\"}');
INSERT INTO `logs` VALUES ('148','2014-05-26 18:56:04','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"188.242.56.117\"}');
INSERT INTO `logs` VALUES ('149','2014-05-26 20:01:51','0','0','ErrorException [ 2 ]: unserialize(): Function spl_autoload_call() hasn\'t defined the class it was called for ~ MODPATH/datasource/classes/datasource/section.php [ 53 ]','{\"exception\":{},\":url\":\"\\/backend\\/datasources\",\":ip\":\"157.56.93.72\"}');
INSERT INTO `logs` VALUES ('150','2014-05-26 20:08:44','0','0','ErrorException [ 2 ]: unserialize(): Function spl_autoload_call() hasn\'t defined the class it was called for ~ MODPATH/datasource/classes/datasource/section.php [ 53 ]','{\"exception\":{},\":url\":\"\\/backend\\/datasources\",\":ip\":\"157.56.93.72\"}');
INSERT INTO `logs` VALUES ('151','2014-05-26 20:09:48','0','0','HTTP_Exception_404 [ 404 ]: Behavior hybrid_docs not found! ~ MODPATH/behavior/classes/behavior.php [ 25 ]','{\"exception\":{},\":url\":\"\\/hybrid-test\",\":ip\":\"157.55.33.78\"}');
INSERT INTO `logs` VALUES ('152','2014-05-26 20:13:10','0','0','HTTP_Exception_404 [ 404 ]: Behavior hybrid_docs not found! ~ MODPATH/behavior/classes/behavior.php [ 25 ]','{\"exception\":{},\":url\":\"\\/hybred-documents-type\",\":ip\":\"157.55.35.90\"}');
INSERT INTO `logs` VALUES ('153','2014-05-26 21:13:04','0','0','ErrorException [ 2 ]: unserialize(): Function spl_autoload_call() hasn\'t defined the class it was called for ~ MODPATH/datasource/classes/datasource/section.php [ 53 ]','{\"exception\":{},\":url\":\"\\/backend\\/datasources\",\":ip\":\"157.56.93.72\"}');
INSERT INTO `logs` VALUES ('154','2014-05-26 21:55:51','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"178.216.97.158\"}');
INSERT INTO `logs` VALUES ('155','2014-05-26 21:55:51','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"178.216.97.158\"}');
INSERT INTO `logs` VALUES ('156','2014-05-26 21:56:01','1','0','HTTP_Exception_110 [ 110 ]: Missing param pid ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/api\\/page-parts\",\":ip\":\"178.216.97.158\"}');
INSERT INTO `logs` VALUES ('157','2014-05-27 00:07:06','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"89.73.81.141\"}');
INSERT INTO `logs` VALUES ('158','2014-05-27 00:07:06','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"89.73.81.141\"}');
INSERT INTO `logs` VALUES ('159','2014-05-27 00:07:33','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"89.73.81.141\"}');
INSERT INTO `logs` VALUES ('160','2014-05-27 00:07:33','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"89.73.81.141\"}');
INSERT INTO `logs` VALUES ('161','2014-05-27 06:08:39','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"94.50.204.152\"}');
INSERT INTO `logs` VALUES ('162','2014-05-27 06:08:39','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"94.50.204.152\"}');
INSERT INTO `logs` VALUES ('163','2014-05-27 06:09:06','1','0','HTTP_Exception_404 [ 404 ]: Behavior hybrid_docs not found! ~ MODPATH/behavior/classes/behavior.php [ 25 ]','{\"exception\":{},\":url\":\"\\/hybrid-test\",\":ip\":\"94.50.204.152\"}');
INSERT INTO `logs` VALUES ('164','2014-05-27 06:09:22','1','0','HTTP_Exception_404 [ 404 ]: Behavior hybrid_docs not found! ~ MODPATH/behavior/classes/behavior.php [ 25 ]','{\"exception\":{},\":url\":\"\\/hybrid-test\",\":ip\":\"94.50.204.152\"}');
INSERT INTO `logs` VALUES ('165','2014-05-27 06:09:49','1','0','ErrorException [ 2 ]: unserialize(): Function spl_autoload_call() hasn\'t defined the class it was called for ~ MODPATH/widget/classes/widget/manager.php [ 119 ]','{\"exception\":{},\":url\":\"\\/backend\\/page\\/edit\\/13\",\":ip\":\"94.50.204.152\"}');
INSERT INTO `logs` VALUES ('166','2014-05-27 06:10:08','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"94.50.204.152\"}');
INSERT INTO `logs` VALUES ('167','2014-05-27 06:10:36','1','6','<a href=\"/backend/users/profile/1\">@demo</a> deactivate plugin Disqus','{\":url\":\"\\/api-plugins\\/disqus\",\":ip\":\"94.50.204.152\"}');
INSERT INTO `logs` VALUES ('168','2014-05-27 06:10:52','1','6','<a href=\"/backend/users/profile/1\">@demo</a> activate plugin Disqus','{\":url\":\"\\/api-plugins\\/disqus\",\":ip\":\"94.50.204.152\"}');
INSERT INTO `logs` VALUES ('169','2014-05-27 06:10:59','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change settings for plugin Disqus ','{\":url\":\"\\/backend\\/plugins\\/settings\\/disqus\",\":ip\":\"94.50.204.152\"}');
INSERT INTO `logs` VALUES ('170','2014-05-27 06:12:17','1','6','Job <a href=\"/backend/scheduler/edit/1\">test jobb</a> has been added by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/scheduler\\/add\",\":ip\":\"94.50.204.152\"}');
INSERT INTO `logs` VALUES ('171','2014-05-27 06:12:47','1','6','Job <a href=\"/backend/scheduler/edit/1\">test jobb</a> has been updated by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/scheduler\\/edit\\/1\",\":ip\":\"94.50.204.152\"}');
INSERT INTO `logs` VALUES ('172','2014-05-27 06:12:55','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"94.50.204.152\"}');
INSERT INTO `logs` VALUES ('173','2014-05-27 08:35:13','0','1','Try to login with username: demo. Incorrect data','{\":url\":\"\\/backend\\/login\",\":ip\":\"195.117.20.143\"}');
INSERT INTO `logs` VALUES ('174','2014-05-27 08:35:42','0','0','HTTP_Exception_404 [ 404 ]: Behavior hybrid_docs not found! ~ MODPATH/behavior/classes/behavior.php [ 25 ]','{\"exception\":{},\":url\":\"\\/hybrid-test\",\":ip\":\"195.117.20.143\"}');
INSERT INTO `logs` VALUES ('175','2014-05-27 12:05:46','0','0','HTTP_Exception_404 [ 404 ]: Behavior hybrid_docs not found! ~ MODPATH/behavior/classes/behavior.php [ 25 ]','{\"exception\":{},\":url\":\"\\/hybrid-header\",\":ip\":\"66.249.78.3\"}');
INSERT INTO `logs` VALUES ('176','2014-05-27 12:11:19','0','0','HTTP_Exception_404 [ 404 ]: Behavior hybrid_docs not found! ~ MODPATH/behavior/classes/behavior.php [ 25 ]','{\"exception\":{},\":url\":\"\\/hybrid-photos\",\":ip\":\"66.249.78.3\"}');
INSERT INTO `logs` VALUES ('177','2014-05-27 12:50:56','0','0','ErrorException [ 2 ]: unserialize(): Function spl_autoload_call() hasn\'t defined the class it was called for ~ MODPATH/datasource/classes/datasource/section.php [ 53 ]','{\"exception\":{},\":url\":\"\\/backend\\/datasources\",\":ip\":\"162.248.244.10\"}');
INSERT INTO `logs` VALUES ('178','2014-05-27 14:49:59','0','0','HTTP_Exception_404 [ 404 ]: Behavior hybrid_docs not found! ~ MODPATH/behavior/classes/behavior.php [ 25 ]','{\"exception\":{},\":url\":\"\\/hybrid-test\",\":ip\":\"79.165.122.185\"}');
INSERT INTO `logs` VALUES ('179','2014-05-27 14:50:36','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"79.165.122.185\"}');
INSERT INTO `logs` VALUES ('180','2014-05-27 14:50:36','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"79.165.122.185\"}');
INSERT INTO `logs` VALUES ('181','2014-05-27 14:51:06','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"79.165.122.185\"}');
INSERT INTO `logs` VALUES ('182','2014-05-27 18:50:38','0','0','HTTP_Exception_404 [ 404 ]: Behavior hybrid_docs not found! ~ MODPATH/behavior/classes/behavior.php [ 25 ]','{\"exception\":{},\":url\":\"\\/hybrid-photos\",\":ip\":\"217.69.133.9\"}');
INSERT INTO `logs` VALUES ('183','2014-05-28 09:23:55','0','1','Try to login with username: demo. Incorrect data','{\":url\":\"\\/backend\\/login\",\":ip\":\"85.17.234.32\"}');
INSERT INTO `logs` VALUES ('184','2014-05-28 09:23:59','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"85.17.234.32\"}');
INSERT INTO `logs` VALUES ('185','2014-05-28 09:23:59','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"85.17.234.32\"}');
INSERT INTO `logs` VALUES ('186','2014-05-28 09:24:59','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"85.17.234.32\"}');
INSERT INTO `logs` VALUES ('187','2014-05-28 09:24:59','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"85.17.234.32\"}');
INSERT INTO `logs` VALUES ('188','2014-05-28 11:28:39','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"188.247.32.34\"}');
INSERT INTO `logs` VALUES ('189','2014-05-28 11:28:39','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"188.247.32.34\"}');
INSERT INTO `logs` VALUES ('190','2014-05-28 11:31:32','1','6','Page 15 edited by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/edit\\/15\",\":ip\":\"188.247.32.34\"}');
INSERT INTO `logs` VALUES ('191','2014-05-28 11:31:32','1','6','Page 15 added by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/edit\\/15\",\":ip\":\"188.247.32.34\"}');
INSERT INTO `logs` VALUES ('192','2014-05-28 12:29:21','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"94.241.220.173\"}');
INSERT INTO `logs` VALUES ('193','2014-05-28 12:29:21','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"94.241.220.173\"}');
INSERT INTO `logs` VALUES ('194','2014-05-28 14:31:21','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"94.241.220.173\"}');
INSERT INTO `logs` VALUES ('195','2014-05-28 14:31:21','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"94.241.220.173\"}');
INSERT INTO `logs` VALUES ('196','2014-05-28 14:34:09','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"94.241.220.173\"}');
INSERT INTO `logs` VALUES ('197','2014-05-28 14:34:50','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"94.241.220.173\"}');
INSERT INTO `logs` VALUES ('198','2014-05-28 16:31:26','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"83.183.82.221\"}');
INSERT INTO `logs` VALUES ('199','2014-05-28 16:31:26','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"83.183.82.221\"}');
INSERT INTO `logs` VALUES ('200','2014-05-28 16:32:22','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"83.183.82.221\"}');
INSERT INTO `logs` VALUES ('201','2014-05-28 16:34:39','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"83.183.82.221\"}');
INSERT INTO `logs` VALUES ('202','2014-05-28 17:47:01','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"94.241.220.173\"}');
INSERT INTO `logs` VALUES ('203','2014-05-28 17:47:01','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"94.241.220.173\"}');
INSERT INTO `logs` VALUES ('204','2014-05-28 20:00:04','0','0','HTTP_Exception_404 [ 404 ]: Behavior hybrid_docs not found! ~ MODPATH/behavior/classes/behavior.php [ 25 ]','{\"exception\":{},\":url\":\"\\/hybred-documents-type\",\":ip\":\"217.69.133.203\"}');
INSERT INTO `logs` VALUES ('205','2014-05-28 20:29:41','0','0','HTTP_Exception_404 [ 404 ]: Behavior hybrid_docs not found! ~ MODPATH/behavior/classes/behavior.php [ 25 ]','{\"exception\":{},\":url\":\"\\/hybrid-test\",\":ip\":\"88.192.241.12\"}');
INSERT INTO `logs` VALUES ('206','2014-05-28 20:48:08','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"109.252.2.7\"}');
INSERT INTO `logs` VALUES ('207','2014-05-28 20:48:08','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"109.252.2.7\"}');
INSERT INTO `logs` VALUES ('208','2014-05-28 20:48:23','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"109.252.2.7\"}');
INSERT INTO `logs` VALUES ('209','2014-05-29 04:46:08','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"94.241.220.173\"}');
INSERT INTO `logs` VALUES ('210','2014-05-29 04:46:08','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"94.241.220.173\"}');
INSERT INTO `logs` VALUES ('211','2014-05-29 05:22:02','0','1','Try to login with username: admin. Incorrect data','{\":url\":\"\\/backend\\/login\",\":ip\":\"91.206.19.172\"}');
INSERT INTO `logs` VALUES ('212','2014-05-29 05:22:14','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"91.206.19.172\"}');
INSERT INTO `logs` VALUES ('213','2014-05-29 05:22:14','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"91.206.19.172\"}');
INSERT INTO `logs` VALUES ('214','2014-05-29 07:59:07','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"188.242.56.117\"}');
INSERT INTO `logs` VALUES ('215','2014-05-29 07:59:07','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"188.242.56.117\"}');
INSERT INTO `logs` VALUES ('216','2014-05-29 12:16:36','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"62.30.92.26\"}');
INSERT INTO `logs` VALUES ('217','2014-05-29 12:16:36','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"62.30.92.26\"}');
INSERT INTO `logs` VALUES ('218','2014-05-29 15:03:49','0','0','HTTP_Exception_404 [ 404 ]: Behavior hybrid_docs not found! ~ MODPATH/behavior/classes/behavior.php [ 25 ]','{\"exception\":{},\":url\":\"\\/hybrid-test\",\":ip\":\"205.186.131.203\"}');
INSERT INTO `logs` VALUES ('219','2014-05-29 15:22:46','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"213.168.10.169\"}');
INSERT INTO `logs` VALUES ('220','2014-05-29 15:22:46','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"213.168.10.169\"}');
INSERT INTO `logs` VALUES ('221','2014-05-29 16:07:18','0','0','HTTP_Exception_404 [ 404 ]: Behavior hybrid_docs not found! ~ MODPATH/behavior/classes/behavior.php [ 25 ]','{\"exception\":{},\":url\":\"\\/hybrid-test\",\":ip\":\"178.215.93.51\"}');
INSERT INTO `logs` VALUES ('222','2014-05-29 18:59:51','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"177.37.8.130\"}');
INSERT INTO `logs` VALUES ('223','2014-05-29 18:59:51','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"177.37.8.130\"}');
INSERT INTO `logs` VALUES ('224','2014-05-29 19:02:10','1','0','ErrorException [ 2 ]: unserialize(): Function spl_autoload_call() hasn\'t defined the class it was called for ~ MODPATH/widget/classes/widget/manager.php [ 119 ]','{\"exception\":{},\":url\":\"\\/backend\\/page\\/edit\\/13\",\":ip\":\"177.37.8.130\"}');



--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(50) DEFAULT NULL,
  `size` int(18) NOT NULL,
  `content_type` varchar(255) DEFAULT 'image',
  `filename` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `media`
--




--
-- Table structure for table `page_behavior_settings`
--

CREATE TABLE `page_behavior_settings` (
  `page_id` int(11) unsigned NOT NULL,
  `behavior_id` varchar(50) NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`page_id`),
  CONSTRAINT `page_behavior_settings_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page_behavior_settings`
--

INSERT INTO `page_behavior_settings` VALUES ('13','hybrid_docs','a:1:{s:12:\"item_page_id\";s:2:\"14\";}');



--
-- Table structure for table `page_parts`
--

CREATE TABLE `page_parts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `filter_id` varchar(25) DEFAULT NULL,
  `content` longtext,
  `content_html` longtext,
  `page_id` int(11) unsigned DEFAULT NULL,
  `is_protected` tinyint(4) DEFAULT '0',
  `is_expanded` tinyint(1) DEFAULT '1',
  `is_indexable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`),
  KEY `name` (`name`),
  CONSTRAINT `page_parts_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page_parts`
--

INSERT INTO `page_parts` VALUES ('2','body','redactor','<h3>Sorry</h3>\n\n<p>This page not found<br>\n</p>\n','<h3>Sorry</h3>\n\n<p>This page not found<br>\n</p>\n','2','0','1','0');
INSERT INTO `page_parts` VALUES ('3','body','redactor','<p>This is my site. I live in this city ... I do some nice things, like this and that ...</p><p>bbhbn bn и им<br></p>\n','<p>This is my site. I live in this city ... I do some nice things, like this and that ...</p><p>bbhbn bn и им<br></p>\n','3','0','0','1');
INSERT INTO `page_parts` VALUES ('6','body','redactor','<p>My first test of my first article.</p>\n','<p>My first test of my first article.</p>\n','5','0','1','0');
INSERT INTO `page_parts` VALUES ('7','body','redactor','<p>This is my second article.</p>\n','<p>This is my second article.</p>\n','7','0','1','0');
INSERT INTO `page_parts` VALUES ('8','body','redactor','<p>csdasdsadasdasaa</p>','<p>csdasdsadasdasaa</p>','1','0','1','0');
INSERT INTO `page_parts` VALUES ('9','body','redactor','<p>cvxvcxbcxz &nbsp;gdfgs!!!</p>','<p>cvxvcxbcxz &nbsp;gdfgs!!!</p>','9','0','1','0');
INSERT INTO `page_parts` VALUES ('10','part','redactor','','','3','0','1','0');
INSERT INTO `page_parts` VALUES ('11','body','redactor','','','16','0','1','0');
INSERT INTO `page_parts` VALUES ('12','part','redactor','','','16','0','0','0');
INSERT INTO `page_parts` VALUES ('13','body','redactor','','','8','0','1','0');



--
-- Table structure for table `page_roles`
--

CREATE TABLE `page_roles` (
  `page_id` int(11) unsigned NOT NULL,
  `role_id` int(11) unsigned NOT NULL,
  KEY `page_id` (`page_id`,`role_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `page_roles_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `page_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page_roles`
--

INSERT INTO `page_roles` VALUES ('1','2');
INSERT INTO `page_roles` VALUES ('2','2');
INSERT INTO `page_roles` VALUES ('3','2');
INSERT INTO `page_roles` VALUES ('3','3');
INSERT INTO `page_roles` VALUES ('3','4');
INSERT INTO `page_roles` VALUES ('4','2');
INSERT INTO `page_roles` VALUES ('4','3');
INSERT INTO `page_roles` VALUES ('4','4');
INSERT INTO `page_roles` VALUES ('5','2');
INSERT INTO `page_roles` VALUES ('5','3');
INSERT INTO `page_roles` VALUES ('5','4');
INSERT INTO `page_roles` VALUES ('6','2');
INSERT INTO `page_roles` VALUES ('6','3');
INSERT INTO `page_roles` VALUES ('6','4');
INSERT INTO `page_roles` VALUES ('7','2');
INSERT INTO `page_roles` VALUES ('7','3');
INSERT INTO `page_roles` VALUES ('7','4');
INSERT INTO `page_roles` VALUES ('8','2');
INSERT INTO `page_roles` VALUES ('8','3');
INSERT INTO `page_roles` VALUES ('8','4');
INSERT INTO `page_roles` VALUES ('9','2');
INSERT INTO `page_roles` VALUES ('9','3');
INSERT INTO `page_roles` VALUES ('9','4');
INSERT INTO `page_roles` VALUES ('11','1');
INSERT INTO `page_roles` VALUES ('11','2');
INSERT INTO `page_roles` VALUES ('11','3');
INSERT INTO `page_roles` VALUES ('11','4');
INSERT INTO `page_roles` VALUES ('12','1');
INSERT INTO `page_roles` VALUES ('12','2');
INSERT INTO `page_roles` VALUES ('12','3');
INSERT INTO `page_roles` VALUES ('12','4');
INSERT INTO `page_roles` VALUES ('13','2');
INSERT INTO `page_roles` VALUES ('13','3');
INSERT INTO `page_roles` VALUES ('13','4');
INSERT INTO `page_roles` VALUES ('14','2');
INSERT INTO `page_roles` VALUES ('14','3');
INSERT INTO `page_roles` VALUES ('14','4');
INSERT INTO `page_roles` VALUES ('15','2');
INSERT INTO `page_roles` VALUES ('15','3');
INSERT INTO `page_roles` VALUES ('15','4');
INSERT INTO `page_roles` VALUES ('16','2');
INSERT INTO `page_roles` VALUES ('16','3');
INSERT INTO `page_roles` VALUES ('16','4');



--
-- Table structure for table `page_tags`
--

CREATE TABLE `page_tags` (
  `page_id` int(11) unsigned NOT NULL,
  `tag_id` int(11) unsigned NOT NULL,
  UNIQUE KEY `page_id` (`page_id`,`tag_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `page_tags_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `page_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page_tags`
--




--
-- Table structure for table `page_widgets`
--

CREATE TABLE `page_widgets` (
  `page_id` int(11) unsigned NOT NULL DEFAULT '0',
  `widget_id` int(11) unsigned NOT NULL DEFAULT '0',
  `block` varchar(32) NOT NULL DEFAULT '',
  `position` int(4) NOT NULL DEFAULT '500',
  PRIMARY KEY (`page_id`,`widget_id`),
  KEY `page_block` (`page_id`,`block`),
  KEY `widget_id` (`widget_id`),
  CONSTRAINT `page_widgets_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `page_widgets_ibfk_2` FOREIGN KEY (`widget_id`) REFERENCES `widgets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page_widgets`
--

INSERT INTO `page_widgets` VALUES ('1','1','header','500');
INSERT INTO `page_widgets` VALUES ('1','2','','500');
INSERT INTO `page_widgets` VALUES ('1','3','footer','500');
INSERT INTO `page_widgets` VALUES ('1','4','sidebar','500');
INSERT INTO `page_widgets` VALUES ('1','5','top_banner','500');
INSERT INTO `page_widgets` VALUES ('1','8','extended','500');
INSERT INTO `page_widgets` VALUES ('1','9','body','500');
INSERT INTO `page_widgets` VALUES ('2','1','header','500');
INSERT INTO `page_widgets` VALUES ('2','2','bradcrumbs','500');
INSERT INTO `page_widgets` VALUES ('2','3','footer','500');
INSERT INTO `page_widgets` VALUES ('2','4','sidebar','500');
INSERT INTO `page_widgets` VALUES ('2','7','recent','500');
INSERT INTO `page_widgets` VALUES ('3','1','header','500');
INSERT INTO `page_widgets` VALUES ('3','2','0','500');
INSERT INTO `page_widgets` VALUES ('3','3','footer','500');
INSERT INTO `page_widgets` VALUES ('3','4','sidebar','500');
INSERT INTO `page_widgets` VALUES ('3','7','recent','500');
INSERT INTO `page_widgets` VALUES ('4','10','body','500');
INSERT INTO `page_widgets` VALUES ('5','1','header','500');
INSERT INTO `page_widgets` VALUES ('5','2','bradcrumbs','500');
INSERT INTO `page_widgets` VALUES ('5','3','footer','500');
INSERT INTO `page_widgets` VALUES ('5','4','sidebar','500');
INSERT INTO `page_widgets` VALUES ('5','7','recent','500');
INSERT INTO `page_widgets` VALUES ('6','1','header','500');
INSERT INTO `page_widgets` VALUES ('6','2','bradcrumbs','500');
INSERT INTO `page_widgets` VALUES ('6','3','footer','500');
INSERT INTO `page_widgets` VALUES ('6','4','sidebar','500');
INSERT INTO `page_widgets` VALUES ('6','7','recent','500');
INSERT INTO `page_widgets` VALUES ('7','1','header','500');
INSERT INTO `page_widgets` VALUES ('7','2','bradcrumbs','500');
INSERT INTO `page_widgets` VALUES ('7','3','footer','500');
INSERT INTO `page_widgets` VALUES ('7','4','sidebar','500');
INSERT INTO `page_widgets` VALUES ('7','7','recent','500');
INSERT INTO `page_widgets` VALUES ('8','1','header','500');
INSERT INTO `page_widgets` VALUES ('8','2','bradcrumbs','500');
INSERT INTO `page_widgets` VALUES ('8','3','footer','500');
INSERT INTO `page_widgets` VALUES ('8','4','sidebar','500');
INSERT INTO `page_widgets` VALUES ('8','6','body','500');
INSERT INTO `page_widgets` VALUES ('8','7','recent','500');
INSERT INTO `page_widgets` VALUES ('8','13','pagination','500');
INSERT INTO `page_widgets` VALUES ('9','1','header','500');
INSERT INTO `page_widgets` VALUES ('9','2','0','500');
INSERT INTO `page_widgets` VALUES ('9','3','footer','500');
INSERT INTO `page_widgets` VALUES ('9','4','sidebar','500');
INSERT INTO `page_widgets` VALUES ('9','7','recent','500');
INSERT INTO `page_widgets` VALUES ('10','1','header','500');
INSERT INTO `page_widgets` VALUES ('10','2','bradcrumbs','500');
INSERT INTO `page_widgets` VALUES ('10','3','footer','500');
INSERT INTO `page_widgets` VALUES ('10','4','sidebar','500');
INSERT INTO `page_widgets` VALUES ('10','7','recent','500');
INSERT INTO `page_widgets` VALUES ('11','1','header','500');
INSERT INTO `page_widgets` VALUES ('11','2','bradcrumbs','500');
INSERT INTO `page_widgets` VALUES ('11','3','footer','500');
INSERT INTO `page_widgets` VALUES ('11','4','sidebar','500');
INSERT INTO `page_widgets` VALUES ('11','12','body','500');
INSERT INTO `page_widgets` VALUES ('13','1','header','500');
INSERT INTO `page_widgets` VALUES ('13','2','0','500');
INSERT INTO `page_widgets` VALUES ('13','3','footer','500');
INSERT INTO `page_widgets` VALUES ('13','4','sidebar','500');
INSERT INTO `page_widgets` VALUES ('13','5','top_banner','500');
INSERT INTO `page_widgets` VALUES ('13','8','extended','500');
INSERT INTO `page_widgets` VALUES ('13','9','body','500');
INSERT INTO `page_widgets` VALUES ('13','14','body','0');
INSERT INTO `page_widgets` VALUES ('13','15','body','0');
INSERT INTO `page_widgets` VALUES ('14','1','header','500');
INSERT INTO `page_widgets` VALUES ('14','2','0','500');
INSERT INTO `page_widgets` VALUES ('14','3','footer','500');
INSERT INTO `page_widgets` VALUES ('14','4','sidebar','500');
INSERT INTO `page_widgets` VALUES ('14','5','top_banner','500');
INSERT INTO `page_widgets` VALUES ('14','8','extended','500');
INSERT INTO `page_widgets` VALUES ('14','9','body','500');
INSERT INTO `page_widgets` VALUES ('14','14','body','0');
INSERT INTO `page_widgets` VALUES ('14','15','body','0');
INSERT INTO `page_widgets` VALUES ('15','16','body','0');
INSERT INTO `page_widgets` VALUES ('16','1','header','500');
INSERT INTO `page_widgets` VALUES ('16','2','bradcrumbs','500');
INSERT INTO `page_widgets` VALUES ('16','3','footer','500');
INSERT INTO `page_widgets` VALUES ('16','4','sidebar','500');
INSERT INTO `page_widgets` VALUES ('16','7','recent','500');



--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `breadcrumb` varchar(160) DEFAULT '',
  `meta_title` varchar(255) DEFAULT '',
  `meta_keywords` varchar(255) DEFAULT '',
  `meta_description` text,
  `robots` varchar(100) DEFAULT 'INDEX, FOLLOW',
  `parent_id` int(11) unsigned DEFAULT NULL,
  `layout_file` varchar(250) NOT NULL,
  `behavior_id` varchar(25) NOT NULL,
  `status_id` int(11) unsigned NOT NULL DEFAULT '100',
  `created_on` datetime DEFAULT NULL,
  `published_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `created_by_id` int(11) unsigned DEFAULT NULL,
  `updated_by_id` int(11) unsigned DEFAULT NULL,
  `position` mediumint(6) unsigned DEFAULT NULL,
  `needs_login` tinyint(1) NOT NULL DEFAULT '2',
  `password` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `created_by_id` (`created_by_id`),
  KEY `updated_by_id` (`updated_by_id`),
  KEY `slug` (`slug`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `pages_ibfk_2` FOREIGN KEY (`updated_by_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` VALUES ('1','Home','','Home','Home','','','INDEX, FOLLOW','0','normal','','100','2014-05-20 14:02:48','2014-05-20 14:02:48','2014-05-22 03:18:37','1','1','0','0','');
INSERT INTO `pages` VALUES ('2','Page not found','page-not-found','Page not found','Page not found','','','INDEX, FOLLOW','1','','page_not_found','101','2014-05-20 14:02:48','2014-05-20 14:02:48','2014-05-20 14:02:48','1','1','3','2','');
INSERT INTO `pages` VALUES ('3','About us','about-us','About us','About us','','','INDEX, FOLLOW','1','0','','100','0000-00-00 00:00:00','2014-05-21 19:25:00','2014-05-21 16:26:44','','1','0','2','');
INSERT INTO `pages` VALUES ('4','RSS Feed','rss.xml','RSS Feed','RSS Feed','','','INDEX, FOLLOW','1','none','','101','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','1','2','2','');
INSERT INTO `pages` VALUES ('5','My first article','my-first-article','My first article','My first article','','','INDEX, FOLLOW','8','','','100','0000-00-00 00:00:00','0000-00-00 00:00:00','','','','1','2','');
INSERT INTO `pages` VALUES ('6','%B %Y archive','b-y-archive','%B %Y archive','%B %Y archive','','','INDEX, FOLLOW','8','','archive_month_index','101','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','1','0','2','');
INSERT INTO `pages` VALUES ('7','My second article','my-second-article','My second article','My second article','','','INDEX, FOLLOW','8','','','100','0000-00-00 00:00:00','0000-00-00 00:00:00','','','','2','2','');
INSERT INTO `pages` VALUES ('8','Articles','articles','Articles','Articles','','','INDEX, FOLLOW','1','','archive','100','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','1','1','2','');
INSERT INTO `pages` VALUES ('9','Third entry','third-entry','Third entry','Third entry','','','INDEX, FOLLOW','8','0','','100','0000-00-00 00:00:00','0000-00-00 00:00:00','2014-05-22 16:57:19','1','1','3','2','');
INSERT INTO `pages` VALUES ('10','Fourth entry','fourth-entry','Fourth entry','Fourth entry','','','INDEX, FOLLOW','8','0','0','100','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','1','4','2','');
INSERT INTO `pages` VALUES ('11','Contacts','contacts','Контакты','Контакты','','','INDEX, FOLLOW','1','0','0','100','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','1','4','2','');
INSERT INTO `pages` VALUES ('12','Send page','send','send','send','','','INDEX, FOLLOW','11','none','0','101','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','1','1','2','');
INSERT INTO `pages` VALUES ('13','Hybrid Test','hybrid-test','Hybrid Test','Hybrid Test','','','INDEX, FOLLOW','1','0','hybrid_docs','100','2014-05-23 00:12:52','2014-05-23 00:12:52','2014-05-23 00:31:31','1','1','5','2','');
INSERT INTO `pages` VALUES ('14','Hybrid Test Item','test-item','Hybrid Test Item','Hybrid Test Item','','','INDEX, FOLLOW','11','0','','100','2014-05-23 00:29:27','2014-05-23 00:29:27','2014-05-23 00:30:52','1','1','0','2','');
INSERT INTO `pages` VALUES ('15','321321321','321321321','321321321','321321321','','','INDEX, FOLLOW','12','normal','','100','2014-05-23 08:43:57','2014-05-23 08:43:57','2014-05-28 11:31:32','1','1','0','2','');
INSERT INTO `pages` VALUES ('16','Teste','teste','Teste','Teste','','','INDEX, FOLLOW','5','0','','100','2014-05-26 14:49:30','2014-05-26 14:49:30','','1','1','0','2','');



--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `settings` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plugins`
--

INSERT INTO `plugins` VALUES ('archive','Archive','a:0:{}');
INSERT INTO `plugins` VALUES ('backup','Backup DB','a:0:{}');
INSERT INTO `plugins` VALUES ('disqus','Disqus','a:1:{s:9:\"disqus_id\";s:0:\"\";}');
INSERT INTO `plugins` VALUES ('maintenance','Maintenance mode','a:0:{}');
INSERT INTO `plugins` VALUES ('page_not_found','Page not found','a:0:{}');
INSERT INTO `plugins` VALUES ('redactor','Redactor','a:0:{}');
INSERT INTO `plugins` VALUES ('test','Test Site','a:0:{}');



--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` VALUES ('1','login','Login privileges, granted after account confirmation');
INSERT INTO `roles` VALUES ('2','administrator','Administrative user, has access to everything.');
INSERT INTO `roles` VALUES ('3','developer','Developers role');
INSERT INTO `roles` VALUES ('4','editor','');



--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `role_id` int(11) unsigned NOT NULL,
  `action` varchar(255) NOT NULL,
  UNIQUE KEY `role_id` (`role_id`,`action`),
  CONSTRAINT `roles_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles_permissions`
--




--
-- Table structure for table `roles_users`
--

CREATE TABLE `roles_users` (
  `user_id` int(11) unsigned NOT NULL,
  `role_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_role_id` (`role_id`),
  CONSTRAINT `roles_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `roles_users_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles_users`
--

INSERT INTO `roles_users` VALUES ('1','1');
INSERT INTO `roles_users` VALUES ('1','2');



--
-- Table structure for table `search_index`
--

CREATE TABLE `search_index` (
  `id` int(11) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `title` text NOT NULL,
  `annotation` varchar(255) DEFAULT NULL,
  `header` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`,`module`),
  FULLTEXT KEY `header` (`header`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `search_index`
--

INSERT INTO `search_index` VALUES ('3','pages','2014-05-21 16:25:15','2014-05-27 19:33:54','About us','','us ','my site live citi do some nice thing like and bbhbn bn им ','a:1:{s:3:\"uri\";s:9:\"/about-us\";}');
INSERT INTO `search_index` VALUES ('1','pages','2014-05-22 03:18:37','2014-05-27 19:33:54','Home','','home ','','a:1:{s:3:\"uri\";s:0:\"\";}');
INSERT INTO `search_index` VALUES ('9','pages','2014-05-22 16:57:17','2014-05-27 19:33:54','Third entry','','third entri ','','a:1:{s:3:\"uri\";s:21:\"/articles/third-entry\";}');
INSERT INTO `search_index` VALUES ('2','pages','2014-05-22 16:58:23','2014-05-27 19:33:54','Page not found','','page not found ','','a:1:{s:3:\"uri\";s:15:\"/page-not-found\";}');
INSERT INTO `search_index` VALUES ('4','pages','2014-05-22 16:58:23','2014-05-27 19:33:54','RSS Feed','','rss feed ','','a:1:{s:3:\"uri\";s:8:\"/rss.xml\";}');
INSERT INTO `search_index` VALUES ('5','pages','2014-05-22 16:58:23','2014-05-27 19:33:54','My first article','','my first articl ','','a:1:{s:3:\"uri\";s:26:\"/articles/my-first-article\";}');
INSERT INTO `search_index` VALUES ('6','pages','2014-05-22 16:58:23','2014-05-27 19:33:54','%B %Y archive','','%b %y archiv ','','a:1:{s:3:\"uri\";s:21:\"/articles/b-y-archive\";}');
INSERT INTO `search_index` VALUES ('7','pages','2014-05-22 16:58:23','2014-05-27 19:33:54','My second article','','my second articl ','','a:1:{s:3:\"uri\";s:27:\"/articles/my-second-article\";}');
INSERT INTO `search_index` VALUES ('8','pages','2014-05-22 16:58:24','2014-05-27 19:33:54','Articles','','articl ','','a:1:{s:3:\"uri\";s:9:\"/articles\";}');
INSERT INTO `search_index` VALUES ('10','pages','2014-05-22 16:58:24','2014-05-27 19:33:54','Fourth entry','','fourth entri ','','a:1:{s:3:\"uri\";s:22:\"/articles/fourth-entry\";}');
INSERT INTO `search_index` VALUES ('11','pages','2014-05-22 16:58:24','2014-05-27 19:33:54','Contacts','','contact ','','a:1:{s:3:\"uri\";s:9:\"/contacts\";}');
INSERT INTO `search_index` VALUES ('12','pages','2014-05-22 16:58:24','2014-05-27 19:33:54','Send page','','send page ','','a:1:{s:3:\"uri\";s:14:\"/contacts/send\";}');
INSERT INTO `search_index` VALUES ('1','ds_1','2014-05-23 00:14:49','2014-05-23 00:18:40','Datasource Header Document Test','demo','datasourc header document test ','demo ','a:0:{}');
INSERT INTO `search_index` VALUES ('13','pages','2014-05-23 00:18:04','2014-05-27 19:33:54','Hybrid Test','','hybrid test ','','a:1:{s:3:\"uri\";s:12:\"/hybrid-test\";}');
INSERT INTO `search_index` VALUES ('14','pages','2014-05-23 00:30:49','2014-05-27 19:33:54','Hybrid Test Item','','hybrid test item ','','a:1:{s:3:\"uri\";s:19:\"/contacts/test-item\";}');
INSERT INTO `search_index` VALUES ('15','pages','2014-05-27 12:36:59','2014-05-28 11:31:32','321321321','','321321321 ','','a:1:{s:3:\"uri\";s:24:\"/contacts/send/321321321\";}');
INSERT INTO `search_index` VALUES ('16','pages','2014-05-27 12:36:59','2014-05-27 19:33:54','Teste','','test ','','a:1:{s:3:\"uri\";s:32:\"/articles/my-first-article/teste\";}');



--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `count` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags`
--




--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `locale` varchar(10) NOT NULL DEFAULT 'en-us',
  `notice` tinyint(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` VALUES ('1','1','Administrator','en-us','0','2014-05-20 14:02:48');



--
-- Table structure for table `user_reflinks`
--

CREATE TABLE `user_reflinks` (
  `user_id` int(11) unsigned NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `code` varchar(255) NOT NULL,
  `data` text,
  `created` datetime NOT NULL,
  UNIQUE KEY `unique_reflink` (`user_id`,`code`),
  CONSTRAINT `user_reflinks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_reflinks`
--




--
-- Table structure for table `user_social`
--

CREATE TABLE `user_social` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT NULL,
  `service_id` varchar(200) NOT NULL DEFAULT '',
  `service_name` varchar(200) NOT NULL DEFAULT '',
  `service_type` varchar(100) NOT NULL DEFAULT '',
  `realname` varchar(200) NOT NULL DEFAULT '',
  `email` varchar(200) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `response` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `service_key` (`service_id`,`service_type`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_social_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_social`
--




--
-- Table structure for table `user_tokens`
--

CREATE TABLE `user_tokens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `user_agent` varchar(40) NOT NULL,
  `token` varchar(40) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `expires` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_token` (`token`),
  KEY `fk_user_id` (`user_id`),
  KEY `expires` (`expires`),
  CONSTRAINT `user_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_tokens`
--

INSERT INTO `user_tokens` VALUES ('1','1','215ddad8088b88c915b53c570ad429e8ec144746','96205c49f68e243ec08fcf1485c3dd04be05ad9c','1400594572','1401804172');
INSERT INTO `user_tokens` VALUES ('2','1','3d0f9746d9c1b0395c7097fb0b60beef0929f754','c3f451cff72e984a88c916f728c337921ee6f3ce','1400595608','1401805208');
INSERT INTO `user_tokens` VALUES ('3','1','215ddad8088b88c915b53c570ad429e8ec144746','4c8d3c1c40ead4713f1e4fac239fed7600ebd450','1400599788','1401809388');
INSERT INTO `user_tokens` VALUES ('5','1','fbf087953b5a8047392446d58665b07a3293dfaa','3e5d8965835d24a8f2b75ce9d2781fc041998333','1400654143','1401863743');
INSERT INTO `user_tokens` VALUES ('6','1','6179d9eb08e3093f2f81ca10728a7efffb2f61ac','0567570137057e1a73fbab40331c1a40e091720d','1400678348','1401887948');
INSERT INTO `user_tokens` VALUES ('7','1','e8d8fd74209cf056a34f1a1986f87bc12cde919a','04495168ed70de58dc081b874ca60b510eb72a85','1400689418','1401899018');
INSERT INTO `user_tokens` VALUES ('8','1','6179d9eb08e3093f2f81ca10728a7efffb2f61ac','e392c40bc184faa68e8f03691284a7a4eabb5bd5','1400701632','1401911232');
INSERT INTO `user_tokens` VALUES ('12','1','ab9c54ac76bc4d6f804129a0752278d0b0a788f2','25ea85d36fc919a261086f7ad70c3ad1638c5a9f','1400761340','1401970940');
INSERT INTO `user_tokens` VALUES ('14','1','e8d8fd74209cf056a34f1a1986f87bc12cde919a','c81063bb2c8a90b9fbb1eacd1e0bf705b1813017','1400768100','1401977700');
INSERT INTO `user_tokens` VALUES ('17','1','82255f4fcc1b0a6d028841b6f7ae5f2ac6254010','94791acd91a145c2e3c45eb631177c8b55f5206c','1400803757','1402013357');
INSERT INTO `user_tokens` VALUES ('18','1','215ddad8088b88c915b53c570ad429e8ec144746','fed0b89bc0cd69d7fab2507ef4e4898599fec682','1400834586','1402044186');
INSERT INTO `user_tokens` VALUES ('20','1','4dadf9d64f6116a33c28eb6251343528941d70b3','b0ec8c1c655e85d7531195c6394e96ccc5c9d36e','1400849015','1402058615');
INSERT INTO `user_tokens` VALUES ('21','1','1464b51d35ad5050e56f0c27b23288f20bd3d27c','2a82b39474e6aa51d42aa9db7e89f6e0718b6f47','1400868373','1402077973');
INSERT INTO `user_tokens` VALUES ('24','1','36c1c0ce51e28701369858db9e88853cccf45dbc','9eda58d6f10a34be0c2299a999a8380fa60c0ef0','1400881345','1402090945');
INSERT INTO `user_tokens` VALUES ('25','1','ab9c54ac76bc4d6f804129a0752278d0b0a788f2','d015436968f11c6b81d2545ca640b49025a312bf','1400885548','1402095148');
INSERT INTO `user_tokens` VALUES ('26','1','d7f2e3eb6aca7660e9bfcee7c6e5813f5b6ca055','a05844cdf03e737dae4c76148133db0d34fd5b80','1401002621','1402212221');
INSERT INTO `user_tokens` VALUES ('27','1','ad6bd9e9c57060287f23e6a35ccaa616499b769d','46b8904661e1ae58362ac33da16ad66e1dea50ac','1401004679','1402214278');
INSERT INTO `user_tokens` VALUES ('28','1','7a6ea9f61bf602d6fe98d83e821c6200081c5e66','02dd00d880dd921ae0452d9ba9369e9314fc645b','1401036153','1402245753');
INSERT INTO `user_tokens` VALUES ('29','1','dc135cc7a47568ea900ecd3b961a46f9dc3a15c8','6d10f4401de4d6dcd418a4f7ca62ae766af71e31','1401056978','1402266578');
INSERT INTO `user_tokens` VALUES ('31','1','a666318a207f8c69eb292ecac96e77fa6d352c51','e27a26d953aa6e5c41686db96474840b59fae9ba','1401115646','1402325246');
INSERT INTO `user_tokens` VALUES ('32','1','aa7f970efc771c1c4cab4ab84060e62c11c44f3d','86ffb10423da658611e6e4be80d7c62f235551ba','1401119314','1402328914');
INSERT INTO `user_tokens` VALUES ('33','1','38603bb00d1ec09f77f331dc60e73ffc723ef276','4417ea523edf95e1c31c15876af078671cafaa5f','1401128835','1402338435');
INSERT INTO `user_tokens` VALUES ('34','1','e8d8fd74209cf056a34f1a1986f87bc12cde919a','316004a2be8f6f359e9897d6f16cf803739d7584','1401130564','1402340164');
INSERT INTO `user_tokens` VALUES ('35','1','fbbe1ab05df20c9c0a48f7cc5845b0a3d3da7c91','2bea4998bb7c8a79e6c1ce1a323a36dcaa3763d5','1401141351','1402350951');
INSERT INTO `user_tokens` VALUES ('36','1','ab9c54ac76bc4d6f804129a0752278d0b0a788f2','4658465896d3d755cafcaffbb6d1399f92b4765a','1401149226','1402358826');
INSERT INTO `user_tokens` VALUES ('37','1','850b723b0d6f223a19569cf18a0435fddb569589','e2be2b00e5d08d02fa5cc3b2e24671c6c46b5719','1401269039','1402478639');
INSERT INTO `user_tokens` VALUES ('42','1','7a6ea9f61bf602d6fe98d83e821c6200081c5e66','db62c8cdf6228695058557a9408b2aaef936893e','1401338768','1402548368');
INSERT INTO `user_tokens` VALUES ('43','1','cdc1ee33665b7784bf82a2c3e2d48f8db2743061','7d8902c37348e03c117bfc9ad732d61903d36193','1401340934','1402550534');
INSERT INTO `user_tokens` VALUES ('44','1','d7f2e3eb6aca7660e9bfcee7c6e5813f5b6ca055','e1e600fa1ea19f50153d983eda4bfef2fa5639a1','1401350347','1402559947');
INSERT INTO `user_tokens` VALUES ('45','1','d4f09ab969f7263dd752040a91e66f34043b6e53','8b6c73cf219ce41d8a7a534724eb9554ccea4db1','1401365796','1402575396');
INSERT INTO `user_tokens` VALUES ('46','1','e48053836e3efb478ddaa3fa18c23263935df9a5','3bb130f0b94d1a55740ff669eac0de19f2d9fe5d','1401376966','1402586566');
INSERT INTO `user_tokens` VALUES ('47','1','4991a63a755c0a1f2acd6ac162d06058945efe42','064f8e55592a786ac5705c5c018f18431b9e9bf0','1401389991','1402599591');



--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(127) NOT NULL,
  `username` varchar(32) NOT NULL DEFAULT '',
  `password` char(64) NOT NULL,
  `logins` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_username` (`username`),
  UNIQUE KEY `uniq_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES ('1','admin@yoursite.com','demo','030d9d63ca9f845bd16f374e177f9022187006159457fee8f48b00094800a6f7','53','1401389991');



--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `template` varchar(100) DEFAULT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `code` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` VALUES ('1','page_menu','header','Header menu','','2014-05-20 14:02:48','O:22:\"Model_Widget_Page_Menu\":11:{s:7:\"exclude\";a:3:{i:0;i:6;i:1;i:4;i:2;i:2;}s:10:\"cache_tags\";a:1:{i:0;s:5:\"pages\";}s:6:\"header\";N;s:6:\"crumbs\";b:0;s:11:\"use_caching\";b:1;s:7:\"caching\";b:0;s:14:\"cache_lifetime\";i:0;s:5:\"roles\";a:0:{}s:5:\"media\";a:0:{}s:9:\"throw_404\";b:0;s:8:\"\0*\0_data\";a:3:{s:15:\"match_all_paths\";i:0;s:14:\"include_hidden\";i:0;s:7:\"page_id\";i:1;}}');
INSERT INTO `widgets` VALUES ('2','page_breadcrumbs','bradcrumbs','Breadcrumbs','','2014-05-20 14:02:48','O:29:\"Model_Widget_Page_Breadcrumbs\":11:{s:7:\"exclude\";a:0:{}s:10:\"cache_tags\";a:1:{i:0;s:5:\"pages\";}s:6:\"header\";N;s:6:\"crumbs\";b:0;s:11:\"use_caching\";b:1;s:7:\"caching\";b:0;s:14:\"cache_lifetime\";i:0;s:5:\"roles\";a:0:{}s:5:\"media\";a:0:{}s:9:\"throw_404\";b:0;s:8:\"\0*\0_data\";a:0:{}}');
INSERT INTO `widgets` VALUES ('3','html','footer','Footer','','2014-05-20 14:02:48','O:17:\"Model_Widget_HTML\":10:{s:6:\"header\";s:0:\"\";s:6:\"crumbs\";b:0;s:11:\"use_caching\";b:1;s:7:\"caching\";b:0;s:14:\"cache_lifetime\";i:0;s:10:\"cache_tags\";s:0:\"\";s:5:\"roles\";a:0:{}s:5:\"media\";a:0:{}s:9:\"throw_404\";b:0;s:8:\"\0*\0_data\";a:1:{s:8:\"continue\";s:0:\"\";}}');
INSERT INTO `widgets` VALUES ('4','html','sidebar','Sidebar','','2014-05-20 14:02:48','O:17:\"Model_Widget_HTML\":10:{s:6:\"header\";N;s:6:\"crumbs\";b:0;s:11:\"use_caching\";b:1;s:7:\"caching\";b:0;s:14:\"cache_lifetime\";i:0;s:10:\"cache_tags\";a:1:{i:0;s:0:\"\";}s:5:\"roles\";a:0:{}s:5:\"media\";a:0:{}s:9:\"throw_404\";b:0;s:8:\"\0*\0_data\";a:0:{}}');
INSERT INTO `widgets` VALUES ('5','html','top_banner','Top banner','','2014-05-20 14:02:48','O:17:\"Model_Widget_HTML\":10:{s:6:\"header\";N;s:6:\"crumbs\";b:0;s:11:\"use_caching\";b:1;s:7:\"caching\";b:0;s:14:\"cache_lifetime\";i:0;s:10:\"cache_tags\";a:1:{i:0;s:0:\"\";}s:5:\"roles\";a:0:{}s:5:\"media\";a:0:{}s:9:\"throw_404\";b:0;s:8:\"\0*\0_data\";a:0:{}}');
INSERT INTO `widgets` VALUES ('6','page_pages','archive-headline','Articles headline','','2014-05-20 14:02:48','O:23:\"Model_Widget_Page_Pages\":12:{s:10:\"cache_tags\";a:3:{i:0;s:5:\"pages\";i:1;s:10:\"page_parts\";i:2;s:9:\"page_tags\";}s:11:\"list_offset\";i:0;s:9:\"list_size\";i:10;s:6:\"header\";N;s:6:\"crumbs\";b:0;s:11:\"use_caching\";b:1;s:7:\"caching\";b:0;s:14:\"cache_lifetime\";i:0;s:5:\"roles\";a:0:{}s:5:\"media\";a:0:{}s:9:\"throw_404\";b:0;s:8:\"\0*\0_data\";a:0:{}}');
INSERT INTO `widgets` VALUES ('7','page_pages','recent-entries','Recent entries','','2014-05-20 14:02:48','O:23:\"Model_Widget_Page_Pages\":12:{s:10:\"cache_tags\";a:3:{i:0;s:5:\"pages\";i:1;s:10:\"page_parts\";i:2;s:9:\"page_tags\";}s:11:\"list_offset\";i:0;s:9:\"list_size\";i:10;s:6:\"header\";s:14:\"Recent entries\";s:6:\"crumbs\";b:0;s:11:\"use_caching\";b:1;s:7:\"caching\";b:1;s:14:\"cache_lifetime\";i:3600;s:5:\"roles\";a:0:{}s:5:\"media\";a:0:{}s:9:\"throw_404\";b:0;s:8:\"\0*\0_data\";a:1:{s:7:\"page_id\";i:8;}}');
INSERT INTO `widgets` VALUES ('8','page_pages','recent-entries','Recent entries index page','','2014-05-20 14:02:48','O:23:\"Model_Widget_Page_Pages\":12:{s:10:\"cache_tags\";a:3:{i:0;s:5:\"pages\";i:1;s:10:\"page_parts\";i:2;s:9:\"page_tags\";}s:11:\"list_offset\";i:0;s:9:\"list_size\";i:10;s:6:\"header\";N;s:6:\"crumbs\";b:0;s:11:\"use_caching\";b:1;s:7:\"caching\";b:1;s:14:\"cache_lifetime\";i:3600;s:5:\"roles\";a:0:{}s:5:\"media\";a:0:{}s:9:\"throw_404\";b:0;s:8:\"\0*\0_data\";a:1:{s:7:\"page_id\";i:8;}}');
INSERT INTO `widgets` VALUES ('9','page_pages','last-entry','last entry index page','','2014-05-20 14:02:48','O:23:\"Model_Widget_Page_Pages\":12:{s:10:\"cache_tags\";a:3:{i:0;s:5:\"pages\";i:1;s:10:\"page_parts\";i:2;s:9:\"page_tags\";}s:11:\"list_offset\";i:0;s:9:\"list_size\";i:1;s:6:\"header\";N;s:6:\"crumbs\";b:0;s:11:\"use_caching\";b:1;s:7:\"caching\";b:1;s:14:\"cache_lifetime\";i:3600;s:5:\"roles\";a:0:{}s:5:\"media\";a:0:{}s:9:\"throw_404\";b:0;s:8:\"\0*\0_data\";a:1:{s:7:\"page_id\";i:8;}}');
INSERT INTO `widgets` VALUES ('10','page_pages','recent-entries-rss','Recent entries RSS','','2014-05-20 14:02:48','O:23:\"Model_Widget_Page_Pages\":12:{s:10:\"cache_tags\";a:3:{i:0;s:5:\"pages\";i:1;s:10:\"page_parts\";i:2;s:9:\"page_tags\";}s:11:\"list_offset\";i:0;s:9:\"list_size\";i:10;s:6:\"header\";N;s:6:\"crumbs\";b:0;s:11:\"use_caching\";b:1;s:7:\"caching\";b:1;s:14:\"cache_lifetime\";i:3600;s:5:\"roles\";a:0:{}s:5:\"media\";a:0:{}s:9:\"throw_404\";b:0;s:8:\"\0*\0_data\";a:1:{s:7:\"page_id\";i:8;}}');
INSERT INTO `widgets` VALUES ('11','sendmail','',' Send mail (sender)','','2014-05-20 14:02:48','O:21:\"Model_Widget_SendMail\":13:{s:10:\"\0*\0_errors\";a:0:{}s:10:\"\0*\0_values\";a:0:{}s:11:\"use_caching\";b:0;s:6:\"fields\";a:0:{}s:8:\"\0*\0_data\";a:2:{s:12:\"allowed_tags\";s:12:\"<b><i><u><p>\";s:8:\"next_url\";N;}s:6:\"header\";N;s:6:\"crumbs\";b:0;s:7:\"caching\";b:0;s:14:\"cache_lifetime\";i:2629744;s:10:\"cache_tags\";a:0:{}s:5:\"roles\";a:0:{}s:5:\"media\";a:0:{}s:9:\"throw_404\";b:0;}');
INSERT INTO `widgets` VALUES ('12','html','send-mail-form','Send mail (form)','','2014-05-20 14:02:48','O:17:\"Model_Widget_HTML\":10:{s:6:\"header\";N;s:6:\"crumbs\";b:0;s:11:\"use_caching\";b:1;s:7:\"caching\";b:0;s:14:\"cache_lifetime\";i:0;s:10:\"cache_tags\";a:1:{i:0;s:0:\"\";}s:5:\"roles\";a:0:{}s:5:\"media\";a:0:{}s:9:\"throw_404\";b:0;s:8:\"\0*\0_data\";a:0:{}}');
INSERT INTO `widgets` VALUES ('13','pagination','paginator','Постраничная навигация','','2014-05-20 14:02:48','O:23:\"Model_Widget_Pagination\":10:{s:8:\"\0*\0_data\";a:2:{s:9:\"query_key\";s:4:\"page\";s:17:\"related_widget_id\";N;}s:11:\"use_caching\";b:0;s:6:\"header\";N;s:6:\"crumbs\";b:0;s:7:\"caching\";b:0;s:14:\"cache_lifetime\";i:0;s:10:\"cache_tags\";a:1:{i:0;s:0:\"\";}s:5:\"roles\";a:0:{}s:5:\"media\";a:0:{}s:9:\"throw_404\";b:0;}');
INSERT INTO `widgets` VALUES ('14','hybrid_document','0','News Hybrid Document','','2014-05-23 00:21:02','O:28:\"Model_Widget_Hybrid_Document\":30:{s:10:\"doc_fields\";a:0:{}s:19:\"doc_fetched_widgets\";a:0:{}s:12:\"doc_id_field\";s:1:\"0\";s:6:\"crumbs\";b:1;s:10:\"doc_id_ctx\";s:4:\"item\";s:9:\"\0*\0_agent\";N;s:8:\"only_sub\";b:0;s:13:\"\0*\0_documents\";a:0:{}s:11:\"list_offset\";i:0;s:9:\"list_size\";i:10;s:2:\"id\";s:2:\"14\";s:4:\"type\";s:15:\"hybrid_document\";s:4:\"name\";s:20:\"News Hybrid Document\";s:11:\"description\";s:0:\"\";s:6:\"header\";s:0:\"\";s:8:\"template\";s:1:\"0\";s:16:\"backend_template\";N;s:17:\"frontend_template\";N;s:12:\"use_template\";b:1;s:15:\"template_params\";a:0:{}s:5:\"block\";N;s:8:\"position\";i:500;s:11:\"use_caching\";b:1;s:7:\"caching\";b:0;s:14:\"cache_lifetime\";i:0;s:10:\"cache_tags\";s:0:\"\";s:5:\"roles\";a:0:{}s:5:\"media\";a:0:{}s:9:\"throw_404\";b:0;s:8:\"\0*\0_data\";a:6:{s:5:\"ds_id\";s:1:\"2\";s:8:\"continue\";s:0:\"\";s:8:\"docs_uri\";N;s:15:\"seo_information\";b:0;s:5:\"field\";r:1;s:6:\"commit\";s:0:\"\";}}');
INSERT INTO `widgets` VALUES ('15','hybrid_headline','0','News Datasource Headline','','2014-05-23 00:22:53','O:28:\"Model_Widget_Hybrid_Headline\":25:{s:10:\"doc_fields\";a:1:{i:0;i:1;}s:19:\"doc_fetched_widgets\";a:0:{}s:10:\"doc_filter\";a:0:{}s:9:\"doc_order\";a:3:{i:0;a:1:{s:6:\"header\";s:3:\"ASC\";}i:1;a:1:{s:2:\"id\";s:3:\"ASC\";}i:2;a:1:{s:10:\"created_on\";s:3:\"ASC\";}}s:7:\"doc_uri\";s:6:\"/news/\";s:6:\"doc_id\";s:2:\"id\";s:14:\"only_published\";b:1;s:3:\"ids\";a:0:{}s:9:\"\0*\0arrays\";a:0:{}s:4:\"docs\";N;s:9:\"\0*\0_agent\";N;s:8:\"only_sub\";b:0;s:13:\"\0*\0_documents\";a:0:{}s:11:\"list_offset\";i:0;s:9:\"list_size\";i:10;s:6:\"header\";s:0:\"\";s:6:\"crumbs\";b:0;s:11:\"use_caching\";b:1;s:7:\"caching\";b:0;s:14:\"cache_lifetime\";i:0;s:10:\"cache_tags\";s:0:\"\";s:5:\"roles\";a:0:{}s:5:\"media\";a:0:{}s:9:\"throw_404\";b:0;s:8:\"\0*\0_data\";a:6:{s:5:\"ds_id\";i:1;s:8:\"continue\";s:0:\"\";s:12:\"sort_by_rand\";b:0;s:10:\"search_key\";s:0:\"\";s:2:\"sf\";s:10:\"created_on\";s:5:\"field\";N;}}');
INSERT INTO `widgets` VALUES ('16','page_search','0','ddd','','2014-05-28 11:29:31','O:24:\"Model_Widget_Page_Search\":13:{s:10:\"cache_tags\";s:5:\"pages\";s:9:\"\0*\0_total\";i:0;s:11:\"list_offset\";i:0;s:9:\"list_size\";i:10;s:6:\"header\";s:0:\"\";s:6:\"crumbs\";b:0;s:11:\"use_caching\";b:1;s:7:\"caching\";b:0;s:14:\"cache_lifetime\";i:0;s:5:\"roles\";a:0:{}s:5:\"media\";a:0:{}s:9:\"throw_404\";b:0;s:8:\"\0*\0_data\";a:2:{s:10:\"search_key\";s:3:\"key\";s:8:\"continue\";s:0:\"\";}}');



SET FOREIGN_KEY_CHECKS = 1;

--

--
-- THE END
--

