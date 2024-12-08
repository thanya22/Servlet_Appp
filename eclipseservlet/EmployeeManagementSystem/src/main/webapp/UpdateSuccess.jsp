<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Employee</title>
<style>
body {
    background-color: white ;
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
.column{
  position: absolute;
  color: blue;
}
.updatesuccess{
  margin-top:200px;
  margin-left: 550px;
  align-items: center;
  text-align: center;
  width: 260px;
  font-size: 20px;
  box-shadow: 0 4px 8px 0 #0288d1;
  padding: 16px;
  height:8vh;
  background-color: white;
}
</style>
</head>
<body>
<div class="topnav">
     <a href="FirstPage.jsp">Home</a>
</div>
<div class="updatesuccess">
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String dateofbirth = request.getParameter("birthday");
String department = request.getParameter("department");
String joindate = request.getParameter("joindate");
String address = request.getParameter("address");
String salary = request.getParameter("salary");
try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "1234");

    String query = "UPDATE employeedetails SET name=?,dateofbirth=?,department=?,joindate=?,address=?,salary=?"+"WHERE employeeid=?";
    PreparedStatement statement = connection.prepareStatement(query);
    statement.setString(1, name);
    statement.setString(2, dateofbirth);
    statement.setString(3, department);
    statement.setString(4, joindate);
    statement.setString(5, address);
    statement.setString(6, salary);
    statement.setString(7, id);
    
    int rows = statement.executeUpdate();

    if (rows > 0) {
       out.println("Employee information updated successfully!");
    } else {
       out.println("Error updating employee information.");
    }

    connection.close();
    }catch ( SQLException exception) {
        out.println("Error: " + exception);
    }
    finally{
    	out.println("Successfully Added");
    }
%></div>
</body>
</html>