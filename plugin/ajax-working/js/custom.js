function omFormSubmit(){	
	contactDetail=new Object();
	contactDetail.f_name=jQuery('#omFormStart input[name="f_name"]').val();
	jQuery.ajax({
		type:'POST',
		url: om_from_ajax_script.ajaxurl,//this is your url which you declare in function on calling js
		//[action: 'responce'] is the response back variable which target particular function in response
		data:{'contactDetail': contactDetail,action: 'responce'}
		}).success(function(resultData){
			console.log(resultData);
			})
	return false;
   }