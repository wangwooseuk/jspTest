<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include Action 예제</title>
</head>
<body>
	<h2>인클루드 액션 테스트</h2>
	<jsp:include page="includetest2.jsp">
		<jsp:param value="hongkildong" name="name"/>
	</jsp:include>
</body>
</html>