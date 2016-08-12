<?php
global $social_media_db_version;
$social_media_db_version = "1.0";
define('WP_DEBUG', false);

function social_media_db_install() {
global $wpdb; global $social_media_db_version;
   $table_name = $wpdb->prefix . "social_media_link";
   $charset_collate = $wpdb->get_charset_collate();
	$sql="CREATE TABLE `$table_name` (
  `social_media_link_id` int(11) NOT NULL AUTO_INCREMENT,
  `facebook_url` varchar(120) NOT NULL,
  `twitter_url` varchar(120) NOT NULL,
  `pinterest_url` varchar(120) NOT NULL,
  `linkedin_url` varchar(120) NOT NULL,
  `flickr_url` varchar(120) NOT NULL,
  `youtube_url` varchar(120) NOT NULL,
  `instagram_url` varchar(120) NOT NULL,
  PRIMARY KEY (`social_media_link_id`)
) $charset_collate;";	
   require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );
   dbDelta( $sql );
   add_option( "social_media_db_version", $social_media_db_version );
}
add_action("after_setup_theme", "social_media_db_install");


function social_media_db_uninstall() {
        global $wpdb;
        $table_name = $wpdb->prefix . "social_media_link";
	    delete_option('social_media_db_version');
	    $wpdb->query("DROP TABLE IF EXISTS $table");}
register_deactivation_hook( __FILE__, 'social_media_db_uninstall');




/*CREATE TABLE `wordpress`.`wp_social_media_link` (
  `social_media_link_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `facebook_url` VARCHAR(120) NOT NULL,
  `twitter_url` VARCHAR(120) NOT NULL,
  `pinterest_url` VARCHAR(120) NOT NULL,
  `linkedin_url` VARCHAR(120) NOT NULL,
  `flickr_url` VARCHAR(120) NOT NULL,
  `youtube_url` VARCHAR(120) NOT NULL,
  `instagram_url` VARCHAR(120) NOT NULL,
  PRIMARY KEY (`social_media_link_id`));*/



/****************************
**Adding Social media link***
*****************************/
function admin_menu_social_media_link(){
 add_theme_page(
 'Social Media Links For Website',
 'Social Media Links', 
 'manage_options',
 'user-pages-for-contest',
 'social_media_link', 
 'dashicons-nametag','4'); }	
add_action('admin_menu','admin_menu_social_media_link');




function social_media_link(){ 
global $wpdb;
$table_name = $wpdb->prefix . 'social_media_link';
if(isset($_POST['insert-social-link'])){ 
$social_data= $wpdb->get_row("SELECT * FROM `$table_name` WHERE `social_media_link_id` =1");
$detail =(object) $_POST;
if($social_data){
$rows_affected_update=$wpdb->query("UPDATE `$table_name` SET facebook_url = '$detail->facebook', twitter_url = '$detail->twitter',pinterest_url = '$detail->pinterest',linkedin_url = '$detail->linkedin', flickr_url = '$detail->flickr', youtube_url = '$detail->youtube',instagram_url = '$detail->instagram' WHERE `social_media_link_id` =1 "); 
echo $rows_affected_update ? '<p class="sucess_message_social">Your Social Link Update Successfully</p>' : NULL;
}else{
$social_data= $wpdb->get_row("SELECT * FROM `$table_name` WHERE `social_media_link_id` =1");
$rows_affected =$wpdb->insert( $table_name, array('facebook_url' => $detail->facebook, 'twitter_url' => $detail->twitter, 'pinterest_url' => $detail->pinterest,'linkedin_url' => $detail->linkedin, 'flickr_url' => $detail->flickr, 'youtube_url' => $detail->youtube, 'instagram_url' => $detail->instagram));
echo $rows_affected ? '<p class="sucess_message_social">Your Social Link Insert Successfully</p>' : NULL;
}}
$social_data= $wpdb->get_row("SELECT * FROM `$table_name` WHERE `social_media_link_id` =1");
?>

<form class="social-form" action="<?php echo get_permalink(); ?>" method="post" name="user_socal_media_link">
<div class="social-form-input-contaner"><label>Facebook:</label><input name="facebook" <?php echo ($social_data) ? "value=$social_data->facebook_url" : 'placeholder="Facebook page link"' ?>></div>
<div class="social-form-input-contaner"><label>Twitter:</label><input name="twitter" <?php echo ($social_data) ? "value=$social_data->twitter_url" : 'placeholder="Twitter page link"' ?>></div>
<div class="social-form-input-contaner"><label>Google +:</label><input name="pinterest" <?php echo ($social_data) ? "value=$social_data->pinterest_url" : 'placeholder="Pinterest page link"' ?>></div>
<div class="social-form-input-contaner"><label>RSS:</label><input name="linkedin" <?php echo ($social_data) ? "value=$social_data->linkedin_url" :'placeholder="Linkedin page link"' ?>></div>
<div class="social-form-input-contaner"><label>Flickr:</label><input name="flickr" <?php echo ($social_data) ? "value=$social_data->flickr_url" :'placeholder="Flickr page link"' ?>></div>
<div class="social-form-input-contaner"><label>Youtube:</label><input name="youtube" <?php echo ($social_data) ? "value=$social_data->youtube_url" :'placeholder="Youtube page link"' ?>></div>
<div class="social-form-input-contaner"><label>Instagram:</label><input name="instagram" <?php echo ($social_data) ? "value=$social_data->instagram_url" :'placeholder="Instagram page link"' ?>></div>
<input type="submit" value="Update"  name="insert-social-link" class="submit-social-media-link"/>
<div class="clearBoth"></div>
</form>	
<?php } 

/***************************************
****Adding Css For Social media Link****
****************************************/
function social_media_theme_style() {
	wp_enqueue_style( 'my-admin-theme', get_template_directory_uri() . '/social-media/css/style.css',array(),'1.1','all');
	}
add_action('admin_enqueue_scripts', 'social_media_theme_style'); 
?>