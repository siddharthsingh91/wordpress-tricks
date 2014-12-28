<?php 
wp_nav_menu(array('theme_location'  => 'footer-menu',
'menu' => 'Footer Menu',
'menu_class'=>'nav navbar-nav',
'depth' => 3,
'fallback_cb' => false)); ?>