<?php defined('SYSPATH') or die('No direct script access.');

$config = Kohana::$config->load('installer');
$default = $config->get('default_config', array());

$default['api']['key'] = ORM::factory('API_Key')->generate('Kodicms API key');
$config->set('default_config', $default);
