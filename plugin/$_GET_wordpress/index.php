<?php
$invoice_link="http://localhost/wordpress/om-stripe/invoice/test-invoice/";
$final_link=add_query_arg( 'success', $message, $invoice_link);
header('Location:'.$final_link);
?>