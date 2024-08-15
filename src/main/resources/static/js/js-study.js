

$(document).ready(function(){
	
	
	
	$('#btn').on('click',function(){
		var value = $('#inp').val();
		$('#txt').html(value);		
		
		
		$('header').css('background',value);
		
	});
	
	
	
	var count=1;
	
	
	//회원 추가
	$('#save-btn').on('click',function(){
		
		
		
		var name = $('#name').val();
		var age = $('#age').val();
		var address = $('#address').val();
		
		
		if(name.length==0){
			alert('이름을 입력해주세요.');
			return;
		}
		
		if(age==0){
			alert('나이를 입력해주세요.');
			return;
		}
		
		if(address.length==0){
			alert('주소를 입력해주세요.');
			return;
		}
		
		
		count++;
		
		
		
		$('tbody').append(`
			<tr>
		      <th scope="row">${count}</th>
		      <td>${name}</td>
		      <td>${age}</td>
		      <td>${address}</td>
		    </tr>
	
		`);
		
		alert('회원 등록 완료');
		$('#name').val('');
		$('#age').val('');
		$('#address').val('');
		
	});
	
	
	
	
});