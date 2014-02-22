<?php
/*
 * Plugin Name: Add New Database Table In Wordpress
 * Plugin URI: http://gaanaworld.com/
 * Description: Work on alert message.
 * Version: 1.0
 * Author: Siddharth Singh
 * Author URI: http://gaanaworld.com/
 * License: A "Slug" license name e.g. GPL2
 */

/****there are three class avalable on wordpress admin end one [update-nag],[update] and [error]****/ 
global $jal_db_version;
$jal_db_version = "1.0";

function jal_install() {
global $wpdb;
global $jal_db_version;
$table_name = $wpdb->prefix . "liveshoutbox";
$sql = "CREATE TABLE $table_name (
id mediumint(9) NOT NULL AUTO_INCREMENT,
time datetime DEFAULT '0000-00-00 00:00:00' NOT NULL,
name tinytext NOT NULL,
text text NOT NULL,
url VARCHAR(55) DEFAULT '' NOT NULL,
UNIQUE KEY id (id)
);";
require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );
dbDelta( $sql );
//adding database version in option field
add_option( "jal_db_version", $jal_db_version );
}



function jal_install_data() {
global $wpdb;
$welcome_name = "Mr. WordPress";
$welcome_text = "Congratulations, you just completed the installation!";
$table_name = $wpdb->prefix . "liveshoutbox";
$rows_affected = $wpdb->insert( $table_name, array( 'time' => current_time('mysql'), 'name' => $welcome_name, 'text' => $welcome_text ) );
}
//intalling database on plugin activation
register_activation_hook( __FILE__, 'jal_install' );
register_activation_hook( __FILE__, 'jal_install_data' );


//deleting database of plugin deactivation.
function pluginUninstall() {
global $wpdb;
$table = $wpdb->prefix."liveshoutbox";
 //Delete any options thats stored also?
//delete_option('wp_yourplugin_version');
	$wpdb->query("DROP TABLE IF EXISTS $table");
}
register_deactivation_hook( __FILE__, 'pluginUninstall' );
?>