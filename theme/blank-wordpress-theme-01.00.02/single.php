<?php
/* The template for displaying all pages.
 * Develope by:siddharth singh
 * Email:siddharthsingh91@gmail.com
 * Author url:www.sanditsolution.com
 * @link http://www.sanditsolution.com/
 * @package Siddharth Singh
 * @subpackage Siddharth Custom page
 * @since Custom Page 1.0
 */ get_header(); ?>
<div class="container" role="main">
<div class="row margin-bottom-60">
<div class="col-md-8 testimonial-area border-show">
<?php if (have_posts()) : while (have_posts()) : ?>
<?php  the_post(); ?>
		<span class="client_realstate"><h1 class="title"><?php the_title(); ?></h1></span>
		<p class="client_content"><?php the_content(); ?></p>
<div class="col-md-12"> <?php wp_link_pages(array('before' => 'Pages: ', 'next_or_number' => 'number')); ?> </div> 
<?php comments_template(); ?>
<?php endwhile; ?>
<?php endif; ?>
</div>

<div class="col-md-4">
        <div class="border-show padding-left-10">
           <?php get_sidebar(); ?> 
        </div> 
        </div>
</div>
</div>
<?php get_footer(); ?>