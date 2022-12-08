package com.helper;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogOutSession
 */
public class LogOutSession extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogOutSession() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session!= null) {
			session.invalidate();
			request.getRequestDispatcher("login_page.jsp").forward(request, response);
		}else {
			System.out.println("session is null");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
//		todo
//		1.invalidate session
//		2.redirect to admin login Page
		
		HttpSession session = request.getSession();
		if (session!= null) {
			session.invalidate();
//			request.getRequestDispatcher("login_page.jsp").forward(request, response);
			
			response.sendRedirect("login_page.jsp");
		}else {
			System.out.println("session is null");
		}
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
