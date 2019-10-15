<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/lib.jsp"%>
<html>
<body>
	<div class="center-content">
		<h1 class="logo">JBlog</h1>
		<ul class="menu">
			<li><a href="${path }/list">블로그 목록</a></li>
			<li><a href="${path }/user/login">로그인</a></li>			
		</ul>
		<p class="welcome-message">
			<span> 감사합니다. 회원 가입 및 블로그가 성공적으로 만들어 졌습니다.</span>
			<br><br>
			<a href="">로그인 하기</a>
		</p>
	</div>
</body>
</html>
