<a href="<?php echo Route::url('backend', array('controller' => 'messages')); ?>" class="list-group-item">
	<i class="icon-envelope"></i>&nbsp;&nbsp;<?php echo __('Messages'); ?>
	<span class="badge badge-info"><?php echo $new_messages; ?></span>
</a>