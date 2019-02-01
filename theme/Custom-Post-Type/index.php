<?php
/******************************************
************Custome Post*******************
*******************************************/
function codex_custom_init() {
	$labels = array(
	'name'               => _x( 'Radios', 'post type general name', 'om-radio' ),
	'singular_name'      => _x( 'Radio', 'post type singular name', 'om-radio' ),
	'menu_name'          => _x( 'Radio', 'admin menu', 'om-radio' ),
	'name_admin_bar'     => _x( 'All Radios', 'add new on admin bar', 'om-radio' ),
	'view_item'          => __( 'View Radio', 'om-radio' ),
	'add_new'            => _x( 'Add New Radio', 'radio', 'om-radio' ),
	'all_items'          => __( 'All Radios', 'your-plugin-textdomain' ),
	);
	
    $args = array(
	'labels'             => $labels,
      'public' => true,
	  'supports' => array( 'title', 'editor', 'author', 'thumbnail', 'excerpt', 'comments' )
    );
    register_post_type( 'radio', $args );
}
add_action( 'init', 'codex_custom_init' ); 




/*****************************************************
************Adding New Category CPT*******************
******************************************************/
add_action( 'init', 'create_radio_country_tax' );
function create_radio_country_tax() {
	$labels = array(
		'name'              => _x( 'Countries', 'taxonomy general name', 'om-radio' ),
		'singular_name'     => _x( 'Country', 'taxonomy singular name', 'om-radio' ),
		'search_items'      => __( 'Search Country', 'om-radio' ),
		'all_items'         => __( 'All Countries', 'om-radio' ),
		'parent_item'       => __( 'Parent Country', 'om-radio' ),
		'parent_item_colon' => __( 'Parent Country:', 'om-radio' ),
		'edit_item'         => __( 'Edit Country', 'om-radio' ),
		'update_item'       => __( 'Update Country', 'om-radio' ),
		'add_new_item'      => __( 'Add New Country', 'om-radio' ),
		'new_item_name'     => __( 'New Genre Country', 'om-radio' ),
		'menu_name'         => __( 'Country', 'om-radio' ),
	);
	
	$args = array(
		'hierarchical'      => true,
		'labels'            => $labels,
		'show_ui'           => true,
		'show_admin_column' => true,
		'query_var'         => true,
		'rewrite'           => array( 'slug' => 'genre' ),
	);
	
	
	register_taxonomy(
		'Country',
		'radio',
		$args
	);
}



/*****************************************************
************Adding New Category CPT*******************
******************************************************/
add_action( 'init', 'create_radio_tax' );
function create_radio_tax() {
	$labels = array(
		'name'              => _x( 'Genres', 'taxonomy general name', 'om-radio' ),
		'singular_name'     => _x( 'Genre', 'taxonomy singular name', 'om-radio' ),
		'search_items'      => __( 'Search Genres', 'om-radio' ),
		'all_items'         => __( 'All Genres', 'om-radio' ),
		'parent_item'       => __( 'Parent Genre', 'om-radio' ),
		'parent_item_colon' => __( 'Parent Genre:', 'om-radio' ),
		'edit_item'         => __( 'Edit Genre', 'om-radio' ),
		'update_item'       => __( 'Update Genre', 'om-radio' ),
		'add_new_item'      => __( 'Add New Genre', 'om-radio' ),
		'new_item_name'     => __( 'New Genre Name', 'om-radio' ),
		'menu_name'         => __( 'Genre', 'om-radio' ),
	);
	
	$args = array(
		'hierarchical'      => true,
		'labels'            => $labels,
		'show_ui'           => true,
		'show_admin_column' => true,
		'query_var'         => true,
		'rewrite'           => array( 'slug' => 'genre' ),
	);
	
	register_taxonomy(
		'Genres',
		'radio',
		$args 
	);
}



/*****************************************************
************Wordpress Message show on Update,********* 
***********Edit And On Delte *************************
******************************************************/

add_filter( 'post_updated_messages', 'codex_book_updated_messages' );
/**
 * Book update messages.
 *
 * See /wp-admin/edit-form-advanced.php
 *
 * @param array $messages Existing post update messages.
 *
 * @return array Amended post update messages with new CPT update messages.
 */
function codex_book_updated_messages( $messages ) {
	$post             = get_post();
	$post_type        = get_post_type( $post );
	$post_type_object = get_post_type_object( $post_type );

	$messages['radio'] = array(
		0  => '', // Unused. Messages start at index 1.
		1  => __( 'radio updated.', 'om-radio' ),
		2  => __( 'Custom field updated.', 'om-radio' ),
		3  => __( 'Custom field deleted.', 'om-radio' ),
		4  => __( 'radio updated.', 'om-radio' ),
		/* translators: %s: date and time of the revision */
		5  => isset( $_GET['revision'] ) ? sprintf( __( 'Book restored to revision from %s', 'your-plugin-textdomain' ), wp_post_revision_title( (int) $_GET['revision'], false ) ) : false,
		6  => __( 'Radio published.', 'om-radio' ),
		7  => __( 'Radio saved.', 'om-radio' ),
		8  => __( 'Radio submitted.', 'om-radio' ),
		9  => sprintf(
			__( 'Radio scheduled for: <strong>%1$s</strong>.', 'om-radio' ),
			// translators: Publish box date format, see http://php.net/date
			date_i18n( __( 'M j, Y @ G:i', 'om-radio' ), strtotime( $post->post_date ) )
		),
		10 => __( 'Radio draft updated.', 'om-radio' )
	);

	if ( $post_type_object->publicly_queryable && 'Radio' === $post_type ) {
		$permalink = get_permalink( $post->ID );

		$view_link = sprintf( ' <a href="%s">%s</a>', esc_url( $permalink ), __( 'View Radio', 'om-radio' ) );
		$messages[ $post_type ][1] .= $view_link;
		$messages[ $post_type ][6] .= $view_link;
		$messages[ $post_type ][9] .= $view_link;

		$preview_permalink = add_query_arg( 'preview', 'true', $permalink );
		$preview_link = sprintf( ' <a target="_blank" href="%s">%s</a>', esc_url( $preview_permalink ), __( 'Preview Radio', 'om-radio' ) );
		$messages[ $post_type ][8]  .= $preview_link;
		$messages[ $post_type ][10] .= $preview_link;
	}

	return $messages;
}



/********************************************
************Wordpress Halp left Top,********* 
***********Wordpress help left Top **********
*********************************************/

function codex_add_help_text( $contextual_help, $screen_id, $screen ) {
  //$contextual_help .= var_dump( $screen ); // use this to help determine $screen->id
  if ( 'radio' == $screen->id ) {
    $contextual_help =
      '<p>' . __('Things to remember when adding or editing a book:', 'your_text_domain') . '</p>' .
      '<ul>' .
      '<li>' . __('Specify the correct genre such as Mystery, or Historic.', 'your_text_domain') . '</li>' .
      '<li>' . __('Specify the correct writer of the book.  Remember that the Author module refers to you, the author of this book review.', 'your_text_domain') . '</li>' .
      '</ul>' .
      '<p>' . __('If you want to schedule the book review to be published in the future:', 'your_text_domain') . '</p>' .
      '<ul>' .
      '<li>' . __('Under the Publish module, click on the Edit link next to Publish.', 'your_text_domain') . '</li>' .
      '<li>' . __('Change the date to the date to actual publish this article, then click on Ok.', 'your_text_domain') . '</li>' .
      '</ul>' .
      '<p><strong>' . __('For more information:', 'your_text_domain') . '</strong></p>' .
      '<p>' . __('<a href="http://codex.wordpress.org/Posts_Edit_SubPanel" target="_blank">Edit Posts Documentation</a>', 'your_text_domain') . '</p>' .
      '<p>' . __('<a href="http://wordpress.org/support/" target="_blank">Support Forums</a>', 'your_text_domain') . '</p>' ;
  } elseif ( 'edit-book' == $screen->id ) {
    $contextual_help =
      '<p>' . __('This is the help screen displaying the table of books blah blah blah.', 'your_text_domain') . '</p>' ;
  }
  return $contextual_help;
}
add_action( 'contextual_help', 'codex_add_help_text', 10, 3 );




/********************************************
************Wordpress Halp left Top,********* 
***********Wordpress help left Top **********
*********************************************/
function codex_custom_help_tab() {

  $screen = get_current_screen();

  // Return early if we're not on the book post type.
  if ( 'radio' != $screen->post_type )
    return;

  // Setup help tab args.
  $args = array(
    'id'      => 'radio_id', //unique id for the tab
    'title'   => 'Radio Help', //unique visible title for the tab
    'content' => '<h3>Help Title</h3><p>Help content</p>',  //actual help text
  );
  
  // Add the help tab.
  $screen->add_help_tab( $args );

}

add_action('admin_head', 'codex_custom_help_tab');









/*******************************************************
 *********************Adding Custom Fields**************
 *********************Custom Post Type******************
 *******************************************************/
function add_cafe_meta_boxes() {
	add_meta_box("cafe_contact_meta", "Station Details", "add_contact_details_cafe_meta_box", "radio", "normal", "low");
}
function add_contact_details_cafe_meta_box()
{
	global $post;
	$custom = get_post_custom( $post->ID );
 
	?>
	<style>.width99 {width:99%;}</style>
	<p>
		<label>Web Address:</label><br />
        <input type="text" name="website" value="<?= @$custom["address"][0] ?>" class="width99" />
	</p>
	<p>
		<label>Station Link:</label><br />
		<input type="text" name="website" value="<?= @$custom["website"][0] ?>" class="width99" />
	</p>
	<?php
}
/**
 * Save custom field data when creating/updating posts
 */
function save_cafe_custom_fields(){
  global $post;
 
  if ( $post )
  {
    update_post_meta($post->ID, "address", @$_POST["address"]);
    update_post_meta($post->ID, "website", @$_POST["website"]);
  }
}
add_action( 'admin_init', 'add_cafe_meta_boxes' );
add_action( 'save_post', 'save_cafe_custom_fields' );

?>