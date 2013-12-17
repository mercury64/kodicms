<?php defined('SYSPATH') or die('No direct access allowed.');

return array(
	array(
		'name' => 'System',
		'children' => array(
			array(
				'name' => __('Information'),
				'url' => Route::url('backend', array('controller' => 'system', 'action' => 'information')),
				'permissions' => 'system.information',
				'priority' => 90,
				'icon' => 'info-sign',
			),
			array(
				'name' => __('Settings'),
				'url' => Route::url('backend', array('controller' => 'system', 'action' => 'settings')),
				'permissions' => 'system.settings',
				'priority' => 100,
				'icon' => 'cog',
			)
		)
		
	),
	array(
		'name' => 'Design',
		'children' => array(
			array(
				'name' => __('Layouts'), 
				'url' => Route::url('backend', array('controller' => 'layout')),
				'permissions' => 'layout.index',
				'priority' => 100,
				'icon' => 'desktop'
			)
		)
	),
	array(
		'name' => 'Content',
		'children' => array(
			array(
				'name' => __('Pages'),
				'url' => URL::backend('page'),
				'permissions' => 'page.index',
				'priority' => 100,
				'icon' => 'sitemap'
			)
		)
	),
);
