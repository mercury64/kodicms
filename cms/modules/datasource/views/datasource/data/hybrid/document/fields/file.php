<div class="control-group">
	<label class="control-label" for="<?php echo $field->name; ?>">
		<?php echo $field->header; ?> 
		
	</label>
	<div class="controls">
		<?php echo Form::file( $field->name, array(
			'id' => $field->name,
		) ); ?>

		<?php if(!empty($field->types)): ?>
		<span class="help-block">
			<?php echo __('Allowed types :types', array(
			':types' => is_array($field->types) ? implode(', ', $field->types) : ''
			)); ?>
		</span>
		<?php endif; ?>

		<?php if(!empty($value)): ?>
		<hr />
		<?php echo HTML::anchor(PUBLIC_URL . $value, __('View file')); ?>
		<?php endif; ?>
	</div>
</div>