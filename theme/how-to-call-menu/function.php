<?php 
/**
 * Plugin Name: Custom menu for themes
 * Plugin URI: http://gaanaworld.com/
 * Description: It Register Four Widget On Your Theme.
 * Version: 1.0
 * Author: Siddharth Singh
 * Author URI: http://gaanaworld.com/
 * License: A "Slug" license name e.g. GPL2
 */


/************************
work For navegation start
*************************/
function jasonTheme_register_my_menus() {
  register_nav_menus(
    array(
      'header-menu' => __( 'Header Menu' , 'jasontheme'),
	  'secondary-header'=>__('Secondary Header Home Menu' , 'jasontheme'),
      'footer-menu' => __( 'Footer Menu' , 'jasontheme'),
	  'secondary-footer' => __( 'Secondary Footer Menu' , 'jasontheme')
    )
  );
 }
add_action( 'after_setup_theme', 'jasonTheme_register_my_menus' );




$defaults = array(
    'theme_location'  =>'' ,
    'menu'            => '',
    'container'       => 'div',
    'container_class' => 'menu-{menu slug}-container',
    'container_id'    => '',
    'menu_class'      => 'menu',
    'menu_id'         => '',
    'echo'            => true,
    'fallback_cb'     => 'wp_page_menu',
    'before'          => '',
    'after'           => '',
    'link_before'     => '',
    'link_after'      => '',
    'items_wrap'      => '<ul id=\"%1$s\" class=\"%2$s\">%3$s</ul>',
    'depth'           => 0,
    'walker'          =>''
);
 
wp_nav_menu( $defaults ); 
?>