<?php
/**
 * Plugin Name: Custom Form With The Use Of Shortcode
 * Plugin URI: http://gaanaworld.com/
 * Description: Add js and css for wordpress plugin.
 * Version: 1.0
 * Author: Siddharth Singh
 * Author URI: http://gaanaworld.com/
 * License: A "Slug" license name e.g. GPL2
 */
 
 
 


function register_script() {
	wp_register_script( 'custom_jquery', plugins_url('/js/sidd.js', __FILE__));
	wp_enqueue_style( 'new_style', plugins_url('/css/sidd.css', __FILE__));
	wp_enqueue_script( 'custom_jquery' );
	wp_enqueue_style( 'new_style' );
}
add_action('wp_enqueue_scripts', "register_script");



/**
 * @snippet       WooCommerce Check if User Has Purchased Product
 * @how-to        Get CustomizeWoo.com FREE
 * @author        Rodolfo Melogli
 * @compatible    WooCommerce 3.6.3
 * @donate $9     https://businessbloomer.com/bloomer-armada/
 */
  
add_action( 'woocommerce_after_shop_loop_item', 'bbloomer_user_logged_in_product_already_bought', 30 );
  
function bbloomer_user_logged_in_product_already_bought() {
global $product;
global $woocommerce;
if ( ! is_user_logged_in() ) return;
$current_user = wp_get_current_user();
if ( wc_customer_bought_product( $current_user->user_email, $current_user->ID, $product->get_id() ) ) echo '<div class="user-bought">&hearts; Hey ' . $current_user->first_name . ', you\'ve purchased this in the past. Buy again?</div>';
} ?>