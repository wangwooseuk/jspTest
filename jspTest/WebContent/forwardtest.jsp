<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forward Action 예제</title>
</head>
<body>
	<h2>포워드 액션 테스트</h2>
	<form action="forwardtest1.jsp" method="post">
		<input type="hidden" name="forwardpage" value="forwardtest2.jsp">
		<table>
			<tr>
				<td>이름</td>
				<td><input type="text" name='name'></td>
			</tr>
			<tr>
				<td>나이</td>
				<td><input type="text" name="age"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<td><input type="submit" value="전송"></td>
			</tr>
		</table>
	</form>
</body>
</html>