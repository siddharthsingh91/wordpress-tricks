<?php
/**
 * Hook in and register a submenu options page for the Page post-type menu.
 */
function om_register_options_submenu_for_page_post_type() {
		$prefix = 'om_setting_';
	
	/**
	 * Registers options page menu item and form.
	 */
	$cmb = new_cmb2_box( array(
		'id'           => $prefix.'options_submenu_page',
		'title'        => 'Invoice Setting',
		'object_types' => array( 'options-page' ),
		/*
		 * The following parameters are specific to the options-page box
		 * Several of these parameters are passed along to add_menu_page()/add_submenu_page().
		 */
		'option_key'      => $prefix.'_invoice_options', // The option key and admin menu page slug.
		// 'icon_url'        => '', // Menu icon. Only applicable if 'parent_slug' is left empty.
		// 'menu_title'      => esc_html__( 'Options', 'cmb2' ), // Falls back to 'title' (above).
		'parent_slug'     => 'edit.php?post_type=invoice', // Make options page a submenu item of the themes menu.
		// 'capability'      => 'manage_options', // Cap required to view options-page.
		// 'position'        => 1, // Menu position. Only applicable if 'parent_slug' is left empty.
		// 'admin_menu_hook' => 'network_admin_menu', // 'network_admin_menu' to add network-level options page.
		// 'display_cb'      => false, // Override the options-page form output (CMB2_Hookup::options_page_output()).
		// 'save_button'     => esc_html__( 'Save Theme Options', 'cmb2' ), // The text for the options-page save button. Defaults to 'Save'.
		// 'disable_settings_errors' => true, // On settings pages (not options-general.php sub-pages), allows disabling.
		// 'message_cb'      => 'yourprefix_options_page_message_callback',
	) );
	$cmb->add_field( array(
		'name'    => esc_html__( 'Background Color for Pages', 'cmb2' ),
		'desc'    => esc_html__( 'field description (optional)', 'cmb2' ),
		'id'      => $prefix.'bg_color',
		'type'    => 'colorpicker',
		'default' => '#ffffff',
	) );
	
	
$cmb->add_field( array(
 'name' => 'logo',
    'desc' => 'Upload an image or enter a URL',
    'id' => 'wiki_test_image',
    'type' => 'file',
    'allow' => array('url', 'attachment'),
	'preview_size' => 'medium'
) );
	
	
		// Regular text field
	$cmb->add_field( array(
		'name'       => __( 'Invoice Number/Order Number', 'cmb2' ),
		'desc'       => __( 'field description (optional)', 'cmb2' ),
		'id'         => $prefix . 'invoice_no_order_n2',
		'type'       => 'text_small' // function should return a bool value
		// 'sanitization_cb' => 'my_custom_sanitization', // custom sanitization callback parameter
		// 'escape_cb'       => 'my_custom_escaping',  // custom escaping callback parameter
		// 'on_front'        => false, // Optionally designate a field to wp-admin only
		// 'repeatable'      => true,
	) );

	
}
add_action( 'cmb2_admin_init', 'om_register_options_submenu_for_page_post_type' );



/***********************************
******Retrive The Data************** 
******using below varible in array***
*************************************/
$prefix_setting = 'om_setting_';
	$bg_code = cmb2_get_option( $prefix_setting.'invoice_options', $prefix_setting.'bg_color', false );
?>