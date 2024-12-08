<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Users</title>
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
	background-color: #D5F4FD;
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
     <a href="FirstPage.jsp">Home</a>
     <a href="signup.html">Create Account</a>
</div>
<div class="table">
<% 
String id = (String)session.getAttribute("id");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "1234");

String sql = "SELECT * FROM useraccount";
Statement statement = con.createStatement();
ResultSet resultset = statement.executeQuery(sql);
%>
<TABLE cellpadding="15" border="1" style="background-color: white; box-shadow: 0 4px 8px 0 #0288d1;">
<TR>
 <td>Employee Id</td> 
 <td>Username</td> 
 <td>Password</td> 
</TR><%
while (resultset.next()) {
	 %>
     <TR>
     <TD><%out.println(resultset.getString("id") + "<br>");%></TD>
     <TD><%out.println(resultset.getString("username") + "<br>");%></TD>
     <TD><%out.println(resultset.getString("password") + "<br>");%></TD>
     <%}
con.close();
%></TABLE>
</div>
</body>
</html>