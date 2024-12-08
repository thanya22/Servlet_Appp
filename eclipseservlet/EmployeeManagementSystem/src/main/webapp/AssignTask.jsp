<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Assign Task</title>
<style>
body {
	margin: 0;
}
.topnav {
  overflow: hidden;
  background-color: #D3D3D3;
}

.topnav a {
  float: right;
  display: block;
  color: black;
  text-align: center;
  margin-right:50px;
  padding: 15px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: blue;
}

.topnav a.active {
  background-color: #2196F3;
  color: blue;
}
.table{
  margin-top: 100px;
  margin-left: 100px;
}
</style>
</head>
<body>
<div class="topnav">
     <a href="FirstPage.jsp">Home</a>
    <a href="Assigntask.html">Assign New task</a>
</div>
<div class="table">
<h1>Assigned Task</h1>
<% 
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "1234");

String sql = "SELECT * FROM task";
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(sql);
%>
<TABLE cellpadding="15" border="1" style="background-color: white;">
<TR>
 <td>Employee Id</td> 
 <td>Task</td> 
 <td>Due Date</td> 
 <td>Status</td>
</TR><%
while (rs.next()) {
	 %>
     <TR>
     <%
     String id = rs.getString("employeeid");
     String task = rs.getString("task");%>
     <TD><%out.println(id+ "<br>");%></TD>
     <TD><%out.println(task + "<br>");%></TD>
     <TD><%out.println(rs.getString("duedate") + "<br>");%></TD>
     <TD></TD></TR>
    <%}
con.close();
%></TABLE>
</div>
</body>
</html>