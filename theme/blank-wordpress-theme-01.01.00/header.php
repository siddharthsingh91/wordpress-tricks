<!doctype html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?> " />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php wp_title('|', true, 'right'); ?></title>
<!-- Just for debugging purposes. Don't actually copy this line! -->
<?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
<!-- Collect the nav links, forms, and other content for toggling -->
<?php get_template_part( 'main', 'menu' ); ?>
<!-- /.navbar-collapse -->
<div class="header_image"><img src="<?php header_image(); ?>" alt="" class="img-responsive"/></div>
