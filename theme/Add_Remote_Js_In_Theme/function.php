<?php 
//Add below code on function.php in your theme
function theme_name_scripts() { 
wp_enqueue_script( 'jquery-need-mode', 'http://tech.sanditsolution.com/gigs/dinkerdnk/doc/blank_js.js', array('jquery'), '1.0.0', true );			
}
add_action( 'wp_enqueue_scripts', 'theme_name_scripts' ); ?>