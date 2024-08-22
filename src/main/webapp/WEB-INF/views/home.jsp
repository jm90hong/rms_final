<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>RMS 파이널</title>
<link rel="icon" href="./img/logo-icon.png"/>
<link rel="stylesheet" href="./css/style.css"/>

</head>
<body>


	
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
	<main>
	
		<%@ include file="/WEB-INF/views/include/left-side.jsp" %>
		<div class="right-side">
			
			<h3>회원리스트 from Model</h3>
			
			<div id="user-list-1">
				<c:forEach items="${users}" var="user">
					<nav class="user-box">
						<span>${user.nick}</span>
						<span>${user.address}</span>
						<span>${user.type}</span>
					</nav>
				</c:forEach>
			</div>
			
			
			<h3>회원리스트 from ajax</h3>
			
			<div id="user-list-2">
				
			</div>
			
			
			
			<h3>일별박스오피스 api</h3>
			
			<input type="date" id="date"/>
			<button id="fetch-movie-btn">영화조회</button>
			
			<div id="mv-list">
				
			</div>
			
		</div>
	</main>
	
</body>
<script src="./js/home.js"></script>
</html>