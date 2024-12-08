<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Employee</title>
<link rel="stylesheet" type="text/css" href="Employee.css">
<style>
TD {
    white-space: nowrap;
    overflow: hidden;
    width: 125px;
    height: 25px;
}
TABLE { 
  white-space: nowrap;
  margin-top:50px;
}
.viewall{
  margin-left: 200px;
  margin-right: 335px;
  box-shadow: 0 4px 8px 0 #0288d1;
}
h1{
 margin-left: 50px;
 margin-top: 30px;
 }
 </style>
</head>
<body>
<div class="view-container">
<h1>Employee Detail</h1>
<%
         try{
            String employeeid = request.getParameter("id");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "1234");

            String query ="SELECT * FROM employeedetails WHERE employeeid = '" + employeeid + "'";
            Statement statement = con.createStatement();
            ResultSet resultset = statement.executeQuery(query);
            %> 
            <TABLE cellpadding="15" border="1" style="background-color: #white;">
            <TR>
             <td>Employee Id</td> 
             <td>Name</td> 
             <td>Date of Birth</td> 
             <td>Department</td>
             <td>Join Date</td>  
             <td>Address</td> 
             <td>Salary</td> 
            </TR><%
            while (resultset.next()) {
            %>
            <TR>
            <TD><%out.println(resultset.getString("employeeid") + "<br>");%></TD>
            <TD><%out.println(resultset.getString("name") + "<br>");%></TD>
            <TD><%out.println(resultset.getString("dateofbirth") + "<br>");%></TD>
            <TD><%out.println(resultset.getString("department") + "<br>");%></TD>
            <TD><%out.println(resultset.getString("joindate") + "<br>");%></TD>
            <TD><%out.println(resultset.getString("address") + "<br>");%></TD>
            <TD><%out.println(resultset.getString("salary") + "<br>");%></TD></TR>
            </TABLE><% }
            con.close();
         } catch (SQLException exception) {
           out.println("Error: " + exception);
         }
%>
</div>
</body>
</html>