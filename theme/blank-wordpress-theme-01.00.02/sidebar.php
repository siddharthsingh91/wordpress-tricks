<div class="sidebar-bg">
<?php 
/********************************************
put this where you wnat to show this widget**
*********************************************/
if( is_active_sidebar( 'sidebar-1' ) ) { dynamic_sidebar( 'sidebar-1' ); }else{?>
<h4>Blog Archive Here</h4>
<?php } ?>
</div>
