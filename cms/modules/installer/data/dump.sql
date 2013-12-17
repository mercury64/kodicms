SET FOREIGN_KEY_CHECKS=0;

INSERT INTO `__TABLE_PREFIX__pages` (`id`, `title`, `slug`, `breadcrumb`, `meta_title`, `meta_keywords`, `meta_description`, `parent_id`, `layout_file`, `behavior_id`, `status_id`, `created_on`, `published_on`, `updated_on`, `created_by_id`, `updated_by_id`, `position`, `needs_login`) VALUES
(1, 'Home', '', 'Home', 'Home', '', '', 0, 'normal', '', 100, '__DATE__', '__DATE__', '__DATE__', 1, 1, 0, 0),
(2, 'Page not found', 'page-not-found', 'Page not found', 'Page not found', '', '', 1, '', 'page_not_found', 101, '__DATE__', '__DATE__', '__DATE__', 1, 1, 4, 2),
(3, 'About us', 'about-us', 'About us', 'About us', '', '', 1, '', '', 100, '__DATE__', '__DATE__', '__DATE__', NULL, 1, 1, 2),
(4, 'RSS Feed', 'rss.xml', 'RSS Feed', 'RSS Feed', '', '', 1, 'none', '', 101, '__DATE__', '__DATE__', '__DATE__', 1, 1, 3, 2),
(5, 'My first article', 'my-first-article', 'My first article', 'My first article', '', '', 8, '', '', 100, '__DATE__', '__DATE__', NULL, NULL, NULL, 1, 2),
(6, '%B %Y archive', 'b-y-archive', '%B %Y archive', '%B %Y archive', '', '', 8, '', 'archive_month_index', 101, '__DATE__', '__DATE__', '__DATE__', 1, 1, 0, 2),
(7, 'My second article', 'my-second-article', 'My second article', 'My second article', '', '', 8, '', '', 100, '__DATE__', '__DATE__', NULL, NULL, NULL, 2, 2),
(8, 'Articles', 'articles', 'Articles', 'Articles', '', '', 1, '', 'archive', 100, '__DATE__', '__DATE__', '__DATE__', NULL, 1, 2, 2),
(9, 'Third entry', 'third-entry', 'Third entry', 'Third entry', '', '', 8, '0', '0', 100, '__DATE__', '__DATE__', '__DATE__', 1, 1, 3, 2),
(10, 'Fourth entry', 'fourth-entry', 'Fourth entry', 'Fourth entry', '', '', 8, '0', '0', 100, '__DATE__', '__DATE__', '__DATE__', 1, 1, 4, 2),
(11, 'Новости', 'news', 'Новости', '', '', NULL, 1, '0', 'hybrid_docs', 100, '2013-08-20 18:41:45', '2013-08-20 18:41:45', '2013-08-20 18:52:40', 1, 1, 5, 2),
(12, 'Item', 'item', 'item', '', '', NULL, 11, '0', '0', 100, '2013-08-20 18:52:25', '2013-08-20 18:52:25', '2013-08-20 18:52:33', 1, 1, 1, 2);

INSERT INTO `__TABLE_PREFIX__page_parts` (`id`, `name`, `filter_id`, `content`, `content_html`, `page_id`, `is_protected`) VALUES
(2, 'body', 'redactor', '<h3>Sorry</h3>\n\n<p>This page not found<br>\n</p>\n', '<h3>Sorry</h3>\n\n<p>This page not found<br>\n</p>\n', 2, 0),
(3, 'body', 'redactor', '<p>This is my site. I live in this city ... I do some nice things, like this and that ...</p>', '<p>This is my site. I live in this city ... I do some nice things, like this and that ...</p>', 3, 0),
(6, 'body', 'redactor', '<p>My first test of my first article.</p>\n', '<p>My first test of my first article.</p>\n', 5, 0),
(7, 'body', 'redactor', '<p>This is my second article.</p>\n', '<p>This is my second article.</p>\n', 7, 0);

INSERT INTO `__TABLE_PREFIX__page_behavior_settings` (`page_id`, `behavior_id`, `data`) VALUES
(11, 'hybrid_docs', 'a:1:{s:12:"item_page_id";s:2:"12";}');

INSERT INTO `__TABLE_PREFIX__page_roles` (`page_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(3, 3),
(3, 4),
(4, 2),
(4, 3),
(4, 4),
(5, 2),
(5, 3),
(5, 4),
(6, 2),
(6, 3),
(6, 4),
(7, 2),
(7, 3),
(7, 4),
(8, 2),
(8, 3),
(8, 4);

INSERT INTO `__TABLE_PREFIX__roles` (`id`, `name`, `description`) VALUES
(1, 'login', 'Login privileges, granted after account confirmation'),
(2, 'administrator', 'Administrative user, has access to everything.'),
(3, 'developer', 'Developers role'),
(4, 'editor', '');

INSERT INTO `__TABLE_PREFIX__roles_users` (`user_id`, `role_id`) VALUES
(1, 1),
(1, 2);

INSERT INTO `__TABLE_PREFIX__users` (`id`, `email`, `username`, `password`, `logins`, `last_login`) VALUES
(1, '__EMAIL__', '__USERNAME__', '__ADMIN_PASSWORD__', 0, 0);

INSERT INTO `__TABLE_PREFIX__user_profiles` (`id`, `name`, `user_id`, `locale`, `created_on`) VALUES
(1, 'Administrator', 1, '__LANG__', '__DATE__');

INSERT INTO `__TABLE_PREFIX__datasources` (`ds_id`, `ds_type`, `docs`, `indexed`, `name`, `description`, `created_on`, `updated_on`, `internal`, `locks`, `code`) VALUES
(2, 'hybrid', 0, 0, 'Новости', '', '2013-08-20 18:06:23', '2013-08-20 18:06:23', 0, 2, 'O:30:"DataSource_Data_Hybrid_Section":21:{s:8:"ds_table";s:8:"dshybrid";s:7:"ds_type";s:6:"hybrid";s:3:"key";s:4:"news";s:6:"parent";i:0;s:4:"path";s:3:"0,2";s:6:"record";O:29:"DataSource_Data_Hybrid_Record":4:{s:2:"ds";r:1;s:5:"ds_id";i:0;s:6:"fields";a:0:{}s:6:"struct";a:4:{s:10:"datasource";a:0:{}s:5:"array";a:0:{}s:8:"document";a:0:{}s:9:"primitive";a:0:{}}}s:8:"read_sql";N;s:11:"indexed_doc";N;s:9:"doc_intro";N;s:17:"indexed_doc_query";N;s:7:"all_doc";b:1;s:9:"auto_cast";b:1;s:5:"ds_id";i:2;s:4:"name";s:14:"Новости";s:11:"description";s:0:"";s:4:"docs";i:0;s:4:"size";i:0;s:12:"is_indexable";b:0;s:11:"is_internal";b:0;s:4:"lock";N;s:9:"page_size";i:30;}');

INSERT INTO `__TABLE_PREFIX__dshfields` (`id`, `ds_id`, `name`, `family`, `type`, `header`, `from_ds`, `props`) VALUES
(4, 2, 'f_slug', 'primitive', 'slug', 'Slug', 0, 'a:10:{s:7:"default";d:0;s:3:"min";N;s:3:"max";N;s:6:"length";i:0;s:12:"allowed_tags";N;s:6:"regexp";N;s:5:"isreq";b:1;s:9:"separator";s:1:"-";s:11:"from_header";s:1:"1";s:8:"continue";s:0:"";}'),
(3, 2, 'f_created_on', 'primitive', 'date', 'Дата публикации', 0, 'a:7:{s:7:"default";N;s:3:"min";N;s:3:"max";N;s:6:"length";i:0;s:12:"allowed_tags";N;s:6:"regexp";N;s:5:"isreq";b:0;}'),
(5, 2, 'f_anounce', 'primitive', 'text', 'Анонс', 0, 'a:8:{s:7:"default";d:0;s:3:"min";N;s:3:"max";N;s:6:"length";i:0;s:12:"allowed_tags";N;s:6:"regexp";N;s:5:"isreq";b:1;s:8:"continue";s:0:"";}'),
(6, 2, 'f_text', 'primitive', 'html', 'Текст', 0, 'a:10:{s:7:"default";d:0;s:3:"min";N;s:3:"max";N;s:6:"length";i:0;s:12:"allowed_tags";N;s:6:"regexp";N;s:5:"isreq";b:0;s:6:"filter";s:8:"redactor";s:8:"continue";s:0:"";s:6:"commit";s:0:"";}'),
(7, 2, 'f_relatednews', 'array', 'hybrid', 'Новости по теме', 2, 'a:3:{s:5:"isreq";b:0;s:11:"one_to_many";b:0;s:10:"one_to_one";b:0;}'),
(8, 2, 'f_image', 'file', '', 'Картинка новости', 0, 'a:8:{s:5:"width";s:3:"100";s:6:"height";s:3:"100";s:4:"crop";s:1:"1";s:6:"master";s:1:"4";s:7:"quality";s:2:"95";s:8:"max_size";s:6:"102400";s:5:"types";a:5:{i:0;s:3:"bmp";i:1;s:3:"gif";i:2;s:3:"jpg";i:3;s:3:"png";i:4;s:3:"tif";}s:8:"continue";s:0:"";}');

INSERT INTO `__TABLE_PREFIX__hybriddatasources` (`ds_id`, `parent`, `ds_key`, `path`) VALUES
(2, 0, 'news', '0,2');

INSERT INTO `__TABLE_PREFIX__dshybrid` (`id`, `ds_id`, `published`, `header`, `created_on`, `updated_on`) VALUES
(1, 2, 1, 'Используете Mailbox? Получите 1 Gb от Dropbox', '2013-08-20 18:44:34', '2013-08-20 18:45:15'),
(2, 2, 1, 'Супергидрофобность в быту или доступные нанотехнологии. Продолжение', '2013-08-20 18:46:00', '2013-08-20 18:46:18'),
(3, 2, 1, 'Microsoft интегрирует Skype с Outlook.com', '2013-08-20 18:46:59', '2013-08-21 01:22:50');

INSERT INTO `__TABLE_PREFIX__dshybrid_2` (`id`, `f_created_on`, `f_slug`, `f_anounce`, `f_text`, `f_relatednews`, `f_image`) VALUES
(1, '2013-08-20', 'ispolzuete-mailbox-poluchite-1-gb-ot-dropbox', 'Есть возможность получить дополнительно 1 Gb в сетевом хранилище Dropbox, для этого не нужно проходить квест с бразильскими ИНН и подбирать свободные номера телефонов бразильского оператора. В это раз все гораздо проще, для обладателей Mailbox.', '<p>Есть возможность получить дополнительно 1 Gb в сетевом хранилище Dropbox, для этого не нужно проходить квест с бразильскими ИНН и подбирать свободные номера телефонов бразильского оператора. В это раз все гораздо проще, для обладателей Mailbox.<br><br>1.&nbsp;<a href="https://itunes.apple.com/us/app/mailbox/id576502633" style="margin: 0px; padding: 0px; border: 0px; font-size: 13px; vertical-align: baseline; outline: 0px; color: rgb(153, 0, 153); font-family: Verdana, sans-serif; line-height: 20px;">Установить</a>&nbsp;почтовый ящик Mailbox App (iOS).<br>2. Войти в вашу учетную запись Gmail при помощи Mailbox App<br>3. Перейти&nbsp;в аккаунт Dropbox&nbsp;в настройки MailBox и нажать там «присоединить аккаунт Dropbox».<br>4. Наслаждаться дополнительным гигабайтом.<br></p>\n', '', ''),
(2, '2013-08-13', 'supergidrofobnost-v-bytu-ili-dostupnye-nanotehnologii-prodolzhenie', 'Некоторое время назад я писал про возможности использования в быту различных химических составов, позволяющих добиться гидрофобности обрабатываемой поверхности. Представляю Вашему вниманию первые испытания состава NeverWet.', '<p>Эталонным и недостижимым на тот момент был состав «NeverWet», отсутствовавший в продаже, но о котором ходили слухи уже несколько лет. Не так давно он начал продаваться в розницу(ранее была возможна только покупка бочками(~500 тыс.руб. за бочку из двух) по спецзаказу и все это было крайне сложно), чем я и воспользовался.&nbsp;<br><br>Заказывал «минимальный» набор на интренет-аукционе Ebay (вот такой&nbsp;<a href="http://www.ebay.com/itm/BEST-PRICE-32-98-NEVER-WET-RUST-OLEUM-18-OZ-BEST-PRICE-NEVERWET-RUST-OLEUM-/141038108187?pt=LH_DefaultDomain_0&amp;hash=item20d686be1b" style="margin: 0px; padding: 0px; border: 0px; font-size: 13px; vertical-align: baseline; outline: 0px; color: rgb(153, 0, 153); font-family: Verdana, sans-serif; line-height: 20px;">лот</a>), стоимостью примерно 35 долларов, доставка везде по-разному, но даже если доплатить те же 30 баксов, оно стоит того. Большинство продавцов отправляют эти наборы из Великобритании и Ирландии — любопытно…<br><br>Предлагаю Вашему вниманию первые опыты.<br><br>В качестве основы я решил взять простую бумагу – она пластична, шероховата и гигроскопична – все те свойства, которые отрицательно влияют на гидрофобные пленки, создаваемые различными, аналогичными испытуемому, составами, и, в случае удачного завершения эксперимента, скажет об эффективности покрытия.<br></p>', '', ''),
(3, '2013-08-20', 'microsoft-integriruet-skype-s-outlookcom', '19 августа Microsoft анонсировала запуск интеграции Skype и сервиса Outlook.com в США, Великобритании, Германии, Франции, Бразилии и Канаде.', '<p>19 августа Microsoft&nbsp;<a href="http://blogs.office.com/b/microsoft-outlook/archive/2013/08/19/skype-is-now-available-for-all-outlook-com-customers-in-north-america.aspx" style="margin: 0px; padding: 0px; border: 0px; font-size: 13px; vertical-align: baseline; outline: 0px; color: rgb(153, 0, 153); font-family: Verdana, sans-serif; line-height: 20px;">анонсировала запуск</a>&nbsp;интеграции Skype и сервиса Outlook.com в США, Великобритании, Германии, Франции, Бразилии и Канаде.<br><br>Комбинация Skype с Outlook.com собирает воедино два самых популярных сервиса Microsoft и выводит e-mail систему на новый уровень. Эти нововведения станут опорой для дальнейшей конкуренции с Gmail. Outlook.com имеет быстрорастущую пользовательскую базу, которая расширяется за счет больших вливаний пользователей Hotmail (его корпорация свернула как устаревший), но имеет и уверенный органичный рост.<br></p>', '1', '');

INSERT INTO `__TABLE_PREFIX__email_templates` (`id`, `created_on`, `email_type`, `status`, `email_from`, `email_to`, `subject`, `message`, `message_type`, `bcc`, `reply_to`, `cc`) VALUES
(1, '2013-12-14 01:45:09', 1, 1, '{default_email}', '{email}', '{site_title}: Ссылка для восстановления пароля', '<h3>Здраствуйте {username}!</h3>Чтобы восстановить &nbsp;пароль от своего аккаунта, пройдите, пожалуйста, по ссылке:  <a href="{base_url}{reflink}">{base_url}{reflink}</a>&nbsp;или введите код&nbsp;<b>{code}</b> вручную на странице восстановления.<p>----------------------------------------</p><p>Данное письмо сгенерировано автоматически, отвечать на него не нужно.<span style="line-height: 1.45em;"></span></p>\n', 'html', NULL, NULL, NULL),
(2, '2013-12-14 15:00:31', 3, 1, '{email_from}', '{email}', '{site_title}: Новый пароль от вашего аккаунта', '<h3>Здраствуйте {username}!</h3>Ваш новый пароль:&nbsp;<b>{password}</b><p></p><p>Всегда храните свой пароль в тайне и&nbsp;не сообщайте его никому.<br></p><p>----------------------------------------</p><p><p>Данное письмо сгенерировано автоматически, отвечать на него не нужно.</p></p><p></p>', 'html', NULL, NULL, NULL);

INSERT INTO `__TABLE_PREFIX__email_types` (`id`, `code`, `name`, `data`) VALUES
(1, 'user_request_password', 'Запрос на восстановление пароля', 'a:4:{s:4:"code";s:48:"Код восстановления пароля";s:8:"username";s:31:"Имя пользователя";s:5:"email";s:30:"Email пользователя";s:7:"reflink";s:61:"Ссылка для восстановления пароля";}'),
(3, 'user_new_password', 'Новый пароль', 'a:3:{s:8:"password";s:23:"Новый пароль";s:5:"email";s:30:"Email пользователя";s:8:"username";s:31:"Имя пользователя";}');

SET FOREIGN_KEY_CHECKS=1;