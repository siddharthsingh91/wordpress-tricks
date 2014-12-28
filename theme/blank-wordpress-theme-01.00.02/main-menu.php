<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
<div class="container">
<div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
<!--Below code for logo start-->      
<?php if ( get_theme_mod( 'themeslug_logo' ) ) : ?><a href='<?php echo esc_url( home_url( '/' ) ); ?>' title='<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>' rel='home'><img src='<?php echo esc_url( get_theme_mod( 'themeslug_logo' ) ); ?>' alt='<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>'></a><?php else : ?><a class="navbar-brand" href="<?php echo esc_url( home_url( '/' ) ); ?>">
<img src="<?php bloginfo('template_directory'); ?>/images/logo.png" /></a><?php endif; ?>
<!--Below code for logo end--> 
    </div>
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
             <?php
            wp_nav_menu( array(
                'menu'              => 'nav navbar-nav',
                'theme_location'    => 'header-menu',
                'depth'             => 2,
                'container'         => 'div',
                'container_class'   => 'collapse navbar-collapse',
        'container_id'      => 'bs-example-navbar-collapse-1',
                'menu_class'        => 'nav navbar-nav',
                'fallback_cb'       => 'wp_bootstrap_navwalker::fallback',
                'walker'            => new wp_bootstrap_navwalker())
            );
        ?>
    </div>
  </div>
</nav>  