<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Employee</title>
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
.deletesuccess{
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
<div class=deletesuccess>
<% 
       String employeeid = request.getParameter("id");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "1234");

            String query = "DELETE FROM employeedetails WHERE employeeid = ?";
            PreparedStatement st = con.prepareStatement(query);
            st.setString(1, employeeid);
            int rows = st.executeUpdate();

            if (rows > 0) {
                out.println("Employee deleted successfully!");
            } else {
                out.println("Error: Unable to delete employee.");
            }

            // Close the database connection
            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            out.println("Error: " + e);
        }
%>
</div>
</body>
</html>