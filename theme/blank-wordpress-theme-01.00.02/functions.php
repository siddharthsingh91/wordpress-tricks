<?php
// Register Custom Navigation Walker
require_once('wp_bootstrap_navwalker.php');
require_once('wp-custom-post-template/wp-custom-post-template.php');
require_once('social-media/index.php');
remove_filter( 'the_content', 'wpautop' );
remove_filter( 'the_excerpt', 'wpautop' );
add_theme_support( 'post-thumbnails' ); 


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




/***********************************************************
*****below function is use to call js and css form theme****
************************************************************/
function theme_name_scripts() { 
wp_enqueue_style( 'dsoble_theme_css', get_template_directory_uri() . '/css/jquery-ui-1.10.4.custom.min.css',array(),'1.1','all');
wp_enqueue_style( 'dsoble_theme_css_one', get_template_directory_uri() . '/dist/css/bootstrap.css',array(),'1.1','all');
wp_enqueue_style( 'dsoble_theme_css_two', get_template_directory_uri() . '/dist/css/bootstrap-theme.css',array(),'1.1','all');
wp_enqueue_style( 'dsoble_theme_css_three', get_template_directory_uri() . '/css/style.css',array(),'1.1','all');
wp_enqueue_style( 'font-awesome', get_template_directory_uri() . '/css/font-awesome.css',array(),'1.1','all');
wp_enqueue_script( 'query-10', get_template_directory_uri() . '/js/jquery-1.10.2.js', array('jquery'), '1.0.0', true );	
wp_enqueue_script( 'bootstrap', get_template_directory_uri() . '/dist/js/bootstrap.min.js', array('jquery'), '1.0.0', true );	
wp_enqueue_script( 'query-ui', get_template_directory_uri() . '/js/jquery-ui-1.10.4.custom.min.js', array('jquery'), '1.0.0', true );	
wp_enqueue_script( 'bootstrap-paginator', get_template_directory_uri() . '/js/bootstrap-paginator.min.js', array('jquery'), '1.0.0', true );	
wp_enqueue_script( 'jquery.innerfade', get_template_directory_uri() . '/js/jquery.newsTicker.js', array('jquery'), '1.0.0', true );
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




/*****************************
****Below Code For Comment****
******************************/
add_filter('comment_form_default_fields', 'custom_fields');
function custom_fields($fields) {
    $commenter = wp_get_current_commenter();
    $req = get_option( 'require_name_email' );
    $aria_req = ( $req ? " aria-required='true'" : '' );

    $fields[ 'author' ] ='<div class="form-group">'. 	
      '<label for="author">' . __( 'Name' ) . '</label>'.
      ( $req ? '<span class="required">*</span>' : '' ).
      '<input id="author" name="author" class="form-control" placeholder="Your Name*" type="text" value="'. esc_attr( $commenter['comment_author'] ) .
      '" size="30" tabindex="1"' . $aria_req . ' /></div>';

    $fields[ 'email' ] = '<div class="form-group">'.
      '<label for="email">' . __( 'Email' ) . '</label>'.
      ( $req ? '<span class="required">*</span>' : '' ).
      '<input id="email" name="email" class="form-control" placeholder="Your Email*" type="text" value="'. esc_attr( $commenter['comment_author_email'] ) .
      '" size="30"  tabindex="2"' . $aria_req . ' /></div>';

    $fields[ 'url' ] =  '<div class="form-group">'.
      '<label for="url">' . __( 'Website' ) . '</label>'.
      '<input id="url" name="url" class="form-control" type="text"  placeholder="Your URL" value="'. esc_attr( $commenter['comment_author_url'] ) .
      '" size="30"  tabindex="3" /></div>';

    $fields[ 'phone' ] =  '<div class="form-group">'.
      '<label for="phone">' . __( 'Phone' ) . '</label>'.
      '<input id="phone" name="phone" class="form-control" placeholder="Your Phone" type="text" size="30"  tabindex="4" /></div>';
	  
	
	$fields[ 'comment_field' ] =  '<div class="form-group">'.
      '<label for="comment_field">' . __( 'Comment' ) . '</label>'.
      '<textarea id="comment" name="comment" class="form-control" placeholder="Your Comment" rows="3"></textarea></div>';

  return $fields;
}

/*****************************************************************
****** How to chnage text area in wordpress comment***************
You can filter 'comment_form_defaults' to change the textarea.**** 
You get an array with the default fields as argument:*************
******************************************************************/
add_filter( 'comment_form_defaults', 'wpse_67503_textarea_insert' );
function wpse_67503_textarea_insert( $fields ){
   	$fields[ 'comment_field' ] =  '<div class="form-group">'.
      '<label for="comment_field">' . __( 'Comment' ) . '</label>'.
      '<textarea id="comment" name="comment" class="form-control" placeholder="Your Comment" rows="3"></textarea></div>';
  return $fields;
}

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

/*******PHP for pagination*******/
require_once('wp-paginate/wp-paginate.php');


/*******Just Put Below function for pagination*******/
function paginate_start(){
if(function_exists('wp_paginate')) {
wp_paginate();
} else{ ?><ul class="pager">
<li class="previous"><?php previous_posts_link('&laquo; Newer Posts'); ?></li>
<li class="next"><?php next_posts_link('Older Posts &raquo;'); ?></li>
</ul><?php } }?>