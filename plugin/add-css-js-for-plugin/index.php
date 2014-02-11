<?php
/**
 * Plugin Name: Custom Form With The Use Of Shortcode
 * Plugin URI: http://gaanaworld.com/
 * Description: Add js and css for wordpress plugin.
 * Version: 1.0
 * Author: Siddharth Singh
 * Author URI: http://gaanaworld.com/
 * License: A "Slug" license name e.g. GPL2
 */
 
 
 


function register_script() {
	wp_register_script( 'custom_jquery', plugins_url('/js/sidd.js', __FILE__));
	wp_register_style( 'new_style', plugins_url('/css/sidd.css', __FILE__));
	wp_enqueue_script( 'custom_jquery' );
	wp_enqueue_style( 'new_style' );
}
add_action('wp_enqueue_scripts', "register_script");
?>