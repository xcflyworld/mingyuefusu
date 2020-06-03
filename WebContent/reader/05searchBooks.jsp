<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>

<!-- Bootstrap -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<style>
	th{
		vertical-align: middle !important;
		text-align: center;
	}
</style>
</head>
<body>
<jsp:useBean id="check" scope="session" class="javabean.JDBCBean"></jsp:useBean>
<div class="table-responsive">
  <table class="table table-hover">
			<tr align="center">
				<th>图书编号</th>
				<th>图书名称</th>
				<th>图书馆编号</th>
				<th>图书分类编号</th>
				<th>位置</th>
				<th>状态</th>
				<th>描述</th>
			</tr>
<%
		request.setCharacterEncoding("utf-8");
		String sql="select*from books;";
		ResultSet rs = check.executeQuery(sql);
		while (rs.next()) {
%>
	
			<tr align="center">
				<td><%=rs.getString("ID")%></td>
				<td><%=rs.getString("NAME")%></td>
				<td><%=rs.getString("LIBRARY_ID")%></td>
				<td><%=rs.getString("SORT_ID")%></td>
				<td><%=rs.getString("POSITION")%></td>
				<td><%=rs.getString("STATE")%></td>
				<td><%=rs.getString("DESCRIPTION")%></td>
			</tr>
	
	
<%
		}
 %>
 </table>
 </div>

</body>
</html>