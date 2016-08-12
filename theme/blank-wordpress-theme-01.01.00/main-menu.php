<nav class="navbar navbar-default navbar-fixed-top" role="navigation" <?php if ( is_admin_bar_showing() ) { echo 'style="margin-top:32px;"';}?>>
<div class="container">
<div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only"><?php _e( 'Toggle navigation', 'white-top-show' ) ?></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
<!--Below code for logo start-->      
  <?php if ( get_theme_mod( 'whitetopshow_logo' ) ) : ?><a href="<?php echo home_url(); ?>" title='<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>' rel='home'><img src='<?php echo esc_url( get_theme_mod( 'whitetopshow_logo' ) ); ?>' alt='<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>'></a><?php else : ?><a class="navbar-brand" href="<?php echo home_url(); ?>">
    <img src="<?php echo get_template_directory_uri(); ?>/images/logo.png" /></a>
    <?php endif; ?>
<!--Below code for logo end-->    
    </div>
    
 <div id="bs-example-navbar-collapse-1" class="navbar-collapse collapse">    
		<?php
        wp_nav_menu( array(
        'menu'              => 'header-menu',
        'depth'             => 2,
        'container'         => false,
        'menu_class'        => 'nav navbar-nav')
        );
        ?>

        <ul class="social cat-float nav navbar-nav navbar-right">
        <?php global $wpdb;
        $table_name = $wpdb->prefix . 'social_media_link';
        $social_data= $wpdb->get_row("SELECT * FROM `$table_name` WHERE `social_media_link_id` =1"); ?>
        <li><a href="<?php echo ($social_data) ? "$social_data->facebook_url" : NULL ?>"><span class="fa fa-facebook"></span></a></li>
        <li ><a href="<?php echo ($social_data) ? "$social_data->twitter_url" : NULL ?>"><span class="fa fa-twitter"></span></a></li>
        <li ><a href="<?php echo ($social_data) ? "$social_data->pinterest_url" : NULL ?>"><span class="fa fa-pinterest"></span></a></li>
        <li ><a href="<?php echo ($social_data) ? "$social_data->linkedin_url" : NULL ?>"><span class="fa fa-linkedin"></span></a></li>
        <li ><a href="<?php echo ($social_data) ? "$social_data->flickr_url" : NULL ?>"><span class="fa fa-flickr"></span></a></li>
        <li ><a href="<?php echo ($social_data) ? "$social_data->youtube_url" : NULL ?>"><span class="fa fa-youtube"></span></a></li>
        <li ><a href="<?php echo ($social_data) ? "$social_data->instagram_url" : NULL ?>"><span class="fa fa-instagram"></span></a></li>
        </ul>

      </div>  
      </div>
  </nav>