<?php
	if ( post_password_required() ) { ?>
<?php _e( 'This post is password protected. Enter the password to view comments.', 'white-top-show' ) ?>
<?php return;} whitetopshow_paginate_start(); ?>
<div class="row">
  <div class="col-md-12">
    <div class="blog-comments">
      <?php if ( have_comments() ) : ?>
      <h2 id="comments">
        <?php comments_number(__( 'No Responses', 'white-top-show' ), __( 'One Response', 'white-top-show' ),__( '% Responses', 'white-top-show' ));?>
      </h2>
      <ol class="commentlist">
        <?php wp_list_comments(); ?>
      </ol>
      <div class="navigation">
        <div class="next-posts">
          <?php previous_comments_link() ?>
        </div>
        <div class="prev-posts">
          <?php next_comments_link() ?>
        </div>
      </div>
      <?php else : // this is displayed if there are no comments so far ?>
      <?php if ( comments_open() ) : ?>
      <!-- If comments are open, but there are no comments. -->
      
      <?php else : // comments are closed ?>
      <p><?php _e( 'Comments are closed.', 'white-top-show' ) ?></p>
      <?php endif; ?>
      <?php endif; ?>
      <?php if ( comments_open() ) : ?>
      <div id="respond">
        <div class="cancel-comment-reply">
          <?php cancel_comment_reply_link(); ?>
        </div>
        <?php if ( get_option('comment_registration') && !is_user_logged_in() ) : ?>
        <p><?php _e( 'You must be.', 'white-top-show' ) ?> <a href="<?php echo wp_login_url( get_permalink() ); ?>"><?php _e( 'logged in', 'white-top-show' ) ?></a> <?php _e( 'to post a comment.', 'white-top-show' ) ?> </p>
        <?php else : ?>
        <div> </div>
        <?php comment_form(	array('comment_notes_after' => ' ',	)); ?>
        <?php endif; // If registration required and not logged in ?>
      </div>
      <?php endif; ?>
    </div>
  </div>
</div>
