

$(document).ready(function(){
	fetchUser();
	
	
	$('#fetch-movie-btn').on('click',function(){
		var date = $('#date').val();
		date = date.replaceAll('-','');
		
		fetchMovies(date);
	})
	
	
});


//영화 api 조회
function fetchMovies(date){
	
	
	$.ajax({
		url:'https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json',
		type:'get',
		data:{
			key:'82ca741a2844c5c180a208137bb92bd7',
			targetDt:date
		},
		success:function(response){
			console.log(response.boxOfficeResult.dailyBoxOfficeList);
			
			var movies = response.boxOfficeResult.dailyBoxOfficeList;
			
			$('#mv-list').empty();
			
			
			if(movies.length==0){
				$('#mv-list').append('<div>검색결과가 없습니다.</div>');
				return;
			}
			
			$.each(movies, function(index, item){
				
				$('#mv-list').append(`
					<nav class="user-box">
						<span>${item.movieNm}</span>
						<span>${item.audiAcc} 명</span>
						<span>${item.openDt}</span>
					</nav>
				`);
				
				
			});
			
		},
		error:function(err){
			
		}
	});
	
	
}


function fetchUser(){
	$.ajax({
		url:'./api/user/all',
		type:'get',
		data:{},
		success:function(users){
			console.log(users);
			
			//UI 추가
			$.each(users, function(index, item){
				
				var bgColor='#f2f2f2;';
				if(item.type=='백엔드'){
					bgColor='yellow'
				}
				
				$('#user-list-2').append(`
					<nav class="user-box" style="background:${bgColor}">
						<span>${item.nick}</span>
						<span>${item.address}</span>
						<span>${item.type}</span>
					</nav>
				`);
				
				
			});
			
			
			
			
		},
		error:function(err){
			console.log(err);
		}
		
	});
}