package com.helper;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.Admin;

/**
 * Servlet implementation class ValidateAdminServlet
 */
public class ValidateAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValidateAdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		steps:
//		1. validate admin ID 
//		2. get Admin object 
//		3. validate object 
		
		Admin currentAdmin = (Admin) request.getAttribute("admin_object");
		
		HttpSession sessionAdmin = request.getSession();
		Admin admin2 = (Admin) sessionAdmin.getAttribute("admin_id");
		
		
		if (currentAdmin== null || admin2 == null) {
			request.getRequestDispatcher("login_page.jsp").forward(request, response);
		}else if(currentAdmin.getAdminID() == admin2.getAdminID()) {
//			request.getRequestDispatcher("admin");
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
