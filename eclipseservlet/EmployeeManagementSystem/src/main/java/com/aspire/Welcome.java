package com.aspire;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Welcome
 */
public class Welcome extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Welcome() {
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
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "1234");

			String query = "Select * FROM accountdetails WHERE username = ?";
			PreparedStatement statement = con.prepareStatement(query);
			statement.setString(1, username);
			ResultSet resultset = statement.executeQuery();

			if (resultset.next()) {
				String dbPassword = resultset.getString("password");
				if (dbPassword.equals(password)) {
					HttpSession session=request.getSession();  
			        session.setAttribute("username",username);  
					RequestDispatcher requestdispatcher = request.getRequestDispatcher("FirstPage.jsp");
					requestdispatcher.forward(request, response);

				} else {
					String msg = "Password is incorrect";
					request.setAttribute("msg", msg);
					RequestDispatcher requestdispatcher = request.getRequestDispatcher("index.html");
					requestdispatcher.forward(request, response);

				}

			} else {
				String msg = "Username is invalid";
				request.setAttribute("msg", msg);
				RequestDispatcher requestdispatcher = request.getRequestDispatcher("index.html");
				requestdispatcher.forward(request, response);
			}

		} catch (Exception exception) {
			out.println("Error: " + exception);
			response.sendRedirect("index.html");
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
