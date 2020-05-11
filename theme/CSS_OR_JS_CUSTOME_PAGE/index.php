<?php function se_remove_styles() {
    if ( is_page_template( 'blankPage.php' ) ) {
        wp_dequeue_style( 'some-style' );
        wp_dequeue_style( 'some-other-style' );
    }
}

add_action( 'wp_print_styles', 'se_remove_styles', 99 );?> 

<!--Css only for 404 next option-->

<?php 
if (is_404()) { 
$redirectHome = get_option('home'); } 
?>
<?php echo $redirectHome; 


//How to add css only for custome post / single post
if( is_singular('portfolio')){
wp_enqueue_script('lightbox',get_stylesheet_directory_uri() . '/assets/lightbox/js/lightbox.js',array( 'jquery' ),false,true);

	}
?>
