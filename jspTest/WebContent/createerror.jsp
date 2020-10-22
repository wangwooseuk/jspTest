<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="errorprocessing.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error 예제</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		if(name == null) {
			throw new NullPointerException();
		}
	%>
</body>
</html>