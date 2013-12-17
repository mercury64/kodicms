<?php defined('SYSPATH') or die('No direct script access.');

/**
 * @package		KodiCMS/Email
 * @category	Model
 * @author		ButscHSter
 */
class Model_Email_Template extends ORM
{
	const TYPE_HTML = 'html';
	const TYPE_TEXT = 'plain';
	
	const ACTIVE = 1;
	const INACTIVE = 0;
	
	protected $_foreign_key_suffix = '';

	protected $_created_column = array(
		'column' => 'created_on',
		'format' => 'Y-m-d H:i:s'
	);
	
	protected $_belongs_to = array(
		'type'	=> array(
			'model'	=> 'Email_Type',
			'foreign_key' => 'email_type'
		),
	);
	
	protected $_cast_data = array(
		'subject' => '{site_title}',
		'email_from' => '{default_email}',
		'email_to' => '{email_to}',
		'message_type' => Model_Email_Template::TYPE_HTML,
		'status' => Model_Email_Template::ACTIVE
	);

	public function rules()
	{
		return array(
			'email_type' => array(
				array('not_empty')
			),
			'email_from' => array(
				array('not_empty'),
			),
			'email_to' => array(
				array('not_empty'),
			),
			'message_type' => array(
				array('not_empty'),
				array('in_array', array(':value', array(Model_Email_Template::TYPE_HTML, Model_Email_Template::TYPE_TEXT))),
			),
			'reply_to' => array(),
			'cc' => array(),
			'status' => array(
				array('not_empty'),
				array('in_array', array(':value', array(Model_Email_Template::ACTIVE, Model_Email_Template::INACTIVE))),
			),
		);
	}
	
	public function labels()
	{
		return array(
			'email_from' => __('Email from'),
			'email_to' => __('Email to'),
			'email_type' => __('Email type'),
			'status' => __('Email status'),
			'message' => __('Email message'),
			'message_type' => __('Email message type'),
			'reply_to' => __('Email reply to'),
			'cc' => __('CC'),
			'bcc' => __('BCC'),
			'subject' => __('Email subject')
		);
	}
	
	public function send( array $options = NULL )
	{
		if ( ! $this->_loaded)
			throw new Kohana_Exception('Cannot send message because it is not loaded.');
		
		foreach($this->_object as $field => $value)
		{
			$this->_object[$field] = str_replace(array_keys($options), array_values($options), $value);
		}
		
		$email = Email::factory($this->subject)
			->from($this->email_from)
			->to($this->email_to)
			->message($this->message, 'text/' . $this->message_type);
		
		if(!empty($this->cc))
		{
			$email->cc($this->cc);
		}
		
		if(!empty($this->bcc))
		{
			$email->cc($this->bcc);
		}
		
		if(!empty($this->reply_to))
		{
			$email->reply_to($this->reply_to);
		}
		

		return (bool) $email->send();
	}
}
