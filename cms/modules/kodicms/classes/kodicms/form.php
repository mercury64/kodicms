<?php defined('SYSPATH') OR die('No direct script access.');

/**
 * @package		KodiCMS
 * @category	Form
 * @author		ButscHSter
 */
class KodiCMS_Form extends Kohana_Form {

	public static function choises()
	{
		return array(
			Config::YES => __( 'Yes' ), 
			Config::NO => __( 'No' )
		);
	}
	
}
