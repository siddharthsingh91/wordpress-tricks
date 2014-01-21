<?php
/**
 * Plugin Name: Input field
 * Plugin URI: http://gaanaworld.com/
 * Description: A custom input field plugin.
 * Version: 1.0
 * Author: Siddharth Singh
 * Author URI: http://gaanaworld.com/
 * License: A "Slug" license name e.g. GPL2
 */
function theme_logo(){echo '<img src="'.get_option("tl_logo_src").'" alt="'.get_option("blogname").'" />';}
//output of this plugin on front end using using theme_logo();

function menu_item(){add_submenu_page("themes.php", "Theme Logo", "Theme Logo", 8, "theme-logo", "menu_page");}
function my_admin_notice_logo() {
    ?>
    <div class="updated">
        <p><?php _e( 'With the Theme Logo, you can manually change your website logo.', 'my-text-domain' ); ?></p>
    </div>
    <?php
}
add_action( 'admin_notices', 'my_admin_notice_logo' );

function menu_page(){
	?>
	<div id="theme-logo" class="wrap">
		<h2>Theme Logo</h2>
		<form action="options.php" method="post">
		<?php 
			if(function_exists('settings_fields')){
	            settings_fields('tl-options');
	        }else{
	        	wp_nonce_field('update-options');
	            ?>
	            <input type="hidden" name="action" value="update" />
	            <input type="hidden" name="page_options" value="tl_logo_src"/>
	            <?php
	        }
		?>
			<table class="form-table">
				<tr>
					<td scope="row">
						Logo Location
					</td>
					<td>
						<input type="text" value="<?php echo get_option("tl_logo_src"); ?>" name="tl_logo_src" id="tl_logo_src" style="width:280px; height:40px;"/>
						<p>Ex.: http://YourDomain.com/images/logo.png</p>
					</td>
					<td>
						<?php theme_logo(); ?>
					</td>
				</tr>
			</table>
			<p class="submit">
            	<input type="submit" name="Submit" value="<?php _e('Save Image') ?>" class='button-primary' />
       		</p>
		</form>
		<div id="how-to-use">
        <h1>Developed By VGS</h1>
			<h2>Put Your Theme Logo</h2>	
		</div>
		
		</div>
	</div>
	<?php 
}

function tl_init(){
	if(function_exists(register_setting)){
		register_setting("tl-options", "tl_logo_src");
	}
}

function tl_activate(){
	add_option("tl_logo_src", "default");
}

function tl_deactivate(){
	delete_option("tl_logo_src");
}

if(is_admin()){
	add_action("admin_menu", "menu_item");
	add_action('admin_init', 'tl_init');
}

register_activation_hook(__FILE__, "tl_activate");
register_deactivation_hook(__FILE__, "tl_deactivate");
?>
