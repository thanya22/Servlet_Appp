<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Task</title>
</head>
<body>
<% 
String id = (String)session.getAttribute("id");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "1234");

String sql = "SELECT * FROM task WHERE employeeid = '" + id + "'";
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(sql);
%>
<TABLE cellpadding="15" border="1" style="background-color: white;">
<TR>
 <td>Employee Id</td> 
 <td>Task</td> 
 <td>Due Date</td> 
 <td>Status</td>
</TR><%
while (rs.next()) {
	 %>
     <TR>
     <%
     String employeeid = rs.getString("employeeid");
     session.setAttribute(id,id);
     String task = rs.getString("task");%>
     <TD><%out.println(id+ "<br>");%></TD>
     <TD><%out.println(task + "<br>");%></TD>
     <TD><%out.println(rs.getString("duedate") + "<br>");%></TD>
     <TD><%out.println(rs.getString("Status") + "<br>");%></TD>
     <%}
con.close();
%></TABLE>
</body>
</html>