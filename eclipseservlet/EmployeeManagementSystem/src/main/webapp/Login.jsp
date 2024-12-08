<!-- 
Application Title : Employee Management System
Author Name : Thanya V
Created on : 05/02/2023
Last Modified on: 06/03/2023
Reviewed by : Anushya
Reviewed Date : 06/03/2023
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Management System</title>
<link rel="stylesheet" type="text/css" href="Login.css">
<style>
*{
	margin:0;
	padding: 0;
	box-sizing: border-box;
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
body {
	margin: 0;
}
h2 {
  font-size: 70px;
  margin-bottom: 310px;
  margin-top: 0px;
  margin-left: 300px;
}
.header{
   background-color: white;
   background-image: url('Home.jpg');
   background-repeat: no-repeat;
   background-size: 100%;
   
}
body{
  background-color: white;
}

.header h1 {
  font-size: 24px;
  margin-bottom: 100px;
  margin-top: 0px;
  margin-left: 300px;
}

.line{
	width:150px;
	height:4px;
	background: #01579b;
	margin:10px auto;
	border-radius:5px;
	margin-bottom: 40px;
}
.title{
    margin-top:40px;
	text-align:center;
	font-size: 3vmin;
	color: black;
}
.column {
  float: left;
  margin-left: 30px;
  width: 22%;
  height:20vh;
  padding: 0 10px;
}
.row:after {
  content: "";
  display: table;
  clear: both;
}
.card {
  box-shadow: 0 4px 8px 0 #0288d1;
  padding: 16px;
  height:30vh;
  text-align: center;
  background-color: #f1f1f1;
}
.flip-card {
  margin-top:40px;
  margin-left: 40px;
  background-color: transparent;
  width: 200px;
  height: 200px;
}

.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  
  transition: transform 0.6s;
  transform-style: preserve-3d;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}

.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.flip-card-front {
  background-color: #e1f5fe;
  color: black;
}

.flip-card-back {
  background-color: #d4fdff;
  color: black;
  transform: rotateY(180deg);
}
.flexcontainer{
	display:flex;
	margin-left: 20px;
}
.heading{
  margin-top:150px;
  text-align:center;
  font-size: 3vmin;
  color:black;
}
.flip-card-front h1{
  text-align:center; 
}
.Aboutus{
  margin-top: 100px;
  text-align:center;
  color:black;
}
.contact{
  margin-top:100px;
  text-align:center;
  font-size: 3vmin;
  color:black;
}
.myform{
 margin-left: 300px;
 margin-right:100px;
}
li {list-style-type: none;
font-size: 16pt;
}
.error{
color: #FF0000;
font-size: 10pt;
}
input[type="text"]{
  width: 80%;
  height: 35px;
  padding: 0 10px;
  margin-bottom: 20px;
  border: 1px solid #ccc;
  border-radius: 3px;
  box-sizing: border-box;
}

input[type="submit"] {
  width: 80%;
  height: 35px;
  background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 3px;
  cursor: pointer;
}
input[name="description"]{
  width: 80%;
  height: 100px;
}
</style>
</head>
<body>
<div class="topnav">
     <a href="contactus.jsp">Contact Us</a>
     <a href="Userlogin.html">Login</a>
</div>
<section>
<div class="header">
<br>
<h2><br><br>Employee<br>Management System</h2>
<br>
</div>
</section>
<section>
<div class="title">
<h1>Key Features</h1>
<div class="line"></div>
</div>
<div class="row">
    <div class="column">
    <div class="card">
      <h3>Access data anytime, anywhere</h3><br>
      <p>With all employee information stored in the cloud, you no longer have to sift through hoards of spreadsheets to manually search and enter data. Just enter data once, and use it across all web platforms.</p>
      
    </div>
  </div>

  <div class="column">
    <div class="card">
      <h3>Easy to Customise</h3><br>
      <p>Easy to customize system which allows you flexibility with changing needs of your organization.</p>
      
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <h3>Secure</h3><br>
      <p>Guarantee secure database management and employee privacy and Can Access your database quickly and easily</p>
      
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <h3>Saves Productive Time</h3><br>
      <p><p>you can get all the data of your employees at your fingertips.  Giving you access wherever you are at. You don't have to hold on to the decisions for lack of information.</p>
      
    </div>
  </div>
</div>
</section>
 <section>
     <div class="heading">
                <h1>With this app, you can</h1>
                <div class="line"></div> 
          </div>
     <div class="flexcontainer">
     <div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <h1><br><br><br>Add Employee</h1>
    </div>
    <div class="flip-card-back">
       
      <p><br><br><br><br>Can Add many number of Employee details to the Database</p> 
      <button type="button" onclick="href='AddEmployee.jsp';">Add Employee</button>
    </div>
  </div>
</div>

<div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <h1><br><br><br>View Employee</h1>
    </div>
    <div class="flip-card-back">
      <p><br><br><br><br>Can View particular Employee details from the Database based on Employee ID </p> 
      
    </div>
  </div>
</div>
<div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <h1><br><br><br>Update Employee</h1>
    </div>
    <div class="flip-card-back"> 
      <p><br><br><br><br>Can Update Employee Details on the Database based on Employee ID</p> 
      
    </div>
  </div>
</div>
<div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <h1><br><br><br>Delete Employee</h1>
    </div>
    <div class="flip-card-back">
      <p><br><br><br><br>Can Delete Employee Details from the Database based on Employee ID</p> 
      
    </div>
  </div>
</div>

<div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <h1><br><br><br>ViewAll Employee</h1>
    </div>
    <div class="flip-card-back">
      <p><br><br><br><br>Can View Each and Every Employee details that are stored in the Database</p> 
  </div>
</div>
</div>
</div>
</section>

<section>
<div class="Aboutus">
<h1>About Us</h1>
<div class="line"></div>
<h3>Manage your global workforce with a flexible,<br> cloud-based employee database management system.<br> Build a secure, comprehensive, and scalable database<br> to get a better understanding of your workforce.<br></h3>
</div>
</section>
</body>
</html>