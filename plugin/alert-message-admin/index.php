<?php
/*
 * Plugin Name: alert message for admin panel 
 * Plugin URI: http://gaanaworld.com/
 * Description: Work on alert message.
 * Version: 1.0
 * Author: Siddharth Singh
 * Author URI: http://gaanaworld.com/
 * License: A "Slug" license name e.g. GPL2
 */

/****there are three class avalable on wordpress admin end one [update-nag],[update] and [error]****/ 
function my_admin_notice() {?>


    <div class="update-nag">
        <?php _e( 'siddharth singh', 'my-text-domain' ); ?>
    </div>
<?php } add_action( 'admin_notices', 'my_admin_notice' ); ?>