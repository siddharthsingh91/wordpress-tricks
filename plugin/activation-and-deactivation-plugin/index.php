<?php
/**
 * Plugin Name: Custom Form With The Use Of Shortcode
 * Plugin URI: http://gaanaworld.com/
 * Description:Plugin activation and plugin deactivation hook is called, do what ever you want on activation and deactivation. 
 * Version: 1.0
 * Author: Siddharth Singh
 * Author URI: http://gaanaworld.com/
 * License: A "Slug" license name e.g. GPL2
 */
function my_plugin_activation(){
	error_log('my_plugin_Activated');
	}
	register_activation_hook(__FILE__,"my_plugin_activation");
	
function my_plugin_deactivation(){
	error_log('my_plugin_deactivation');
}

register_deactivation_hook(__FILE__,"my_plugin_deactivation")
?>