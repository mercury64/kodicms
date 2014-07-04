<?php defined('SYSPATH') OR die('No direct access allowed.');

abstract class Kohana_Oauth2_Provider_Vk extends Oauth2_Provider {

	public $name = 'vk';

	public function url_authorize()
	{
		return 'http://oauth.vk.com/authorize';
	}

	public function url_access_token()
	{
		return 'https://oauth.vk.com/access_token';
	}


}