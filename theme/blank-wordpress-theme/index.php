<?php
/* The template for displaying all pages.
 * Develope by:siddharth singh
 * Email:siddharthsingh91@gmail.com
 * Author url:fileworld.in
 * @link http://fileworld.in
 * @package Siddharth Singh
 * @subpackage Siddharth Custom page
 * @since Custom Page 1.0
 */
 get_header(); ?>

<?php get_template_part( 'main', 'menu' ); ?>
<div class="container theme-showcase" role="main">

<?php if (have_posts()) : while (have_posts()) : ?>
<?php  the_post(); ?>
<div class="row">
<div class="col-md-12 testimonial-area">
		<span class="client_realstate"><?php the_title(); ?></span>
		
	</div>
</div>
<div class="row">
	
	<div class="col-md-12 ">
		<p class="client_content"><?php the_content(); ?></p>
	</div>
   <div class="col-md-12"> <?php wp_link_pages(array('before' => 'Pages: ', 'next_or_number' => 'number')); ?> </div> 
</div>
<?php comments_template(); ?>
<?php endwhile; ?>
<?php endif; ?>	
</div>
<div  class="container theme-showcase">
<div class="row">
<div class="col-md-1"></div>
<div class="col-lg-10">
<!-- Collect the nav links, forms, and other content for toggling -->
<?php get_template_part( 'footer', 'menu' ); ?>
<!-- /.navbar-collapse -->
<div class="col-md-1"></div>	
</div>
</div>
</div>


<?php get_footer(); ?>