<?php
// Register Custom Navigation Walker
require_once('social-media/index.php');
require_once('plugin-check/plugin-check.php');

/*****************************************
******Function work on theme activation***
******************************************/
function whitetopshow_setup() {
	load_theme_textdomain( 'twentythirteen', get_template_directory() . '/languages' );
	add_theme_support( 'post-thumbnails' ); 	
	add_theme_support( "title-tag" );
	add_theme_support( 'automatic-feed-links' ); 
    add_editor_style( 'custom-editor-style.css' ); 
	/*Body image*/
	$args = array('default-color' => '000000','default-image' => '%1$s/images/background.png',);
	add_theme_support( 'custom-background', $args );
	/*for header image*/
	$args = array('default-image' => get_template_directory_uri() . '/images/header.jpg','uploads' => true);
	add_theme_support( 'custom-header', $args );
	add_theme_support( 'woocommerce' );
}



add_action( 'after_setup_theme', 'whitetopshow_setup' );


/*******Woocommerce Code Start*************/
remove_action( 'woocommerce_before_main_content', 'woocommerce_output_content_wrapper', 10);
remove_action( 'woocommerce_after_main_content', 'woocommerce_output_content_wrapper_end', 10);
add_action('woocommerce_before_main_content', 'my_theme_wrapper_start', 10);
add_action('woocommerce_after_main_content', 'my_theme_wrapper_end', 10);
function my_theme_wrapper_start() {echo '<section id="main">';}
function my_theme_wrapper_end() { echo '</section>';}
/*******Woocommerce Code End*************/

/*function for serch form*/
function whitetopshow_search_form( $form ) {
    $form = '<div class="fixed-search">
	<form role="search" method="get" id="searchform" class="searchform" action="' . home_url( '/' ) . '" >
             <div><div class="input-group">
			   <input type="text" value="' . get_search_query() . '" name="s" id="s" class="form-control search-box" />
               <span class="input-group-btn">
			   <input type="submit" id="searchsubmit" value="'. esc_attr__( 'Search', 'white-top-show' ) .'" class="btn btn-default" />
               </span>

            </div><!-- /input-group --></div>
						   </form>
        </div>';
    return $form;
}
add_filter( 'get_search_form', 'whitetopshow_search_form' );



/***************************
 * Work for script**********
***************************/
function whitetopshow_my_scripts_method() {
	global $wp_scripts;
	wp_enqueue_script("jquery");
	wp_enqueue_script('bootstrap-js',get_stylesheet_directory_uri() . '/dist/js/bootstrap.min.js',array( 'jquery' ),false,true);
	wp_enqueue_script('custom-js-menu',get_stylesheet_directory_uri() . '/js/custom.js',array( 'jquery' ),false,true);
	 
}
add_action( 'wp_enqueue_scripts', 'whitetopshow_my_scripts_method' ); 



/***************************
 * Work for style**********
***************************/
function whitetopshow_theme_styles()  
{ 
    wp_enqueue_style( 'style-name', get_stylesheet_uri() );
	wp_enqueue_style( 'bootstrap-style', get_template_directory_uri() . '/dist/css/bootstrap.css', array(), false, 'all' );
	wp_enqueue_style( 'custom-style', get_template_directory_uri() . '/css/style.css', array(), false, 'all');
	wp_enqueue_style( 'contact-form', get_template_directory_uri() . '/css/contact-form-7.css', array(), false, 'all' );
	wp_enqueue_style( 'font-awesome', get_template_directory_uri() . '/css/font-awesome.css', array(), false, 'all' );
	
	
	wp_register_style( 'mytheme-woocommerce', get_template_directory_uri() . '/css/woocommerce.css' );
	
	if ( class_exists( 'woocommerce' ) ) {
		wp_enqueue_style( 'mytheme-woocommerce' );
	}

}
add_action('wp_enqueue_scripts', 'whitetopshow_theme_styles');





/************************
work For navegation start
*************************/
function whitetopshow_register_my_menus() {
  register_nav_menus(
    array(
      'header-menu' => __( 'Header Menu' , 'white-top-show')    )
  );
 }
add_action( 'after_setup_theme', 'whitetopshow_register_my_menus' );



/********************************
*****adding widget in theme******
*********************************/
function whitetopshow_widgets_init() {	

		register_sidebar( array(
		'name' => __( 'Space On sidebar', 'white-top-show' ),
		'id' => 'white-top-show-rigt-sidebar',
		'description' => __( 'Space On sidebar', 'white-top-show' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget' => '</div>',
		'before_title' => '<h3 class="widget-title">',
		'after_title' => '</h3>',
	));
	
	
		register_sidebar( array(
		'name' => __( 'Space for copyright', 'white-top-show' ),
		'id' => 'white-top-show-copyright',
		'description' => __( 'Space for copyright', 'white-top-show' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget' => '</div>',
		'before_title' => '<h5 class="widget-title-none">',
		'after_title' => '</h3>',
	));
	
	
	
		register_sidebar( array(
		'name' => __( 'Space on pre footer left', 'white-top-show' ),
		'id' => 'white-top-show-pre-footer-left',
		'description' => __( 'Space on pre footer extreme left', 'white-top-show' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget' => '</div>',
		'before_title' => '<h4>',
		'after_title' => '</h4>',
	));
	
	
	
	 register_sidebar( array(
		'name' => __( 'Space on pre footer middle', 'white-top-show' ),
		'id' => 'white-top-show-pre-footer-middle',
		'description' => __( 'Space on pre footer middle', 'white-top-show' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget' => '</div>',
		'before_title' => '<h4>',
		'after_title' => '</h4>',
	));
	
	
		register_sidebar( array(
		'name' => __( 'Space on pre footer right', 'white-top-show' ),
		'id' => 'white-top-show-pre-footer-right',
		'description' => __( 'Space on pre footer extreme right', 'white-top-show' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget' => '</div>',
		'before_title' => '<h4>',
		'after_title' => '</h4>',
	));
	
	
	   
	

	}

add_action( 'widgets_init', 'whitetopshow_widgets_init' );	




/*****************************
****Below Code For Comment****
******************************/
add_filter('comment_form_default_fields', 'whitetopshow_custom_fields');
function whitetopshow_custom_fields($fields) {
    $commenter = wp_get_current_commenter();
    $req = get_option( 'require_name_email' );
    $aria_req = ( $req ? " aria-required='true'" : '' );

    $fields[ 'author' ] ='<div class="form-group">'. 	
      '<label for="author">' . __( 'Name','white-top-show' ) . '</label>'.
      ( $req ? '<span class="required">*</span>' : '' ).
      '<input id="author" name="author" class="form-control" placeholder="'.esc_attr('Your Name','white-top-show').'*" type="text" value="'. esc_attr( $commenter['comment_author'],'white-top-show' ) .
      '" size="30" tabindex="1"' . $aria_req . ' /></div>';

    $fields[ 'email' ] = '<div class="form-group">'.
      '<label for="email">' . __( 'Email','white-top-show' ) . '</label>'.
      ( $req ? '<span class="required">*</span>' : '' ).
      '<input id="email" name="email" class="form-control" placeholder="'.esc_attr('Your Email','white-top-show').'*" type="text" value="'. esc_attr( $commenter['comment_author_email'],'white-top-show' ) .
      '" size="30"  tabindex="2"' . $aria_req . ' /></div>';

    $fields[ 'url' ] =  '<div class="form-group">'.
      '<label for="url">' . __( 'Website' ,'white-top-show') . '</label>'.
      '<input id="url" name="url" class="form-control" type="text"  placeholder="'.esc_attr('Your URL','white-top-show').'" value="'. esc_attr( $commenter['comment_author_url'],'white-top-show' ) .
      '" size="30"  tabindex="3" /></div>';

    $fields[ 'phone' ] =  '<div class="form-group">'.
      '<label for="phone">' . __( 'Phone' ,'white-top-show') . '</label>'.
      '<input id="phone" name="phone" class="form-control" placeholder="'.esc_attr('Your Phone','white-top-show').'" type="text" size="30"  tabindex="4" /></div>';
	 

  return $fields;
}

/*****************************************************************
****** How to chnage text area in wordpress comment***************
You can filter 'comment_form_defaults' to change the textarea.**** 
You get an array with the default fields as argument:*************
******************************************************************/
add_filter( 'comment_form_defaults', 'whitetopshow_textarea_insert' );
function whitetopshow_textarea_insert( $fields ){
   	$fields[ 'comment_field' ] =  '<div class="form-group">'.
      '<label for="comment_field">' . __( 'Comment' ,'white-top-show') . '</label>'.
      '<textarea id="comment" name="comment" class="form-control" placeholder="Your Comment" rows="3"></textarea></div>';
  return $fields;
}

/***********************************
****Below Code For Uploding Logo****
************************************/
function whitetopshow_theme_logo_upload( $wp_customize ) {
$wp_customize->add_section( 'whitetopshow_logo_section' , array(
'title'       => __( 'Logo', 'white-top-show' ),'priority'    => 2,
'description' => __( 'Upload a logo to replace the default site name and description in the header', 'white-top-show' )) );
$wp_customize->add_setting( 'whitetopshow_logo', array( 'default' => '','sanitize_callback' => 'esc_url_raw', 'type' => 'theme_mod'));
$wp_customize->add_control( new WP_Customize_Image_Control( $wp_customize, 'whitetopshow_logo', array(
'label'    => __( 'Logo', 'white-top-show' ),'section'  => 'whitetopshow_logo_section','settings' => 'whitetopshow_logo') ) );}
add_action('customize_register', 'whitetopshow_theme_logo_upload');



/*******Just Put Below function for pagination*******/
function whitetopshow_paginate_start(){ ?><ul class="pager">
<li class="previous"><?php previous_posts_link(); ?></li>
<li class="next"><?php next_posts_link(); ?></li>
</ul><?php }


/*******Just Put Below function for pagination*******/
function whitetopshow_paginate_single_post(){ ?>
<ul class="post-navi">
<li class="previous"><?php previous_post_link(); ?></li>
<li class="next"><?php next_post_link(); ?></li>
</ul><?php }



if ( ! isset( $content_width ) ) $content_width = 1140;
// Register Custom Navigation Walker
?>