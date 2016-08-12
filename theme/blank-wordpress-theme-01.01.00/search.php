<?php 
/**
 * The template for displaying all pages.
 * Develope by:siddharth singh
 * Email:siddharthsingh91@gmail.com
 * Author url:http://www.sanditsolution.com/
 * @link http://www.sanditsolution.com/
 *@package Siddharth Singh
 * @subpackage Whitetopshow
 * @since White Top Show 1.0
 */
get_header(); ?>
<div class="container" id="main">
    <div class="row">
        <div class="col-md-8 border-show">
            <?php if (have_posts()) : // Results Found ?>

                <h1><?php _e('Search Results','white-top-show'); ?></h1>
                <?php while (have_posts()) : the_post(); ?>

                <article <?php post_class(); ?>>
					<?php if ( has_post_thumbnail() ) : ?>
                    <a href="<?php the_permalink(); ?>">
                    <?php $img_attr = array('class' => "center-block img-thumbnail img-responsive"); ?>
                    <?php the_post_thumbnail(array(738, 240) ,$img_attr ); ?>  
                    </a><?php else: ?>        
                    <a href="<?php the_permalink(); ?>">
                    <img src="<?php echo get_template_directory_uri(); ?>/images/image.jpg" alt="<?php the_title_attribute(); ?>" class="center-block img-thumbnail img-responsive" />
                    </a>            
                    <?php endif; ?>        
                    <h2 id="post-<?php the_ID(); ?>" class="title-blog"><a href="<?php the_permalink() ?>"><?php the_title_attribute(); ?></a></h2>
                     <small><i class="fa fa-calendar-times-o"></i> <?php the_date(); ?> <?php the_time() ?> <?php _e('by','white-top-show') ?> <i class="fa fa-user-secret"></i> <?php the_author_posts_link() ?></small>
                    <p class="postmetadata"><i class="fa fa-commenting-o"></i>  <?php comments_popup_link( __( 'No comments yet', 'white-top-show' ), __( '1 comment', 'white-top-show' ), __( '% comments','white-top-show'), 'comments-link', __( 'Comments closed', 'white-top-show' )); ?></p>
                    <div class="entry">
                        <p><?php echo wp_trim_words( get_the_excerpt(), 30, '...' ); ?></p>
                    </div>
                </article>
                <hr />
                <?php endwhile; whitetopshow_paginate_start(); else : // No Results ?>
                <p><?php _e('Sorry. We couldn&rsquo;t find anything for that search. View one of our site&rsquo;s pages or a recent article below.','white-top-show'); ?></p>
                <div class="row">
                    <div class="col-md-6 posts">
                        <h3><?php _e('Recent Articles','white-top-show'); ?></h3>
                        <ul>
                            <?php
                                $args = array(
                                    'numberposts' => '10',
                                    'post_status' => 'publish'
                                );
                                $recent_posts = wp_get_recent_posts( $args );
                                foreach( $recent_posts as $recent ) {
                                    echo '<li><a href="' . get_permalink($recent["ID"]) . '">' . $recent["post_title"] . '</a></li>';
                                }
                            ?>
                        </ul>
                    </div> <!-- .posts -->
                    <div class="col-md-6 pages">
                        <h3><?php _e('Page Sitemap','white-top-show'); ?></h3>
                        <ul>
                            <?php wp_list_pages('title_li=&sort_column=menu_order'); ?>
                        </ul>
                    </div> <!-- .pages -->
                </div> <!-- .row -->

            <?php endif; ?>

        </div> <!-- .col-md-8 -->

         <div class="col-md-4">
        <div class="padding-left-10">
        <?php get_sidebar(); ?>
        </div>
        </div>

    </div> <!-- .row -->
</div><!-- .container -->
<?php get_footer(); ?>