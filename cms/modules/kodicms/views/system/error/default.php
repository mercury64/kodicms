<<<<<<< HEAD
<div id="error-container" class="hero-unit">
	<h1><?php echo __('WHOOOPS'); ?></h1>
	<hr />
	<div class="error-code text-warning">
		<h2><?php echo $code; ?> <?php echo $error_type; ?></h2>
	</div>
	<p class="text-error"><?php echo $message; ?></p>
=======
<div class="frontend-header">
	<a href="/" class="logo">
		<?php echo HTML::image(ADMIN_RESOURCES . 'images/logo-color.png'); ?>
	</a>
</div>

<div class="error-container">
	<div class="error-code"><?php echo $code; ?></div>
	<div class="error-text"><span class="oops"><?php echo $error_type; ?></span></div>
	<div class="error-text">
		<span class="hr"></span>
		<p><?php echo $message; ?></p>
	</div>
>>>>>>> upstream/dev
</div>