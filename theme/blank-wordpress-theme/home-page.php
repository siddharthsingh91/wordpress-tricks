<?php 
/**
 * Template Name: Home page
 * Develope by:siddharth singh
 * Email:siddharthsingh91@gmail.com
 * Author url:fileworld.in
 * @link http://fileworld.in
 * @package Siddharth Singh
 * @subpackage Siddharth Custom page
 * @since Custom Page 1.0
 */
get_header(); ?>    
<?php get_template_part( 'template', 'slider' ); ?>
<div class="container theme-showcase" role="main">
<!--row containg four div start-->
<div class="container theme-showcase" role="main">
<div class="row">
	<div class="col-md-12 row-benifit">
		<h3>WE'RE ALWAYS WORKING FOR YOUR BENEFIT!  </h3>
	</div>	
	<div class="col-md-3"><div class="thumbnail">
     <?php if( is_active_sidebar( 'footer-5' ) ) { dynamic_sidebar( 'footer-5' ); }else{ ?>
      <img src="<?php bloginfo('template_directory'); ?>/images/mic.png" alt="...">
      <div class="caption">
        <h4>WE'RE ON THE RADIO</h4>
        <p>WE'RE ON THE RADIO</p>
      </div>    
    <?php } ?></div>
    </div>	
	<div class="col-md-3"><div class="thumbnail">
    <?php if( is_active_sidebar( 'footer-6' ) ) { dynamic_sidebar( 'footer-6' ); }else{ ?>
      <img src="<?php bloginfo('template_directory'); ?>/images/paper.png" alt="...">
      <div class="caption">
        <h4>NEWS LETTERS</h4>
        <p>GET YOUR'S FREE</p>
           <?php }?> </div>
    </div>
		
	</div>	
	<div class="col-md-3">
    <div class="thumbnail">
    <?php if( is_active_sidebar( 'footer-7' ) ) { dynamic_sidebar( 'footer-7' ); }else{ ?>
      <img src="<?php bloginfo('template_directory'); ?>/images/file.png" alt="...">
      <div class="caption">
        <h4>ARTICLES & REPORTS</h4>
        <p>GET YOUR'S FREE</p>      
     <?php }?> 
     </div>
    </div>
		
	</div>	
	<div class="col-md-3">
    <div class="thumbnail">
    <?php if( is_active_sidebar( 'footer-8' ) ) { dynamic_sidebar( 'footer-8' ); }else{ ?>
      <img src="<?php bloginfo('template_directory'); ?>/images/can.png" alt="...">
      <div class="caption">
        <h4>Problem Solver</h4>
        <p>GET YOUR'S FREE</p>
      <?php } ?>
      </div>
    </div>
		
	</div>	
</div>
</div>
<!--row containg four div end-->

<!--row containg one div start-->
<div  class="full-width-texture">
<div  class="container theme-showcase " >
	 <div class="col-md-12">
      <?php if( is_active_sidebar( 'footer-9' ) ) { dynamic_sidebar( 'footer-9' ); }else{ ?>
	 	<img src="<?php bloginfo('template_directory'); ?>/images/testimomial.png"   class="img-responsive" />
	 	<?php } ?>
	 </div>	
</div>
</div>
<!--row containg one div end-->


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


</div>
<?php get_footer(); ?>