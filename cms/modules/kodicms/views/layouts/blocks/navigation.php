<?php 
if($navigation !== NULL)
{
	$nav_container = Bootstrap_Navbar::factory()
		->static_top()
		->inverse()
		->add(
			Bootstrap_Navbar::brand(HTML::image( ADMIN_RESOURCES . 'images/logo.png'), ADMIN_DIR_NAME )
		);

		$menu_nav = Bootstrap_Nav::factory()
			->attributes('id', 'site_nav');
		
		foreach ( $navigation as $section )
		{ 
			if(count($section) == 0) continue;

			$dropdown = Bootstrap_Navbar_Dropdown::factory(array(
				'title' => $section->name(),
			));
			
			$is_active = FALSE;

			foreach ( $section as $item )
			{
				if($item->divider === TRUE)
				{
					$dropdown->add_divider();
				}

				$dropdown->add(Bootstrap_Element_Button::factory(array(
						'href' => $item->url(), 'title' => $item->name()
				))->attributes('data-counter', $item->counter)->icon($item->icon), $item->is_active());
				
				if($item->is_active())
				{
					$is_active = TRUE;
				}
			}

			$menu_nav
				->add($dropdown, $is_active);
		}

		$right_nav = Bootstrap_Nav::factory()
			->pull_right()
			->attributes('id', 'user_nav')
			->add(
				Bootstrap_Navbar_Dropdown::factory(array(
					'title' => UI::label(UI::icon( 'user icon-white' ) . ' <span class="text">' .  AuthUser::getUserName() . '</span>')
				))
				->add(
					Bootstrap_Helper_HTML::factory(array(
						'string' => AuthUser::getRecord()->gravatar(90, NULL, array('class' => 'img-circle'))
					)),
					FALSE, array('class' => 'navigation-avatar')
				)
				->add_divider()
				->add(
					Bootstrap_Element_Button::factory(array(
						'href' => Route::url('backend', array('controller' => 'users', 'action' => 'profile')),
						'title' => __( 'Profile' )
					))->icon('eye-open')
				)
				->add_divider()
				->add(
					Bootstrap_Element_Button::factory(array(
							'href' => Route::url('user', array('action' => 'logout')), 'title' => __( 'Logout' )
					))->icon('signout')
				)
				)
			->add_divider()
			->add(Bootstrap_Element_Button::factory(array(
				'href' => URL::base(TRUE), 
				'title' => UI::label(UI::icon( 'globe icon-white' ) . ' <span class="text">' .   __( 'View Site' ) . '</span>'))
			, array('target' => '_blank'))	); 

		$nav_container
			->add($menu_nav)
			->add($right_nav);

		echo $nav_container;

	foreach ( $navigation as $section)
	{
		if( ! $section->is_active() OR count($section) == 0) continue;

		$navbar = Bootstrap_Navbar::factory()
			->static_top()
			->attributes('id', 'subnav');

		$nav = Bootstrap_Nav::factory();
		foreach ( $section as $item )
		{
			if($item->divider === TRUE) $nav->add_divider();

			$nav->add(Bootstrap_Element_Button::factory(array(
				'href' => $item->url(), 'title' => $item->name()
			))->attributes('data-counter', $item->counter)->icon($item->icon), $item->is_active());
		}

		$navbar->add($nav);

		echo $navbar;
	}
}