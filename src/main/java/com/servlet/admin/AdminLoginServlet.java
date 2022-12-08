package com.servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.Admin;
import com.entity.ResponseMeg;
import com.google.gson.Gson;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class AdminLoginServlet
 */
@MultipartConfig
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		1. check the user if request is pending
//		2. if pending return pending request 
//		3.  if status is approved the allow user to login --> send to admin home page 
		
		
		
		
		
		
		
		int admin_id =Integer.parseInt(request.getParameter("admin_id"));
		String password = request.getParameter("admin_pass");
		
		PrintWriter output = response.getWriter();
		Gson gson = new Gson();
		ResponseMeg meg = new ResponseMeg();
		
		// open session factory 
		// data-base operations
		
		Session session_view = FactoryProvider.getFactory().openSession();
		Transaction transaction_view = session_view.beginTransaction();
		
		Admin adminCurr = session_view.get(Admin.class, admin_id);
		String adminCurrentStatus  = adminCurr.getStatus();
		
		
		
		if (adminCurrentStatus.equalsIgnoreCase("pending")) {
			
			meg.setMessage("pending");
			output.print(gson.toJson(meg));
			System.out.println("status pending");
			
		}else if (adminCurrentStatus.equalsIgnoreCase("cancle")) {
			
			meg.setMessage("cancle");
			output.print(gson.toJson(meg));
			System.out.println("status cancle");
			
		}else if (adminCurrentStatus.equalsIgnoreCase("approved")) {
			if ((adminCurr.getAdminID()==admin_id) && adminCurr.getPassword().equals(password)) {
				
				HttpSession sessionServlet = request.getSession();
				sessionServlet.setAttribute("admin_id", adminCurr);
				
				meg.setMessage("approved");
				output.print(gson.toJson(meg));
				System.out.println("status approved");
				
//				todo: logic: send the link of admin home page to js file & then navigate to admin home page
//				RequestDispatcher dispatcher = request.getRequestDispatcher("admin_homePage.jsp");
//				dispatcher.forward(request, response);
			}else {
				
				meg.setMessage("Invalid");
				output.print(gson.toJson(meg));;
				System.out.println("status invalid ");
//				response.sendRedirect("admin_homePage.jsp");
			}
		}
		transaction_view.commit();
		session_view.close();
			
		}
	}


