<div class="control-group">
	<label class="control-label" for="<?php echo $field->name; ?>">
		
		<?php if(!empty($value)): ?>
		<?php 
		$attrs = array();

		if($field->is_image( PUBLICPATH . $value)) $attrs['class'] = 'popup fancybox';
		echo HTML::anchor(PUBLIC_URL . $value, $field->header, $attrs); 
		?>
		<?php else: ?>
		<?php echo $field->header; ?> 
		<?php endif; ?>
	</label>
	<div class="controls">
		<div class="row-fluid">
			<div class="span4">
				<?php echo Form::file( $field->name, array(
					'id' => $field->name
				) ); ?>
				<?php if(!empty($field->types)): ?>
				<span class="help-block">
					<?php echo __('Allowed types :types', array(
					':types' => is_array($field->types) ? implode(', ', $field->types) : ''
					)); ?>
				</span>
				<?php endif; ?>
				
				
			</div>
			<div class="span8">
				<?php echo Form::input( $field->name . '_url', NULL, array(
					'id' => $field->name . '_url', 'placeholder' => __('Or paste URL to file'),
					'class' => 'input-block-level'
				) ); ?>
			</div>
		</div>
	</div>
</div>