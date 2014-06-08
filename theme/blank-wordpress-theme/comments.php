<?php

	if (!empty($_SERVER['SCRIPT_FILENAME']) && 'comments.php' == basename($_SERVER['SCRIPT_FILENAME']))
		die ('Please do not load this page directly. Thanks!');

	if ( post_password_required() ) { ?>
		This post is password protected. Enter the password to view comments.
	<?php
		return;
	}
?>
	<div class="row-fluid">
    <div class="span9 offset3">
                    <div class="blog-comments">
<?php if ( have_comments() ) : ?>

	<h2 id="comments"><?php comments_number('No Responses', 'One Response', '% Responses' );?></h2>

	<div class="navigation">
		<div class="next-posts"><?php previous_comments_link() ?></div>
		<div class="prev-posts"><?php next_comments_link() ?></div>
	</div>

	<ol class="commentlist">
		<?php wp_list_comments(); ?>
	</ol>

	<div class="navigation">
		<div class="next-posts"><?php previous_comments_link() ?></div>
		<div class="prev-posts"><?php next_comments_link() ?></div>
	</div>
	
 <?php else : // this is displayed if there are no comments so far ?>

	<?php if ( comments_open() ) : ?>
		<!-- If comments are open, but there are no comments. -->

	 <?php else : // comments are closed ?>
		<p>Comments are closed.</p>

	<?php endif; ?>
	
<?php endif; ?>

<?php if ( comments_open() ) : ?>

<div id="respond">

	<h2><?php comment_form_title( 'Leave a Reply', 'Leave a Reply to %s' ); ?></h2>

	<div class="cancel-comment-reply">
		<?php cancel_comment_reply_link(); ?>
	</div>

	<?php if ( get_option('comment_registration') && !is_user_logged_in() ) : ?>
		<p>You must be <a href="<?php echo wp_login_url( get_permalink() ); ?>">logged in</a> to post a comment.</p>
	<?php else : 

	comment_form();?>

	
    
        <div>
        <ul class="pager">
        <li class="previous"><?php previous_post_link( '%link', '<span class="meta-nav">' . _x( '<i class="icon-angle-left"></i>', 'Previous post link', 'twentytwelve' ) . '</span> %title' ); ?></li>
        <li class="next"><?php next_post_link( '%link', '%title <span class="meta-nav">' . _x( '<i class="icon-angle-right"></i>', 'Next post link', 'twentytwelve' ) . '</span>' ); ?></li>
        </ul>
        </div>	
        <?php endif; // If registration required and not logged in ?>
</div>
<?php endif; ?>
</div>
</div>
</div>
