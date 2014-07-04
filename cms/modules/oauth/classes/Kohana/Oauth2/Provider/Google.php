<?php

abstract class Kohana_Oauth2_Provider_Google extends Oauth2_Provider {

	public $name = 'google';

	public function url_authorize()
	{
		return 'https://accounts.google.com/o/oauth2/auth';
	}

	public function url_access_token()
	{
		return 'https://accounts.google.com/o/oauth2/token';
	}

}