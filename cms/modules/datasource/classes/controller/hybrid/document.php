<?php defined( 'SYSPATH' ) or die( 'No direct access allowed.' );

class Controller_Hybrid_Document extends Controller_System_Datasource
{
	public $ds = NULL;

	public function before()
	{
		$ds_id = (int) $this->request->query('ds_id');
		
		$this->ds = Datasource_Data_Manager::load($ds_id);
		if(empty($this->ds))
		{
			throw new HTTP_Exception_404('Datasource ID :id not found', 
					array(':id' => $ds_id));
		}
		
		if(
			Acl::check('hybrid'.$ds_id.'.document.edit')
		OR
			Acl::check('hybrid'.$ds_id.'.document.view')
		)
		{
			$this->allowed_actions[] = 'view';
		}
		
		if(
			Acl::check('hybrid'.$ds_id.'.document.edit')
		)
		{
			$this->allowed_actions[] = 'create';
		}

		parent::before();
	}

	public function action_create()
	{
		return $this->action_view();
	}

	public function action_view()
	{
		$id = (int) $this->request->query('id');

		if( empty($id) )
		{
			$doc = $this->ds->get_empty_document();
		}
		else
		{
			$doc = $this->ds->get_document($id);
			
			if(!$doc)
			{
				throw new HTTP_Exception_404('Document ID :id not found', 
						array(':id' => $id));
			}
		}

		if($this->request->method() === Request::POST)
		{
			return $this->_save($this->ds, $doc);
		}
		
		$post_data = Session::instance()->get_once('post_data');
		$doc->read_values($post_data)->fetch_values();

		$this->breadcrumbs
			->add($this->ds->name, Route::url('datasources', array(
				'directory' => 'datasources',
				'controller' => 'data'
			)) . URL::query(array('ds_id' => $this->ds->ds_id), FALSE))
			->add(__(':action document', array(':action' => __(ucfirst($this->request->action())))));
		
		$this->template->content = View::factory('datasource/data/hybrid/document/edit', array(
			'record' => $this->ds->get_record(),
			'ds' => $this->ds,
			'doc' => $doc,
			'action' => $this->request->action()
		));
	}
	
	private function _save($ds, $doc)
	{
		Session::instance()->set('post_data', $this->request->post());

		if(($errors = $doc->validate($this->request->post() + $_FILES)) !== TRUE)
		{
			Messages::errors($errors);
			$this->go_back();
		}

		$doc->read_values($this->request->post());
		$doc->read_files($_FILES);
		
		if( !empty($doc->id) )
		{
			$ds->update_document($doc);
		}
		else
		{
			$doc = $ds->create_document($doc);
		}

		Messages::success('Document saved');
		
		Session::instance()->delete('post_data');
		
		// save and quit or save and continue editing?
		if ( $this->request->post('commit') !== NULL )
		{
			$this->go(Route::url('datasources', array(
				'directory' => 'datasources',
				'controller' => 'data'
			)) . URL::query(array('ds_id' => $ds->ds_id), FALSE));
		}
		else
		{
			
			$this->go(Route::url('datasources', array(
				'directory' => 'hybrid',
				'controller' => 'document',
				'action' => 'view'
			)) . URL::query(array('ds_id' => $ds->ds_id, 'id' => $doc->id), FALSE));
		}
	}
}