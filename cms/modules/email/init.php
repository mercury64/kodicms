<?php defined('SYSPATH') or die('No direct script access.');

if(IS_BACKEND)
{
	if( ACL::check('email.settings'))
	{
		Observer::observe('view_setting_plugins', function() {
			echo View::factory('email/settings', array(
				'settings' => Config::get('email'),
				'drivers' => Config::get('email', 'drivers', array()),
			));
		});

		Observer::observe('validation_settings', function( $validation, $filter ) {
			$validation
				->rule('email.default', 'email')
				->rule('email.default', 'not_empty')
				->rule('email.driver', 'in_array', array(':value', array_keys(Config::get('email', 'drivers', array()))))
				->label('email.default', 'Default email address')
				->label('email.driver', 'SMTP Driver');
		});
	}
}