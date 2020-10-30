<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL core 라이브러리 사용예제2</title>
</head>
<body>
	<c:forEach var="test" begin="1" end="10" step="2">
		<strong>${test}</strong>&nbsp;
	</c:forEach>
	<br>
	<c:forTokens var="alphabet" items="a, b, c, d, e, f, g, h, i, j, k, l, m, n" delims=",">
		<strong>${alphabet}</strong>&nbsp;
	</c:forTokens>
	<br>
	<c:set var="data" value="홍길동, 김길동, 고길동" />
	<c:forTokens var="varData" items="${data}" delims=",">
		<strong>${varData}</strong>&nbsp;
	</c:forTokens>
</body>
</html>