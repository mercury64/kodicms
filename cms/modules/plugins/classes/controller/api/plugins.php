<?php defined('SYSPATH') or die('No direct access allowed.');

/**
 * @package		KodiCMS/Plugins
 * @category	API
 * @author		ButscHSter
 */
class Controller_API_Plugins extends Controller_System_API
{	
	public function rest_get()
	{
		if( ! ACL::check('plugins.index'))
		{
			throw HTTP_API_Exception::factory(API::ERROR_PERMISSIONS, 'You dont hanve permissions to view plugin');
		}

		$plugins = array();
		
		foreach (Plugins::find_all() as $plugin)
		{
			$plugins[] = $this->_get_info($plugin);
		}
		
		$this->response($plugins);
	}
	
	public function rest_put()
	{
		if( ! ACL::check('plugins.change_status'))
		{
			throw HTTP_API_Exception::factory(API::ERROR_PERMISSIONS, 'You dont hanve permissions to install or uninstall plugin');
		}

		Plugins::find_all();

		$plugin = Plugins::get_registered( $this->param('id', NULL, TRUE) );

		if ( ! $plugin->is_activated() AND (bool) $this->param('installed') === TRUE )
		{
			$plugin->activate();
		}
		else
		{
			$plugin->deactivate((bool)$this->param('remove_data'));
		}
		
		Kohana::$log->add(Log::INFO, ':user :action plugin :name', array(
			':action' => $plugin->is_activated() ? 'activate' : 'deactivate',
			':name' => $plugin->title()
		))->write();

		$this->response($this->_get_info($plugin));
	}
	
	protected function _get_info( Plugin $plugin )
	{
		return array(
			'id' => $plugin->id(),
			'title' => $plugin->title(),
			'description' => $plugin->description(),
		  'version' => $plugin->version(),
			'author' => $plugin->author(),
			'installed' => $plugin->is_activated(),
			'settings' => $plugin->has_settings_page(),
			'icon' => $plugin->icon()
		);
	}
}
