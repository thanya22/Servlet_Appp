<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Management System</title>
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

h1{
  font-size: 60px;
  margin-top:100px;
  margin-left:100px;
}

h2{
  font-size: 40px;
  margin-top: 0px;
  margin-left: 100px;
}
body {
	background-color: #D5F4FD;
	margin: 0;
}

</style>
</head>
<body>
<div class="topnav">
     <a href="Login.jsp">Log Out</a>
     <a href="AssignTask.jsp">Assign Task</a>
     <a href="LeaveStatus.jsp">Manage Leave</a>
     <a href="ViewAllEmployee.jsp">Employee</a>
     <a href="ViewEmployee.jsp">ViewEmployee</a>
     <a href="AddEmployee.jsp">Add Employee</a>
</div>
     <img src="ems.jpg" style="float: right; margin-right: 15px; margin-top:90px;">
<h2><br><br><br><% 
String username = (String)session.getAttribute("username");
out.println("Welcome "+ username);
%></h2>
<h1>Employee<br>Management <br>System</h1>
</body>
</html>