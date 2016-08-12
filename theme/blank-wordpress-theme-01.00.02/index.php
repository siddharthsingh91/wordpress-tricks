<?php 
/**
 * The template for displaying all pages.
 * Develope by:siddharth singh
 * Email:siddharthsingh91@gmail.com
 * Author url:http://www.sanditsolution.com/
 * @link http://www.sanditsolution.com/
 * @package Siddharth Singh
 * @subpackage Siddharth Custom page
 * @since Custom Page 1.0
 */
get_header(); ?>
<div class="container" role="main">
    <div class="row margin-bottom-60">
        <div class="col-md-8 testimonial-area border-show">
				<?php if (have_posts()) : while (have_posts()) : ?>
                <?php  the_post(); ?>
                <div class="row">
                <div class="col-md-12 padding-top-15">
                <?php if ( has_post_thumbnail() ) : ?>
        <a href="<?php the_permalink(); ?>">
        <?php $img_attr = array('class' => "center-block img-thumbnail img-responsive"); ?>
        <?php the_post_thumbnail(array(738, 240) ,$img_attr ); ?>  
        </a><?php else: ?>        
        <a href="<?php the_permalink(); ?>">
        <img src="<?php bloginfo('template_directory'); ?>/images/image.jpg" alt="<?php the_title(); ?>" class="center-block img-thumbnail img-responsive" />
        </a>            
        <?php endif; ?>
                <span class="client_realstate"><h1 class="title-blog"><?php the_title(); ?></h1></span>
                <p class="client_content"><?php the_excerpt(); ?></p>
                <p><a href="<?php the_permalink() ?>" class="btn btn-primary">Read more</a></p>
                <?php wp_link_pages(array('before' => 'Pages: ', 'next_or_number' => 'number')); ?> 
                <?php comments_template(); ?>
                </div>
                </div>
                <hr/>
				<?php endwhile; ?>
                <?php endif; 
				paginate_start();
				?>
           </div>	
        <div class="col-md-4">
        <div class="border-show padding-left-10">
           <?php get_sidebar(); ?> 
        </div> 
        </div>
    </div> 
</div>
<?php get_footer(); ?>