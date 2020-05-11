
<?php 
//Getting currect user Data
/*$user_id = get_current_user_id();
echo $user_id;*/
$current_user = wp_get_current_user(); 
echo "<pre>";
 echo 'Username: ' . $current_user->user_login . '<br />';
    echo 'User email: ' . $current_user->user_email . '<br />';
    echo 'User first name: ' . $current_user->user_firstname . '<br />';
    echo 'User last name: ' . $current_user->user_lastname . '<br />';
    echo 'User display name: ' . $current_user->display_name . '<br />';
    echo 'User ID: ' . $current_user->ID . '<br />';
echo "</pre>";
$user_id = $current_user->ID;
echo get_avatar_url($user_id);

/* $user_info = get_userdata($user_id);
      echo 'Username: ' . $user_info->user_login . "\n";
      echo 'User roles: ' . implode(', ', $user_info->roles) . "\n";
      echo 'User ID: ' . $user_info->ID . "\n";*/

?>