<?php

// Register Custom Navigation Walker
require_once('wp_bootstrap_navwalker.php');
add_theme_support( 'post-thumbnails' );
add_filter( 'widget_text', 'do_shortcode');
remove_filter( 'the_content', 'wpautop' );
remove_filter( 'the_excerpt', 'wpautop' ); 


/*function for serch form*/
function my_search_form( $form ) {
    $form = '<div class="fixed-search">
	<form role="search" method="get" id="searchform" class="searchform" action="' . home_url( '/' ) . '" >
             <div class="col-md-2 pull-right"><div class="input-group">
			   <input type="text" value="' . get_search_query() . '" name="s" id="s" class="form-control search-box" />
               <span class="input-group-btn">
			   <input type="submit" id="searchsubmit" value="'. esc_attr__( '' ) .'" class="btn btn-default" />
               </span>

            </div><!-- /input-group --></div>
						   </form>
        </div>';
    return $form;
}
add_filter( 'get_search_form', 'my_search_form' );




/********************************************************-
*****below function is use to call js and css form theme
********************************************************/

function theme_name_scripts() { 
global $wp_scripts;
wp_enqueue_style('style', get_bloginfo('stylesheet_url'), false, '1.0', 'all');
wp_enqueue_style( 'dsoble_theme_css', get_template_directory_uri() . '/css/jquery-ui-1.10.4.custom.min.css',array(),'1.1','all');
wp_enqueue_style( 'dsoble_theme_css_one', get_template_directory_uri() . '/dist/css/bootstrap.min.css',array(),'1.1','all');
wp_enqueue_style( 'dsoble_theme_css_two', get_template_directory_uri() . '/dist/css/bootstrap-theme.min.css',array(),'1.1','all');
wp_enqueue_style( 'dsoble_theme_css_three', get_template_directory_uri() . '/css/style.css',array(),'1.1','all');
wp_enqueue_style( 'font-awesome', get_template_directory_uri() . '/css/font-awesome.css',array(),'1.1','all');
wp_enqueue_script( 'query-10', get_template_directory_uri() . '/js/jquery-1.10.2.js', array('jquery'), '1.0.0', true );	
wp_enqueue_script( 'bootstrap', get_template_directory_uri() . '/dist/js/bootstrap.min.js', array('jquery'), '1.0.0', true );	
wp_enqueue_script( 'query-ui', get_template_directory_uri() . '/js/jquery-ui-1.10.4.custom.min.js', array('jquery'), '1.0.0', true );	
wp_enqueue_script( 'bootstrap-paginator', get_template_directory_uri() . '/js/bootstrap-paginator.min.js', array('jquery'), '1.0.0', true );	
wp_enqueue_script( 'jquery-show', get_template_directory_uri() . '/js/custom.js', array('jquery'), '1.0.0', true );		


}
add_action( 'wp_enqueue_scripts', 'theme_name_scripts' );





/************************
work For navegation start
*************************/
function dsobletTheme_register_my_menus() {
  register_nav_menus(
    array(
      'header-menu' => __( 'Header Menu' , 'dsobletheme'),
      'footer-menu' => __( 'Footer Menu' , 'dsobletheme')
    )
  );
 }
add_action( 'after_setup_theme', 'dsobletTheme_register_my_menus' );












/********************************
*****adding widget in theme******
*********************************/
function fileworld_widgets_init() {	

		register_sidebar( array(

		'name' => __( 'Space On Home Page', 'wpb' ),

		'id' => 'footer-2',

		'description' => __( 'First space in middle of home page', 'wpb' ),

		'before_widget' => '<div id="%1$s" class="widget %2$s">',

		'after_widget' => '</div>',

		'before_title' => '<h3 class="widget-title">',

		'after_title' => '</h3>',

	) );

	

	

		register_sidebar( array(

		'name' => __('Space On Home Page', 'wpb' ),

		'id' => 'footer-3',

		'description' => __( 'Second space in middle of home page', 'wpb' ),

		'before_widget' => '<div id="%1$s" class="widget %2$s">',

		'after_widget' => '</div>',

		'before_title' => '<h3 class="widget-title">',

		'after_title' => '</h3>',

	) );

	

	

		register_sidebar( array(

		'name' => __('Space On Home Page', 'wpb' ),

		'id' => 'footer-4',

		'description' => __( 'Third space in middle of home page', 'wpb' ),

		'before_widget' => '<div id="%1$s" class="widget %2$s">',

		'after_widget' => '</div>',

		'before_title' => '<h3 class="widget-title">',

		'after_title' => '</h3>',

	) );
	
	
	
		register_sidebar( array(

		'name' => __('Space On Home Page', 'wpb' ),

		'id' => 'footer-4',

		'description' => __( 'Third space in middle of home page', 'wpb' ),

		'before_widget' => '<div id="%1$s" class="widget %2$s">',

		'after_widget' => '</div>',

		'before_title' => '<h3 class="widget-title">',

		'after_title' => '</h3>',

	) );
	
	
	/*middle widget end*/
	
	
		register_sidebar( array(

		'name' => __('WE ON THE RADIO SPACE', 'wpb' ),

		'id' => 'footer-5',

		'description' => __( 'WE ON THE RADIO SPACE', 'wpb' ),

		'before_widget' => '<div id="%1$s" class="widget %2$s">',

		'after_widget' => '</div>',

		'before_title' => '<h3 class="widget-title">',

		'after_title' => '</h3>',

	) );
	
	
		register_sidebar( array(

		'name' => __('NEWS LETTERS SPACE', 'wpb' ),

		'id' => 'footer-6',

		'description' => __( 'NEWS LETTERS SPACE', 'wpb' ),

		'before_widget' => '<div id="%1$s" class="widget %2$s">',

		'after_widget' => '</div>',

		'before_title' => '<h3 class="widget-title">',

		'after_title' => '</h3>',

	) );
	
	
		register_sidebar( array(

		'name' => __('ARTICLES & REPORTS SPACE', 'wpb' ),

		'id' => 'footer-7',

		'description' => __( 'ARTICLES & REPORTS SPACE', 'wpb' ),

		'before_widget' => '<div id="%1$s" class="widget %2$s">',

		'after_widget' => '</div>',

		'before_title' => '<h3 class="widget-title">',

		'after_title' => '</h3>',

	) );
	
	
		register_sidebar( array(

		'name' => __('Problem Solver', 'wpb' ),

		'id' => 'footer-8',

		'description' => __( 'PROBLEM SOLVER SPACE', 'wpb' ),

		'before_widget' => '<div id="%1$s" class="widget %2$s">',

		'after_widget' => '</div>',

		'before_title' => '<h3 class="widget-title">',

		'after_title' => '</h3>',

	) );
	
	
	/********last widget space**********/
	
		register_sidebar( array(

		'name' => __('Client Say Space', 'wpb' ),

		'id' => 'footer-9',

		'description' => __( 'Client Say Space', 'wpb' ),

		'before_widget' => '<div id="%1$s" class="widget %2$s">',

		'after_widget' => '</div>',

		'before_title' => '<h3 class="widget-title">',

		'after_title' => '</h3>',

	) );
	
	
		register_sidebar( array(

		'name' => __('call me space', 'wpb' ),

		'id' => 'footer-10',

		'description' => __( 'call me space', 'wpb' ),

		'before_widget' => '<div id="%1$s" class="widget %2$s">',

		'after_widget' => '</div>',

		'before_title' => '<h3 class="widget-title">',

		'after_title' => '</h3>',

	) );
	
	
	
		register_sidebar( array(

		'name' => __('Email space', 'wpb' ),

		'id' => 'footer-11',

		'description' => __( 'Email space', 'wpb' ),

		'before_widget' => '<div id="%1$s" class="widget %2$s">',

		'after_widget' => '</div>',

		'before_title' => '<h3 class="widget-title">',

		'after_title' => '</h3>',

	) );
	

	}

add_action( 'widgets_init', 'fileworld_widgets_init' );	




/***********************************
****Below Code For Uploding Logo****
************************************/
function themeslug_theme_customizer( $wp_customize ) {
$wp_customize->add_section( 'themeslug_logo_section' , array(
'title'       => __( 'Logo', 'themeslug' ),'priority'    => 2,
'description' => 'Upload a logo to replace the default site name and description in the header') );
$wp_customize->add_setting( 'themeslug_logo' );
$wp_customize->add_control( new WP_Customize_Image_Control( $wp_customize, 'themeslug_logo', array(
'label'    => __( 'Logo', 'themeslug' ),'section'  => 'themeslug_logo_section','settings' => 'themeslug_logo') ) );}
add_action('customize_register', 'themeslug_theme_customizer');



/******************
******slider*******
*******************/
require_once('slider/cpt-bootstrap-carousel.php');

?>