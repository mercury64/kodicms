<?php defined('SYSPATH') or die('No direct access allowed.');

Plugin::factory('maintenance', array(
	'title' => 'Maintenance mode',
	'description' => 'Enables the site to be put into maintenance mode.',
	'version' => '1.0.0'
))->register();
