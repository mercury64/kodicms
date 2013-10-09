## 6.x.x to 6.3.14

<pre>
	CREATE TABLE IF NOT EXISTS `hybrid_tags` (
	  `field_id` int(11) unsigned NOT NULL,
	  `doc_id` int(11) NOT NULL,
	  `tag_id` int(11) unsigned NOT NULL,
	  KEY `tag_id` (`tag_id`),
	  KEY `field_id` (`field_id`,`doc_id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8;
</pre>