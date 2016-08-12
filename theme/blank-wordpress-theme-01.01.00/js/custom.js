jQuery(document).ready(function(e) {
jQuery(".navbar-header").click(function(e) {
jQuery(".navbar-collapse").removeClass('collapse');        
    });								
});




/******************************
****Function run on scroll*****
*******************************/	
jQuery(window).scroll(function () {
var currPosition=jQuery(document).scrollTop();
if(currPosition>100){ 
jQuery('.navbar').css({'padding':"0px"});	
}else{
jQuery('.navbar').css({'padding-top':"15px",'padding-bottom':"15px"});
	}
})

