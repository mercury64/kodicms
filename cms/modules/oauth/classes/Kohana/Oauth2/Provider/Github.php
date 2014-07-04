<?php defined('SYSPATH') OR die('No direct access allowed.');

abstract class Kohana_Oauth2_Provider_Github extends Oauth2_Provider {

	public $name = 'github';

	public function url_authorize()
	{
		return 'https://github.com/login/oauth/authorize';
	}

	public function url_access_token()
	{
		return 'https://github.com/login/oauth/access_token';
	}

}
