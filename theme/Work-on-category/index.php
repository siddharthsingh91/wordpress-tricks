<?php
/*How to work on wordpress category*/
if (have_posts()) : while (have_posts()) : ?>
<?php  the_post(); ?>
<?php 
$categories = get_the_category(); 
foreach($categories as $categorie){
$cat_name=$categorie->name;
$cat_link=get_category_link($category->term_id);
}
?>
<?php endwhile; ?>
<?php endif; ?>	