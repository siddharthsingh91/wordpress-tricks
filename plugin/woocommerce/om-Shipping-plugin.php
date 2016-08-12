<?php
/*
* Plugin Name: Om Shipping plugin
* Plugin URI: http://woothemes.com/woocommerce
* Description: Your shipping method plugin
* Version: 1.0.05
* Author:Siddharth Singh
* Author URI:http://www.sanditsolution.com/about.html
* License: GPLv3
* License URI: http://www.gnu.org/licenses/gpl-3.0.html
*/

/**
 * Check if WooCommerce is active
 */
if ( in_array( 'woocommerce/woocommerce.php', apply_filters( 'active_plugins', get_option( 'active_plugins' ) ) ) ) {

	function your_shipping_method_init() {
		if ( ! class_exists( 'WC_Your_Shipping_Method' ) ) {
			class WC_Your_Shipping_Method extends WC_Shipping_Method {
				/**
				 * Constructor for your shipping class
				 *
				 * @access public
				 * @return void
				 */
				public function __construct() {
					$this->id                 = 'your_shipping_method'; // Id for your shipping method. Should be uunique.
					$this->method_title       = __( 'Your Shipping Method' );  // Title shown in admin
					$this->method_description = __( 'Description of your shipping method' ); // Description shown in admin

					$this->enabled            = "yes"; // This can be added as an setting but for this example its forced enabled
					$this->title              = "Shipping Charge"; // This can be added as an setting but for this example its forced.

					$this->init();
				}
 function init_form_fields()
      {
        global $woocommerce;

        $this->form_fields = array(
            'enabled' => array(
                'title' => __('Enabled/Disabled', 'multi_tiered_shipping'),
                'type' => 'checkbox',
                'label' => 'Enable this shipping method'
            ),
            'usertitle' => array(
                'title' => __('Title', 'multi_tiered_shipping'),
                'type' => 'text',
                'description' => __('Shipping method label that is visible to the user.',
                      'multi_tiered_shipping'),
                'default' => __('USPS Flat Rates', 'multi_tiered_shipping')
            ),
            'availability' => array(
                'title' => __('Availability', 'multi_tiered_shipping'),
                'type' => 'select',
                'class' => 'wc-enhanced-select availability',
                'options' => array(
                    'all' => 'All allowed countries',
                    'specific' => 'Specific countries'
                ),
                'default' => __('all', 'multi_tiered_shipping')
            ),
            'countries' => array(
                'title' => __('Countries', 'multi_tiered_shipping'),
                'type' => 'multiselect',
                'class' => 'wc-enhanced-select',
                'options' => $woocommerce->countries->countries,
                'default' => __('', 'multi_tiered_shipping')
            ),   );
      }
				/**
				 * Init your settings
				 *
				 * @access public
				 * @return void
				 */
				function init() {
					// Load the settings API
					$this->init_form_fields(); // This is part of the settings API. Override the method to add your own settings
					$this->init_settings(); // This is part of the settings API. Loads settings you previously init.

					// Save settings in admin if you have any defined
					add_action( 'woocommerce_update_options_shipping_' . $this->id, array( $this, 'process_admin_options' ) );
				}
				
		
      /**
       * is_tiered_allowed function.
       *
       * @param mixed $package
       * @return true|false
       */
      function is_tiered_allowed($package = array())
      {
        // If plugin availability is set to all countries, just return true.
        $availability = $this->get_option('availability');

        if ($availability == 'all')
        {
          return true;
        }

        // Otherwise, if user's country is not set, return false.
        //    We cannot allow this shipping option if it is not available in all countries 
        //    and we do not know what country the user is in.
        $user_country = $package['destination']['country'];

        if (!$user_country)
        {
          return false;
        }

        // Otherwise, make sure the user's country is in the array of allowed countries.
        $countries = $this->get_option('countries');

        $in_allowed_country = false;

        for ($i = 0; $i < sizeof($countries); $i++)
        {
          if ($user_country == $countries[$i])
          {
            $in_allowed_country = true;
            break;
          }
        }
        return $in_allowed_country;
      }
		
				

				/**
				 * calculate_shipping function.
				 *
				 * @access public
				 * @param mixed $package
				 * @return void
				 */
				public function calculate_shipping( $package = array() ) { 
				if (!$this->is_tiered_allowed($package))
				{
				return;
				}
				global $woocommerce;
					$item_no = $woocommerce->cart->get_cart_item_quantities();				
						if($item_no==1){
					 $rate = array(
						'id' => $this->id,
						'label' => $this->title,
						'cost' => '10',
					); }
					else if($item_no==2){
						$rate = array(
						'id' => $this->id,
						'label' => $this->title,
						'cost' => '12.50',
					); 
						}else if($item_no>=3 & $item_no<=7){
						$rate = array(
						'id' => $this->id,
						'label' => $this->title,
						'cost' => '15',
					); 
						}else if($item_no>=8){
						$rate = array(
						'id' => $this->id,
						'label' => $this->title,
						'cost' => '20',
					); 
						}

					// Register the rate
					$this->add_rate( $rate );
					}
				}
			}
		}
	

	add_action( 'woocommerce_shipping_init', 'your_shipping_method_init' );

	function add_your_shipping_method( $methods ) {
		$methods[] = 'WC_Your_Shipping_Method';
		return $methods;
	}

	add_filter( 'woocommerce_shipping_methods', 'add_your_shipping_method' );
}

//Add action link start
add_filter( 'plugin_action_links', 'om_stripe_add_action_plugin', 10, 5 ); 
function om_stripe_add_action_plugin( $actions, $plugin_file ){ 
static $plugin; if(!isset($plugin))$plugin = plugin_basename(__FILE__); 
if ($plugin == $plugin_file) { 
$more_product = array('more product' => '<a href="http://www.sanditsolution.com/shops/">' . __('More Product', 'General') . '</a>'); 
$site_link = array('support' => '<a href="http://www.sanditsolution.com/contact.html" target="_blank">Support</a>');
$became_client = array('became client' => '<a href="http://doc.sanditsolution.com/register/" target="_blank">Became Client</a>');
$actions = array_merge($more_product, $actions);
$actions = array_merge($site_link, $actions);
$actions = array_merge($became_client, $actions);
}return $actions;}