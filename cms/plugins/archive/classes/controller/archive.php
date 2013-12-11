<?php defined('SYSPATH') or die('No direct access allowed.');

/**
 * @package		KodiCMS/Archive
 * @category	Controller
 * @author		ButscHSter
 */
class Controller_Archive extends Controller_System_Backend
{
	public function action_index() 
	{
		$page_id = $this->request->param('id');
		$page = Record::findByIdFrom('Model_Page', (int) $page_id);

		if ( ! $page)
		{
			Flash::set('error', __('Page not found!'));
			throw new HTTP_Exception_404('Page not found');
		}
		
		$this->template->title = $page->title;
		$this->breadcrumbs
			->add(__('Pages'), Route::url('backend', array('controller' => 'page')))
			->add($this->template->title);

		$pager = Pagination::factory(array(
			'total_items' => Record::countFrom('Model_Page', array(
				'where' => array(array('parent_id', '=', (int) $page_id))
			))
		));

		$pages = Record::findAllFrom('Model_Page', array(
			'where' => array(array('parent_id', '=', (int) $page_id)),
			'order_by' => array(array('created_on', 'desc')),
			'limit' => $pager->items_per_page,
			'offset' => $pager->offset
		));
		
		$this->template->content = View::factory('archive/index', array(
			'items' => $pages,
			'page'	=> $page,
			'pager' => $pager
		));
	}

}