<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Management System</title>
<style>
.column {
  margin-right: 250px;
  float: right;
  width: 500px;
  padding: 5px;
}

body {
    background-color: white ;
}
h1 {
  font-size: 24px;
  margin-bottom: 30px;
  }

.update-container {
  width: 530px;
  margin:0 auto;
  text-align: left;
  margin-left:350px;
  margin-top:20px;
  font-size: 15px;
  box-shadow: 0 4px 8px 0 #0288d1;
  padding: 16px;
  height:90vh;
  background-color: white;
}
input[type="text"] {
  width: 70%;
  height: 35px;
  padding: 0 5px;
  margin-bottom: 5px;
  border: 1px solid #ccc;
  border-radius: 3px;
  box-sizing: border-box;
}
input[type="date"]{
  width: 30%;
  height: 35px;
  padding: 0 5px;
  margin-bottom: 5px;
  border: 1px solid #ccc;
  border-radius: 3px;
  box-sizing: border-box;
}
select[id="department"]{
  padding: 0.5em;
  margin-bottom: 5px;
  font-size: 1em;
  width: 40%;
  border-radius: 3px;
  box-sizing: border-box;
}
input[type="submit"] {
  width: 70%;
  height: 35px;
  background-color: #4CAF50;
  margin-left:125px;
  color: white;
  border: none;
  border-radius: 3px;
  cursor: pointer;
}
*{
	margin:0;
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
  margin-right:20px;
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
</style>
</head>
<body>
<div class="topnav">
     <a href="ViewAllEmployee.jsp">Back</a>
     <a href="FirstPage.jsp">Home</a>
</div>
<div class="update-container">
<h1>Update Employee</h1>
<form action = "UpdateEmployeeServlet" method="post">

<pre>
Enter Id         : <input type="text" name="id" value="<%= request.getParameter("employeeid") %>"><br/><br/>
Enter Name       : <input type="text" name="name" value="<%= request.getParameter("name") %>"><br/><br/>
<label for="birthday">Date of Birth    :</label> <input type="date" id="birthday" name="birthday" value="<%=request.getParameter("dateofbirth")%>"><br/>
<label for="department">Choose Department: </label><select name="department" id="department">
     <option value=""><%= request.getParameter("department") %></option>
     <option value="developer">Developer</option>
     <option value="sales">Sales</option>
     <option value="marketing">Marketing</option>
     <option value="testing">Testing</option>
     <option value="dataAnalyst">Data Analyst</option>
  </select><br>
<label for="birthday">Join Date        :</label> <input type="date" id="birthday" name="joindate" value="<%=request.getParameter("joindate") %>"><br/>
Enter Address    : <input type="text" name="address" value="<%= request.getParameter("address") %>"><br/><br/>
Enter Salary     : <input type="text" name="salary" value="<%= request.getParameter("salary") %>"><br/><br/></pre>
      <input type="submit" name="submit"/>
</form></div>
</body>
</html>