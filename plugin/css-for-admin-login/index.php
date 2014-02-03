<?php
/*
Plugin Name: By Siddharth Singh, Css Plugin For Admin
Plugin URI: http://Gaanaworld.com
Description: plugin is work with admin panel and admin login.
Version: 4.0
Plugin Author: Mr. Siddharth Singh
Author URI: http://fileworld.in/
*/


function my_admin_theme_style() {
wp_enqueue_style('my-admin-theme', plugins_url('wp-admin.css', __FILE__));}
add_action('admin_enqueue_scripts', 'my_admin_theme_style');
add_action('login_enqueue_scripts', 'my_admin_theme_style');
?>