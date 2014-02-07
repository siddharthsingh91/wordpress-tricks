<?php 

/********************************************************
*****below function is use to call css and js form theme*
********************************************************/
function theme_name_scripts() {
	wp_enqueue_style( 'slider', get_template_directory_uri() . '/css/sidd.css',false,'1.1','all');
	wp_enqueue_script( 'script-one', get_template_directory_uri() . '/js/jquery.min.js', array(), '1.0.0', true );
	wp_enqueue_script( 'script-two', get_template_directory_uri() . '/js/jquery.prettyPhoto.js', array(), '1.0.0', true );
	wp_enqueue_script( 'script-three', get_template_directory_uri() . '/bootstrap/js/bootstrap.js', array(), '1.0.0', true );
	wp_enqueue_script( 'script-four', get_template_directory_uri() . '/js/superfish.js', array(), '1.0.0', true );
	wp_enqueue_script( 'script-five', get_template_directory_uri() . '/js/jquery.easing.1.3.js', array(), '1.0.0', true );
	wp_enqueue_script( 'script-six', get_template_directory_uri() . '/js/jquery.flexslider-min.js', array(), '1.0.0', true );
	wp_enqueue_script( 'script-seven', get_template_directory_uri() . '/js/custom.js', array(), '1.0.0', true );
}
add_action( 'wp_enqueue_scripts', 'theme_name_scripts' );
?>