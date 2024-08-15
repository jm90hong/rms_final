<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>RMS 파이널</title>
<link rel="icon" href="./img/logo-icon.png"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
crossorigin="anonymous">
<link rel="stylesheet" href="./css/style.css"/>

</head>
<body>
	
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
	<main>
	
		<%@ include file="/WEB-INF/views/include/left-side.jsp" %>
		<div class="right-side">
			<input id="inp"/>
			<span id="txt">hello</span>
			<button id="btn">버튼</button>
			
			
			<br/>
			
			<div>
				<input id="name" placeholder="이름"/>
				<input id="age" type="number"  placeholder="나이"/>
				<input id="address"  placeholder="주소"/>
				<button id="save-btn">추가</button>
			</div>
			
			
			<table class="table">
			  <thead>
			    <tr>
			      <th scope="col">#</th>
			      <th scope="col">이름</th>
			      <th scope="col">나이</th>
			      <th scope="col">주소</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th scope="row">1</th>
			      <td>김철수</td>
			      <td>20</td>
			      <td>서울</td>
			    </tr>
			    
			  </tbody>
			</table>
			
			
			
			
			
			
			
		</div>
	</main>
	
	
</body>

<script src="https://code.jquery.com/jquery-3.7.1.min.js" 
integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>    

<script src="./js/js-study.js"></script>    
</html>