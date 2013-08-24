<table class="table table-striped">
	<colgroup>
		<?php if(Acl::check('hybrid'.$ds_id.'.document.edit')): ?>
		<col width="30px" />
		<?php endif; ?>
		
		<?php foreach ($fields as $name => $width): ?>
		<col <?php if($width !== NULL) echo 'width="'.$width.'"px'; ?>/>
		<?php endforeach; ?>
	</colgroup>
	<thead>
		<tr>
			<?php if(Acl::check('hybrid'.$ds_id.'.document.edit')): ?>
			<th class="row-checkbox" id="cb-all"><?php echo Form::checkbox('doc[]'); ?></th>
			<?php endif; ?>
			
			<?php foreach ($fields as $name => $width): ?>
			<th><?php echo __($name); ?></th>
			<?php endforeach; ?>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($data[1] as $id => $row): ?>
		<tr data-id="<?php echo $id; ?>" class="<?php echo !$row['published'] ? 'unpublished' : ''; ?>">
			<?php if(Acl::check('hybrid'.$ds_id.'.document.edit')): ?>
			<td class="row-checkbox"><?php echo Form::checkbox('doc[]', $id); ?></td>
			<?php endif; ?>
			
			<td class="row-id"><?php echo $id; ?></td>
			<th class="row-header">
				<?php if(Acl::check('hybrid'.$ds_id.'.document.view') OR Acl::check('hybrid'.$ds_id.'.document.edit')): ?>
				<?php echo HTML::anchor(Route::url('datasources', array(
						'controller' => 'document',
						'directory' => 'hybrid',
						'action' => 'view'
					)) . URL::query(array(
						'ds_id' => $ds_id, 'id' => $id
					)), $row['header']); ?>
				<?php else: ?>
				<strong><?php echo $row['header']; ?></strong>
				<?php endif; ?>
			</th>
			<?php if(isset($row['type'])): ?>
			<td class="row-type"><?php echo $row['type']; ?></td>
			<?php endif; ?>
			<td class="row-date"><?php echo $row['date']; ?></td>
		</tr>
		<?php endforeach; ?>
	</tbody>
</table>
</div>
<div class="widget-header">
	<?php echo __('Total doucments: :num', array(
		':num' => $data[0]
	)); ?>