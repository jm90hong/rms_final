$(document).ready(function(){
	
	
	
	 
    
    
    $('#address').on('click',function(){
		new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
	            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
	            
	            $('#address').val(data.address);
	        }
	    }).open();
	});
	
	
	
	$('#submit-btn').on('click',function(){
		
		
		var id = $('#id').val();
		var pw = $('#pw').val();
		var pwCheck = $('#pw-chk').val();
		var nick = $('#nick').val();
		var address = $('#address').val();
		var type = $('#type').val();
		
		
		if(id.length==0){
			alert('아이디를 입력하세요.');
			return;
		}
		
		if(pw.length==0){
			alert('비밀번호를 입력하세요.');
			return;
		}
		
		if(nick.length==0){
			alert('닉네임을 입력하세요.');
			return;
		}
		
		if(address.length==0){
			alert('주소를 입력하세요.');
			return;
		}
		
		
		if(pw != pwCheck){
			alert('비밀번호가 일치하지 않습니다.');
			return;
		}
		
		
		console.log({
			id:id,
			pw:pw,
			pwCheck:pwCheck,
			nick:nick,
			address:address,
			type:type
		})
		
		
		$.ajax({
			url:'./api/user/save',
			type:'post',
			data:{
				id:id,
				pw:pw,
				nick:nick,
				address:address,
				type:type
			},
			success:function(response){
				
				if(response=='ok'){
					alert('회원가입 완료');
					location.replace('./');
					
				}else if(response=='fail-id'){
					alert('아이디가 중복되었습니다.');
					
				}else if(response=='fail-nick'){
					alert('닉네임이 중복되었습니다.');
				}
				
			},
			error:function(error){}
		});
		
	});
	
})