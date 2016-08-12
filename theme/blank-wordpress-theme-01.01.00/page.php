<?php
/* The template for displaying all pages.
 * Develope by:siddharth singh
 * Email:siddharthsingh91@gmail.com
 * Author url:www.sanditsolution.com
 * @link http://www.sanditsolution.com/
 * @package Siddharth Singh
 * @subpackage Whitetopshow
 * @since White Top Show 1.0
 */
get_header(); ?>
<div class="container">   
  <?php if (have_posts()) : while (have_posts()) : ?>
  <?php  the_post(); ?>
  <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
    <div class="row">
      <div class="col-md-12 testimonial-area">
        <header>
          <h1 class="title">
            <?php the_title(); ?>
          </h1>
          <small><i class="fa fa-calendar-times-o"></i>
          <time datetime="<?php the_time("Y-m-d g:ia") ?>">
            <?php the_date(); ?> <?php the_time() ?>
          </time>
          by <i class="fa fa-user-secret"></i>
          <?php the_author_posts_link() ?>
          </small>
          <hr/>
        </header>
        <div class="client_content">
          <?php the_content(); ?>
          <?php wp_link_pages( array( 'before' => '<div class="page-links"><span class="page-links-title">' . __( 'Pages:', 'white-top-show' ) . '</span>', 'after' => '</div>', 'link_before' => '<span>', 'link_after' => '</span>' ) ); ?>
        </div>
        <footer class="entry-meta">
          <?php edit_post_link( __( 'Edit', 'white-top-show' ), '<span class="edit-link"><i class="fa fa-edit"></i> ', '</span>' ); ?>
        </footer>
        <!-- .entry-meta --> 
        
      </div>
    </div>
  </article>
  <?php endwhile; ?>
  <?php endif; ?>
</div>
<?php get_footer(); ?>
