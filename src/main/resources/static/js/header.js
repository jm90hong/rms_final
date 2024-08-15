

$(document).ready(function(){
	
	
	$('#sign-up-btn').on('click',function(){
		location.href='./join-user';
	})
	
	
	$('#login-btn').on('click',function(){
		location.href='./login';
	});
	
	
	$('#logout-btn').on('click',function(){
		
		var con = confirm('정말 로그아웃 하시겠습니까?');
		
		
		if(!con){
			return;
		}
		
		$.ajax({
			url:'./api/user/logout',
			type:'post',
			data:{},
			success:function(response){
				if(response=='ok'){
					alert('로그아웃 되었습니다.');
					location.reload();
				}
			},
			error:function(err){}
		});
		
	});
	
})