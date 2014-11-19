<<<<<<< HEAD
<div id="login-form" class="hero-unit raised outline">
	<div class="outline_inner">
		<h1><?php echo __( 'Forgot password?' ); ?></h1>
		<p class="muted"><?php echo __('Enter your e-mail, which you want to forgot password.'); ?></p>
		<hr />
		<?php echo Form::open( Route::get( 'user' )->uri( array( 'action' => 'forgot' ) ), array( 'method' => 'post' ) ); ?>

		<?php echo Form::hidden( 'token', Security::token() ); ?>

		<div class="control-group">			
			<div class="input-prepend input-append">
				<span class="add-on"><i class="icon-envelope"></i></span>
				<?php echo Form::input('forgot[email]', NULL, array(
					'class' => 'login-field'
				)); ?>

				<?php echo Form::button('send', __( 'Send password' ), array('class' => 'btn btn-large btn-success')); ?>
			</div>			
		</div>

		<?php Observer::notify( 'admin_login_forgot_form' ); ?>

		<hr />
		<?php echo HTML::anchor(Route::get( 'user' )->uri( array( 
			'action' => 'login'
			)), UI::icon('chevron-left') . ' ' . __( 'Login' ), array(
			'class' => 'btn btn-large'
		)); ?>
		<?php Form::close(); ?>
	</div>
=======
<div class="frontend-header">
	<a href="/" class="logo">
		<?php echo HTML::image( ADMIN_RESOURCES . 'images/logo-color.png'); ?>
	</a>

	<?php echo HTML::anchor(Route::get('user')->uri(array(
		'action' => 'login'
	)), __('Login'), array(
		'class' => 'btn btn-primary'
	)); ?>
	
	<div class="clearfix"></div>
</div>

<div class="page-signin-alt">
	<?php echo Form::open(Route::get('user')->uri(array('action' => 'forgot')), array('method' => Request::POST, 'class' => 'panel')); ?>
	<div class="panel-body">
		<p class="text-muted"><?php echo __('Enter your e-mail, which you want to forgot password.'); ?></p>
		<hr class="panel-wide" />
		
		<div class="input-group input-group-lg">
			<span class="input-group-addon"><?php echo UI::icon('envelope'); ?></span>
			<?php echo Form::input('forgot[email]', NULL, array(
				'class' => 'form-control',
				'placeholder' => __('E-mail address')
			)); ?>
		</div>
	</div>
	<?php Observer::notify( 'admin_login_forgot_form' ); ?>
	<div class="panel-footer">	
		<?php echo Form::button('send', __('Send password'), array(
			'class' => 'btn btn-primary', 'data-icon-append' => 'paper-plane-o fa-lg'
		)); ?>			
	</div>
	<?php Form::close(); ?>
>>>>>>> upstream/dev
</div>