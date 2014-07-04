<?php defined('SYSPATH') OR die('No direct access allowed.');

abstract class Kohana_Oauth2_Provider_Yandex extends Oauth2_Provider {

	public $name = 'yandex';

	public function url_authorize()
	{
		return 'https://oauth.yandex.ru/authorize';
	}

	public function url_access_token()
	{
		return 'https://oauth.yandex.ru/token';
	}

}