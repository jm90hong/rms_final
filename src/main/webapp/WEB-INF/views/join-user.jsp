<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>RMS 파이널</title>
<link rel="icon" href="./img/logo-icon.png"/>
<link rel="stylesheet" href="./css/style.css"/>

</head>
<body>


	
	<div class="center-body">
		<div>
			<img style="width:120px;margin-top:80px;" src="./img/logo.png"/>
			<div>회원가입</div>
		</div>
		
		
		<div class="form-box">
			<label>아이디</label>
			<input id="id" placeholder="아이디"/>
		</div>
		
		<div class="form-box">
			<label>비밀번호</label>
			<input id="pw" type="password" placeholder="비밀번호"/>
			<input id="pw-chk" type="password" placeholder="비밀번호 확인"/>
		</div>
		
		<div class="form-box">
			<label>닉네임</label>
			<input id="nick" placeholder="닉네임"/>
		</div>
		
		<div class="form-box">
			<label>사는곳</label>
			<input id="address" placeholder="사는곳" readonly/>
		</div>
		
		<div class="form-box">
			<label>관심분야</label>
			<select id="type">
				<option value="프론트엔드">프론트엔드</option>
				<option value="백엔드">백엔드</option>
				<option value="리눅스서버">리눅스서버</option>
				<option value="데이터베이스">데이터베이스</option>
			</select>
		</div>
		
		
		<button id="submit-btn" class="form-submit-btn">회원가입하기</button>
		
		
	</div>
	
	
</body>

<script src="https://code.jquery.com/jquery-3.7.1.min.js" 
integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>    
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="./js/join-user.js"></script>   


</html>