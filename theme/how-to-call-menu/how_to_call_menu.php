<?php 
/********************************************
put this where you wnat to show this menu****
*********************************************/ 
wp_nav_menu(array('theme_location'  => 'header-menu','menu_class' => 'nav navbar-nav','menu'=>'dropdown-menu','depth' => 3,'fallback_cb' => false)); ?>
 
 
<?php 
/********************************************
put this where you wnat to show this menu****
*********************************************/
wp_nav_menu(array('theme_location'  => 'secondary-header','menu_class' => 'nav navbar-nav','menu'=>'dropdown-menu','depth' => 3,'fallback_cb' => false)); ?>
 
 
  
  
  
<?php 
/********************************************
put this where you wnat to show this menu****
*********************************************/   
wp_nav_menu(array('theme_location'  => 'footer-menu','menu_class' => 'nav navbar-nav','menu'=>'dropdown-menu','depth' => 3,'fallback_cb' => false)); ?>
   
   

<?php 
/********************************************
put this where you wnat to show this menu****
*********************************************/   
wp_nav_menu(array('theme_location'  => 'secondary-footer','menu_class' => 'nav navbar-nav','menu'=>'dropdown-menu','depth' => 3,'fallback_cb' => false)); ?>   












<?php $defaults = array(
	'theme_location'  => '',
	'menu'            => '',
	'container'       => 'div',
	'container_class' => 'menu-{menu slug}-container',
	'container_id'    => ,
	'menu_class'      => 'menu',
	'menu_id'         => ,
	'echo'            => true,
	'fallback_cb'     => 'wp_page_menu',
	'before'          => ,
	'after'           => ,
	'link_before'     => ,
	'link_after'      => ,
	'items_wrap'      => '<ul id=\"%1$s\" class=\"%2$s\">%3$s</ul>',
	'depth'           => 0,
	'walker'          =>
);
?>

<?php wp_nav_menu( $defaults ); ?>