<?php
/**
 * Plugin Name: om-preloader
 * Plugin URI: http://gaanaworld.com/
 * Description: Add js and css for wordpress plugin.
 * Version: 1.0
 * Author: Siddharth Singh
 * Author URI: http://gaanaworld.com/
 * License: A "Slug" license name e.g. GPL2
 */
 
 
 function custom_content_after_body_open_tag() {?>

   <div>My Custom Content</div>
<?php }

add_action('after_body_open_tag', 'custom_content_after_body_open_tag');
 
//add_action('wp_footer', 'your_function');
add_action('wp_footer', 'your_function');
function your_function() {
  $content = '<div class="img-contaner" id="main-body-44"><div id="img-cont"><img src="http://merriscouture.com/wp-content/uploads/2017/09/logo-load.png" /></div></div>';
  echo $content;
}


function register_script() {
	wp_register_script( 'custom_jquery', plugins_url('/js/sidd.js', __FILE__));
	wp_enqueue_style( 'new_style', plugins_url('/css/sidd.css', __FILE__));
	wp_enqueue_script( 'custom_jquery' );
	wp_enqueue_style( 'new_style' );
}
add_action('wp_enqueue_scripts', "register_script");
?>