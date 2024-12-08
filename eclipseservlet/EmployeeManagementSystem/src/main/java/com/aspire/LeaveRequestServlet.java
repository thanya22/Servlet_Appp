package com.aspire;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LeaveRequestServlet
 */
public class LeaveRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LeaveRequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
	    String reason = request.getParameter("reason");
	    String date = request.getParameter("date");
	    String noofdays = request.getParameter("numberofdays");
	   
	    try {
	    	Class.forName("com.mysql.jdbc.Driver");
	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "1234");
	        
	        String query = "INSERT INTO leaverequest(employeeid,reason,date,noofdays) VALUES (?,?,?,?)";
	        PreparedStatement statement = con.prepareStatement(query);
	        statement.setString(1, id);
	        statement.setString(2, reason);
	        statement.setString(3, date);
	        statement.setString(4, noofdays);
	        
	        int rows = statement.executeUpdate();
	        PrintWriter out = response.getWriter();
	        if (rows > 0) {
	        	RequestDispatcher requestDispatcher=request.getRequestDispatcher("Leave.jsp");
				requestDispatcher.include(request, response);
	        }else {
	        	out.println("Task is not Assigned Try Again!!");
	        	RequestDispatcher requestDispatcher=request.getRequestDispatcher("LeaveRequest.html");
				requestDispatcher.include(request, response);
	        }
	    }
	    catch(Exception e){
	    	PrintWriter out = response.getWriter();
	    	out.println("Error: " + e);
	    }
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
