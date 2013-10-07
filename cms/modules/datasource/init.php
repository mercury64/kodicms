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
	foreach ($sections as $id => $section)
	{
		Model_Navigation::get_section('Datasources')
			->add_page(new Model_Navigation_Page(array(
				'name' => $section['name'],
				'url' => Route::url('datasources', array(
					'controller' => 'data',
					'directory' => 'datasources',
				)) . URL::query(array('ds_id' => $id)),
				'icon' => 'folder-open-alt'
			)), 999);
	}
}

Model_Navigation::get_section('Datasources')
	->add_page(new Model_Navigation_Page(array(
		'name' => __('Create hybrid section'),
		'url' => Route::url('datasources', array(
			'controller' => 'section',
			'directory' => 'hybrid',
			'action' => 'create'
		)) ,
		'icon' => 'plus',
		'divider' => TRUE
	)), 999);

Observer::observe('scheduler_callbacks', function() {
	scheduler::add(function($from, $to) {
		$from = date('Y-m-d', $from);
		$to = date('Y-m-d', $to);

		$docs = DB::select()
			->from('dshybrid')
			->where(DB::expr('DATE(created_on)'), 'between', array($from, $to))
			->as_object()
			->execute();

		$data = array();
		foreach ($docs as $doc)
		{
			$data[] = array(
				'title' => $doc->header,
				'start' => strtotime($doc->created_on),
				'url' => Route::url('datasources', array(
					'controller' => 'document',
					'directory' => 'hybrid',
					'action' => 'view'
				)) . URL::query(array(
					'ds_id' => $doc->ds_id, 'id' => $doc->id
				)),
				'allDay' => FALSE
			);
		}
		return $data;
	});
});