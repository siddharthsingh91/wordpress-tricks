jQuery(document).ready(function(e) {
	jQuery(".navbar-header").click(function(e) {
jQuery(".navbar-collapse").removeClass('collapse');        
    });	


/*******************************************
****Validation js only number are allowed***
********************************************/
jQuery('.only-number').keyup(function () {this.value = this.value.replace(/[^0-9\.]/g,'');});
    jQuery( "#datepicker" ).datepicker({
			inline: true
		});	
		
		
		
/**************************************************************
****Below script is use to put active class on active link*****
***************************************************************/		
var pageTitle = window.location.pathname.replace( /^.*\/([^/]*)/ , "$1");
        jQuery('.nav a').each(function () {
            if (jQuery(this).attr('href').toLowerCase() == pageTitle.toLocaleLowerCase())
                jQuery(this).closest('li').addClass('active');
        });		
		
/******************************
****active class query end*****
*******************************/		
		
					
});

