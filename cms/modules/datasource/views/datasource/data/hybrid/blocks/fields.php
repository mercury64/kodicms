<div class="widget-header">
	<h4><?php echo __('Datasource Fields'); ?></h4>
</div>
<div class="widget-content widget-nopad">
	<table id="section-fields" class="table table-striped table-hover">
		<colgroup>
			<col width="30px" />
			<col width="100px" />
			<col width="300px" />
			<col />
		</colgroup>
		<tbody>
			<tr>
				<td class="f">
					<?php echo Form::checkbox('field[]', 'id', FALSE, array(
						'disabled' => 'disabled'
					)); ?>
				</td>
				<td class="sys">ID</td>
				<td>ID</td>
				<td></td>
			</tr>
			<tr>
				<td class="f">
					<?php echo Form::checkbox('field[]', 'header', FALSE, array(
						'disabled' => 'disabled'
					)); ?>
				</td>
				<td class="sys">header</td>
				<td><?php echo __('Header'); ?></td>
				<td></td>
			</tr>

			<?php foreach($record->fields as $f): ?>
			<tr id="field-<?php echo $f->name; ?>">
				<td class="f">
					<?php 
					$attrs = array('id' => $f->name);
					if($f->ds_id != $ds->ds_id) $attrs['disabled'] = 'disabled';
					echo Form::checkbox('field[]', $f->name, FALSE, $attrs); ?>

				</td>
				<td class="sys">
					<label for="<?php echo $f->name; ?>">
						<?php echo substr($f->name, 2); ?>
					</label>
				</td>
				<td>
					<?php echo HTML::anchor(Route::url('datasources', array(
						'controller' => 'field',
						'directory' => 'hybrid',
						'action' => 'edit',
						'id' => $f->id
					)), $f->header  ); ?>
				</td>
				<td>
					<?php echo UI::label($f->type); ?>
				</td>
			</tr>
			<?php endforeach; ?>
		</tbody>
	</table>
</div>
<div class="widget-header">
	<div class="btn-group">
		<?php echo UI::button(__('Add field'), array(
			'href' => Route::url('datasources', array(
				'controller' => 'field',
				'directory' => 'hybrid',
				'action' => 'add',
				'id' => $ds->ds_id
			)),
			'icon' => UI::icon('plus'),
			'class' => 'btn fancybox'
		)); ?>
		<?php echo UI::button(__('Remove fields'), array(
			'icon' => UI::icon('minus icon-white'), 'id' => 'remove-fields',
			'class' => 'btn btn-danger'
		)); ?>
	</div>
</div>


