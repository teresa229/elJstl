<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>테이블형</h1>
	<!-- 서블릿에서 넘어온 값들을 표현할 때 사용한다. 간결해진다. //control+shift+? 주석생김--> 
	정수형: ${10}<br>
	실수형: ${7.5}<br>
	문자열: ${"정우성"}<br> ${'정우성'}<br>
	논리형:${true}<br>
	null: ${null}<br>
	
	
	예제: ${name}<br> <!-- 변수에 담겨져 있으므로 name이 화면에 나오지 않는다. -->
	
</body>
</html>