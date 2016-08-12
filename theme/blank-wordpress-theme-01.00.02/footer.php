<div class="row footer-background margin-zero">
	<div class="col-md-12">    
        <ul class="social cat-float">
  <?php global $wpdb;
                $table_name = $wpdb->prefix . 'social_media_link';
                $social_data= $wpdb->get_row("SELECT * FROM `$table_name` WHERE `social_media_link_id` =1"); ?>
  <li><a href="<?php echo ($social_data) ? "$social_data->facebook_url" : NULL ?>"><span class="fa fa-facebook"></span></a></li>
  <li ><a href="<?php echo ($social_data) ? "$social_data->twitter_url" : NULL ?>"><span class="fa fa-twitter"></span></a></li>
  <li ><a href="<?php echo ($social_data) ? "$social_data->pinterest_url" : NULL ?>"><span class="fa fa-pinterest"></span></a></li>
  <li ><a href="<?php echo ($social_data) ? "$social_data->linkedin_url" : NULL ?>"><span class="fa fa-linkedin"></span></a></li>
  <li ><a href="<?php echo ($social_data) ? "$social_data->flickr_url" : NULL ?>"><span class="fa fa-flickr"></span></a></li>
  <li ><a href="<?php echo ($social_data) ? "$social_data->youtube_url" : NULL ?>"><span class="fa fa-youtube"></span></a></li>
  <li ><a href="<?php echo ($social_data) ? "$social_data->instagram_url" : NULL ?>"><span class="fa fa-instagram"></span></a></li>
</ul>
		<p class="copyright">wordpress.org&copy</p>
	</div>
</div>
<!-------------------------------------------------------------------------------------------------------------------------------->
<?php wp_footer(); ?>  
</body>
</html>