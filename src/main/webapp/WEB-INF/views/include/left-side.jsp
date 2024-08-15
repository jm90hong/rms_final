<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<script src="https://code.jquery.com/jquery-3.7.1.min.js" 
integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>    

<script src="./js/left-side.js"></script>    

<div class="left-side">
	
	
	<div class="my-btn-group">
		<label>실습관련</label>
		<nav data-page="./" class="<c:if test="${menu eq 'home'}">active</c:if>">회원리스트</nav>
		<nav data-page="./js" class="<c:if test="${menu eq 'js'}">active</c:if>">자바스크립트</nav>
	</div>
	
	<div class="my-btn-group">
		<label>서비스</label>
		<nav data-page="./item"    class="<c:if test="${menu eq 'item'}">active</c:if>">상품관리</nav>
		<nav data-page="./service" class="<c:if test="${menu eq 'service'}">active</c:if>">고객센터</nav>
	</div>
</div>