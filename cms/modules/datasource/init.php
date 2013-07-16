<?php defined('SYSPATH') or die('No direct access allowed.');

Route::set( 'datasources', ADMIN_DIR_NAME.'/<directory>(/<controller>(/<action>(/<id>)))', array(
	'directory' => '(datasources|' . implode('|', array_keys(Datasource_Data_Manager::types())) . ')'
))
		->defaults( array(
			'directory' => 'datasources',
			'controller' => 'data',
			'action' => 'index',
		) );

foreach (Datasource_Data_Manager::get_tree() as $type => $sections)
{
	foreach ($sections as $id => $title)
	{
		Model_Navigation::get_section('Datasources')
			->add_page(new Model_Navigation_Page(array(
				'name' => $title,
				'url' => Route::url('datasources', array(
					'controller' => 'data',
					'directory' => 'datasources',
				)) . URL::query(array('ds_id' => $id)),
				'icon' => UI::icon('folder-open-alt')
			)), 999);
	}
}