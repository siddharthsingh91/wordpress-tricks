<?php
/**
 * The template for displaying 404 pages (Not Found)
 *
 * Develope by:siddharth singh
 * Email:siddharthsingh91@gmail.com
 * Author url:http://www.sanditsolution.com/
 * @link http://www.sanditsolution.com/
  *@package Siddharth Singh
 * @subpackage Whitetopshow
 * @since White Top Show 1.0
 */
get_header(); ?>
<div class="container topPaddingSid"> 
  <!-- Example row of columns -->
  <div class="row">
<div class="hero-unit center">
<div class="error-message"><?php _e( 'Page Not Found', 'white-top-show' ) ?><i class="fa fa-heartbeat"></i> <small><font><?php esc_attr__( 'Error 404', 'white-top-show' ) ?></font></small></div>
<p><?php _e( 'The page you requested could not be found, either contact your webmaster or try again. Use your browsers', 'white-top-show' ) ?> <b><?php _e( 'Back', 'white-top-show' ) ?> </b> <?php _e( 'button to navigate to the page you have prevously come from', 'white-top-show' ) ?> </p>
<p><b><?php _e( 'Or you could just press this neat little button', 'white-top-show' ) ?>:</b></p>
<a href="<?php echo home_url(); ?>" class="btn btn-large btn-default"><i class="icon-home icon-white"></i> <?php _e( 'Take Me Home', 'white-top-show' ) ?></a>
</div><br/></div></div>
<?php get_footer(); ?>
