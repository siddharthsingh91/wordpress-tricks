<?php 
function wps_wp_admin_user_area_notice() { 
$plugin_paths= array("Contact Form 7"=>"contact-form-7/wp-contact-form-7.php", "WP Custom Post Template"=>"wp-custom-post-template/wp-custom-post-template.php","WP Paginate"=>""); 
$plugin_link=array("https://wordpress.org/plugins/contact-form-7/","https://wordpress.org/plugins/wp-custom-post-template/","https://wordpress.org/plugins/wp-paginate/");
$i=0; foreach($plugin_paths as $key=>$value){
if ( !is_plugin_active($value) ) {
echo '<div class="error"><p><b>'.esc_attr__('This theme requires the plugin','whitetopshow').': <a href="'.$plugin_link[$i].'">'.$key.'</a>'. esc_attr__(' install and activate','whitetopshow').'</b></p></div>.';
}$i++;}}add_action( 'admin_notices', 'wps_wp_admin_user_area_notice' ); ?>

