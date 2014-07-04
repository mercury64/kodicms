<?php defined('SYSPATH') OR die('No direct access allowed.');

abstract class Kohana_Oauth2_Token extends Oauth_Token {

	/**
	 * Create a new token object.
	 *
	 *     $token = Oauth2_Token::factory($name);
	 *
	 * @param   string  token type
	 * @param   array   token options
	 * @return  OAuth2_Token
	 */
	public static function factory($name, array $options = NULL)
	{
		$class = 'OAuth2_Token_'.ucfirst($name);

		return new $class($options);
	}

}
