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
String id = request.getParameter("id");
String task = request.getParameter("task");
String duedate = request.getParameter("duedate");
try {
	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "1234");
    
    String query = "INSERT INTO task(employeeid,task,duedate) VALUES (?,?,?)";
    PreparedStatement st = con.prepareStatement(query);
    st.setString(1, id);
    st.setString(2, task);
    st.setString(3, duedate);
    int rows = st.executeUpdate();
    if (rows > 0) {
    	RequestDispatcher requestDispatcher=request.getRequestDispatcher("AssignTask.jsp");
		requestDispatcher.include(request, response);
    }else {
    	out.println("Task is not Assigned Try Again!!");
    	RequestDispatcher requestDispatcher=request.getRequestDispatcher("Assigntask.html");
		requestDispatcher.include(request, response);
    }
}
catch(Exception e){
	out.println("Error: " + e);
}
%>
</body>
</html>