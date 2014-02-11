<?php
/**
 * Plugin Name: Custom Form With The Use Of Shortcode
 * Plugin URI: http://gaanaworld.com/
 * Description: A custom input field plugin.
 * Version: 1.0
 * Author: Siddharth Singh
 * Author URI: http://gaanaworld.com/
 * License: A "Slug" license name e.g. GPL2
 */
 
 
function custom_form_by_fileword($atts){ 
  
$admin_email = get_option( 'admin_email' );
 
$attributes = shortcode_atts( array(
	'title' => $admin_email,
	'foo' => 123,
), $atts );

var_dump($attributes);
}

add_shortcode( 'om_contact_form', 'custom_form_by_fileword' );	


/*********************************************
***********for output use below code**********
*********************************************/

//[myshortcode foo="BAR"] 
//use above code in post for output
//or user do_shortcode('[myshortcode foo="BAR"]')

?>