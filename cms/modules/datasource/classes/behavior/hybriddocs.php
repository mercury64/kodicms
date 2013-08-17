<?php defined('SYSPATH') or die('No direct access allowed.');

class Behavior_HybridDocs extends Behavior_Abstract
{
	
	public function routes()
	{
		return array(
			'/<slug>' => array(
				'method' => 'execute'
			)
		);
	}

	public function execute()
	{
		$settings = $this->settings()->load();
		
		$this->_page = Model_Page_Front::findById(12);
//		
//		$widget = Widget_Manager::load($settings->widget_id);
		$widget = Context::instance()->get_widget($settings->widget_id);
		
		echo debug::vars($widget);
		
	}
}