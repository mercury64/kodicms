<?php defined( 'SYSPATH' ) or die( 'No direct access allowed.' );

/**
 * @package		Twitter Bootstrap
 * @author		ButscHSter
 */
class Bootstrap {
	
	public static function html( $string )
	{
		return Bootstrap_Helper_HTML::factory(array(
			'string' => (string) $string
		));
	}
}