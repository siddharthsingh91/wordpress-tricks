<?php 
/**
 * Plugin Name: Custom Widget Register
 * Plugin URI: http://gaanaworld.com/
 * Description: It Register Four Widget On Your Theme.
 * Version: 1.0
 * Author: Siddharth Singh
 * Author URI: http://gaanaworld.com/
 * License: A "Slug" license name e.g. GPL2
 */
function fileworld_widgets_init() {
	register_sidebar( array(
		'name' => __( 'footer sidebar one', 'wpb' ),
		'id' => 'footer-1',
		'description' => __( 'The fileword 1st footer container', 'wpb' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget' => '</div>',
		'before_title' => '<h3 class="widget-title">',
		'after_title' => '</h3>',
	) );
	
		register_sidebar( array(
		'name' => __( 'footer sidebar two', 'wpb' ),
		'id' => 'footer-2',
		'description' => __( 'The fileword 2st footer container', 'wpb' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget' => '</div>',
		'before_title' => '<h3 class="widget-title">',
		'after_title' => '</h3>',
	) );
	
	
		register_sidebar( array(
		'name' => __( 'footer sidebar three', 'wpb' ),
		'id' => 'footer-3',
		'description' => __( 'The fileword 3st footer container', 'wpb' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget' => '</div>',
		'before_title' => '<h3 class="widget-title">',
		'after_title' => '</h3>',
	) );
	
	
		register_sidebar( array(
		'name' => __( 'footer sidebar four', 'wpb' ),
		'id' => 'footer-4',
		'description' => __( 'The fileword 4st footer container', 'wpb' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget' => '</div>',
		'before_title' => '<h3 class="widget-title">',
		'after_title' => '</h3>',
	) );
	}
add_action( 'widgets_init', 'fileworld_widgets_init' );	
?>