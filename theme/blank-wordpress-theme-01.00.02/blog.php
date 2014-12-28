<?php
/* Template Name: Blog
 * Develope by:siddharth singh
 * Email:siddharthsingh91@gmail.com
 * Author url:fileworld.in
 * @link http://fileworld.in
 * @package Siddharth Singh
 * @subpackage Siddharth Custom page
 * @since Custom Page 1.0
 */
get_header(); ?>
<div class="container" role="main">
<?php if (have_posts()) : while (have_posts()) : ?>
<?php  the_post(); ?>
<div class="row">
<div class="col-md-12 testimonial-area">
		<span class="client_realstate"><h1 class="title-blog"><?php the_title(); ?></h1></span>
		
	</div>
</div>
<div class="row">
	
	<div class="col-md-12">
		<p class="client_content"><?php the_excerpt(); ?></p>
        <?php the_content('Read on...'); ?>
	</div>
   <div class="col-md-12"> <?php wp_link_pages(array('before' => 'Pages: ', 'next_or_number' => 'number')); ?> </div> 
</div>
<?php comments_template(); ?>
<?php endwhile; ?>
<?php endif; ?>	
</div>
<?php get_footer(); ?>