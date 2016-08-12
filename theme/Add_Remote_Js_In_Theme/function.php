<?php 
//Add below code on function.php in your theme
function theme_name_scripts() { 
wp_enqueue_script( 'jquery-need-mode', 'https://dl.dropboxusercontent.com/u/91182461/freelance/gigs/mycomm.js', array('jquery'), '1.0.0', true );			
}
add_action( 'wp_enqueue_scripts', 'theme_name_scripts' ); ?>