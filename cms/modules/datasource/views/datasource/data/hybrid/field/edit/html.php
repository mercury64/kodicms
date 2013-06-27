<div class="widget-content widget-no-border-radius">
	<div class="control-group">
		<label class="control-label"><?php echo __( 'Default filter' ); ?></label>
		<div class="controls">
			<select name="filter">
				<option value="">&ndash; <?php echo __( 'none' ); ?> &ndash;</option>
				<?php foreach ( Filter::findAll() as $filter ): ?> 
				<option value="<?php echo $filter; ?>" <?php if($field->filter == $filter): ?>selected="selected"<?php endif; ?>><?php echo Inflector::humanize( $filter ); ?></option>
				<?php endforeach; ?> 
			</select>
		</div>
	</div>
</div>
