<?php defined( 'SYSPATH' ) or die( 'No direct access allowed.' );

/**
 * @package		KodiCMS
 * @category	Helper
<<<<<<< HEAD
 * @author		ButscHSter
=======
 * @author		butschster <butschster@gmail.com>
 * @link		http://kodicms.ru
 * @copyright	(c) 2012-2014 butschster
 * @license		http://www.gnu.org/licenses/old-licenses/lgpl-2.1.txt
>>>>>>> upstream/dev
 */
class KodiCMS_WYSIWYG {

	/**
	 *
	 * @var array
	 */
	public static $filters = array();
	
	/**
	 *
	 * @var array
	 */
	public static $plugins = array();

	/**
	 * Add a new filter
	 *
	 * @param filter_id string  The WYSIWYG plugin folder name
	 * @param file      string  The file where the WYSIWYG class is
	 */
<<<<<<< HEAD
	public static function add( $filter_id)
	{
		self::$filters[$filter_id] = Inflector::humanize($filter_id);
	}
	
=======
	public static function add($filter_id)
	{
		self::$filters[$filter_id] = Inflector::humanize($filter_id);
	}

>>>>>>> upstream/dev
	/**
	 * 
	 * @param string $name
	 */
<<<<<<< HEAD
	public static function plugin( $name )
=======
	public static function plugin($name)
>>>>>>> upstream/dev
	{
		self::$plugins[] = (string) $name;
	}

	/**
	 * Remove a filter
	 *
	 * @param filter_id string  The WYSIWYG plugin folder name
	 */
<<<<<<< HEAD
	public static function remove( $filter_id )
	{
		if ( isset( self::$filters[$filter_id] ) )
		{
			unset( self::$filters[$filter_id] );
		}
	}
	
=======
	public static function remove($filter_id)
	{
		if (isset(self::$filters[$filter_id]))
		{
			unset(self::$filters[$filter_id]);
		}
	}

>>>>>>> upstream/dev
	public static function load_filters()
	{
		foreach (self::$filters as $key => $filter)
		{
			Assets::package($key);
		}
<<<<<<< HEAD
		
=======

>>>>>>> upstream/dev
		foreach (self::$plugins as $plugin)
		{
			Assets::package($plugin);
		}
	}

	/**
	 * Find all active filters id
	 *
	 * @return array
	 */
	public static function findAll()
	{
		return self::$filters;
	}

	/**
	 * Get a instance of a filter
	 *
	 * @param filter_id string  The WYSIWYG plugin folder name
	 *
	 * @return mixed   if founded an object, else FALSE
	 */
<<<<<<< HEAD
	public static function get( $filter_id )
	{
		if ( isset( self::$filters[$filter_id] ) )
		{
			if ( ! class_exists( $filter_id ) )
=======
	public static function get($filter_id)
	{
		if (isset(self::$filters[$filter_id]))
		{
			if (!class_exists($filter_id))
>>>>>>> upstream/dev
			{
				return FALSE;
			}

			return new $filter_id;
		}
		else
		{
			return FALSE;
		}
	}
<<<<<<< HEAD
=======

	/**
	 * 
	 * @return array
	 */
	public static function html_select()
	{
		$filters = array('' => __('none'));
		
		foreach (WYSIWYG::findAll() as $filter)
		{
			$filters[$filter] = Inflector::humanize($filter);
		}
		
		return $filters;
	}
>>>>>>> upstream/dev
}