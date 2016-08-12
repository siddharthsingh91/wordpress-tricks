<?php 
/**

 * The Template for displaying products in a product category. Simply includes the archive template.

 *

 * Override this template by copying it to yourtheme/woocommerce/taxonomy-product_cat.php

 *

 * @author 		WooThemes

 * @package 	WooCommerce/Templates

 * @version     2.0.0

 */

if ( is_singular( 'product' ) ) {
 woocommerce_content();
}else{
//For ANY product archive.
//Product taxonomy, product search or /shop landing
 woocommerce_get_template( 'archive-product.php' );
}
?>