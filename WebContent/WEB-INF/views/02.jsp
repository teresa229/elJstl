<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>연산</h1>
	${el폼으로 인식한다.
	\$면 $가 살아난다. 
	
	\${5+2} --> ${5+2} <br>
	
	<%-- \${5+2} --> ${no1+no2} --%>
	${5}+${2}
	
	\${5+2} --> ${5+2} <br>
	\${5-2} --> ${5-2} <br>
	\${5*2} --> ${5*2} <br>
	<br>
	\${5/2} --> ${5/2} <br>
	\${5 div 2} --> ${5 div 2} <br>
	\${5%2} --> ${5%2} <br>
	\${5 mod 2} --> ${5 mod 2} <br>
	<br>
	<br>
	<br>
	\${5>2} --> ${5>2} <br>
	\${5 gt 2} --> ${5 gt 2} <br>
	<br>
	\${5<2} --> ${5<2} <br>
	\${5 lt 2} --> ${5 lt 2} <br>
	<br>
	\${5>=2} --> ${5>=2} <br>
	\${5 ge 2} --> ${5 ge 2} <br>
	<br>
	\${5<=2} --> ${5<=2} <br>
	\${5 le 2} --> ${5 le 2} <br>
	<br>
	\${5==2} --> ${5==2} <br>
	\${5 eq 2} --> ${5 eq 2} <br>
	<br>
	\${5!=2} --> ${5!=2} <br>
	\${5 ne 2} --> ${5 ne 2} <br>
	<br>
	<br>
	${'a가 맞으면 b 틀리면 c로 표현해라.'}<br>
	\${5>2?5:2} --> ${5>2?5:2} <br>
	\${5<2?5:2} --> ${5<2?5:2} <br>
	<br>
	<br>
	\${5>2}|| ${2>10} --> ${5>2}||${2>10} <br>
	\${5>2 || 2>10} --> ${5>2 || 2>10} <br>
	\${5>2 && 2>10} --> ${5>2 && 2>10} <br>
	\${!(5>2)} --> ${!(5>2)} <br>
	!${(5>2)} !${5>2}<br>
	
	${'str은 null이다.비었다. str이 empty'} <br>
	\${empty str} --> ${empty str} <br>
	<br>
	${'reqVal은 null이 아니다. false'} <br>
	\${empty reqVal} --> ${empty reqVal} <br>
</body>
</html>