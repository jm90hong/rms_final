

$(document).ready(function(){
	
	
	
	$('.my-btn-group > nav').on('click',function(){
		
		
		var page = $(this).data('page');
		
		
		location.href=page;
		
	});
	
});


