<?php
/*
 * Plugin Name: Siddharth Widget
 * Plugin URI: http://gaanaworld.com/
 * Description:Custom Widgets . 
 * Version: 1.0
 * Author:Siddharth Singh
 * Author URI:http://codecanyon.net/user/siddharthsingh91
 */
class SimpleWidget extends WP_Widget{

/***********************************************************
**this methed is constructor output the value to front end**
************************************************************/
	function SimpleWidget(){
	

/**********************************************************************
****below method is calling parent class constructor to define name**** 
****and description of widget which is shown in admin panel************
***********************************************************************/	
		$widget_options=array(
		'classname'=> 'simple-widget',
		'description'=>'Just a simple widget' );
		parent::WP_Widget('simple_widget','Simple Widget',$widget_options);
 }
 

 
/********************************************
**this methed output the value to front end**
*********************************************/
	function widget($args,$instance){
		extract($args,EXTR_SKIP);
		$title=($instance['title'])? $instance['title'] : 'A simple widget';
		$boby =($instance['body'])? $instance['body'] : 'A simple message'; ?>
       <?php echo $before_widget; ?>
        <?php echo $before_title.$title.$after_title ?>
        <?php echo $body ?>
		<?php }
		


/***************************************
**this methed show form to admin panel**
****************************************/
	function form(){
		?>
		<label for="<?php echo $this->get_field_id('title'); ?>">
        Title:
        <input id="<?php echo $this->get_field_id('title'); ?>"
        name="<?php echo $this->get_field_name('title'); ?>"
        value="<?php echo esc_attr($instance['title']); ?>" />
        </label>
       <label for="<?php echo $this->get_field_id('body'); ?>">
        Body:
        <textarea id="<?php echo $this->get_field_id('body'); ?>"
        name="<?php echo $this->get_field_name('body'); ?>"><?php echo esc_attr($instance['body']); ?></textarea>
        </label>
        <?php
		}	
	} 
		
/*****************************************
**Below method is to register the widget**
******************************************/		
	function simple_widget_init(){
		register_widget('SimpleWidget');
		} 
	add_action('widgets_init','simple_widget_init');	
?>