<?php defined('SYSPATH') or die('No direct access allowed.');

return array(
	'Datasources' => array(
		array(
			'name' => __('Data'), 
			'url' => URL::backend('datasources/data'),
			'permissions' => array('administrator','developer'),
			'priority' => 300,
			'icon' => 'puzzle-piece'
		),
	)
);