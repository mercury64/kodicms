<div class="control-group">
	<label class="control-label" for="<?php echo $field->name; ?>">
		<?php echo $field->header; ?> 
		
	</label>
	<div class="controls">
		<div class="row">
			<div class="span3">
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
			</div>
			<div class="span4">
				<?php if(!empty($value)): ?>
				<?php 
				$attrs = array();

				if($field->is_image( PUBLICPATH . $value)) $attrs['class'] = 'popup fancybox';
				echo HTML::anchor(PUBLIC_URL . $value, __('View file'), $attrs); 
				?>
				<?php endif; ?>
			</div>
		</div>
	</div>
</div>