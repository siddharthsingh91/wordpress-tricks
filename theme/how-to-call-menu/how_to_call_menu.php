<?php 
/********************************************
put this where you wnat to show this menu****
*********************************************/ 
wp_nav_menu(array('theme_location'  => 'header-menu','menu_class' => 'nav navbar-nav','menu'=>'dropdown-menu','depth' => 3,'fallback_cb' => false)); ?>
 
 
<?php 
/********************************************
put this where you wnat to show this menu****
*********************************************/
wp_nav_menu(array('theme_location'  => 'secondary-header','menu_class' => 'nav navbar-nav','menu'=>'dropdown-menu','depth' => 3,'fallback_cb' => false)); ?>
  
  
  
<?php 
/********************************************
put this where you wnat to show this menu****
*********************************************/   
   wp_nav_menu(array('theme_location'  => 'footer-menu','menu_class' => 'nav navbar-nav','menu'=>'dropdown-menu','depth' => 3,'fallback_cb' => false)); ?>
   
   

<?php 
/********************************************
put this where you wnat to show this menu****
*********************************************/   
   wp_nav_menu(array('theme_location'  => 'secondary-footer','menu_class' => 'nav navbar-nav','menu'=>'dropdown-menu','depth' => 3,'fallback_cb' => false)); ?>   