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
			<div>로그인</div>
		</div>
		
		
		<div class="form-box">
			<label>아이디</label>
			<input id="id" placeholder="아이디"/>
		</div>
		
		<div class="form-box">
			<label>비밀번호</label>
			<input id="pw" type="password" placeholder="비밀번호"/>
		</div>
		
		
		
		<button id="submit-btn" class="form-submit-btn">로그인</button>
		
		
	</div>
	
	
</body>

<script src="https://code.jquery.com/jquery-3.7.1.min.js" 
integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>    
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="./js/login.js"></script>   


</html>