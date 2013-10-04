<?php defined('SYSPATH') or die('No direct access allowed.');

/**
 * @package    Kodi/Datasource
 */

class DataSource_Data_Hybrid_Field_File extends DataSource_Data_Hybrid_Field {
	
	protected $_props = array(
		'width' => 100,
		'height' => 100, 
		'crop' => FALSE,
		'master' => Image::AUTO,
		'quality' => 95,
		'max_size' => 0,
		'types' => 'jpg,png,gif'
	);
	
	/**
	 *
	 * @var string 
	 */
	public $folder = NULL;


	public function __construct( array $data )
	{
		$this->max_size = Num::bytes('1MiB');
		
		parent::__construct( $data );
		
		$this->family = self::TYPE_FILE;
		$this->type = self::TYPE_FILE;
	}
	
	public function set( array $data )
	{
		if(!isset($data['crop']))
		{
			$data['crop'] = FALSE;
		}
		
		return parent::set( $data );
	}
	
	public function set_width( $width )
	{
		$this->width = (int) $width;
	}
	
	public function set_height( $height )
	{
		$this->height = (int) $height;
	}
	
	public function set_quality( $quality )
	{
		$this->quality = (int) $quality;
	}
	
	public function create() 
	{
		if(parent::create())
		{
			if($this->create_folder()) 
			{
				$this->update();
				return $this->id;
			}

			$this->remove_folder();
		}

		return FALSE;
	}
	
	public function remove() 
	{
		$this->remove_folder();
		return parent::remove();
	}
	
	public function set_ds($ds_id) 
	{
		parent::set_ds($ds_id);
		
		if($this->ds_id)
		{
			$this->folder = 'hybrid' . DIRECTORY_SEPARATOR . $this->ds_id . DIRECTORY_SEPARATOR . substr($this->name, 2) . DIRECTORY_SEPARATOR;
		}
	}
	
	public function get_type()
	{
		return 'VARCHAR(64)';
	}
	
	public function set_types($types) 
	{
		$this->types = array();

		if( ! is_array( $types ) )
		{
			$types = explode(',', $types);
		}
		
		foreach($types as $type)
		{
			$type = trim($type);
			if( ! $type OR ! preg_match('~^[A-Za-z0-9_\\-]+$~', $type)) continue;
			
			if($this->check_disallowed($type))
			{
				$this->types[] = $type;
			}
		}
		
		return $this;
	}
	
	protected function check_disallowed($file_type)
	{
		$disallowed = explode(',', '/^php/,/^phtm/,py,pl,/^asp/,htaccess,cgi,_wc,/^shtm/,/^jsp/');
		foreach($disallowed as $type)
		{
			if(
				(
					(strpos($type, '/') !== FALSE) 
				AND 
					preg_match($type, $file_type)
				)
				OR $type == $file_type
			) 
			{
				return FALSE;
			}
				
		}
		
		return TRUE;
	}
	
	function create_folder() 
	{
		if( ! empty($this->folder) AND $this->ds_id AND !file_exists(PUBLICPATH . $this->folder) ) 
		{
			if(mkdir(PUBLICPATH . $this->folder, 0777, TRUE))
			{
				return TRUE;
			}
		}

		return FALSE;
	}
	
	function remove_folder() {
		
		$folder = $this->folder;
		if( ! empty($this->folder) AND is_dir(PUBLICPATH . $this->folder)) 
		{
			FileSystem::factory(PUBLICPATH . $this->folder)->delete();
			return TRUE;
		}

		return !is_dir(PUBLICPATH . $this->folder);
	}
	
	public function validate_file( $file_data = array())
	{
		$array = Validation::factory( array($this->name => $file_data ) )
			->rules( $this->name, array(
				array('Upload::valid'),
				array('Upload::type', array(':value', $this->types)),
				array('Upload::size', array(':value', $this->max_size))
			) );
		
		if(!$array->check())
		{
			return $array->errors('validation');
		}
		
		return TRUE;
	}
	
	public function is_image( $path )
	{
		$a = getimagesize($path);
		$image_type = $a[2];

		if(in_array($image_type , array(IMAGETYPE_GIF , IMAGETYPE_JPEG ,IMAGETYPE_PNG , IMAGETYPE_BMP)))
		{
			return TRUE;
		}

		return FALSE;
	}
	
	public function set_value(array $data, $doc)
	{
		$file = Arr::get($data, $this->name, array());
		if(is_array($file) AND Upload::valid($file) AND Upload::not_empty($file))
		{
			
		}
		else if(Valid::url( Arr::get($data, $this->name . '_url') )  )
		{
			$data[$this->name] = $data[$this->name . '_url'];
		}
		
		return parent::set_value($data, $doc);
	}

	public function onCreateDocument($doc) 
	{
		$this->onUpdateDocument($doc, $doc);
	}
	
	public function onUpdateDocument($old, $new)
	{
		$new_file = $new->fields[$this->name];
		
		if(empty($new_file))

		$filepath = FALSE;

		if(is_array($new_file))
		{
			if(empty($new_file['size']))
			{
				$this->set_old_value($old, $new);
				return;
			}

			if( is_array($this->validate_file($new_file)))
			{
				$this->set_old_value($old, $new);
				return FALSE;
			}

			$ext = strtolower( pathinfo( $new_file['name'], PATHINFO_EXTENSION ) );
			$filename = uniqid() . '.' . $ext;

			$filepath = Upload::save($new->fields[$this->name], $filename, $this->folder());
		}
		else if( !empty($new_file) )
		{
			list($status, $filename) = Upload::from_url( $new_file, $this->types, $this->folder() );

			if($status)
			{
				$filepath = $this->folder() . DIRECTORY_SEPARATOR . $filename;
			}
		}

		if( $filepath === FALSE) 
		{
			$this->set_old_value($old, $new);
			return FALSE;
		}
		
		if($this->is_image( $filepath ))
		{
			$image = Image::factory( $filepath );
			
			if(!empty($this->width) OR !empty($this->height))
			{
				$image->resize( $this->width, $this->height, $this->master );

				if(!empty($this->crop ) AND $this->width > 0 AND $this->height > 0)
				{
					$image->crop( $this->width, $this->height );
				}
			}

			$image->save(NULL, $this->quality);
		}
		
		$new->fields[$this->name] = $this->folder . $filename;
		$this->onRemoveDocument($old);
		
		return TRUE;
	}
	
	public function onRemoveDocument($doc) 
	{
		if(!empty($doc->fields[$this->name])) 
		{
			@unlink(PUBLICPATH . $doc->fields[$this->name]);
			$doc->fields[$this->name] = '';
		}
	}
	
	public function folder()
	{
		return PUBLICPATH . $this->folder;
	}
	
	/**
	 * @param Model_Widget_Hybrid
	 * @param array $field
	 * @param array $row
	 * @param string $fid
	 * @return mixed
	 */
	public static function set_doc_field( $widget, $field, $row, $fid )
	{
		return ! empty($row[$fid]) 
			? str_replace(array('/', '\\'), '/', $row[$fid])
			: NULL;
	}
}