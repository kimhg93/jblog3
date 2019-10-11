<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/jstl.jsp"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JBlog</title>
<Link rel="stylesheet" href="${path}/assets/css/jblog.css">
<script type="text/javascript" src="${path}/assets/js/jquery/jquery-1.9.0.js"></script>
</head>
<body>
	<div class="center-content">
		<h1 class="logo">JBlog</h1>
		<ul class="menu">
		<li><a href="${path }/list">블로그 목록</a></li>
		<c:choose>
			<c:when test="${empty authUser }">
				<li><a href="${path }/user/login">로그인</a></li>
				<li><a href="${path }/user/login">회원가입</a></li>		
			</c:when>
			<c:otherwise>
				<li><a href="${path }/user/login">로그아웃</a></li>
				<li><a href="${path }/user/login">내블로그</a></li>
			</c:otherwise>
		</c:choose>			
		</ul>
		<form class="login-form" method="post" action="${path }/user/auth">
      		<label>아이디</label><input type="text" name="id">
      		<label>패스워드</label><input type="password" name="password">
      		<input type="submit" value="로그인">
		</form>
	</div>
</body>
</html>
