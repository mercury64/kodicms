<div class="widget-content ">
	<?php 
	echo Bootstrap_Form_Element_Control_Group::factory(array(
		'element' => Bootstrap_Form_Element_Input::factory(array(
			'name' => 'next_url', 'value' => $widget->get('next_url')
		))
		->label(__('Next page by default (URI)'))
		->attributes('class', Bootstrap_Form_Element_Input::XXLARGE)
	));
	?>
	
	<hr />
	<?php
	echo Bootstrap_Form_Element_Control_Group::factory(array(
		'element' => Bootstrap_Form_Element_Checkbox::factory(array(
			'name' => 'check_password_confirm', 'value' => 1
		))
		->checked($widget->check_password_confirm)
		->label(__('Use password confirm'))
	));
	?>
</div>
<div class="widget-content ">
	<?php
		echo Bootstrap_Form_Element_Control_Group::factory(array(
			'element' => Bootstrap_Form_Element_Select::factory(array(
				'name' => 'user_roles[]', 'options' => $roles
			))
			->attributes('class', Bootstrap_Form_Element_Input::BLOCK_LEVEL)
			->selected($widget->get('user_roles', array()))
			->label(__('Roles for new user'))
		));
	?>
</div>