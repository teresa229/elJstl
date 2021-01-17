<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vo.UserVo" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!-- 거의 다 사용해서 일단 다 넣고 사용하는 편이다. -->

<%
UserVo authUser = (UserVo)session.getAttribute("authUser");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- color.jsp에서 가져옴  -->
	<div id="header">
			<h1>MySite</h1>
			<ul>
		<%
			if(authUser==null) {
		%>
				<!-- 로그인 전 -->
				<li><a href="/mysite/user?a=loginform">로그인</a></li>
				<li><a href="/mysite/user?a=joinform">회원가입</a></li>
		<%  }else { %>		
				<!-- 로그인 후 -->
				<li><a href="/mysite/user?a=modifyform">회원정보수정</a></li>
				<li><a href="/mysite/user?a=logout">로그아웃</a></li> 
				<li> <%=authUser.getName() %>님 안녕하세요^^;</li>
		<%  } %>
			</ul>
	</div> <!-- /header -->
	
	<br><br>
	
	<div id="header">
			<h1>MySite</h1>
				<!-- <c:when test="${authUser eq null}"> -->
				<!-- <c:when test="${empty sessionScope.authUser }"> -->
			<ul>
			<c:choose>
				<c:when test="${empty authUser }"> <!-- == null과 헷갈리지 말자-->
					<!-- 로그인 전 --> 
					<li><a href="/mysite/user?a=loginform">로그인</a></li>
					<li><a href="/mysite/user?a=joinform">회원가입</a></li>
				</c:when>
				<c:otherwise>
					<!-- 로그인 후 -->
					<li><a href="/mysite/user?a=modifyform">회원정보수정</a></li>
					<li><a href="/mysite/user?a=logout">로그아웃</a></li> 
					<li>${sessionScope.authUser.name }님 안녕하세요^^;</li> <!-- getname 역할을 하고 있는 name -->
					<li>${authUser.name }님 안녕하세요^^;</li> 
				</c:otherwise>
			</c:choose>
			</ul>
	</div> 
</body>
</html>