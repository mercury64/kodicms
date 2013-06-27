<?php defined('SYSPATH') or die('No direct access allowed.');

/**
 * @package    Kodi/Datasource
 */

class DataSource_Data_Hybrid_Field_Document extends DataSource_Data_Hybrid_Field {

	protected $_props = array(
		'isreq' => TRUE,
		'one_to_one' => FALSE
	);
	
	public function __construct( $data )
	{
		parent::__construct( $data );
		
		$this->family = self::TYPE_DOCUMENT;
	}
	
	public function set( $data )
	{
		if(!isset($data['isreq']))
		{
			$data['isreq'] = FALSE;
		}
		
		if(!isset($data['one_to_one']))
		{
			$data['one_to_one'] = FALSE;
		}

		return parent::set( $data );
	}
	
	public function create() 
	{
		parent::create();
		
		if( ! $this->id)
		{
			return FALSE;
		}

		$ds = DataSource_Data_Hybrid_Field_Utils::load_ds($this->from_ds);
		$ds->increase_lock();
		
		$this->update();
		
		return $this->id;
	}
	
	
	
	public function update() 
	{
		return DB::update($this->table)
			->set(array(
				'header' => $this->header,
				'props' => serialize($this->_props),
				'from_ds' => $this->from_ds
			))
			->where('id', '=', $this->id)
			->execute();
	}
	
	public function remove() 
	{
		$ds = DataSource_Data_Hybrid_Field_Utils::load_ds($this->from_ds);
		$ds->decrease_lock();

		parent::remove();
	}
	
	public function onUpdateDocument($old, $new) 
	{
		if( $new->fields[$this->name] == -1 ) 
		{
			if($this->one_to_one AND $this->is_valid($old->fields[$this->name])) 
			{
				$ds = DataSource_Data_Hybrid_Field_Utils::load_ds($this->ds_id);
				$ds->delete($old->fields[$this->name]);
			}

			$new->fields[$this->name] = NULL;
			return;
		}

		if( ! $this->is_valid($new->fields[$this->name]))
		{
			$new->fields[$this->name] = $old->fields[$this->name];
		}
	}
	
	public function onRemoveDocument( $doc )
	{
		if($this->is_valid($doc->fields[$this->name]) AND  $this->one_to_one) 
		{
			$ds = DataSource_Data_Hybrid_Field_Utils::load_ds($this->ds_id);
			$ds->delete($doc->fields[$this->name]);
		}
	}

	public function fetch_value($doc) 
	{
		$header = DataSource_Data_Hybrid_Field_Utils::get_document_header($this->type, $this->from_ds, $doc->fields[$this->name]);
		$doc->fields[$this->name] = array(
			'id' => $header ? $doc->fields[$this->name] : NULL,
			'header' => $header
		);
	}
	
	public function convert_to_plain($doc) 
	{
		$doc->fields[$this->name] = Arr::path($doc->fields, $this->name . '.header');
	}
	
	public function is_valid($value) 
	{
		return $this->isreq ? $value > 0 : $value >= 0;
	}
	
	public function get_type()
	{
		switch($this->type) 
		{
			case Datasource_Data_Manager::DS_HYBRID:
				return 'INT(11) UNSIGNED';
		}

		return NULL;
	}
	
	/**
	 * 
	 * @param array $row
	 * @param integr $fid
	 * @param integer $recurse
	 * @return array
	 */
	protected static function _fetch_related_widget( $widget, $row, $fid, $recurse)
	{
		$widget_id = $widget->doc_fetched_widgets[$fid];

		$widget = Widget_Manager::load($widget_id);
		if($widget === NULL) return array();

		$doc_ids = explode(',', $row[$fid]);
		$widget->ids = $doc_ids;
		$docs = $widget->get_documents( $recurse - 1);
		
		return $docs;
	}
	
	/**
	 * @param Model_Widget_Hybrid
	 * @param array $field
	 * @param array $row
	 * @param string $fid
	 * @return mixed
	 */
	public static function set_doc_field( $widget, $field, $row, $fid, $recurse )
	{
		$related_widget = NULL;

		if($recurse > 0 AND isset($widget->doc_fetched_widgets[$fid]))
		{
			$related_widget = self::_fetch_related_widget($widget, $row, $fid, $recurse);
		}

		return ($related_widget !== NULL) 
			? $related_widget 
			: array(
				'id' => $row[$fid], 
				'header' => $row[$fid . 'header']
			);
	}
}