jQuery(document).ready(function(e) {
jQuery('html,body').animate({scrollTop: jQuery('html,body').offset().top}, 800);	
		
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




/******************************
****Function run on scroll*****
*******************************/	
jQuery(window).scroll(function () {
var currPosition=jQuery(document).scrollTop();
if(currPosition>100){ 
jQuery('.logo-image').css({'height':'80px'});
jQuery('.navbar-nav').css({'margin-top':'40px'});
jQuery('.navbar').css({'min-height':'88px'});
}else{
jQuery('.logo-image').css({'height':'120px'});
jQuery('.navbar-nav').css({'margin-top':'84px'});
jQuery('.navbar').css({'min-height':'144px'});	
	}
})

