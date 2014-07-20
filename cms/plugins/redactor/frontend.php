<?php defined( 'SYSPATH' ) or die( 'No direct script access.' );

Observer::observe('modules::after_load', function($plugin) {
	Assets_Package::add('redactor')
		->js('redactor.' . I18n::lang(), PLUGINS_URL . $plugin->id() . '/vendors/redactor/'.I18n::lang().'.js', 'jquery')
		->js('redactor.min', PLUGINS_URL . $plugin->id() . '/vendors/redactor/redactor.min.js', 'jquery')
		->js('redactor', ADMIN_RESOURCES . 'js/redactor.js', 'global')
		->css('redator', PLUGINS_URL . $plugin->id() . '/vendors/redactor/redactor.css');
}, $plugin);