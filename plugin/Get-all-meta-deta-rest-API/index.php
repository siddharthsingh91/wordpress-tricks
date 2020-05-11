<?php
/*
 * Plugin Name: Om Meta Data REST API 2 
 * Plugin URI: http://gaanaworld.com/
 * Description:Custom Widgets . 
 * Version: 1.0
 * Author:Siddharth Singh
 * Author URI:http://codecanyon.net/user/siddharthsingh91
 */


/******************************************
This Plugin collect all meta data form site
Get the value of meta_data
*******************************************/
function rest_api_lv_listing_meta() {
    register_rest_field('radio', 'meta_data', array(
            'get_callback' => 'get_lv_listing_meta',
           'update_callback' => 'update_lv_listing_meta',
           'schema' => null,
        )
    );
}

function get_lv_listing_meta($object) {
    $postId = $object['id'];

    return get_post_meta($postId);
}

function update_lv_listing_meta($meta, $post) {
    $postId = $post->ID;

    foreach ($meta as $data) {
        update_post_meta($postId, $data['key'], $data['value']);
    }
}
add_action('rest_api_init', 'rest_api_lv_listing_meta');
?>