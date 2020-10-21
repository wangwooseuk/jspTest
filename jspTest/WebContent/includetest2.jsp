<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include Action 예제</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
	%>
	<b><%=name %></b>
	<b><%=request.getParameter("name") %></b>
</body>
</html>