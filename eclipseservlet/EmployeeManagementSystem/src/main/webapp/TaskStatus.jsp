<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Task</title>
<style>
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
body {
	margin: 0;
}
.table{
  margin-top: 100px;
  margin-left: 100px;
}
</style>
</head>
<body>
<div class="topnav">
     <a href="Login.jsp">Log Out</a>
     <a href="LeaveRequest.jsp">Request Leave</a>
     <a href="Profile.jsp">Profile</a>
     <a href="UserHomePage.jsp">Home</a>
</div>
<div class="table">
<% 
String id = (String)session.getAttribute("id");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "1234");

String sql = "SELECT * FROM task WHERE employeeid = '" + id + "'";
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(sql);
%>
<TABLE cellpadding="15" border="1" style="background-color: white; box-shadow: 0 4px 8px 0 #0288d1;">
<TR>
 <td>Employee Id</td> 
 <td>Task</td> 
 <td>Due Date</td> 
 <td>Status</td>
 <td></td>
</TR><%
while (rs.next()) {
	 %>
     <TR>
     <%
     String employeeid = rs.getString("employeeid");
     session.setAttribute(id,id);
     String task = rs.getString("task");%>
     <TD><%out.println(id+ "<br>");%></TD>
     <TD><%out.println(task + "<br>");%></TD>
     <TD><%out.println(rs.getString("duedate") + "<br>");%></TD>
     <TD><%out.println(rs.getString("Status") + "<br>");%></TD>
     <TD><a href="UserTask.jsp">Edit</a></TD>
     <%}
con.close();
%></TABLE>
</div>
</body>
</html>