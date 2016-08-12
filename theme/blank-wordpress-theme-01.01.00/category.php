<?php 
/**
 * The template for displaying Category pages.
 * Develope by:siddharth singh
 * Email:siddharthsingh91@gmail.com
 * Author url:http://www.sanditsolution.com/
 * @link http://www.sanditsolution.com/
 * @package Siddharth Singh
 * @subpackage Whitetopshow
 * @since White Top Show 1.0
 */
get_header(); ?> 
<div class="container" role="main">
    <div class="row">
        <div class="col-md-8 border-show">
     
<div class="archive-header">     
<header class="category-detail">
<?php 
// Check if there are any posts to display
if ( have_posts() ) : ?>
<h1 class="archive-title"><?php single_cat_title( '', true ); ?></h1>
<?php
// Display optional category description
 if ( category_description() ) : ?>
<div class="archive-meta"><?php echo category_description(); ?></div>
<?php endif; ?>
</header>
</div>
<p class="text-center text-author">Posts Under <?php single_cat_title( '', true ); ?></p>
<?php
// The Loop
while ( have_posts() ) : the_post(); ?>
<?php if ( has_post_thumbnail() ) : ?>
<a href="<?php the_permalink(); ?>">
<?php $img_attr = array('class' => "center-block img-thumbnail img-responsive"); ?>
<?php the_post_thumbnail(array(738, 240) ,$img_attr ); ?>  
</a><?php else: ?>        
<a href="<?php the_permalink(); ?>">
<img src="<?php echo get_template_directory_uri(); ?>/images/image.jpg" alt="<?php the_title_attribute(); ?>" class="center-block img-thumbnail img-responsive" />
</a>            
<?php endif; ?>
<h2 class="title-blog"><a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title_attribute(); ?>"><?php the_title_attribute(); ?></a></h2>
<div class="category_group"><span><?php _e('Category','white-top-show') ?>:</span> <?php the_category('&#9733;'); ?></div>
<small><i class="fa fa-calendar-times-o"></i><time datetime="<?php the_time("Y-m-d g:ia") ?>"><?php the_date(); ?> <?php the_time() ?></time> by <i class="fa fa-user-secret"></i> <?php the_author_posts_link() ?></small>
<div class="entry">
<?php the_content(); ?>
 <p class="postmetadata"><i class="fa fa-commenting-o"></i>  <?php comments_popup_link( __( 'No comments yet', 'white-top-show' ), __( '1 comment', 'white-top-show' ), __( '% comments','white-top-show'), 'comments-link', __( 'Comments closed', 'white-top-show' )); ?></p>
</div>
<hr/>
<?php endwhile; 
else: ?>
<p><?php _e( 'Sorry, no posts matched your criteria.', 'white-top-show' )?></p>


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
