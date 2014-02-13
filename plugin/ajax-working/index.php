<?php
/*
 * Plugin Name: How to work on Ajax
 * Plugin URI: http://gaanaworld.com/
 * Description:All ajax request first goes to [admin-ajax.php] file and then response back to that plugin to function according to post varible. 
 * Version: 1.0
 * Author: Siddharth Singh
 * Author URI: http://gaanaworld.com/
 * License: A "Slug" license name e.g. GPL2
 */
	
function register_script() {
	wp_enqueue_script( 'script-seven', get_template_directory_uri() . '/js/custom.js', array(), '1.0.0', true );
	wp_localize_script( 'script-seven', 'email_script', array( "ajaxurl" => admin_url( "admin-ajax.php" ) ) );
}
add_action('wp_enqueue_scripts', "register_script");


/***************************************
*****working on ajax responce***********
***************************************/
add_action( 'wp_ajax_responce', 'my_ajax' );
function my_ajax() {
var_dump($_POST);
echo "success";
die();
}
?>