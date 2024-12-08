<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Leave</title>
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
    background-color: white;
    margin: 0;
}
.assign-container {
  width: 300px;
  margin:0 auto;
  text-align: left;
  margin-left:500px;
  margin-top:100px;
  font-size: 15px;
  box-shadow: 0 4px 8px 0 #0288d1;
  padding: 16px;
  height:60vh;
  background-color: white;
}

input[type="text"], textarea[name="reason"], input[type="date"] {
  width: 100%;
  height: 35px;
  padding: 0 10px;
  margin-bottom: 20px;
  border: 1px solid #ccc;
  border-radius: 3px;
  box-sizing: border-box;
}

input[type="submit"] {
  width: 100%;
  height: 35px;
  background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 3px;
  cursor: pointer;
}
</style>
</head>
<body>
<div class="topnav">
     <a href="Login.jsp">Log Out</a>
     <a href="UserTask.jsp">Task</a>
     <a href="Profile.jsp">Profile</a>
     <a href="Leave.jsp">Leave Report</a>
     <a href="UserHomePage.jsp">Home</a>
</div>
<div class="assign-container">
<form action = "LeaveRequestServlet" method="post">
<br>
EmployeeId   : <input type="text" name="id" required><br/><br/>
Reason       : <br>
<textarea id="reason" id="reason" name="reason" required></textarea><br>
<label for="date">Date  :<br></label> <input type="date" id="date" name="date"><br/>
Number of days: <input type="text" name="numberofdays" required><br/><br/>
<input type="submit" name="Leave Request"/>
</form>
</div>
</body>
</html>