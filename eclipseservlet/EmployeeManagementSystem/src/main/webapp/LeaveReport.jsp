<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
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
	background-color: #D5F4FD;
	margin: 0;
}
.table{
  margin-top: 100px;
  margin-left: 100px;
}
</style>
</head>
<body>
<div class="topnav">
      <a href="Login.jsp">Log Out</a>
     <a href="AssignTask.jsp">Assign Task</a>
     <a href="ViewAllEmployee.jsp">Employee</a>
     <a href="ViewEmployee.jsp">ViewEmployee</a>
     <a href="AddEmployee.jsp">Add Employee</a>
     <a href="FirstPage.jsp">Home</a>
</div>
<div class="table">
<% 
String id = (String)session.getAttribute("id");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "1234");

String sql = "SELECT * FROM leaverequest WHERE employeeid = '" + id + "'";
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(sql);
%>
<TABLE cellpadding="15" border="1" style="background-color: white; box-shadow: 0 4px 8px 0 #0288d1;">
<TR>
 <td>Employee Id</td> 
 <td>Reason</td> 
 <td>Date</td> 
 <td>No Of Days</td> 
 <td>Status</td>
</TR><%
while (rs.next()) {
	 %>
     <TR>
     <%
     String employeeid = rs.getString("employeeid");%>
     <TD><%out.println(id+ "<br>");%></TD>
     <TD><%out.println(rs.getString("reason") + "<br>");%></TD>
     <TD><%out.println(rs.getString("date") + "<br>");%></TD>
     <TD><%out.println(rs.getString("noofdays") + "<br>");%></TD>
     <TD>
                    <form method="post" action="LeaveStatusServlet">
                        <select name="status">
                            <option value="">--Select Status--</option>
                            <option value="Approved" >Approved</option>
                            <option value="Rejected" >Rejected</option>
                        </select>
                        <input type="submit" type="hidden">
                    </form>
                </TD>
     <%}
con.close();
%></TABLE>
</div>
</body>
</html>