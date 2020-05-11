<?php 
if( is_singular('location')){ 
wp_enqueue_script('custom-js',get_stylesheet_directory_uri() . '/dist/js/bootstrap.min.js',array( 'jquery' ),false,true); }

if( is_singular('location')){ 
wp_enqueue_style( 'bootstrap-style1', get_template_directory_uri() . '/dist/css/bootstrap-theme.min.css', array(), false, 'all' );
}
?>