<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/jstl.jsp"%>
		<div id="header">
			<a href="${path}/${blog.id }"><h1>${blog.title }</h1></a>						
			
			<ul>
			<c:choose>
				<c:when test="${empty authUser }">
					<li><a href="${path }/user/login">로그인</a></li>				
				</c:when>
				<c:otherwise>
					<li><a href="${path }/user/logout">로그아웃</a></li>
					<li><a href="${path }/${blog.id}/admin/basic">블로그 관리</a></li>
				</c:otherwise>
			</c:choose>
			</ul>
		</div>