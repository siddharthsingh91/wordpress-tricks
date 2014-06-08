<?php
$post = get_post($id); //assuming $id has been initialized
setup_postdata($post);

// display the post here
the_title();
the_excerpt();
the_post_thumbnail();

wp_reset_postdata();
?>