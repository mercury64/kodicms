var CURRENT_URL			= '<?php echo Request::current()->url(TRUE) . URL::query() ; ?>',
	BASE_URL			= '<?php echo URL::backend(ADMIN_DIR_NAME, TRUE); ?>',
	SITE_URL			= '<?php echo URL::base(TRUE); ?>',
	ADMIN_DIR_NAME		= '<?php echo ADMIN_DIR_NAME; ?>',
	ADMIN_RESOURCES		= '<?php echo ADMIN_RESOURCES; ?>',
	PUBLIC_URL			= '<?php echo PUBLIC_URL; ?>',
	LOCALE				= '<?php echo I18n::lang(); ?>',
	CONTROLLER			= '<?php echo strtolower(Request::current()->controller()); ?>',
	ACTION				= '<?php echo Request::current()->action(); ?>',
	USER_ID				= <?php echo (int) Auth_User::getId(); ?>,
	FILTERS				= '<?php echo json_encode(WYSIWYG::findAll()); ?>';