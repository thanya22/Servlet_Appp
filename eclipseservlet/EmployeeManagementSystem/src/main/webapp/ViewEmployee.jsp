<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Employee</title>
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

.column {
  margin-right: 300px;
  float: right;
  width: 500px;
  padding: 5px;
}

body {
    background-color: #CAE9F5 ;
    margin: 0;
}
h1 {
  font-size: 30px;
  margin-bottom: 30px;
  margin-top: 100px;
  }

.view-container {
  width: 400px;
  margin:0 auto;
  text-align: left;
  margin-left:90px;
  margin-top:100px;
  font-size: 20px;
  
}
input[type="text"] {
  width: 30%;
  height: 35px;
  padding: 0 5px;
  margin-bottom: 10px;
  border: 1px solid #ccc;
  border-radius: 3px;
  box-sizing: border-box;
}
input[type="submit"] {
  width: 30%;
  height: 35px;
  background-color: #4CAF50;
  margin-left:75px;
  color: white;
  border: none;
  border-radius: 3px;
  cursor: pointer;
}
</style>
</head>
<body>
<div class="topnav">
     <a href="FirstPage.jsp">Home</a>
</div>
<section>
<div class="column">
    <img src="view.jpg" style="height:450px">
</div>
<div class="view-container">
<h1>View Employee</h1>
<form action = "ViewEmployeeServlet" method="post">
Enter Id: <input type="text" name="id"/><br>
<input type="submit" name="submit"/>
</form>
</div>
</section>
</body>
</html>