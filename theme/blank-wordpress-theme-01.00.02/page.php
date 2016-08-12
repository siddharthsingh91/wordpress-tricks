<?php
/* The template for displaying all pages.
 * Develope by:siddharth singh
 * Email:siddharthsingh91@gmail.com
 * Author url:www.sanditsolution.com
 * @link http://www.sanditsolution.com/
 * @package Siddharth Singh
 * @subpackage Siddharth Custom page
 * @since Custom Page 1.0
 */
 get_header(); ?>
<div class="row margin-bottom-60 margin-side-none">
<!--Heading top start-->
<?php get_template_part( 'secondary', 'menu' ); ?>
<!--Heading top end--> 
 
<div class="container  margin-bottom-60 section" role="main">
<?php if (have_posts()) : while (have_posts()) : ?>
<?php  the_post(); ?>
<div class="row">
<div class="col-md-12 testimonial-area">
		<span class="client_realstate"><h1 class="title"><?php the_title(); ?></h1></span>
		<p class="client_content"><?php the_content(); ?></p>
	</div> 
</div>
<div class="row">
 <div class="col-md-12">
 <?php comments_template(); ?>
 </div>
</div>
<?php endwhile; ?>
<?php endif; ?>	
</div>
</div>
<?php get_footer(); ?>