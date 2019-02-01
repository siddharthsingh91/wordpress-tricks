<?php
function pippin_create_post_form() {
	ob_start(); 
	if(isset($_GET['post'])) {
		switch($_GET['post']) {
			case 'successfull':
				echo '<div class="alert alert-info" role="alert"><i class="glyphicon glyphicon-ok"></i> Radio Submission Successful.....</div>';
				break;
			case 'failed' :
				echo '<p class="error">' . __('Please fill in all the info', 'pippin') . '</p>';
				break;
		}
	}
	?>

<form id="pippin_create_post" enctype="multipart/form-data" action="" method="POST">
  <fieldset class="form-group">
    <label for="station_title">Station Title</label>
    <input name="station_title" id="user_email" type="text" class="form-control"/>
  </fieldset>
  
  <fieldset class="form-group">
  <label for="station_title">Select a Country</label>
  <?php
	$taxonomies = get_terms( array(
    'taxonomy' => 'countries',
    'hide_empty' => false
) );
 
if ( !empty($taxonomies) ) :
    $output = '<select name="countries" class="form-control"><option>----Select Country----</option>';
    foreach( $taxonomies as $category ) {
        if( $category->parent == 0 ) {
            $output.= '<option label="'. esc_attr( $category->name ) .'" value="'. esc_attr( $category->name ) .'">';
            foreach( $taxonomies as $subcategory ) {
                if($subcategory->parent == $category->term_id) {
                $output.= '<option value="'. esc_attr( $subcategory->term_id ) .'">
                    '. esc_html( $subcategory->name ) .'</option>';
                }
            }
            $output.='</optgroup>';
        }
    }
    $output.='</select>';
    echo $output;
endif;
?>
  </fieldset>
  <fieldset class="form-group">
    <label for="station_desc">Description</label>
    <textarea name="station_desc" id="job_desc" class="form-control"></textarea>
  </fieldset>
  <fieldset class="form-group">
    <label for="station_link">Station Link</label>
    <input name="station_link" id="station_link" type="text" class="form-control"/>
  </fieldset>
  <fieldset class="form-group">
    <label for="web_address">Web Address</label>
    <input name="web_address" id="web_address" type="text" class="form-control"/>
  </fieldset><br>
  
  <fieldset class="form-group station_genres">
  <label for="station_genres">Select Genres</label><br>
  <?php
function get_terms_chekboxes($taxonomies, $args) {
  $terms = get_terms($taxonomies, $args);
  $output="";
  foreach($terms as $term){
	 if( $term->parent == 0 ) { 
    $output.= '<div class="checkbox"><label for="'.$term->slug.'">
	<input type="checkbox" id="'.$term->slug.'" name="'.$term->taxonomy.'[]" value="'.$term->slug.'"> '.$term->name.'</label></div>';
	 }
  }
  echo $output;
} echo get_terms_chekboxes('genres', $args = array('hide_empty'=>false)); ?>
</fieldset>

<fieldset class="form-group">
<label for="web_address">Upload Image</label>
<input type="hidden" name="MAX_FILE_SIZE" value="30000" />
    <!-- Name of input element determines name in $_FILES array -->
   <input name="stationImage" type="file" />
 </fieldset>     
  
  <fieldset class="form-group">
    <?php wp_nonce_field('station_nonce', 'station_nonce_field'); ?>
    <input type="submit" name="job_submit" value="<?php _e('Submit'); ?>" class="btn btn-info"/>
    <input type="reset" name="station_rset" value="<?php _e('Rest'); ?>" class="btn btn-danger"/>
  </fieldset>
</form>
<?php 
	return ob_get_clean();
}
add_shortcode('post_form', 'pippin_create_post_form'); ?>



<?php
/**
 * post-process.php
 * make sure to include post-process.php in your functions.php. Use this in functions.php:
 *
 * get_template_part('post-process');
 *
 */
function pippin_process_post_creation() {
	if(isset($_POST['station_nonce_field']) && wp_verify_nonce($_POST['station_nonce_field'], 'station_nonce')) {
 
		if(strlen(trim($_POST['station_title'])) < 1 || strlen(trim($_POST['station_desc'])) < 1) {
			$redirect = add_query_arg('post', 'failed', home_url($_POST['_wp_http_referer']));
		} else {		
			$station_info = array(
				'post_title' => esc_attr(strip_tags($_POST['station_title'])),
				'post_type' => 'radio',
				'post_content' => esc_attr(strip_tags($_POST['station_desc'])),
				'post_status' => 'pending'
			);
			
/************************
****Uploading Image******
*************************/			
$uploaddir = wp_upload_dir();
$file = $_FILES['stationImage'];
$uploadfile = $uploaddir['path'] . '/' . basename( $file['name'] );
move_uploaded_file( $file['tmp_name'] , $uploadfile );
$filename = basename( $uploadfile );
$wp_filetype = wp_check_filetype(basename($filename), null );

$attachment = array(
    'post_mime_type' => $wp_filetype['type'],
    'post_title' => preg_replace('/\.[^.]+$/', '', $filename),
    'post_content' => '',
    'post_status' => 'inherit',
    'menu_order' => $_i + 1000
);
$attach_id = wp_insert_attachment( $attachment, $uploadfile );
			
			
			
			$station_id = wp_insert_post($station_info);
			wp_set_object_terms( $station_id, array($_POST['countries']), 'countries', false);
			wp_set_object_terms( $station_id, $_POST['genres'], 'genres', false);
			 if (!is_wp_error($attach_id)) {
     //if attachment post was successfully created, insert it as a thumbnail to the post $post_id
     require_once(ABSPATH . "wp-admin" . '/includes/image.php');
     //wp_generate_attachment_metadata( $attachment_id, $file ); for images
     $attachment_data = wp_generate_attachment_metadata( $attach_id, $upload_file['file'] );
     wp_update_attachment_metadata( $attach_id,  $attachment_data );
     set_post_thumbnail( $station_id, $attach_id );
   }
			
			

			
 
			if($station_id) {
				update_post_meta($station_id, 'address', esc_attr(strip_tags($_POST['web_address'])));
				update_post_meta($station_id, 'website', esc_attr(strip_tags($_POST['station_link'])));
				$redirect = add_query_arg('post', 'successfull', home_url($_POST['_wp_http_referer']));
			}
		}
		wp_redirect($redirect); exit;
	}
}
add_action('init', 'pippin_process_post_creation');
?>
