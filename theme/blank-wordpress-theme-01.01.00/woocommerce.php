<?php
/* The template for displaying all woocommerce content.
 * Develope by:siddharth singh
 * Email:siddharthsingh91@gmail.com
 * Author url:www.sanditsolution.com
 * @link http://www.sanditsolution.com/
 * @package Siddharth Singh
 * @subpackage Whitetopshow
 * @since White Top Show 1.0
 */ get_header(); ?>
<div class="container" role="main">
  <div class="row">
    <div class="col-md-8  border-show">
<?php woocommerce_content(); ?>
      </div>
    <div class="col-md-4">
      <div class="padding-left-10">
        <?php get_sidebar(); ?>
      </div>
    </div>
  </div>
</div>
<?php get_footer(); ?>
