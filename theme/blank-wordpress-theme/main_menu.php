<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
  <div class="container">
<div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    <a class="navbar-brand" href="#"><img src="<?php bloginfo('template_directory'); ?>/images/logo.png" /></a>
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