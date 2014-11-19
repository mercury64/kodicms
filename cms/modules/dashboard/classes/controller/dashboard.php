<?php defined( 'SYSPATH' ) or die( 'No direct access allowed.' );

/**
 * @package		KodiCMS/Dashboard
 * @category	Controller
 * @author		butschster <butschster@gmail.com>
 * @link		http://kodicms.ru
 * @copyright	(c) 2012-2014 butschster
 * @license		http://www.gnu.org/licenses/old-licenses/lgpl-2.1.txt
 */
class Controller_Dashboard extends Controller_System_Backend {
	
	public function action_index()
	{
		Assets::package('jquery-ui');
		
		$widgets_array = Model_User_Meta::get('dashboard', array());
		$widget_settings = Model_User_Meta::get('dashboard_widget_settings', array());
		
		foreach ($widgets_array as $column => $widgets)
		{
			foreach ($widgets as $i => $widget)
			{
				$widget_object = Arr::get($widget_settings, $widget);
				if (!($widget_object instanceof Model_Widget_Decorator_Dashboard))
				{
					unset($widgets_array[$column][$i]);
					continue;
				}

				$widgets_array[$column][$i] = $widget_object;
			}
		}
		
		$this->set_title(__('Dashboard'), FALSE);

		$this->template->content = View::factory('dashboard/index', array(
			'widgets' => $widgets_array,
			'columns' => Config::get('dashboard', 'columns', array())
		));
	}
}