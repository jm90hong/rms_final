

$(document).ready(function(){
	
	
	$('#submit-btn').on('click',function(){
		
		var id = $('#id').val();
		var pw  = $('#pw').val();
		
		
		$.ajax({
			url:'./api/user/login',
			type:'post',
			data:{
				id:id,
				pw:pw
			},
			success:function(response){
				if(response != ''){
					//로그인 성공
					alert('로그인 성공');
					location.replace('./');
					
				}else{
					//로그인 실패
					alert('가입된 계정이 없습니다.');
				}
			},
			error:function(err){}
		});
		
		
	});
	
	
});