<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ViewAll Employee</title>
<style>
TD {
    white-space: nowrap;
    overflow: hidden;
    width: 145px;
    height: 25px;
}
TABLE { 
  white-space: nowrap;
  margin-top:50px;
  width: 135px;
}
.viewall{
  margin-left: 200px;
  margin-right: 290px;
  box-shadow: 0 4px 8px 0 #0288d1;
}
h1{
 margin-left: 50px;
 margin-top: 30px;
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
     <a href="FirstPage.jsp">Back</a>
     <a href="ViewEmployee.jsp">ViewEmployee</a>
     <a href="AddEmployee.jsp">Add Employee</a>
</div>
<h1>Employee Details</h1>
<div class="viewall">
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "1234");
String sql = "SELECT * FROM employeedetails";
Statement statement = con.createStatement();
ResultSet resultset = statement.executeQuery(sql);
%>
<TABLE cellpadding="15" border="1" style="background-color: white;">
<TR>
 <td>Employee Id</td> 
 <td>Name</td> 
 <td>Date of Birth</td> 
 <td>Department</td> 
 <td>Join Date</td>
 <td>Address</td> 
 <td>Salary</td> 
 <td></td>
 <td></td>
</TR><%
while (resultset.next()) {
	 %>
     <TR>
     <%
     String id = resultset.getString("employeeid");
     session.setAttribute(id,id);
     String name = resultset.getString("name");%>
     <TD><%out.println(id+ "<br>");%></TD>
     <TD><%out.println(name + "<br>");%></TD>
     <TD><%out.println(resultset.getString("dateofbirth") + "<br>");%></TD>
     <TD><%out.println(resultset.getString("department") + "<br>");%></TD>
     <TD><%out.println(resultset.getString("joindate") + "<br>");%></TD>
     <TD><%out.println(resultset.getString("address") + "<br>");%></TD>
     <TD><%out.println(resultset.getString("salary") + "<br>");%></TD>
     <!-- <TD><a href="UpdateEmployee.jsp">Edit</a></TD>-->
     <TD><a href="UpdateEmployee.jsp?employeeid=<%=resultset.getString("employeeid")%>&name=<%=resultset.getString("name")%>&dateofbirth=<%=resultset.getString("dateofbirth")%>&department=<%=resultset.getString("department")%>&joindate=<%=resultset.getString("joindate")%>&address=<%=resultset.getString("address")%>&salary=<%=resultset.getString("salary")%>">Edit</a></TD>
     <TD><a href="DeleteEmployee.jsp?employeeid=<%=resultset.getString("employeeid")%>">Delete</a></TD></TR>
    <%}
con.close();
%></TABLE>

</div>
</body>
</html>