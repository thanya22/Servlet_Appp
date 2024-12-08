<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
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
.details{
   margin-left: 100px;
   margin-top: 100px;
   font-size: 15px;
}
</style>
</head>
<body>
<div class="topnav">
     <a href="Login.jsp">Log Out</a>
     <a href="LeaveRequest.jsp">Request Leave</a>
     <a href="TaskStatus.jsp">Task</a>
     <a href="UserHomePage.jsp">Home</a>
</div>
<div class="details" >
<%
String id = (String)session.getAttribute("id");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "1234");

    String query ="SELECT * FROM employeedetails WHERE employeeid = '" + id + "'";
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery(query);
    while (rs.next()) {
%>
<div>
<form action = "UpdateEmployeeServlet" method="post">

<pre>
Id            : <%= rs.getString("employeeid") %><br/><br/>
Name          : <%= rs.getString("name") %><br/><br/>
Date of Birth : <%=rs.getString("dateofbirth")%><br/><br>
Department    : <%= rs.getString("department") %><br/><br/>
Join Date     : <%=rs.getString("joindate") %><br/><br>
Address       : <%= rs.getString("address") %><br/><br/>
Salary        : <%= rs.getString("salary") %><br/><br/></pre>
</form>
<%}
    con.close();
%>
</div>
</div>
</body>
</html>