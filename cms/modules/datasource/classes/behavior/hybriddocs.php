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
		if(!$this->router()->param('slug')) return;
		$this->_page = Model_Page_Front::findById($settings->item_page_id);
	}
}