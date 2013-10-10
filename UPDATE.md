### 6.x.x - 6.3.14

Необходимо добавить в БД таблицу
<pre>
	CREATE TABLE IF NOT EXISTS `hybrid_tags` (
	  `field_id` int(11) unsigned NOT NULL,
	  `doc_id` int(11) NOT NULL,
	  `tag_id` int(11) unsigned NOT NULL,
	  KEY `tag_id` (`tag_id`),
	  KEY `field_id` (`field_id`,`doc_id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8;
</pre>

### 5.x.x - 6.4.20

 * Метод Model_Widget_Decorator::load_template_data изменен на backend_data. Необходимо переименовать в своих виджетах.
 * Если используются виджеты, наследуемые от Model_Widget_Decorator_Pagination, в backend шаблоне больше не нужны поля `list_offset` и `list_size`
