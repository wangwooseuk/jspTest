<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%session.setAttribute("name", "Session Test!"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 예제</title>
</head>
<body>
	<script>
		location.href="sessiontest.jsp";
	</script>
</body>
</html>