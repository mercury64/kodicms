<?php defined('SYSPATH') OR die('No direct access allowed.');

abstract class Kohana_Oauth2_Provider_Facebook extends Oauth2_Provider {

	public $name = 'facebook';

	public function url_authorize()
	{
		return 'https://www.facebook.com/dialog/oauth';
	}

	public function url_access_token()
	{
		return 'https://graph.facebook.com/oauth/access_token';
	}


}
