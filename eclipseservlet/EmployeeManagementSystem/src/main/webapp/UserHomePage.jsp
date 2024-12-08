<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
body {
	background-color: #D5F4FD;
	margin: 0;
	background-image: url('Homepage.jpg'); 
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
</style>
</head>
<body>
<div class="topnav">
     <a href="Login.jsp">Log Out</a>
     <a href="LeaveRequest.jsp">Request Leave</a>
     <a href="TaskStatus.jsp">Task</a>
     <a href="Profile.jsp">Profile</a>
</div>
<h2><br><br><br><% 
String username = (String)session.getAttribute("username");
out.println("Welcome "+ username);
String id = (String)session.getAttribute("id");
%></h2>
<h1>Employee<br>Management System</h1>
</body>
</html>