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

INSERT INTO `__TABLE_PREFIX__config` (`group_name`, `config_key`, `config_value`) VALUES
('api', 'mode', 's:2:"no";'),
('site', 'allow_html_title', 's:3:"off";'),
('site', 'breadcrumbs', 's:2:"no";'),
('site', 'date_format', 's:5:"d F Y";'),
('site', 'debug', 's:2:"no";'),
('site', 'default_filter_id', 's:8:"redactor";'),
('site', 'default_status_id', 's:3:"100";'),
('site', 'default_tab', 's:4:"page";'),
('site', 'description', 's:0:"";'),
('site', 'find_similar', 's:3:"yes";'),
('site', 'profiling', 's:2:"no";'),
('site', 'title', '__SITE_NAME__');

INSERT INTO `__TABLE_PREFIX__plugins` (`id`, `title`, `settings`) VALUES
('archive', 'Archive', 'a:0:{}'),
('maintenance', 'Maintenance mode', 'a:0:{}'),
('page_not_found', 'Page not found', 'a:0:{}'),
('redactor', 'Redactor', 'a:0:{}'),
('slug_translit', 'Slug translit', 'a:0:{}'),
('tagsinput', 'jQuery Tags Input', 'a:0:{}');


INSERT INTO `__TABLE_PREFIX__users` (`id`, `email`, `username`, `password`, `logins`, `last_login`) VALUES
(1, '__EMAIL__', '__USERNAME__', '__ADMIN_PASSWORD__', 0, 0);

INSERT INTO `__TABLE_PREFIX__user_profiles` (`id`, `name`, `user_id`, `locale`, `created_on`) VALUES
(1, 'Administrator', 1, '__LANG__', '__DATE__');

INSERT INTO `__TABLE_PREFIX__layout_blocks` (`layout_name`, `block`, `position`) VALUES
('none', 'body', 0),
('normal', 'body', 3),
('normal', 'bradcrumbs', 1),
('normal', 'extended', 5),
('normal', 'footer', 8),
('normal', 'header', 0),
('normal', 'pagination', 4),
('normal', 'recent', 7),
('normal', 'sidebar', 6),
('normal', 'stub_1', 9),
('normal', 'top_banner', 2),
('rss', 'body', 0);

INSERT INTO `__TABLE_PREFIX__page_widgets` (`page_id`, `widget_id`, `block`) VALUES
(1, 11, 'body'),
(1, 2, 'bradcrumbs'),
(1, 10, 'extended'),
(1, 3, 'footer'),
(1, 1, 'header'),
(1, 4, 'sidebar'),
(1, 5, 'top_banner'),
(2, 2, 'bradcrumbs'),
(2, 3, 'footer'),
(2, 1, 'header'),
(2, 9, 'recent'),
(2, 4, 'sidebar'),
(3, 2, 'bradcrumbs'),
(3, 3, 'footer'),
(3, 1, 'header'),
(3, 9, 'recent'),
(3, 4, 'sidebar'),
(4, 12, 'body'),
(5, 2, 'bradcrumbs'),
(5, 3, 'footer'),
(5, 1, 'header'),
(5, 9, 'recent'),
(5, 4, 'sidebar'),
(6, 7, 'body'),
(6, 2, 'bradcrumbs'),
(6, 3, 'footer'),
(6, 1, 'header'),
(6, 9, 'recent'),
(6, 4, 'sidebar'),
(7, 2, 'bradcrumbs'),
(7, 3, 'footer'),
(7, 1, 'header'),
(7, 9, 'recent'),
(7, 4, 'sidebar'),
(8, 8, 'body'),
(8, 6, 'extended'),
(8, 13, 'pagination'),
(8, 2, 'bradcrumbs'),
(8, 3, 'footer'),
(8, 1, 'header'),
(8, 9, 'recent'),
(8, 4, 'sidebar'),
(9, 2, 'bradcrumbs'),
(9, 3, 'footer'),
(9, 1, 'header'),
(9, 9, 'recent'),
(9, 4, 'sidebar'),
(10, 2, 'bradcrumbs'),
(10, 3, 'footer'),
(10, 1, 'header'),
(10, 9, 'recent'),
(10, 4, 'sidebar'),
(11, 14, 'body'),
(11, 2, 'bradcrumbs'),
(11, 3, 'footer'),
(11, 1, 'header'),
(11, 16, 'pagination'),
(12, 15, 'body'),
(12, 2, 'bradcrumbs'),
(12, 3, 'footer'),
(12, 1, 'header'),
(12, 14, 'stub_1');

INSERT INTO `__TABLE_PREFIX__widgets` (`id`, `type`, `template`, `name`, `description`, `created_on`, `code`) VALUES
(1, 'page_menu', 'header', 'Header menu', '', '2013-03-22 18:38:11', 'O:22:"Model_Widget_Page_Menu":13:{s:7:"exclude";a:3:{i:0;s:1:"6";i:1;s:1:"4";i:2;s:1:"2";}s:2:"id";s:2:"10";s:4:"type";s:9:"page_menu";s:4:"name";s:11:"Header menu";s:11:"description";s:0:"";s:6:"header";s:0:"";s:8:"template";s:6:"header";s:15:"template_params";a:0:{}s:5:"block";N;s:7:"caching";b:0;s:14:"cache_lifetime";i:0;s:9:"throw_404";b:0;s:8:"\0*\0_data";a:3:{s:15:"match_all_paths";i:0;s:7:"page_id";s:1:"1";s:8:"continue";s:0:"";}}'),
(2, 'page_breadcrumbs', 'bradcrumbs', 'Breadcrumbs', '', '2013-03-22 19:45:02', 'O:29:"Model_Widget_Page_Breadcrumbs":18:{s:7:"exclude";a:0:{}s:2:"id";s:1:"2";s:4:"type";s:16:"page_breadcrumbs";s:4:"name";s:11:"Breadcrumbs";s:11:"description";s:0:"";s:6:"header";s:0:"";s:8:"template";s:10:"bradcrumbs";s:16:"backend_template";N;s:17:"frontend_template";N;s:12:"use_template";b:1;s:15:"template_params";a:0:{}s:5:"block";N;s:6:"crumbs";b:0;s:7:"caching";b:0;s:14:"cache_lifetime";i:0;s:9:"throw_404";b:0;s:7:"\0*\0_ctx";O:7:"Context":9:{s:8:"\0*\0_page";N;s:11:"\0*\0_request";N;s:12:"\0*\0_response";N;s:10:"\0*\0_crumbs";N;s:11:"\0*\0_widgets";a:0:{}s:14:"\0*\0_widget_ids";N;s:10:"\0*\0_blocks";a:0:{}s:10:"\0*\0_params";a:0:{}s:14:"\0*\0_injections";a:0:{}}s:8:"\0*\0_data";a:1:{s:8:"continue";s:0:"";}}'),
(3, 'html', 'footer', 'Footer', '', '2013-03-22 20:29:27', 'O:17:"Model_Widget_HTML":12:{s:2:"id";s:2:"12";s:4:"type";s:4:"html";s:4:"name";s:6:"Footer";s:11:"description";s:0:"";s:6:"header";s:0:"";s:8:"template";s:6:"footer";s:15:"template_params";a:0:{}s:5:"block";N;s:7:"caching";b:0;s:14:"cache_lifetime";i:0;s:9:"throw_404";b:0;s:8:"\0*\0_data";a:1:{s:8:"continue";s:0:"";}}'),
(4, 'html', 'sidebar', 'Sidebar', '', '2013-03-22 20:41:25', 'O:17:"Model_Widget_HTML":12:{s:2:"id";s:2:"13";s:4:"type";s:4:"html";s:4:"name";s:7:"Sidebar";s:11:"description";s:0:"";s:6:"header";s:0:"";s:8:"template";s:7:"sidebar";s:15:"template_params";a:0:{}s:5:"block";N;s:7:"caching";b:0;s:14:"cache_lifetime";i:0;s:9:"throw_404";b:0;s:8:"\0*\0_data";a:1:{s:8:"continue";s:0:"";}}'),
(5, 'html', 'top_banner', 'Top banner', '', '2013-03-22 20:50:41', 'O:17:"Model_Widget_HTML":12:{s:2:"id";s:2:"14";s:4:"type";s:4:"html";s:4:"name";s:10:"Top banner";s:11:"description";s:0:"";s:6:"header";s:0:"";s:8:"template";s:10:"top_banner";s:15:"template_params";a:0:{}s:5:"block";N;s:7:"caching";b:0;s:14:"cache_lifetime";i:0;s:9:"throw_404";b:0;s:8:"\0*\0_data";a:1:{s:8:"continue";s:0:"";}}'),
(6, 'archive_month', 'archive-by-month', 'Archive by month', '', '2013-03-26 10:19:46', 'O:26:"Model_Widget_Archive_Month":17:{s:16:"backend_template";s:7:"archive";s:17:"frontend_template";s:7:"archive";s:2:"id";s:1:"6";s:4:"type";s:13:"archive_month";s:4:"name";s:16:"Archive by month";s:11:"description";s:0:"";s:6:"header";s:16:"Archive by month";s:8:"template";s:16:"archive-by-month";s:12:"use_template";b:1;s:15:"template_params";a:0:{}s:5:"block";N;s:6:"crumbs";b:0;s:7:"caching";b:1;s:14:"cache_lifetime";i:2629744;s:9:"throw_404";b:0;s:7:"\0*\0_ctx";O:7:"Context":9:{s:8:"\0*\0_page";N;s:11:"\0*\0_request";N;s:12:"\0*\0_response";N;s:10:"\0*\0_crumbs";N;s:11:"\0*\0_widgets";a:0:{}s:14:"\0*\0_widget_ids";N;s:10:"\0*\0_blocks";a:0:{}s:10:"\0*\0_params";a:0:{}s:14:"\0*\0_injections";a:0:{}}s:8:"\0*\0_data";a:2:{s:7:"page_id";s:1:"8";s:8:"continue";s:0:"";}}'),
(7, 'archive_hl', 'archive-headline', 'Archive headline', '', '2013-08-16 14:39:22', 'O:23:"Model_Widget_Archive_HL":18:{s:16:"backend_template";s:10:"page_pages";s:8:"\0*\0_data";a:4:{s:11:"list_offset";i:0;s:9:"list_size";i:10;s:7:"page_id";s:1:"8";s:8:"continue";s:0:"";}s:10:"cache_tags";a:3:{i:0;s:5:"pages";i:1;s:10:"page_parts";i:2;s:9:"page_tags";}s:2:"id";s:1:"7";s:4:"type";s:10:"archive_hl";s:4:"name";s:16:"Archive headline";s:11:"description";s:0:"";s:6:"header";s:0:"";s:8:"template";s:16:"archive-headline";s:17:"frontend_template";N;s:12:"use_template";b:1;s:15:"template_params";a:0:{}s:5:"block";N;s:6:"crumbs";b:0;s:7:"caching";b:0;s:14:"cache_lifetime";i:0;s:9:"throw_404";b:0;s:7:"\0*\0_ctx";O:7:"Context":10:{s:8:"\0*\0_page";N;s:11:"\0*\0_request";N;s:12:"\0*\0_response";N;s:10:"\0*\0_crumbs";N;s:11:"\0*\0_widgets";a:0:{}s:14:"\0*\0_widget_ids";N;s:10:"\0*\0_blocks";a:0:{}s:10:"\0*\0_params";a:0:{}s:19:"\0*\0_behavior_router";a:0:{}s:14:"\0*\0_injections";a:0:{}}}'),
(8, 'page_pages', '0', 'Articles headline', '', '2013-08-16 15:21:10', 'O:23:"Model_Widget_Page_Pages":18:{s:8:"\0*\0_data";a:4:{s:11:"list_offset";i:0;s:9:"list_size";i:3;s:7:"page_id";s:1:"0";s:8:"continue";s:0:"";}s:10:"cache_tags";a:3:{i:0;s:5:"pages";i:1;s:10:"page_parts";i:2;s:9:"page_tags";}s:2:"id";s:2:"14";s:4:"type";s:10:"page_pages";s:4:"name";s:17:"Articles headline";s:11:"description";s:0:"";s:6:"header";s:0:"";s:8:"template";s:1:"0";s:16:"backend_template";N;s:17:"frontend_template";N;s:12:"use_template";b:1;s:15:"template_params";a:0:{}s:5:"block";N;s:6:"crumbs";b:0;s:7:"caching";b:0;s:14:"cache_lifetime";i:0;s:9:"throw_404";b:0;s:7:"\0*\0_ctx";O:7:"Context":10:{s:8:"\0*\0_page";N;s:11:"\0*\0_request";N;s:12:"\0*\0_response";N;s:10:"\0*\0_crumbs";N;s:11:"\0*\0_widgets";a:0:{}s:14:"\0*\0_widget_ids";N;s:10:"\0*\0_blocks";a:0:{}s:10:"\0*\0_params";a:0:{}s:19:"\0*\0_behavior_router";a:0:{}s:14:"\0*\0_injections";a:0:{}}}'),
(9, 'page_pages', 'recent-entries', 'Recent entries', '', '2013-03-26 10:24:43', 'O:23:"Model_Widget_Page_Pages":17:{s:8:"\0*\0_data";a:4:{s:11:"list_offset";i:0;s:9:"list_size";i:5;s:7:"page_id";s:1:"8";s:8:"continue";s:0:"";}s:2:"id";s:1:"9";s:4:"type";s:10:"page_pages";s:4:"name";s:14:"Recent entries";s:11:"description";s:0:"";s:6:"header";s:14:"Recent entries";s:8:"template";s:14:"recent-entries";s:16:"backend_template";N;s:17:"frontend_template";N;s:12:"use_template";b:1;s:15:"template_params";a:0:{}s:5:"block";N;s:6:"crumbs";b:0;s:7:"caching";b:1;s:14:"cache_lifetime";i:3600;s:9:"throw_404";b:0;s:7:"\0*\0_ctx";O:7:"Context":9:{s:8:"\0*\0_page";N;s:11:"\0*\0_request";N;s:12:"\0*\0_response";N;s:10:"\0*\0_crumbs";N;s:11:"\0*\0_widgets";a:0:{}s:14:"\0*\0_widget_ids";N;s:10:"\0*\0_blocks";a:0:{}s:10:"\0*\0_params";a:0:{}s:14:"\0*\0_injections";a:0:{}}}'),
(10, 'page_pages', 'recent-entries', 'Recent entries index page', '', '2013-03-26 10:27:49', 'O:23:"Model_Widget_Page_Pages":17:{s:8:"\0*\0_data";a:4:{s:11:"list_offset";i:1;s:9:"list_size";i:4;s:7:"page_id";s:1:"8";s:8:"continue";s:0:"";}s:2:"id";s:2:"10";s:4:"type";s:10:"page_pages";s:4:"name";s:25:"Recent entries index page";s:11:"description";s:0:"";s:6:"header";s:0:"";s:8:"template";s:14:"recent-entries";s:16:"backend_template";N;s:17:"frontend_template";N;s:12:"use_template";b:1;s:15:"template_params";a:0:{}s:5:"block";N;s:6:"crumbs";b:0;s:7:"caching";b:1;s:14:"cache_lifetime";i:3600;s:9:"throw_404";b:0;s:7:"\0*\0_ctx";O:7:"Context":9:{s:8:"\0*\0_page";N;s:11:"\0*\0_request";N;s:12:"\0*\0_response";N;s:10:"\0*\0_crumbs";N;s:11:"\0*\0_widgets";a:0:{}s:14:"\0*\0_widget_ids";N;s:10:"\0*\0_blocks";a:0:{}s:10:"\0*\0_params";a:0:{}s:14:"\0*\0_injections";a:0:{}}}'),
(11, 'page_pages', 'last-entry', 'last entry index page', '', '2013-03-26 10:28:58', 'O:23:"Model_Widget_Page_Pages":17:{s:8:"\0*\0_data";a:4:{s:11:"list_offset";i:0;s:9:"list_size";i:1;s:7:"page_id";s:1:"8";s:8:"continue";s:0:"";}s:2:"id";s:2:"11";s:4:"type";s:10:"page_pages";s:4:"name";s:21:"last entry index page";s:11:"description";s:0:"";s:6:"header";s:0:"";s:8:"template";s:10:"last-entry";s:16:"backend_template";N;s:17:"frontend_template";N;s:12:"use_template";b:1;s:15:"template_params";a:0:{}s:5:"block";N;s:6:"crumbs";b:0;s:7:"caching";b:1;s:14:"cache_lifetime";i:3600;s:9:"throw_404";b:0;s:7:"\0*\0_ctx";O:7:"Context":9:{s:8:"\0*\0_page";N;s:11:"\0*\0_request";N;s:12:"\0*\0_response";N;s:10:"\0*\0_crumbs";N;s:11:"\0*\0_widgets";a:0:{}s:14:"\0*\0_widget_ids";N;s:10:"\0*\0_blocks";a:0:{}s:10:"\0*\0_params";a:0:{}s:14:"\0*\0_injections";a:0:{}}}'),
(12, 'page_pages', 'recent-entries-rss', 'Recent entries RSS', '', '2013-03-26 10:44:33', 'O:23:"Model_Widget_Page_Pages":17:{s:8:"\0*\0_data";a:4:{s:11:"list_offset";i:0;s:9:"list_size";i:10;s:7:"page_id";s:1:"8";s:8:"continue";s:0:"";}s:2:"id";s:2:"12";s:4:"type";s:10:"page_pages";s:4:"name";s:18:"Recent entries RSS";s:11:"description";s:0:"";s:6:"header";s:0:"";s:8:"template";s:18:"recent-entries-rss";s:16:"backend_template";N;s:17:"frontend_template";N;s:12:"use_template";b:1;s:15:"template_params";a:0:{}s:5:"block";N;s:6:"crumbs";b:0;s:7:"caching";b:1;s:14:"cache_lifetime";i:3600;s:9:"throw_404";b:0;s:7:"\0*\0_ctx";O:7:"Context":9:{s:8:"\0*\0_page";N;s:11:"\0*\0_request";N;s:12:"\0*\0_response";N;s:10:"\0*\0_crumbs";N;s:11:"\0*\0_widgets";a:0:{}s:14:"\0*\0_widget_ids";N;s:10:"\0*\0_blocks";a:0:{}s:10:"\0*\0_params";a:0:{}s:14:"\0*\0_injections";a:0:{}}}'),
(13, 'pagination', 'paginator', 'Постраничная навигация', '', '2013-08-16 14:46:46', 'O:23:"Model_Widget_Pagination":18:{s:8:"\0*\0_data";a:3:{s:9:"query_key";s:4:"page";s:17:"related_widget_id";s:1:"8";s:8:"continue";s:0:"";}s:2:"id";s:2:"13";s:4:"type";s:10:"pagination";s:4:"name";s:43:"Постраничная навигация";s:11:"description";s:0:"";s:6:"header";s:0:"";s:8:"template";s:9:"paginator";s:16:"backend_template";N;s:17:"frontend_template";N;s:12:"use_template";b:1;s:15:"template_params";a:0:{}s:5:"block";N;s:6:"crumbs";b:0;s:7:"caching";b:0;s:14:"cache_lifetime";i:0;s:10:"cache_tags";a:1:{i:0;s:0:"";}s:9:"throw_404";b:0;s:7:"\0*\0_ctx";O:7:"Context":10:{s:8:"\0*\0_page";N;s:11:"\0*\0_request";N;s:12:"\0*\0_response";N;s:10:"\0*\0_crumbs";N;s:11:"\0*\0_widgets";a:0:{}s:14:"\0*\0_widget_ids";N;s:10:"\0*\0_blocks";a:0:{}s:10:"\0*\0_params";a:0:{}s:19:"\0*\0_behavior_router";a:0:{}s:14:"\0*\0_injections";a:0:{}}}'),
(14, 'hybrid_headline', 'news-list', 'Новости', '', '2013-08-20 18:42:39', 'O:28:"Model_Widget_Hybrid_Headline":33:{s:10:"doc_fields";a:4:{i:0;i:8;i:1;i:5;i:2;i:3;i:3;i:4;}s:19:"doc_fetched_widgets";a:0:{}s:10:"doc_filter";a:0:{}s:9:"doc_order";a:1:{i:0;a:1:{i:3;s:4:"DESC";}}s:7:"doc_uri";s:6:"/news/";s:6:"doc_id";s:4:"slug";s:11:"list_offset";i:0;s:9:"list_size";i:2;s:14:"only_published";b:1;s:3:"ids";a:0:{}s:9:"\0*\0arrays";a:0:{}s:4:"docs";N;s:9:"\0*\0_agent";N;s:8:"only_sub";b:0;s:13:"\0*\0_documents";a:0:{}s:2:"id";s:2:"14";s:4:"type";s:15:"hybrid_headline";s:4:"name";s:14:"Новости";s:11:"description";s:0:"";s:6:"header";s:0:"";s:8:"template";s:9:"news-list";s:16:"backend_template";N;s:17:"frontend_template";N;s:12:"use_template";b:1;s:15:"template_params";a:0:{}s:5:"block";N;s:6:"crumbs";b:0;s:7:"caching";b:0;s:14:"cache_lifetime";i:0;s:10:"cache_tags";a:1:{i:0;s:0:"";}s:9:"throw_404";b:0;s:7:"\0*\0_ctx";O:7:"Context":10:{s:8:"\0*\0_page";N;s:11:"\0*\0_request";N;s:12:"\0*\0_response";N;s:10:"\0*\0_crumbs";N;s:11:"\0*\0_widgets";a:0:{}s:14:"\0*\0_widget_ids";N;s:10:"\0*\0_blocks";a:0:{}s:10:"\0*\0_params";a:0:{}s:19:"\0*\0_behavior_router";a:0:{}s:14:"\0*\0_injections";a:0:{}}s:8:"\0*\0_data";a:4:{s:5:"ds_id";i:2;s:8:"continue";s:0:"";s:12:"sort_by_rand";b:0;s:2:"sf";s:1:"3";}}'),
(15, 'hybrid_document', 'news-item', 'Новость', '', '2013-08-20 18:52:55', 'O:28:"Model_Widget_Hybrid_Document":27:{s:10:"doc_fields";a:4:{i:0;i:7;i:1;i:8;i:2;i:3;i:3;i:6;}s:19:"doc_fetched_widgets";a:1:{i:7;i:14;}s:8:"docs_uri";s:6:"/news/";s:12:"doc_id_field";s:2:"id";s:6:"crumbs";b:1;s:8:"document";a:0:{}s:9:"\0*\0_agent";N;s:8:"only_sub";b:0;s:13:"\0*\0_documents";a:0:{}s:2:"id";s:2:"15";s:4:"type";s:15:"hybrid_document";s:4:"name";s:14:"Новость";s:11:"description";s:0:"";s:6:"header";s:0:"";s:8:"template";s:9:"news-item";s:16:"backend_template";N;s:17:"frontend_template";N;s:12:"use_template";b:1;s:15:"template_params";a:0:{}s:5:"block";N;s:7:"caching";b:1;s:14:"cache_lifetime";i:604800;s:10:"cache_tags";a:1:{i:0;s:0:"";}s:9:"throw_404";b:0;s:7:"\0*\0_ctx";O:7:"Context":10:{s:8:"\0*\0_page";N;s:11:"\0*\0_request";N;s:12:"\0*\0_response";N;s:10:"\0*\0_crumbs";N;s:11:"\0*\0_widgets";a:0:{}s:14:"\0*\0_widget_ids";N;s:10:"\0*\0_blocks";a:0:{}s:10:"\0*\0_params";a:0:{}s:19:"\0*\0_behavior_router";a:0:{}s:14:"\0*\0_injections";a:0:{}}s:8:"\0*\0_data";a:3:{s:5:"ds_id";s:1:"2";s:6:"doc_id";s:1:"4";s:8:"continue";s:0:"";}s:13:"change_crumbs";s:1:"1";}'),
(16, 'pagination', 'paginator', 'Постраничкая навигация (Новости)', '', '2013-08-20 19:05:32', 'O:23:"Model_Widget_Pagination":18:{s:8:"\0*\0_data";a:3:{s:9:"query_key";s:4:"page";s:17:"related_widget_id";s:2:"14";s:8:"continue";s:0:"";}s:2:"id";s:2:"16";s:4:"type";s:10:"pagination";s:4:"name";s:60:"Постраничкая навигация (Новости)";s:11:"description";s:0:"";s:6:"header";s:0:"";s:8:"template";s:9:"paginator";s:16:"backend_template";N;s:17:"frontend_template";N;s:12:"use_template";b:1;s:15:"template_params";a:0:{}s:5:"block";N;s:6:"crumbs";b:0;s:7:"caching";b:0;s:14:"cache_lifetime";i:0;s:10:"cache_tags";a:1:{i:0;s:0:"";}s:9:"throw_404";b:0;s:7:"\0*\0_ctx";O:7:"Context":10:{s:8:"\0*\0_page";N;s:11:"\0*\0_request";N;s:12:"\0*\0_response";N;s:10:"\0*\0_crumbs";N;s:11:"\0*\0_widgets";a:0:{}s:14:"\0*\0_widget_ids";N;s:10:"\0*\0_blocks";a:0:{}s:10:"\0*\0_params";a:0:{}s:19:"\0*\0_behavior_router";a:0:{}s:14:"\0*\0_injections";a:0:{}}}');

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


SET FOREIGN_KEY_CHECKS=1;