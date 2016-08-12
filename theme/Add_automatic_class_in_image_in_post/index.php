<?php 
// add below class in function.php

function add_image_class($class){
    $class .= ' img-responsive';
    return $class;
}
add_filter('get_image_tag_class','add_image_class'); ?>