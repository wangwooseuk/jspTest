<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forward Action 예제</title>
</head>
<body>
	<jsp:forward page='<%=request.getParameter("forwardpage") %>'>
		<jsp:param value="034-1234-5678" name="tel"/>
	</jsp:forward>
</body>
</html>