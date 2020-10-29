<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*" %>
<%
	String id = null;
	
	if((session.getAttribute("id") == null) || 
		(!((String)session.getAttribute("id")).equals("admin"))) {
			out.println("<script>");
			out.println("location.href='loginform.jsp'");
			out.println("</script>");
	}
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/ms");
		conn = ds.getConnection();
		
		pstmt = conn.prepareStatement("SELECT * FROM members");
		rs = pstmt.executeQuery();
	} catch(Exception e) {
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리 시스템 관리자모드(회원 목록 보기)</title>
<style>
	table {
		margin: auto;
		width: 400px;
		border: 1px solid gray;
		text-align: center;
	}
	.td_title {
		font-weight: bold;
		font-size: x-large;
	}
</style>
</head>
<body>
	<table>
		<tr>
			<td colspan="2" class="td_title">회원 목록</td>
		</tr>
		<%while(rs.next()) {%>
		<tr>
			<td>
				<a href="members_info.jsp?id=<%=rs.getString("id") %>">
				<%=rs.getString("id") %>
				</a>
			</td>
			<td>
				<a href="members_delete.jsp?id=<%=rs.getString("id") %>">삭제
				</a>
			</td>
		</tr>
		<%} %>
	</table>
</body>
</html>