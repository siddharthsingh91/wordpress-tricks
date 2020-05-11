<?php 
//Add below code function file.

/*********************************************
******Ajax auto update the price and amount***
*********************WooComerce***************
**********************************************/
add_filter( 'woocommerce_add_to_cart_fragments', 'iconic_cart_count_fragments', 10, 1 );
function iconic_cart_count_fragments( $fragments ) {
$fragments['div.w-commerce-commercecartopenlinkcount'] = '<div class="w-commerce-commercecartopenlinkcount cart-quantity">' . WC()->cart->get_cart_total(). "/" . WC()->cart->get_cart_contents_count() . '</div>';
    return $fragments;
} ?>


<!--This code where you want to show the price and amount-->
<div class="w-commerce-commercecartopenlinkcount cart-quantity">
					<?php global $woocommerce; echo $woocommerce->cart->get_cart_total(); ?>/<?php
                      echo $woocommerce->cart->cart_contents_count; ?></div>