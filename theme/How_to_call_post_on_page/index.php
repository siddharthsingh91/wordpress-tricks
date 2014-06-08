<?php $note_two = new WP_Query( 'category_name=Blog&posts_per_page=3' );
while($note_two->have_posts()) : $note_two->the_post(); ?>
    <?php the_title(); ?>
	  <?php endwhile; ?>