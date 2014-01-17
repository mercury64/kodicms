<div class="widget-header">
	<h3><?php echo __('Page options'); ?></h3>
</div>

<div class="widget-content">
	<?php if( $page->id != 1 ): ?>
	<label><?php echo __('Parent page'); ?></label>
	<select name="page[parent_id]" class="col-xs-12">
		<?php foreach ($pages as $p): ?>
		<option value="<?php echo($p['id']); ?>" <?php echo($p['id'] == $page->parent_id ? ' selected="selected"': ''); ?> ><?php echo str_repeat('- ', $p['level'] * 2).$p['title']; ?></option>
		<?php endforeach; ?>
	</select>
	<br />
	<?php endif; ?>
	<label>
		<?php echo __('Layout'); ?>
		<?php if(empty($page->layout_file) ): ?>
		<span class="pull-right">
			<?php echo UI::label(__('Current layput: :name', array(':name' => $page->layout()))); ?>
		</span>
		<?php endif; ?>
	</label>
	<select name="page[layout_file]" class="col-xs-12">
		<?php if( $page->id != 1 ): ?>
		<option value="0">&ndash; <?php echo __('inherit ( :layout )', array(':layout' => $page->layout())); ?> &ndash;</option>
		<?php else: ?>
		<option value="0"><?php echo __('--- Not set ---'); ?></option>
		<?php endif; ?>
			
		<?php foreach ($layouts as $layout): ?>
		<option value="<?php echo($layout->name); ?>" <?php echo($layout->name == $page->layout_file ? ' selected="selected"': ''); ?> ><?php echo $layout->name; ?></option>
		<?php endforeach; ?>
	</select>

	<br />
	<div class="well well-small">
		<label><?php echo __('Type'); ?></label>
		<?php echo Behavior::dropdown_select('page[behavior_id]', $page->behavior_id, array('class' => 'col-xs-12')); ?>		
		<div id="behavor_options"></div>
	</div>

	<?php if( $page->id != 1 ): ?>
	<div class="page-statuses">
	<label><?php echo __('Status'); ?></label>
	<?php echo Form::select('page[status_id]', Model_Page::statuses(), $page->status_id, array(
		'class' => 'col-xs-12'
	)); ?>
		<div class="hidden password-container">
			<br />
			<label><?php echo __('Page password'); ?></label>
			<?php echo Form::input('page[password]', $page->password, array('class' => 'col-xs-12')); ?>
		</div>
	</div>
	<?php endif; ?>

	<?php if( $page->id != 1 ): ?>
	<label><?php echo __('Published date'); ?></label>
	<?php echo Form::input('page[published_on]', $page->published_on, array('class' => 'col-xs-12 datepicker')); ?>
	<?php endif; ?>

	<?php if ( ACL::check( 'page.permissions' ) ): ?>
	<label><?php echo __('Needs login'); ?></label>
	<?php echo Form::select('page[needs_login]', Model_Page::logins(), $page->needs_login, array(
		'class' => 'col-xs-12'
	)); ?>
	<?php endif; ?>

	<?php if ( ACL::check( 'page.permissions' ) ): ?>
	<br />
	<div class="well well-small">
		<label><?php echo __('Users roles that can edit page'); ?></label>
		<?php echo Form::select('page_permissions[]', $permissions, array_keys($page_permissions), array(
			'class' => 'col-xs-12'
		)); ?>
	</div>
	<?php endif; ?>
</div>

<?php Observer::notify('view_page_edit_options', array($page)); ?>