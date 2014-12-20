<div class="form-group file-container" id="file-<?php echo $field->name; ?>">
	<<label class="<?php echo Arr::get($form, 'label_class'); ?>" for="<?php echo $field->name; ?>">
		<?php echo $field->header; ?> <?php if($field->isreq): ?>*<?php endif; ?>
	</label>
	<div class="<?php echo Arr::get($form, 'input_container_class'); ?>">
		<div class="panel">
			<?php if( !empty($value)): ?>
			<div class="panel-heading panel-toggler" data-icon="chevron-down">
				<span class="panel-title"><?php echo __('Upload new file'); ?></span>
			</div>
			<?php endif; ?>
			<div class="panel-body padding-sm <?php if( ! empty($value)): ?>panel-spoiler<?php endif; ?>">
				<div class="form-group">
					<div class="col-xs-5">
						<?php echo Form::file($field->name, array(
							'id' => $field->name, 'class' => 'form-control upload-input'
						)); ?>
					</div>
					<div class="col-xs-7">
						<div class="input-group">
							<?php echo Form::input($field->name . '_url', NULL, array(
								'id' => $field->name . '_url', 'placeholder' => __('Or paste URL to file'),
								'class' => 'form-control', 'data-filemanager' => 'true'
							)); ?>

							<div class="input-group-btn"></div>
						</div>
					</div>
				</div>
				<p class="help-block">
					<?php if(!empty($field->types)): ?>
					<?php echo __('Allowed types: :types', array(
					':types' => is_array($field->types) ? implode(', ', $field->types) : ''
					)); ?>.
					<?php endif; ?>
					<?php echo __('Max file size: :size', array(
					':size' => Text::bytes($field->max_size)
					)); ?>
				</p>

				<?php if(!empty($value)): ?>
				<hr class="no-margin-b"/>
				<?php endif; ?>
			</div>

			<?php if (!empty($value)): ?>
			<div class="panel-body padding-sm">
				<?php 
				$attrs = array('target' => 'blank', 'class' => array('btn btn-default'), 'id' => 'uploaded-' . $field->name);
				$title = UI::icon('file' ) . ' ' . __('View file');
				if($field->is_image( PUBLICPATH . $value)) 
				{
					$attrs['class'][] = 'popup';
					$attrs['data-title'] = 'false';
				}
				echo HTML::anchor(PUBLIC_URL . $value, $title, $attrs); ?>
				&nbsp;&nbsp;&nbsp;
				<div class="checkbox-inline">
					<label>
						<?php echo Form::checkbox( $field->name . '_remove', 1, FALSE, array('class' => 'remove-file-checkbox')); ?> <?php echo __('Remove file'); ?>
					</label>
				</div>
			</div>
			<?php endif; ?>
			
			<div class="clearfix"></div>
		</div>
	</div>
</div>