<?php
/* The template for displaying all pages.
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
      <?php if (have_posts()) : while (have_posts()) : ?>
      <div id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
        <?php  the_post(); ?>
        <h1 class="title">
          <?php the_title(); ?>
        </h1>
        <small><i class="fa fa-calendar-times-o"></i>
        <time datetime="<?php the_time("Y-m-d g:ia") ?>">
          <?php the_date(); ?>
          <?php the_time() ?>
        </time>
        by <i class="fa fa-user-secret"></i>
        <?php the_author_posts_link() ?>
        </small>
        <?php the_tags( '<ul class="tag-view"><li>Tags:</li><li>', '</li><li>', '</li></ul>' ); ?>
        <div class="category_group"><span>
          <?php _e('Category','white-top-show') ?>
          :</span>
          <?php the_category('&#9733;'); ?>
        </div>
        <hr/>
        <p class="client_content">
          <?php the_content(); ?>
        </p>
      </div>
      <?php whitetopshow_paginate_single_post();?>
      <?php comments_template(); ?>
      <?php endwhile; ?>
      <?php endif; ?>
    </div>
    <div class="col-md-4">
      <div class="padding-left-10">
        <?php get_sidebar(); ?>
      </div>
    </div>
  </div>
</div>
<?php get_footer(); ?>
