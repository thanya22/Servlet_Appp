package com.aspire;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateEmployeeServlet
 */
public class UpdateEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateEmployeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String dateofbirth = request.getParameter("birthday");
		String department = request.getParameter("department");
		String joindate = request.getParameter("joindate");
        String address = request.getParameter("address");
        String salary = request.getParameter("salary");
        
        if((id.equals(""))||(name.equals(""))||(dateofbirth.equals(""))||(department.equals(""))||(joindate.equals(""))||(address.equals(""))||(salary.equals("")))
        {
        	//out.println("<h2>Invalid Input</h2>");
			RequestDispatcher requestDispatcher=request.getRequestDispatcher("Invalid");
			requestDispatcher.include(request, response);
        }
        else {
        	RequestDispatcher requestDispatcher=request.getRequestDispatcher("UpdateSuccess.jsp");
			requestDispatcher.forward(request, response);
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
