<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언문 예제</title>
</head>
<body>
	<h1>
		<%=getStr() %>
	</h1>
	<%!
	private String getStr() {
		str += "테스트입니다.";
		return str;
	}
	private String str = "선언문";
	%>
</body>
</html>