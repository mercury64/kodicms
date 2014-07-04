<?php defined('SYSPATH') OR die('No direct access allowed.');

abstract class Kohana_Oauth2_Request_Token extends Oauth2_Request {

	protected $name = 'token';

	public function execute(array $options = NULL)
	{
		return Oauth_Response::factory(parent::execute($options));
	}

}
