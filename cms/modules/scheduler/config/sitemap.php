<?php defined('SYSPATH') or die('No direct access allowed.');

return array(
	array(
<<<<<<< HEAD
		'name' => 'Content',
		'children' => array(
			array(
				'name' => 'Scheduler', 
				'url' => Route::get('backend')->uri(array('controller' => 'scheduler')),
				'priority' => 900,
				'icon' => 'calendar',
				'permissions' => 'scheduler.index'
			)
		)
=======
		'name' => 'Calendar', 
		'url' => Route::get('backend')->uri(array('controller' => 'calendar')),
		'priority' => 900,
		'icon' => 'calendar',
		'permissions' => 'scheduler.index'
>>>>>>> upstream/dev
	),
	array(
		'name' => 'System',
		'children' => array(
			array(
				'name' => 'Jobs',
				'icon' => 'bolt',
<<<<<<< HEAD
				'url' => Route::get('backend')->uri(array('controller' => 'scheduler', 'action' => 'jobs')),
				'permissions' => 'scheduler.jobs',
=======
				'url' => Route::get('backend')->uri(array('controller' => 'jobs')),
				'permissions' => 'jobs.index',
>>>>>>> upstream/dev
				'priority' => 150,
			)
		)
	)
);
