<div class="widget-header spoiler-toggle" data-spoiler=".maintenance-spoiler">
	<h3><?php echo __('Maintenance mode'); ?></h3>
</div>
<div class="widget-content spoiler maintenance-spoiler">
	<div class="control-group">
		<label class="control-label"><?php echo __('Enable maintenance mode'); ?></label>
		<div class="controls">
			<?php echo Form::select( 'plugin[maintenance_mode]', Form::choises(), $plugin->get('maintenance_mode')); ?>
		</div>
	</div>
</div>