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

INSERT INTO `api_keys` VALUES ('6847df37-d54f-0288-08d9-5342c1ab3bb8','KodiCMS API key','2014-04-02 17:16:48');



--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `path` varchar(64) NOT NULL,
  `path_part` varchar(64) NOT NULL,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `lft` int(10) unsigned DEFAULT NULL,
  `rgt` int(10) unsigned DEFAULT NULL,
  `lvl` int(10) unsigned DEFAULT NULL,
  `scope` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--




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

INSERT INTO `config` VALUES ('api','key','s:36:\"6847df37-d54f-0288-08d9-5342c1ab3bb8\";');
INSERT INTO `config` VALUES ('api','mode','s:2:\"no\";');
INSERT INTO `config` VALUES ('cache','front_page','i:86400;');
INSERT INTO `config` VALUES ('cache','page_parts','i:86400;');
INSERT INTO `config` VALUES ('cache','tags','i:86400;');
INSERT INTO `config` VALUES ('email','default','s:18:\"admin@yoursite.com\";');
INSERT INTO `config` VALUES ('email','driver','s:6:\"native\";');
INSERT INTO `config` VALUES ('email_queue','batch_size','i:50;');
INSERT INTO `config` VALUES ('email_queue','interval','i:120;');
INSERT INTO `config` VALUES ('email_queue','max_attempts','i:5;');
INSERT INTO `config` VALUES ('job','agent','s:1:\"0\";');
INSERT INTO `config` VALUES ('oauth','accounts','a:7:{s:2:\"vk\";a:2:{s:2:\"id\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:7:\"twitter\";a:2:{s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:8:\"facebook\";a:2:{s:2:\"id\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"yandex\";a:2:{s:2:\"id\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"google\";a:2:{s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"github\";a:2:{s:2:\"id\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"disqus\";a:2:{s:2:\"id\";s:0:\"\";s:6:\"secret\";s:0:\"\";}}');
INSERT INTO `config` VALUES ('oauth','register','i:0;');
INSERT INTO `config` VALUES ('page','check_date','s:2:\"no\";');
INSERT INTO `config` VALUES ('site','allow_html_title','s:3:\"off\";');
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

INSERT INTO `datasources` VALUES ('1','hybrid','0','0','News','Desription','2014-04-02 17:18:00','2014-04-03 13:05:54','0','O:25:\"DataSource_Section_Hybrid\":11:{s:12:\"\0*\0_ds_table\";s:8:\"dshybrid\";s:8:\"\0*\0_type\";s:6:\"hybrid\";s:16:\"\0*\0_widget_types\";a:2:{i:0;s:15:\"hybrid_headline\";i:1;s:15:\"hybrid_document\";}s:19:\"search_index_fields\";a:0:{}s:18:\"search_intro_field\";N;s:8:\"template\";N;s:6:\"\0*\0_id\";i:1;s:4:\"name\";s:4:\"News\";s:11:\"description\";s:10:\"Desription\";s:12:\"\0*\0_headline\";O:34:\"Datasource_Section_Hybrid_Headline\":3:{s:11:\"\0*\0_sorting\";a:1:{i:0;a:1:{s:10:\"created_on\";s:4:\"desc\";}}s:9:\"\0*\0_limit\";i:20;s:10:\"\0*\0_offset\";i:0;}s:23:\"\0*\0_document_class_name\";s:26:\"Datasource_Hybrid_Document\";}');
INSERT INTO `datasources` VALUES ('2','hybrid','0','0','Events','','2014-04-02 17:18:13','2014-04-02 17:18:13','0','O:25:\"DataSource_Section_Hybrid\":11:{s:12:\"\0*\0_ds_table\";s:8:\"dshybrid\";s:8:\"\0*\0_type\";s:6:\"hybrid\";s:16:\"\0*\0_widget_types\";a:2:{i:0;s:15:\"hybrid_headline\";i:1;s:15:\"hybrid_document\";}s:19:\"search_index_fields\";a:0:{}s:18:\"search_intro_field\";N;s:8:\"template\";N;s:6:\"\0*\0_id\";i:2;s:4:\"name\";s:6:\"Events\";s:11:\"description\";s:0:\"\";s:12:\"\0*\0_headline\";O:34:\"Datasource_Section_Hybrid_Headline\":3:{s:11:\"\0*\0_sorting\";a:1:{i:0;a:1:{s:10:\"created_on\";s:4:\"desc\";}}s:9:\"\0*\0_limit\";i:20;s:10:\"\0*\0_offset\";i:0;}s:23:\"\0*\0_document_class_name\";s:26:\"Datasource_Hybrid_Document\";}');
INSERT INTO `datasources` VALUES ('3','hybrid','0','0','test','test','2014-04-04 08:35:36','2014-04-04 08:35:36','0','O:25:\"DataSource_Section_Hybrid\":11:{s:12:\"\0*\0_ds_table\";s:8:\"dshybrid\";s:8:\"\0*\0_type\";s:6:\"hybrid\";s:16:\"\0*\0_widget_types\";a:2:{i:0;s:15:\"hybrid_headline\";i:1;s:15:\"hybrid_document\";}s:19:\"search_index_fields\";a:0:{}s:18:\"search_intro_field\";N;s:8:\"template\";N;s:6:\"\0*\0_id\";i:3;s:4:\"name\";s:4:\"test\";s:11:\"description\";s:4:\"test\";s:12:\"\0*\0_headline\";O:34:\"Datasource_Section_Hybrid_Headline\":3:{s:11:\"\0*\0_sorting\";a:1:{i:0;a:1:{s:10:\"created_on\";s:4:\"desc\";}}s:9:\"\0*\0_limit\";i:20;s:10:\"\0*\0_offset\";i:0;}s:23:\"\0*\0_document_class_name\";s:26:\"Datasource_Hybrid_Document\";}');



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

INSERT INTO `dshfields` VALUES ('1','2','f_place','primitive','yandex_map','Place','0','a:5:{s:7:\"default\";s:20:\"55.753994, 37.622093\";s:4:\"hint\";s:0:\"\";s:5:\"isreq\";b:0;s:11:\"in_headline\";b:0;s:8:\"continue\";s:0:\"\";}','500');
INSERT INTO `dshfields` VALUES ('2','1','f_event','source','source_document','Event','2','a:5:{s:5:\"isreq\";b:0;s:7:\"ds_type\";s:6:\"hybrid\";s:10:\"one_to_one\";b:0;s:4:\"hint\";s:0:\"\";s:11:\"in_headline\";b:0;}','500');



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




--
-- Table structure for table `dshybrid_1`
--

CREATE TABLE `dshybrid_1` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `f_event` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dshybrid_1`
--




--
-- Table structure for table `dshybrid_2`
--

CREATE TABLE `dshybrid_2` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `f_place` varchar(50) DEFAULT '55.753994, 37.622093',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dshybrid_2`
--




--
-- Table structure for table `dshybrid_3`
--

CREATE TABLE `dshybrid_3` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dshybrid_3`
--




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
INSERT INTO `email_types` VALUES ('4','wiget_sendmail_11',' Send mail (sender)','');



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
INSERT INTO `layout_blocks` VALUES ('normal','body','3');
INSERT INTO `layout_blocks` VALUES ('normal','bradcrumbs','1');
INSERT INTO `layout_blocks` VALUES ('normal','extended','5');
INSERT INTO `layout_blocks` VALUES ('normal','footer','8');
INSERT INTO `layout_blocks` VALUES ('normal','header','0');
INSERT INTO `layout_blocks` VALUES ('normal','pagination','4');
INSERT INTO `layout_blocks` VALUES ('normal','recent','7');
INSERT INTO `layout_blocks` VALUES ('normal','sidebar','6');
INSERT INTO `layout_blocks` VALUES ('normal','top_banner','2');
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

INSERT INTO `logs` VALUES ('1','2014-04-02 17:16:50','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"178.215.93.51\"}');
INSERT INTO `logs` VALUES ('2','2014-04-02 17:17:33','1','6','<a href=\"/backend/users/profile/1\">@demo</a> install plugin \"CKEditor\"','{\":url\":\"\\/api-plugins\\/ckeditor\",\":ip\":\"178.215.93.51\"}');
INSERT INTO `logs` VALUES ('3','2014-04-02 17:17:35','1','6','<a href=\"/backend/users/profile/1\">@demo</a> install plugin \"Hybrid Datasource\"','{\":url\":\"\\/api-plugins\\/hybrid\",\":ip\":\"178.215.93.51\"}');
INSERT INTO `logs` VALUES ('4','2014-04-02 17:17:38','1','6','<a href=\"/backend/users/profile/1\">@demo</a> install plugin \"Page fields\"','{\":url\":\"\\/api-plugins\\/page_fields\",\":ip\":\"178.215.93.51\"}');
INSERT INTO `logs` VALUES ('5','2014-04-02 17:17:41','1','6','<a href=\"/backend/users/profile/1\">@demo</a> install plugin \"Типограф Муравьёва 3.0\"','{\":url\":\"\\/api-plugins\\/typograf\",\":ip\":\"178.215.93.51\"}');
INSERT INTO `logs` VALUES ('6','2014-04-02 20:45:14','0','0','HTTP_Exception_404 [ 404 ]: The requested URL backend/setting was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\\/setting\",\":ip\":\"188.163.83.246\"}');
INSERT INTO `logs` VALUES ('7','2014-04-02 21:40:16','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"91.202.27.177\"}');
INSERT INTO `logs` VALUES ('8','2014-04-02 21:40:16','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"91.202.27.177\"}');
INSERT INTO `logs` VALUES ('9','2014-04-03 01:52:28','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"68.174.221.54\"}');
INSERT INTO `logs` VALUES ('10','2014-04-03 01:52:28','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"68.174.221.54\"}');
INSERT INTO `logs` VALUES ('11','2014-04-03 04:21:50','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"178.215.93.51\"}');
INSERT INTO `logs` VALUES ('12','2014-04-03 04:21:50','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"178.215.93.51\"}');
INSERT INTO `logs` VALUES ('13','2014-04-03 06:32:59','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('14','2014-04-03 06:32:59','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('15','2014-04-03 06:35:29','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"85.172.109.195\"}');
INSERT INTO `logs` VALUES ('16','2014-04-03 06:35:29','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"85.172.109.195\"}');
INSERT INTO `logs` VALUES ('17','2014-04-03 07:33:52','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"31.163.203.56\"}');
INSERT INTO `logs` VALUES ('18','2014-04-03 07:33:52','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"31.163.203.56\"}');
INSERT INTO `logs` VALUES ('19','2014-04-03 11:05:52','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"85.172.109.195\"}');
INSERT INTO `logs` VALUES ('20','2014-04-03 11:05:52','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"85.172.109.195\"}');
INSERT INTO `logs` VALUES ('21','2014-04-03 11:11:05','0','1','Try to login with username: demo. Incorrect data','{\":url\":\"\\/backend\\/login\",\":ip\":\"212.111.199.50\"}');
INSERT INTO `logs` VALUES ('22','2014-04-03 11:11:15','0','1','Try to login with username: demo. Incorrect data','{\":url\":\"\\/backend\\/login\",\":ip\":\"212.111.199.50\"}');
INSERT INTO `logs` VALUES ('23','2014-04-03 11:11:40','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"212.111.199.50\"}');
INSERT INTO `logs` VALUES ('24','2014-04-03 11:11:40','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"212.111.199.50\"}');
INSERT INTO `logs` VALUES ('25','2014-04-03 11:13:28','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('26','2014-04-03 11:13:28','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('27','2014-04-03 13:04:02','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('28','2014-04-03 13:04:02','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('29','2014-04-03 13:05:38','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('30','2014-04-03 13:20:08','1','0','ErrorException [ 1 ]: Call to a member function record() on a non-object ~ DOCROOT/cms/plugins/hybrid/classes/controller/api/datasource/hybrid/field.php [ 24 ]','{\"exception\":{},\":url\":\"\\/api\\/datasource\\/hybrid-field.delete\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('31','2014-04-03 13:20:10','1','0','ErrorException [ 1 ]: Call to a member function record() on a non-object ~ DOCROOT/cms/plugins/hybrid/classes/controller/api/datasource/hybrid/field.php [ 24 ]','{\"exception\":{},\":url\":\"\\/api\\/datasource\\/hybrid-field.delete\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('32','2014-04-03 13:20:13','1','0','ErrorException [ 1 ]: Call to a member function record() on a non-object ~ DOCROOT/cms/plugins/hybrid/classes/controller/api/datasource/hybrid/field.php [ 24 ]','{\"exception\":{},\":url\":\"\\/api\\/datasource\\/hybrid-field.delete\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('33','2014-04-03 13:20:57','1','0','HTTP_Exception_110 [ 110 ]: Missing param ds_id ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/api\\/datasource\\/hybrid-field.delete\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('34','2014-04-03 13:21:04','1','0','HTTP_Exception_110 [ 110 ]: Missing param ds_id ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/api\\/datasource\\/hybrid-field.delete\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('35','2014-04-03 13:21:27','1','0','HTTP_Exception_110 [ 110 ]: Missing param ds_id ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/api\\/datasource\\/hybrid-field.delete\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('36','2014-04-03 13:21:27','1','0','HTTP_Exception_110 [ 110 ]: Missing param ds_id ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/api\\/datasource\\/hybrid-field.delete\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('37','2014-04-03 13:21:28','1','0','HTTP_Exception_110 [ 110 ]: Missing param ds_id ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/api\\/datasource\\/hybrid-field.delete\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('38','2014-04-03 13:21:28','1','0','HTTP_Exception_110 [ 110 ]: Missing param ds_id ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/api\\/datasource\\/hybrid-field.delete\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('39','2014-04-03 13:21:34','1','0','HTTP_Exception_110 [ 110 ]: Missing param field ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/api\\/datasource\\/hybrid-field.delete\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('40','2014-04-03 13:30:09','1','0','UnexpectedValueException [ 0 ]: DirectoryIterator::__construct(/var/www/demo.kodicms/public/hybrid/1/image): failed to open dir: Too many open files ~ MODPATH/filesystem/classes/filesystem.php [ 64 ]','{\"exception\":{\"severity\":2},\":url\":\"\\/api\\/datasource\\/hybrid-field.delete\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('41','2014-04-03 13:30:26','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('42','2014-04-03 13:30:28','1','0','UnexpectedValueException [ 0 ]: DirectoryIterator::__construct(/var/www/demo.kodicms/public/hybrid/1/image): failed to open dir: Too many open files ~ MODPATH/filesystem/classes/filesystem.php [ 64 ]','{\"exception\":{\"severity\":2},\":url\":\"\\/api\\/datasource\\/hybrid-field.delete\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('43','2014-04-03 13:35:50','1','0','ErrorException [ 4 ]: syntax error, unexpected \';\' ~ MODPATH/filesystem/classes/filesystem/directory.php [ 44 ]','{\"exception\":{},\":url\":\"\\/api\\/datasource\\/hybrid-field.delete\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('44','2014-04-03 13:37:14','1','0','ErrorException [ 4 ]: syntax error, unexpected end of file, expecting variable (T_VARIABLE) or \'$\' ~ MODPATH/filesystem/classes/filesystem.php [ 221 ]','{\"exception\":{},\":url\":\"\\/api\\/datasource\\/hybrid-field.delete\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('45','2014-04-03 13:38:20','1','0','Kohana_Exception [ 0 ]: Directory or file  not found ~ MODPATH/filesystem/classes/filesystem.php [ 70 ]','{\"exception\":{},\":url\":\"\\/api\\/datasource\\/hybrid-field.delete\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('46','2014-04-03 13:38:22','1','0','Kohana_Exception [ 0 ]: Directory or file  not found ~ MODPATH/filesystem/classes/filesystem.php [ 70 ]','{\"exception\":{},\":url\":\"\\/api\\/datasource\\/hybrid-field.delete\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('47','2014-04-03 13:39:39','1','0','ErrorException [ 2 ]: rmdir(/var/www/demo.kodicms/public/hybrid/1): Каталог не пуст ~ MODPATH/filesystem/classes/filesystem/directory.php [ 54 ]','{\"exception\":{},\":url\":\"\\/api\\/datasource\\/hybrid-field.delete\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('48','2014-04-03 13:39:54','1','0','ErrorException [ 2 ]: rmdir(/var/www/demo.kodicms/public/hybrid/1): Directory not empty ~ MODPATH/filesystem/classes/filesystem/directory.php [ 54 ]','{\"exception\":{},\":url\":\"\\/api\\/datasource\\/hybrid-field.delete\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('49','2014-04-03 13:39:56','1','0','ErrorException [ 2 ]: rmdir(/var/www/demo.kodicms/public/hybrid/1): Каталог не пуст ~ MODPATH/filesystem/classes/filesystem/directory.php [ 54 ]','{\"exception\":{},\":url\":\"\\/api\\/datasource\\/hybrid-field.delete\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('50','2014-04-03 13:39:58','1','0','ErrorException [ 2 ]: rmdir(/var/www/demo.kodicms/public/hybrid/1): Каталог не пуст ~ MODPATH/filesystem/classes/filesystem/directory.php [ 54 ]','{\"exception\":{},\":url\":\"\\/api\\/datasource\\/hybrid-field.delete\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('51','2014-04-03 13:39:58','1','0','ErrorException [ 2 ]: rmdir(/var/www/demo.kodicms/public/hybrid/1): Directory not empty ~ MODPATH/filesystem/classes/filesystem/directory.php [ 54 ]','{\"exception\":{},\":url\":\"\\/api\\/datasource\\/hybrid-field.delete\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('52','2014-04-03 13:39:59','1','0','ErrorException [ 2 ]: rmdir(/var/www/demo.kodicms/public/hybrid/1): Directory not empty ~ MODPATH/filesystem/classes/filesystem/directory.php [ 54 ]','{\"exception\":{},\":url\":\"\\/api\\/datasource\\/hybrid-field.delete\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('53','2014-04-03 13:40:00','1','0','ErrorException [ 2 ]: rmdir(/var/www/demo.kodicms/public/hybrid/1): Directory not empty ~ MODPATH/filesystem/classes/filesystem/directory.php [ 54 ]','{\"exception\":{},\":url\":\"\\/api\\/datasource\\/hybrid-field.delete\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('54','2014-04-03 13:40:46','1','0','ErrorException [ 2 ]: rmdir(/var/www/demo.kodicms/public/hybrid/1): Каталог не пуст ~ MODPATH/filesystem/classes/filesystem/directory.php [ 57 ]','{\"exception\":{},\":url\":\"\\/api\\/datasource\\/hybrid-field.delete\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('55','2014-04-03 13:40:48','1','0','ErrorException [ 2 ]: rmdir(/var/www/demo.kodicms/public/hybrid/1): Каталог не пуст ~ MODPATH/filesystem/classes/filesystem/directory.php [ 57 ]','{\"exception\":{},\":url\":\"\\/api\\/datasource\\/hybrid-field.delete\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('56','2014-04-03 18:26:13','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"142.32.208.237\"}');
INSERT INTO `logs` VALUES ('57','2014-04-03 18:26:13','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"142.32.208.237\"}');
INSERT INTO `logs` VALUES ('58','2014-04-03 18:26:50','1','6','<a href=\"/backend/users/profile/1\">@demo</a> install plugin \"Google Analytics\"','{\":url\":\"\\/api-plugins\\/googleanalytics\",\":ip\":\"142.32.208.237\"}');
INSERT INTO `logs` VALUES ('59','2014-04-04 06:07:27','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('60','2014-04-04 06:07:27','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('61','2014-04-04 06:07:35','1','6','Email type :type has been updated by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/email\\/types\\/edit\\/3\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('62','2014-04-04 06:08:08','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"185.2.28.4\"}');
INSERT INTO `logs` VALUES ('63','2014-04-04 06:08:08','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"185.2.28.4\"}');
INSERT INTO `logs` VALUES ('64','2014-04-04 07:24:30','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('65','2014-04-04 07:24:30','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('66','2014-04-04 07:24:54','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('67','2014-04-04 07:26:20','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('68','2014-04-04 07:26:54','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('69','2014-04-04 07:41:23','0','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"85.172.109.195\"}');
INSERT INTO `logs` VALUES ('70','2014-04-04 07:41:30','0','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"85.172.109.195\"}');
INSERT INTO `logs` VALUES ('71','2014-04-04 07:42:42','0','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('72','2014-04-04 07:42:48','0','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('73','2014-04-04 07:42:49','0','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('74','2014-04-04 07:42:49','0','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('75','2014-04-04 07:42:50','0','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('76','2014-04-04 07:42:50','0','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('77','2014-04-04 07:42:50','0','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('78','2014-04-04 07:43:05','0','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('79','2014-04-04 07:43:11','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('80','2014-04-04 07:43:11','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('81','2014-04-04 07:43:12','1','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('82','2014-04-04 07:43:32','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('83','2014-04-04 07:44:11','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"85.172.109.195\"}');
INSERT INTO `logs` VALUES ('84','2014-04-04 07:44:11','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"85.172.109.195\"}');
INSERT INTO `logs` VALUES ('85','2014-04-04 07:46:35','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('86','2014-04-04 07:46:36','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('87','2014-04-04 07:47:17','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('88','2014-04-04 07:47:45','1','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('89','2014-04-04 07:47:52','1','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('90','2014-04-04 07:48:12','0','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('91','2014-04-04 07:48:25','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('92','2014-04-04 07:48:25','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('93','2014-04-04 07:48:48','1','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('94','2014-04-04 07:49:07','1','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"85.172.109.195\"}');
INSERT INTO `logs` VALUES ('95','2014-04-04 07:49:09','1','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"85.172.109.195\"}');
INSERT INTO `logs` VALUES ('96','2014-04-04 07:49:37','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('97','2014-04-04 07:49:57','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('98','2014-04-04 07:50:32','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('99','2014-04-04 07:50:41','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('100','2014-04-04 07:51:00','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('101','2014-04-04 07:51:31','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('102','2014-04-04 07:53:48','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('103','2014-04-04 07:54:02','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('104','2014-04-04 07:54:20','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('105','2014-04-04 07:54:36','1','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('106','2014-04-04 07:55:06','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('107','2014-04-04 07:55:17','1','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('108','2014-04-04 07:56:44','1','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('109','2014-04-04 07:57:03','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('110','2014-04-04 07:57:25','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('111','2014-04-04 07:59:53','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('112','2014-04-04 07:59:58','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('113','2014-04-04 08:00:29','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('114','2014-04-04 08:01:48','0','1','Try to login with username: demoadmin. Incorrect data','{\":url\":\"\\/backend\\/login\",\":ip\":\"190.176.21.44\"}');
INSERT INTO `logs` VALUES ('115','2014-04-04 08:01:57','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('116','2014-04-04 08:02:01','0','1','Try to login with username: admin. Incorrect data','{\":url\":\"\\/backend\\/login\",\":ip\":\"190.176.21.44\"}');
INSERT INTO `logs` VALUES ('117','2014-04-04 08:02:06','0','1','Try to login with username: demo. Incorrect data','{\":url\":\"\\/backend\\/login\",\":ip\":\"190.176.21.44\"}');
INSERT INTO `logs` VALUES ('118','2014-04-04 08:02:15','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"190.176.21.44\"}');
INSERT INTO `logs` VALUES ('119','2014-04-04 08:02:15','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"190.176.21.44\"}');
INSERT INTO `logs` VALUES ('120','2014-04-04 08:02:53','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('121','2014-04-04 08:03:19','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('122','2014-04-04 08:03:22','1','0','HTTP_Exception_110 [ 110 ]: Missing param pid ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/api\\/page-parts\",\":ip\":\"190.176.21.44\"}');
INSERT INTO `logs` VALUES ('123','2014-04-04 08:03:47','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('124','2014-04-04 08:04:20','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('125','2014-04-04 08:04:26','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('126','2014-04-04 08:04:37','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('127','2014-04-04 08:04:48','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('128','2014-04-04 08:05:04','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('129','2014-04-04 08:06:00','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('130','2014-04-04 08:06:04','1','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('131','2014-04-04 08:06:07','1','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('132','2014-04-04 08:06:09','1','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('133','2014-04-04 08:06:44','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('134','2014-04-04 08:06:50','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('135','2014-04-04 08:07:09','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('136','2014-04-04 08:07:41','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('137','2014-04-04 08:10:24','0','1','Try to login with username: DEMO. Incorrect data','{\":url\":\"\\/backend\\/login\",\":ip\":\"188.93.247.122\"}');
INSERT INTO `logs` VALUES ('138','2014-04-04 08:10:32','0','1','Try to login with username: demo. Incorrect data','{\":url\":\"\\/backend\\/login\",\":ip\":\"188.93.247.122\"}');
INSERT INTO `logs` VALUES ('139','2014-04-04 08:11:28','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('140','2014-04-04 08:12:25','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('141','2014-04-04 08:12:49','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('142','2014-04-04 08:12:56','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('143','2014-04-04 08:13:07','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('144','2014-04-04 08:16:33','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('145','2014-04-04 08:16:44','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('146','2014-04-04 08:17:01','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('147','2014-04-04 08:17:08','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('148','2014-04-04 08:17:18','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('149','2014-04-04 08:40:32','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"190.176.21.44\"}');
INSERT INTO `logs` VALUES ('150','2014-04-04 09:20:19','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"190.176.17.30\"}');
INSERT INTO `logs` VALUES ('151','2014-04-04 10:17:15','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('152','2014-04-04 10:17:15','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('153','2014-04-04 10:50:40','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('154','2014-04-04 11:19:18','0','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('155','2014-04-04 11:19:22','0','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('156','2014-04-04 11:19:31','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('157','2014-04-04 11:19:31','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('158','2014-04-04 11:20:01','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('159','2014-04-04 11:20:14','1','0','HTTP_Exception_110 [ 110 ]: Missing param pid ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/api\\/page-parts\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('160','2014-04-04 11:20:46','1','6','Page 13 edited by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/add\\/11\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('161','2014-04-04 11:20:46','1','6','Page 13 added by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/add\\/11\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('162','2014-04-04 11:20:46','1','6','Page 13 added by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/add\\/11\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('163','2014-04-04 11:20:48','1','0','HTTP_Exception_110 [ 110 ]: Missing param pid ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/api\\/page-parts\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('164','2014-04-04 11:20:58','1','6','Page 14 added by <a href=\"/backend/users/profile/1\">@demo</a>','{\":url\":\"\\/backend\\/page\\/add\\/11\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('165','2014-04-04 11:21:57','1','0','ErrorException [ 2 ]: array_combine() expects parameter 2 to be array, null given ~ MODPATH/email/classes/model/email/type.php [ 182 ]','{\"exception\":{},\":url\":\"\\/backend\\/widgets\\/edit\\/11\",\":ip\":\"75.157.130.245\"}');
INSERT INTO `logs` VALUES ('166','2014-04-04 13:16:38','0','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"213.87.135.198\"}');
INSERT INTO `logs` VALUES ('167','2014-04-04 13:16:41','0','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"213.87.135.198\"}');
INSERT INTO `logs` VALUES ('168','2014-04-04 13:18:24','0','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"213.87.135.198\"}');
INSERT INTO `logs` VALUES ('169','2014-04-04 13:18:31','0','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"213.87.135.198\"}');
INSERT INTO `logs` VALUES ('170','2014-04-04 13:58:53','0','0','HTTP_Exception_404 [ 404 ]: The requested URL backend was not found on this server. ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/backend\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('171','2014-04-04 13:59:03','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('172','2014-04-04 13:59:03','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('173','2014-04-04 13:59:10','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('174','2014-04-05 03:27:54','0','1','Try to login with username: admin. Incorrect data','{\":url\":\"\\/backend\\/login\",\":ip\":\"85.233.149.94\"}');
INSERT INTO `logs` VALUES ('175','2014-04-05 11:51:19','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"178.215.93.51\"}');
INSERT INTO `logs` VALUES ('176','2014-04-05 11:51:20','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"178.215.93.51\"}');
INSERT INTO `logs` VALUES ('177','2014-04-05 11:51:45','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"178.215.93.51\"}');
INSERT INTO `logs` VALUES ('178','2014-04-05 19:37:41','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"178.215.93.51\"}');
INSERT INTO `logs` VALUES ('179','2014-04-05 19:37:42','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"178.215.93.51\"}');
INSERT INTO `logs` VALUES ('180','2014-04-05 21:02:45','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"176.36.246.178\"}');
INSERT INTO `logs` VALUES ('181','2014-04-05 21:02:45','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"176.36.246.178\"}');
INSERT INTO `logs` VALUES ('182','2014-04-05 23:31:06','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"91.241.207.171\"}');
INSERT INTO `logs` VALUES ('183','2014-04-05 23:31:06','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"91.241.207.171\"}');
INSERT INTO `logs` VALUES ('184','2014-04-06 06:24:00','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"178.136.241.156\"}');
INSERT INTO `logs` VALUES ('185','2014-04-06 06:24:00','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"178.136.241.156\"}');
INSERT INTO `logs` VALUES ('186','2014-04-06 06:24:06','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"178.136.241.156\"}');
INSERT INTO `logs` VALUES ('187','2014-04-06 06:24:07','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"178.136.241.156\"}');
INSERT INTO `logs` VALUES ('188','2014-04-06 06:30:03','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"88.102.164.216\"}');
INSERT INTO `logs` VALUES ('189','2014-04-06 06:30:03','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"88.102.164.216\"}');
INSERT INTO `logs` VALUES ('190','2014-04-06 06:34:23','1','6','<a href=\"/backend/users/profile/1\">@demo</a> install plugin \"Backup DB\"','{\":url\":\"\\/api-plugins\\/backup\",\":ip\":\"88.102.164.216\"}');
INSERT INTO `logs` VALUES ('191','2014-04-06 06:34:28','1','6','<a href=\"/backend/users/profile/1\">@demo</a> install plugin \"User messages\"','{\":url\":\"\\/api-plugins\\/messages\",\":ip\":\"88.102.164.216\"}');
INSERT INTO `logs` VALUES ('192','2014-04-06 06:34:53','1','6','<a href=\"/backend/users/profile/1\">@demo</a> create database backup','{\":url\":\"\\/backend\\/backup\\/database\",\":ip\":\"88.102.164.216\"}');
INSERT INTO `logs` VALUES ('193','2014-04-06 06:38:53','1','0','HTTP_Exception_110 [ 110 ]: Missing param pid ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/api\\/page-parts\",\":ip\":\"88.102.164.216\"}');
INSERT INTO `logs` VALUES ('194','2014-04-06 06:39:04','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"88.102.164.216\"}');
INSERT INTO `logs` VALUES ('195','2014-04-06 06:39:05','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"88.102.164.216\"}');
INSERT INTO `logs` VALUES ('196','2014-04-06 06:39:26','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"88.102.164.216\"}');
INSERT INTO `logs` VALUES ('197','2014-04-06 09:53:26','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.43.254.237\"}');
INSERT INTO `logs` VALUES ('198','2014-04-06 09:53:26','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.43.254.237\"}');
INSERT INTO `logs` VALUES ('199','2014-04-06 10:12:27','0','1','Try to login with username: admin. Incorrect data','{\":url\":\"\\/backend\\/login\",\":ip\":\"194.145.199.2\"}');
INSERT INTO `logs` VALUES ('200','2014-04-06 10:12:31','0','1','Try to login with username: admin. Incorrect data','{\":url\":\"\\/backend\\/login\",\":ip\":\"194.145.199.2\"}');
INSERT INTO `logs` VALUES ('201','2014-04-06 10:13:02','0','1','Try to login with username: demo. Incorrect data','{\":url\":\"\\/backend\\/login\",\":ip\":\"194.145.199.2\"}');
INSERT INTO `logs` VALUES ('202','2014-04-06 17:15:07','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"178.215.93.51\"}');
INSERT INTO `logs` VALUES ('203','2014-04-06 17:15:07','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"178.215.93.51\"}');
INSERT INTO `logs` VALUES ('204','2014-04-06 17:16:23','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"178.215.93.51\"}');
INSERT INTO `logs` VALUES ('205','2014-04-06 17:56:27','0','1','Try to login with username: admin. Incorrect data','{\":url\":\"\\/backend\\/login\",\":ip\":\"46.119.136.106\"}');
INSERT INTO `logs` VALUES ('206','2014-04-06 17:56:43','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"46.119.136.106\"}');
INSERT INTO `logs` VALUES ('207','2014-04-06 17:56:43','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"46.119.136.106\"}');
INSERT INTO `logs` VALUES ('208','2014-04-06 17:56:57','1','0','HTTP_Exception_110 [ 110 ]: Missing param pid ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/api\\/page-parts\",\":ip\":\"46.119.136.106\"}');
INSERT INTO `logs` VALUES ('209','2014-04-06 18:28:12','0','1','Try to login with username: demo. Incorrect data','{\":url\":\"\\/backend\\/login\",\":ip\":\"5.248.101.33\"}');
INSERT INTO `logs` VALUES ('210','2014-04-06 19:02:54','0','1','Try to login with username: admin. Incorrect data','{\":url\":\"\\/backend\\/login\",\":ip\":\"194.67.153.78\"}');
INSERT INTO `logs` VALUES ('211','2014-04-06 19:02:59','0','1','Try to login with username: admin. Incorrect data','{\":url\":\"\\/backend\\/login\",\":ip\":\"194.67.153.78\"}');
INSERT INTO `logs` VALUES ('212','2014-04-06 19:03:03','0','1','Try to login with username: demo. Incorrect data','{\":url\":\"\\/backend\\/login\",\":ip\":\"194.67.153.78\"}');
INSERT INTO `logs` VALUES ('213','2014-04-06 20:14:47','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"217.170.169.17\"}');
INSERT INTO `logs` VALUES ('214','2014-04-06 20:14:47','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"217.170.169.17\"}');
INSERT INTO `logs` VALUES ('215','2014-04-06 20:15:19','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"217.170.169.17\"}');
INSERT INTO `logs` VALUES ('216','2014-04-06 20:15:19','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"217.170.169.17\"}');
INSERT INTO `logs` VALUES ('217','2014-04-06 20:17:57','1','0','ErrorException [ 2 ]: explode() expects parameter 2 to be string, array given ~ DOCROOT/cms/plugins/hybrid/classes/datasource/hybrid/field/yandex/map.php [ 15 ]','{\"exception\":{},\":url\":\"\\/backend\\/hybrid\\/document\\/create\",\":ip\":\"217.170.169.17\"}');
INSERT INTO `logs` VALUES ('218','2014-04-06 21:03:20','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"194.145.199.2\"}');
INSERT INTO `logs` VALUES ('219','2014-04-06 21:03:20','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"194.145.199.2\"}');
INSERT INTO `logs` VALUES ('220','2014-04-06 21:03:35','1','6','<a href=\"/backend/users/profile/1\">@demo</a> change Settings','{\":url\":\"\\/api-settings.save\",\":ip\":\"194.145.199.2\"}');
INSERT INTO `logs` VALUES ('221','2014-04-06 21:04:34','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"194.145.199.2\"}');
INSERT INTO `logs` VALUES ('222','2014-04-06 21:04:34','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"194.145.199.2\"}');
INSERT INTO `logs` VALUES ('223','2014-04-06 23:37:25','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"203.206.169.245\"}');
INSERT INTO `logs` VALUES ('224','2014-04-06 23:37:25','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"203.206.169.245\"}');
INSERT INTO `logs` VALUES ('225','2014-04-07 07:16:35','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('226','2014-04-07 07:16:35','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('227','2014-04-07 07:18:56','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('228','2014-04-07 07:18:56','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"77.238.226.177\"}');
INSERT INTO `logs` VALUES ('229','2014-04-07 08:27:39','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"89.178.29.250\"}');
INSERT INTO `logs` VALUES ('230','2014-04-07 08:27:39','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"89.178.29.250\"}');
INSERT INTO `logs` VALUES ('231','2014-04-07 08:30:27','1','0','HTTP_Exception_110 [ 110 ]: Missing param term ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/api-tags\",\":ip\":\"89.178.29.250\"}');
INSERT INTO `logs` VALUES ('232','2014-04-07 08:30:29','1','0','HTTP_Exception_110 [ 110 ]: Missing param term ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/api-tags\",\":ip\":\"89.178.29.250\"}');
INSERT INTO `logs` VALUES ('233','2014-04-07 08:33:25','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"89.178.29.250\"}');
INSERT INTO `logs` VALUES ('234','2014-04-07 10:23:00','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"89.178.29.250\"}');
INSERT INTO `logs` VALUES ('235','2014-04-07 10:23:00','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"89.178.29.250\"}');
INSERT INTO `logs` VALUES ('236','2014-04-07 13:37:32','0','1','Try to login with username: admin. Incorrect data','{\":url\":\"\\/backend\\/login\",\":ip\":\"81.25.45.234\"}');
INSERT INTO `logs` VALUES ('237','2014-04-07 13:37:46','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"81.25.45.234\"}');
INSERT INTO `logs` VALUES ('238','2014-04-07 13:37:46','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"81.25.45.234\"}');
INSERT INTO `logs` VALUES ('239','2014-04-07 13:41:36','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"81.25.45.234\"}');
INSERT INTO `logs` VALUES ('240','2014-04-07 15:13:39','0','6','User <a href=\"/backend/users/profile/1\">demo</a> has been updated by <a href=\"/backend/users/profile\">@</a>','{\":url\":\"\\/backend\\/login\",\":ip\":\"95.84.192.42\"}');
INSERT INTO `logs` VALUES ('241','2014-04-07 15:13:39','1','6','<a href=\"/backend/users/profile/1\">@demo</a> login','{\":url\":\"\\/backend\\/login\",\":ip\":\"95.84.192.42\"}');
INSERT INTO `logs` VALUES ('242','2014-04-07 15:14:16','1','0','HTTP_Exception_110 [ 110 ]: Missing param pid ~ SYSPATH/classes/kohana/http/exception.php [ 17 ]','{\"exception\":{},\":url\":\"\\/api\\/page-parts\",\":ip\":\"95.84.192.42\"}');
INSERT INTO `logs` VALUES ('243','2014-04-07 15:14:52','1','0','HTTP_Exception_404 [ 404 ]:  ~ MODPATH/kodicms/classes/kodicms/controller/system/media.php [ 35 ]','{\"exception\":{},\":url\":\"\\/cms\\/media\\/libs\\/elfinder\\/js\\/i18n\\/elfinder.en.js\",\":ip\":\"95.84.192.42\"}');



--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created_on` datetime NOT NULL,
  `from_user_id` int(11) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--




--
-- Table structure for table `messages_users`
--

CREATE TABLE `messages_users` (
  `message_id` int(11) unsigned NOT NULL,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `status` int(3) NOT NULL DEFAULT '1',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`message_id`,`user_id`),
  KEY `user_id` (`user_id`),
  KEY `status` (`status`),
  CONSTRAINT `messages_users_ibfk_1` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages_users`
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




--
-- Table structure for table `page_fields`
--

CREATE TABLE `page_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `key` varchar(20) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_id` (`page_id`,`key`),
  CONSTRAINT `page_fields_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page_fields`
--




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
INSERT INTO `page_parts` VALUES ('3','body','redactor','<p>This is my site. I live in this city ... I do some nice things, like this and that ...</p>','<p>This is my site. I live in this city ... I do some nice things, like this and that ...</p>','3','0','1','0');
INSERT INTO `page_parts` VALUES ('6','body','redactor','<p>My first test of my first article.</p>\n','<p>My first test of my first article.</p>\n','5','0','1','0');
INSERT INTO `page_parts` VALUES ('7','body','redactor','<p>This is my second article.</p>\n','<p>This is my second article.</p>\n','7','0','1','0');



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
INSERT INTO `page_roles` VALUES ('11','1');
INSERT INTO `page_roles` VALUES ('11','2');
INSERT INTO `page_roles` VALUES ('11','3');
INSERT INTO `page_roles` VALUES ('11','4');
INSERT INTO `page_roles` VALUES ('12','1');
INSERT INTO `page_roles` VALUES ('12','2');
INSERT INTO `page_roles` VALUES ('12','3');
INSERT INTO `page_roles` VALUES ('12','4');
INSERT INTO `page_roles` VALUES ('14','2');
INSERT INTO `page_roles` VALUES ('14','3');
INSERT INTO `page_roles` VALUES ('14','4');



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
INSERT INTO `page_widgets` VALUES ('1','2','bradcrumbs','500');
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
INSERT INTO `page_widgets` VALUES ('3','2','bradcrumbs','500');
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
INSERT INTO `page_widgets` VALUES ('9','2','bradcrumbs','500');
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
INSERT INTO `page_widgets` VALUES ('13','2','bradcrumbs','500');
INSERT INTO `page_widgets` VALUES ('13','3','footer','500');
INSERT INTO `page_widgets` VALUES ('13','4','sidebar','500');
INSERT INTO `page_widgets` VALUES ('13','12','body','500');
INSERT INTO `page_widgets` VALUES ('14','1','header','500');
INSERT INTO `page_widgets` VALUES ('14','2','bradcrumbs','500');
INSERT INTO `page_widgets` VALUES ('14','3','footer','500');
INSERT INTO `page_widgets` VALUES ('14','4','sidebar','500');
INSERT INTO `page_widgets` VALUES ('14','12','body','500');



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

INSERT INTO `pages` VALUES ('1','Home','','Home','Home','','','INDEX, FOLLOW','0','normal','','100','2014-04-02 17:16:48','2014-04-02 17:16:48','2014-04-02 17:16:48','1','1','0','0','');
INSERT INTO `pages` VALUES ('2','Page not found','page-not-found','Page not found','Page not found','','','INDEX, FOLLOW','1','','page_not_found','101','2014-04-02 17:16:48','2014-04-02 17:16:48','2014-04-02 17:16:48','1','1','4','2','');
INSERT INTO `pages` VALUES ('3','About us','about-us','About us','About us','','','INDEX, FOLLOW','1','','','100','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','1','1','2','');
INSERT INTO `pages` VALUES ('4','RSS Feed','rss.xml','RSS Feed','RSS Feed','','','INDEX, FOLLOW','1','none','','101','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','1','3','2','');
INSERT INTO `pages` VALUES ('5','My first article','my-first-article','My first article','My first article','','','INDEX, FOLLOW','8','','','100','0000-00-00 00:00:00','0000-00-00 00:00:00','','','','1','2','');
INSERT INTO `pages` VALUES ('6','%B %Y archive','b-y-archive','%B %Y archive','%B %Y archive','','','INDEX, FOLLOW','8','','archive_month_index','101','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','1','0','2','');
INSERT INTO `pages` VALUES ('7','My second article','my-second-article','My second article','My second article','','','INDEX, FOLLOW','8','','','100','0000-00-00 00:00:00','0000-00-00 00:00:00','','','','2','2','');
INSERT INTO `pages` VALUES ('8','Articles','articles','Articles','Articles','','','INDEX, FOLLOW','1','','archive','100','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','1','2','2','');
INSERT INTO `pages` VALUES ('9','Third entry','third-entry','Third entry','Third entry','','','INDEX, FOLLOW','8','0','0','100','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','1','3','2','');
INSERT INTO `pages` VALUES ('10','Fourth entry','fourth-entry','Fourth entry','Fourth entry','','','INDEX, FOLLOW','8','0','0','100','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','1','4','2','');
INSERT INTO `pages` VALUES ('11','Contacts','contacts','Контакты','Контакты','','','INDEX, FOLLOW','1','0','0','100','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','1','5','2','');
INSERT INTO `pages` VALUES ('12','Send page','send','send','send','','','INDEX, FOLLOW','11','none','0','101','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','1','1','2','');
INSERT INTO `pages` VALUES ('13','Send Page 2','send-13','Send Page 2','Send Page 2','','','INDEX, FOLLOW','11','0','','101','2014-04-04 11:20:46','2014-04-04 11:20:13','2014-04-04 11:20:46','1','1','2','2','');
INSERT INTO `pages` VALUES ('14','Send Page 2','send1','Send Page 2','Send Page 2','','','INDEX, FOLLOW','11','0','','100','2014-04-04 11:20:58','2014-04-04 11:20:58','','1','1','3','2','');



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
INSERT INTO `plugins` VALUES ('ckeditor','CKEditor','a:0:{}');
INSERT INTO `plugins` VALUES ('googleanalytics','Google Analytics','a:0:{}');
INSERT INTO `plugins` VALUES ('hybrid','Hybrid Datasource','a:0:{}');
INSERT INTO `plugins` VALUES ('maintenance','Maintenance mode','a:0:{}');
INSERT INTO `plugins` VALUES ('messages','User messages','a:0:{}');
INSERT INTO `plugins` VALUES ('page_fields','Page fields','a:0:{}');
INSERT INTO `plugins` VALUES ('page_not_found','Page not found','a:0:{}');
INSERT INTO `plugins` VALUES ('redactor','Redactor','a:0:{}');
INSERT INTO `plugins` VALUES ('test','Тестовый сайт','a:0:{}');
INSERT INTO `plugins` VALUES ('typograf','Типограф Муравьёва 3.0','a:0:{}');



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

INSERT INTO `search_index` VALUES ('1','pages','2014-04-04 08:40:27','0000-00-00 00:00:00','Home','','home ','','a:1:{s:3:\"uri\";s:0:\"\";}');
INSERT INTO `search_index` VALUES ('2','pages','2014-04-04 08:40:27','0000-00-00 00:00:00','Page not found','','page not found ','','a:1:{s:3:\"uri\";s:15:\"/page-not-found\";}');
INSERT INTO `search_index` VALUES ('3','pages','2014-04-04 08:40:27','0000-00-00 00:00:00','About us','','us ','','a:1:{s:3:\"uri\";s:9:\"/about-us\";}');
INSERT INTO `search_index` VALUES ('4','pages','2014-04-04 08:40:27','0000-00-00 00:00:00','RSS Feed','','rss feed ','','a:1:{s:3:\"uri\";s:8:\"/rss.xml\";}');
INSERT INTO `search_index` VALUES ('5','pages','2014-04-04 08:40:27','0000-00-00 00:00:00','My first article','','my first articl ','','a:1:{s:3:\"uri\";s:26:\"/articles/my-first-article\";}');
INSERT INTO `search_index` VALUES ('6','pages','2014-04-04 08:40:27','0000-00-00 00:00:00','%B %Y archive','','%b %y archiv ','','a:1:{s:3:\"uri\";s:21:\"/articles/b-y-archive\";}');
INSERT INTO `search_index` VALUES ('7','pages','2014-04-04 08:40:27','0000-00-00 00:00:00','My second article','','my second articl ','','a:1:{s:3:\"uri\";s:27:\"/articles/my-second-article\";}');
INSERT INTO `search_index` VALUES ('8','pages','2014-04-04 08:40:27','0000-00-00 00:00:00','Articles','','articl ','','a:1:{s:3:\"uri\";s:9:\"/articles\";}');
INSERT INTO `search_index` VALUES ('9','pages','2014-04-04 08:40:27','0000-00-00 00:00:00','Third entry','','third entri ','','a:1:{s:3:\"uri\";s:21:\"/articles/third-entry\";}');
INSERT INTO `search_index` VALUES ('10','pages','2014-04-04 08:40:27','0000-00-00 00:00:00','Fourth entry','','fourth entri ','','a:1:{s:3:\"uri\";s:22:\"/articles/fourth-entry\";}');
INSERT INTO `search_index` VALUES ('11','pages','2014-04-04 08:40:27','0000-00-00 00:00:00','Contacts','','contact ','','a:1:{s:3:\"uri\";s:9:\"/contacts\";}');
INSERT INTO `search_index` VALUES ('12','pages','2014-04-04 08:40:27','0000-00-00 00:00:00','Send page','','send page ','','a:1:{s:3:\"uri\";s:14:\"/contacts/send\";}');



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

INSERT INTO `user_profiles` VALUES ('1','1','Administrator','en-us','0','2014-04-02 17:16:48');



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

INSERT INTO `user_tokens` VALUES ('2','1','ea0435ce89496290c70f7f5661ea4c69cd6ae93e','b9c17d7bd6667760aecedc58fd0ca88ba7480912','1396474816','1397684416');
INSERT INTO `user_tokens` VALUES ('10','1','13ec59cc810298fd21c679e78481018098979355','b6198a26011b36224d1de2fcaa10bc301653bafa','1396549573','1397759173');
INSERT INTO `user_tokens` VALUES ('15','1','7e735b708fe4e47b088f154f9ebca1d255399009','78f26af87fc74209fbba466d86bf7474796cddfa','1396597451','1397807051');
INSERT INTO `user_tokens` VALUES ('19','1','f0ff15f961987fdd787af4356b5a8efbbffa5383','0c6cbf475845e5d10f7db06ebfa2d9c70642844f','1396610371','1397819971');
INSERT INTO `user_tokens` VALUES ('23','1','d2cb0b40aa4dc8fbea249e9d5d8c7021c69db8f2','ca07ff75a93c32c6cd03bc56d38250cb31e6e8ce','1396731765','1397941363');
INSERT INTO `user_tokens` VALUES ('24','1','c624540e35fa62286a5eda48270e8f2bd9ac6628','b5c1063e8499cecf80d6fbcb04e95f9d6e88e9b8','1396740666','1397950266');
INSERT INTO `user_tokens` VALUES ('25','1','4991a63a755c0a1f2acd6ac162d06058945efe42','aa365add3bec68784193d275ec4052db94abb74d','1396765440','1397975040');
INSERT INTO `user_tokens` VALUES ('27','1','19a964c4b252ed0c276a493a5a90561bb1369da5','5f79a118df43c164eddaa4ff92c7f2565d036b82','1396778006','1397987606');
INSERT INTO `user_tokens` VALUES ('28','1','4ca3d7b40968d16c95d26cf9e297e4addb0c904b','58f630b7fbf8cf560761d19d863af030c6ed8f3a','1396804507','1398014107');
INSERT INTO `user_tokens` VALUES ('29','1','4ca3d7b40968d16c95d26cf9e297e4addb0c904b','c075c1fbb991a2c1ad87ad12b691ae794f8b3920','1396807003','1398016603');
INSERT INTO `user_tokens` VALUES ('30','1','4c0f24df10f06d188ad289429a19e6ab5b9b0096','1c202aa256eebf03126b424c18d61fd4918df4bd','1396815287','1398024887');
INSERT INTO `user_tokens` VALUES ('32','1','5a34c4e4d6e3df90507ca76ad2e4f2b73ad9f1a4','b53a779703c7e02d69790da8d15d0425a0164ce2','1396818274','1398027874');
INSERT INTO `user_tokens` VALUES ('33','1','ad6bd9e9c57060287f23e6a35ccaa616499b769d','cf978707af12b2d215672541b7c994014dca43e9','1396827445','1398037045');
INSERT INTO `user_tokens` VALUES ('37','1','f9df8effe7623190c79258d1ab41c820f143eb0d','4afb7350dd8bb0220fc5946760ef938a93f8d498','1396866180','1398075780');
INSERT INTO `user_tokens` VALUES ('38','1','979425a554f96921195a76014a0b9958dbbe24ad','502c05fe31a178c4efda6b6942e025343a88267b','1396877866','1398087466');
INSERT INTO `user_tokens` VALUES ('39','1','dac60dc439df83ad2b5f22ff91e28e61425bc9ce','5f96bb63abf1c69e1887aca804d3b714dd1cbc08','1396883619','1398093219');



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

INSERT INTO `users` VALUES ('1','admin@yoursite.com','demo','030d9d63ca9f845bd16f374e177f9022187006159457fee8f48b00094800a6f7','41','1396883619');



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

INSERT INTO `widgets` VALUES ('1','page_menu','header','Header menu','','2014-04-02 17:16:48','O:22:\"Model_Widget_Page_Menu\":10:{s:7:\"exclude\";a:3:{i:0;i:6;i:1;i:4;i:2;i:2;}s:10:\"cache_tags\";a:1:{i:0;s:5:\"pages\";}s:6:\"header\";N;s:6:\"crumbs\";b:0;s:11:\"use_caching\";b:1;s:7:\"caching\";b:0;s:14:\"cache_lifetime\";i:0;s:5:\"roles\";a:0:{}s:9:\"throw_404\";b:0;s:8:\"\0*\0_data\";a:3:{s:15:\"match_all_paths\";i:0;s:14:\"include_hidden\";i:0;s:7:\"page_id\";i:1;}}');
INSERT INTO `widgets` VALUES ('2','page_breadcrumbs','bradcrumbs','Breadcrumbs','','2014-04-02 17:16:48','O:29:\"Model_Widget_Page_Breadcrumbs\":10:{s:7:\"exclude\";a:0:{}s:10:\"cache_tags\";a:1:{i:0;s:5:\"pages\";}s:6:\"header\";N;s:6:\"crumbs\";b:0;s:11:\"use_caching\";b:1;s:7:\"caching\";b:0;s:14:\"cache_lifetime\";i:0;s:5:\"roles\";a:0:{}s:9:\"throw_404\";b:0;s:8:\"\0*\0_data\";a:0:{}}');
INSERT INTO `widgets` VALUES ('3','html','footer','Footer','','2014-04-02 17:16:48','O:17:\"Model_Widget_HTML\":9:{s:6:\"header\";N;s:6:\"crumbs\";b:0;s:11:\"use_caching\";b:1;s:7:\"caching\";b:0;s:14:\"cache_lifetime\";i:0;s:10:\"cache_tags\";a:1:{i:0;s:0:\"\";}s:5:\"roles\";a:0:{}s:9:\"throw_404\";b:0;s:8:\"\0*\0_data\";a:0:{}}');
INSERT INTO `widgets` VALUES ('4','html','sidebar','Sidebar','','2014-04-02 17:16:48','O:17:\"Model_Widget_HTML\":9:{s:6:\"header\";N;s:6:\"crumbs\";b:0;s:11:\"use_caching\";b:1;s:7:\"caching\";b:0;s:14:\"cache_lifetime\";i:0;s:10:\"cache_tags\";a:1:{i:0;s:0:\"\";}s:5:\"roles\";a:0:{}s:9:\"throw_404\";b:0;s:8:\"\0*\0_data\";a:0:{}}');
INSERT INTO `widgets` VALUES ('5','html','top_banner','Top banner','','2014-04-02 17:16:48','O:17:\"Model_Widget_HTML\":9:{s:6:\"header\";N;s:6:\"crumbs\";b:0;s:11:\"use_caching\";b:1;s:7:\"caching\";b:0;s:14:\"cache_lifetime\";i:0;s:10:\"cache_tags\";a:1:{i:0;s:0:\"\";}s:5:\"roles\";a:0:{}s:9:\"throw_404\";b:0;s:8:\"\0*\0_data\";a:0:{}}');
INSERT INTO `widgets` VALUES ('6','page_pages','archive-headline','Articles headline','','2014-04-02 17:16:48','O:23:\"Model_Widget_Page_Pages\":11:{s:10:\"cache_tags\";a:3:{i:0;s:5:\"pages\";i:1;s:10:\"page_parts\";i:2;s:9:\"page_tags\";}s:11:\"list_offset\";i:0;s:9:\"list_size\";i:10;s:6:\"header\";N;s:6:\"crumbs\";b:0;s:11:\"use_caching\";b:1;s:7:\"caching\";b:0;s:14:\"cache_lifetime\";i:0;s:5:\"roles\";a:0:{}s:9:\"throw_404\";b:0;s:8:\"\0*\0_data\";a:0:{}}');
INSERT INTO `widgets` VALUES ('7','page_pages','recent-entries','Recent entries','','2014-04-02 17:16:48','O:23:\"Model_Widget_Page_Pages\":11:{s:10:\"cache_tags\";a:3:{i:0;s:5:\"pages\";i:1;s:10:\"page_parts\";i:2;s:9:\"page_tags\";}s:11:\"list_offset\";i:0;s:9:\"list_size\";i:10;s:6:\"header\";s:14:\"Recent entries\";s:6:\"crumbs\";b:0;s:11:\"use_caching\";b:1;s:7:\"caching\";b:1;s:14:\"cache_lifetime\";i:3600;s:5:\"roles\";a:0:{}s:9:\"throw_404\";b:0;s:8:\"\0*\0_data\";a:1:{s:7:\"page_id\";i:8;}}');
INSERT INTO `widgets` VALUES ('8','page_pages','recent-entries','Recent entries index page','','2014-04-02 17:16:48','O:23:\"Model_Widget_Page_Pages\":11:{s:10:\"cache_tags\";a:3:{i:0;s:5:\"pages\";i:1;s:10:\"page_parts\";i:2;s:9:\"page_tags\";}s:11:\"list_offset\";i:0;s:9:\"list_size\";i:10;s:6:\"header\";N;s:6:\"crumbs\";b:0;s:11:\"use_caching\";b:1;s:7:\"caching\";b:1;s:14:\"cache_lifetime\";i:3600;s:5:\"roles\";a:0:{}s:9:\"throw_404\";b:0;s:8:\"\0*\0_data\";a:1:{s:7:\"page_id\";i:8;}}');
INSERT INTO `widgets` VALUES ('9','page_pages','last-entry','last entry index page','','2014-04-02 17:16:48','O:23:\"Model_Widget_Page_Pages\":11:{s:10:\"cache_tags\";a:3:{i:0;s:5:\"pages\";i:1;s:10:\"page_parts\";i:2;s:9:\"page_tags\";}s:11:\"list_offset\";i:0;s:9:\"list_size\";i:1;s:6:\"header\";N;s:6:\"crumbs\";b:0;s:11:\"use_caching\";b:1;s:7:\"caching\";b:1;s:14:\"cache_lifetime\";i:3600;s:5:\"roles\";a:0:{}s:9:\"throw_404\";b:0;s:8:\"\0*\0_data\";a:1:{s:7:\"page_id\";i:8;}}');
INSERT INTO `widgets` VALUES ('10','page_pages','recent-entries-rss','Recent entries RSS','','2014-04-02 17:16:48','O:23:\"Model_Widget_Page_Pages\":11:{s:10:\"cache_tags\";a:3:{i:0;s:5:\"pages\";i:1;s:10:\"page_parts\";i:2;s:9:\"page_tags\";}s:11:\"list_offset\";i:0;s:9:\"list_size\";i:10;s:6:\"header\";N;s:6:\"crumbs\";b:0;s:11:\"use_caching\";b:1;s:7:\"caching\";b:1;s:14:\"cache_lifetime\";i:3600;s:5:\"roles\";a:0:{}s:9:\"throw_404\";b:0;s:8:\"\0*\0_data\";a:1:{s:7:\"page_id\";i:8;}}');
INSERT INTO `widgets` VALUES ('11','sendmail','',' Send mail (sender)','','2014-04-02 17:16:48','O:21:\"Model_Widget_SendMail\":12:{s:10:\"\0*\0_errors\";a:0:{}s:10:\"\0*\0_values\";a:0:{}s:11:\"use_caching\";b:0;s:6:\"fields\";a:0:{}s:8:\"\0*\0_data\";a:2:{s:12:\"allowed_tags\";s:12:\"<b><i><u><p>\";s:8:\"next_url\";N;}s:6:\"header\";N;s:6:\"crumbs\";b:0;s:7:\"caching\";b:0;s:14:\"cache_lifetime\";i:2629744;s:10:\"cache_tags\";a:0:{}s:5:\"roles\";a:0:{}s:9:\"throw_404\";b:0;}');
INSERT INTO `widgets` VALUES ('12','html','send-mail-form','Send mail (form)','','2014-04-02 17:16:48','O:17:\"Model_Widget_HTML\":9:{s:6:\"header\";N;s:6:\"crumbs\";b:0;s:11:\"use_caching\";b:1;s:7:\"caching\";b:0;s:14:\"cache_lifetime\";i:0;s:10:\"cache_tags\";a:1:{i:0;s:0:\"\";}s:5:\"roles\";a:0:{}s:9:\"throw_404\";b:0;s:8:\"\0*\0_data\";a:0:{}}');
INSERT INTO `widgets` VALUES ('13','pagination','paginator','Постраничная навигация','','2014-04-02 17:16:48','O:23:\"Model_Widget_Pagination\":9:{s:8:\"\0*\0_data\";a:2:{s:9:\"query_key\";s:4:\"page\";s:17:\"related_widget_id\";N;}s:11:\"use_caching\";b:0;s:6:\"header\";N;s:6:\"crumbs\";b:0;s:7:\"caching\";b:0;s:14:\"cache_lifetime\";i:0;s:10:\"cache_tags\";a:1:{i:0;s:0:\"\";}s:5:\"roles\";a:0:{}s:9:\"throw_404\";b:0;}');



SET FOREIGN_KEY_CHECKS = 1;

--

--
-- THE END
--

