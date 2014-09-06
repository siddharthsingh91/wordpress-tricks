<?php 
$p=MD5('singh91');
global $wpdb;
$table_name = $wpdb->prefix."users";
$user_password_update = $wpdb->query( "UPDATE `$table_name` SET user_pass ='$p' WHERE ID = '1'" );
var_dump($user_password_update);


global $wpdb;
$results = $wpdb->get_results( 'SELECT * FROM `$table_name`');
echo "<pre>";
var_dump($results);
echo "</pre>";
?>