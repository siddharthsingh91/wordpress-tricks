<?php
     //Getting varible to remember  
     if( false === ($get_country = get_transient('country_related_radio')) ){}
	 else{ echo $get_country;}
	 
	 //Setting varible to remember
	 set_transient('country_related_radio', $get_country, 12 * HOUR_IN_SECONDS ); 

 ?>