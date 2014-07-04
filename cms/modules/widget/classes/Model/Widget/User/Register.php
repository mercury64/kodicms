<?php defined('SYSPATH') or die('No direct access allowed.');

/**
 * @package		KodiCMS/Widgets
 * @category	User
 * @author		ButscHSter
 */
class Model_Widget_User_Register extends Model_Widget_Decorator {
	
	public $use_template = FALSE;
	public $use_caching = FALSE;
	
	protected $_data = array(
		'username_field' => 'username',
		'email' => 'email',
		'password_field' => 'password',
		'next_url' => '/',
		'user_roles' => array(1),
		'check_password_confirm' => FALSE
	);
	
	public function set_values(array $data)
	{
		$data['check_password_confirm'] = empty($data['check_password_confirm']) ? FALSE : (bool) $data['check_password_confirm'];

		return parent::set_values($data);
	}
	
	public function backend_data()
	{
		return array(
			'roles' => ORM::factory('Role')->find_all()->as_array('id', 'name')
		);
	}

	public function on_page_load()
	{
		parent::on_page_load();
		
		if(Request::initial()->method() !== Request::POST) return;

		$referrer = Request::initial()->referrer();
		$post_data = Request::initial()->post();
		$user_data = Arr::get($post_data, 'user', array());
		$profile_data = Arr::get($post_data, 'profile', array());
		
		if( ! $this->check_password_confirm )
		{
			$user_data['password_confirm'] = $user_data['password'];
		}
		
		Observer::notify('user_register_before', $post_data);
		
		$user = ORM::factory('User');
				
		try
		{
			$user = $user->create_user($user_data, array(
				'password', 'username', 'email', 
			));
	
			$user->update_related_ids('roles', $this->get('user_roles', array()));

			$profile_data['user_id'] = $user->id;
			
			$user->profile
				->values($profile_data)
				->create();

			$next_url = $this->get('next_url', $referrer);
			
			Email_Type::get('user_register')->send(array(
				'username' => $user->username,
				'email' => $user->email,
				'password' => $user_data['password']
			));
			
			Auth::instance()->login($user->username, $user_data['password']);
			$query = URL::query(array('status' => 'success'), FALSE);
		}
		catch (ORM_Validation_Exception $e)
		{
			unset($post_data['user']['password'], $post_data['user']['password_confirm']);
			
			if($user->loaded())
			{
				$user->delete();
			}

			Flash::set('form_errors', $e->errors('validation'));
			Flash::set('form_values', $post_data);
			
			$query = URL::query(array('status' => 'error'), FALSE);
			$next_url = $referrer;
		}
		
		Observer::notify('user_register_after', $user);
		
		HTTP::redirect( preg_replace('/\?.*/', '', $next_url) . $query, 302);
	}

	public function fetch_data() {}
	
	public function render( array $params = array() ) {}
}