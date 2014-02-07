<?php
/**
 * Plugin Name: Custom Form With The Use Of Shortcode
 * Plugin URI: http://gaanaworld.com/
 * Description: A custom input field plugin.
 * Version: 1.0
 * Author: Siddharth Singh
 * Author URI: http://gaanaworld.com/
 * License: A "Slug" license name e.g. GPL2
 */
 
function custom_form_by_fileword()
{ 
if(isset($_POST['submit']))
{
var_dump($_POST);
    global $wpdb;
    $wpdb->query("Insert Query...");
	header('location:google.com'); //use this to redirect on any wordpress page or thank page
}
else
{
?>
<form method="POST" action="<?php echo home_url( '/' ); ?>" name="guest_registration" enctype="multipart/form-data"> 
<input type="text" name="name" value="">
<input type="submit" name="submit" value="Register Me Now"/>
</form>
<?php
}
}

add_shortcode( 'custom_form', 'custom_form_by_fileword' );
?>
