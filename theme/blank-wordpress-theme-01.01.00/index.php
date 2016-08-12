<?php 
/**
 * The template for displaying all pages.
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
        <div class="col-md-8 border-show"><div class="row">
				<?php if (have_posts()) : while (have_posts()) : ?>
                <div class="col-md-4">
                <?php  the_post(); ?>
                <?php if ( has_post_thumbnail() ) : ?>
        <a href="<?php the_permalink(); ?>">
        <?php $img_attr = array('class' => "center-block img-thumbnail img-responsive"); ?>
        <?php the_post_thumbnail(array(738, 240) ,$img_attr ); ?>  
        </a><?php else: ?>        
        <a href="<?php the_permalink(); ?>">
        <img src="<?php echo get_template_directory_uri(); ?>/images/image.jpg" alt="<?php the_title_attribute(); ?>" class="center-block img-thumbnail img-responsive" />
        </a>            
        <?php endif; ?>
                <h1 class="title-blog"><?php the_title_attribute(); ?></h1>
                <div class="category_group"><span><?php _e('Category','white-top-show') ?>:</span> <?php the_category(' '); ?></div>
                <small><i class="fa fa-calendar-times-o"></i><time datetime="<?php the_time("Y-m-d g:ia") ?>"><?php the_date(); ?> <?php the_time() ?></time> <?php _e('by','white-top-show') ?> <i class="fa fa-user-secret"></i> <?php the_author_posts_link() ?></small>
                <p class="client_content"><?php the_excerpt(); ?></p>
                <p class="postmetadata"><i class="fa fa-commenting-o"></i> <?php comments_popup_link( __( 'No comments yet', 'white-top-show' ), __( '1 comment', 'white-top-show' ), __( '% comments','white-top-show'), 'comments-link', __( 'Comments closed', 'white-top-show' )); ?></p>
                <p><a href="<?php the_permalink() ?>" class="btn btn-default"><?php _e( 'Read more', 'white-top-show' )?></a></p>
                <?php wp_link_pages( array( 'before' => '<div class="page-links"><span class="page-links-title">' . __( 'Pages:', 'white-top-show' ) . '</span>', 'after' => '</div>', 'link_before' => '<span>', 'link_after' => '</span>' ) ); ?>
                <?php comments_template(); ?>
                <hr/>
				<?php endwhile; ?>
                </div>
                <?php endif; ?></div><?php whitetopshow_paginate_start(); ?>
           </div>	
        <div class="col-md-4">
        <div class="padding-left-10">
           <?php get_sidebar(); ?> 
        </div> 
        </div>
    </div> 
</div>
<?php get_footer(); ?>