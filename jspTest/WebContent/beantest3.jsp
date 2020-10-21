<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="beantest" class="jspTest.BeanTest" scope="page"/>
<jsp:setProperty property="name" name="beantest" param="name"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>javabean 예제</title>
</head>
<body>
	<strong>자바빈 사용 예제</strong>
	<h3><%=beantest.getName() %></h3>
</body>
</html>