<?php defined('SYSPATH') OR die('No direct access allowed.');

abstract class Kohana_Oauth2_Request_Authorize extends Oauth2_Request {

	protected $name = 'authorize';

	public function execute(array $options = NULL)
	{
		return HTTP::redirect($this->as_url());
	}

}
