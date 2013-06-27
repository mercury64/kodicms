<?php defined( 'SYSPATH' ) or die( 'No direct access allowed.' );

class Controller_System_Datasource extends Controller_System_Backend
{
	public function before()
	{
		parent::before();

		Assets::js('datasource', ADMIN_RESOURCES . 'js/datasource.js', 'global');
		Assets::css('datasource', ADMIN_RESOURCES . 'css/datasource.css', 'global');
		
		$this->breadcrumbs
			->add(__('Datasources'), 'datasources/data');
	}
}