/* 
Application Title : Employee Management System
Author Name : Thanya V
Created on : 05/02/2023
Last Modified on: 06/03/2023
Reviewed by : Anushya
Reviewed Date : 06/03/2023
*/
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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class TaskServlet
 */
public class TaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TaskServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String status = request.getParameter("status");
		HttpSession session=request.getSession();  
		String id = (String)session.getAttribute("id");
		try {
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "1234");

		    String query = "UPDATE task SET status=?"+"WHERE employeeid=?";
		    PreparedStatement statement = connection.prepareStatement(query);
		    statement.setString(1, status);
		    statement.setString(2, id);
		    
		    int rows = statement.executeUpdate();

		    if (rows > 0) {
		    	RequestDispatcher rd = request.getRequestDispatcher("TaskStatus.jsp");
				rd.forward(request, response);
		    } else {
		       out.println("Error updating employee information.");
		    }

		    connection.close();
		    }catch (Exception  exception) {
		        out.println("Error: " + exception);
		    }
		    finally{
		    	out.println("Successfully Added");
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
