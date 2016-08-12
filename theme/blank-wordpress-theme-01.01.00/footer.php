<footer class="footer">
  <div class="top">
    <div class="container">
      <div class="row">
        <div class="col-sm-4">
       <?php if( is_active_sidebar( 'white-top-show-pre-footer-left' ) ) { dynamic_sidebar( 'white-top-show-pre-footer-left' ); }else{?>
             <h4>Space on pre footer extreme left, Use Widget</h4>
        <?php } ?>    
        </div>
        <!-- end .col-sm-4 -->
        <div class="col-sm-4">
         <?php if( is_active_sidebar( 'white-top-show-pre-footer-middle' ) ) { dynamic_sidebar( 'white-top-show-pre-footer-middle' ); }else{?>
             <h4>Space on pre footer middle</h4>
         <?php } ?> 
        </div>
        <!-- end .col-sm-4 -->
        <div class="col-sm-4">
        <?php if( is_active_sidebar( 'white-top-show-pre-footer-right' ) ) { dynamic_sidebar( 'white-top-show-pre-footer-right' ); }else{?>
            <h4>Space on pre footer extreme left, Use Widget</h4>
          <?php } ?>     
        </div>
        <!-- end .col-sm-4 --> 
      </div>
      <!-- end .row --> 
    </div>
    <!-- end .container --> 
  </div>
  <!-- end .footer -->
  <div class="bottom">
  <?php 
/********************************************
put this where you wnat to show this widget**
*********************************************/
if( is_active_sidebar( 'white-top-show-copyright' ) ) { dynamic_sidebar( 'white-top-show-copyright' ); }else{?><?php _e( 'Copyright &copy; sanditsolution.com All Rights Reserved. &copy;', 'white-top-show' ) ?>
<?php } ?></div>
  <!-- end .bottom --> 
</footer>


<!-------------------------------------------------------------------------------------------------------------------------------->
<?php wp_footer(); ?>  
</body>
</html>