<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    




<script src="https://code.jquery.com/jquery-3.7.1.min.js" 
integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>    

<script src="./js/header.js"></script> 
   
 <header>

	<img class="logo" src="./img/logo.png"/>
	
	<div>
	
		
	

		<c:if test="${empty sessionScope.user}">
			<span class="menu-item" id="login-btn">로그인</span>
			<span class="menu-item" id="sign-up-btn">회원가입</span>
		</c:if>
		
		<c:if test="${not empty sessionScope.user}">
			<span>${sessionScope.user.nick}</span>
			<span class="menu-item" id="logout-btn">로그아웃</span>
		</c:if>

		
	</div>
	
</header>