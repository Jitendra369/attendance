package com.servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.Admin;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class RegisterPageAdmin
 */
@MultipartConfig
public class RegisterPageAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterPageAdmin() {
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
		
//		todo: Add filter in paramaters 
		System.out.println("RegisterPageAdmin.java");
		System.out.println(request);
		PrintWriter out = response.getWriter();
		
//		String firstName;
//		String lastName;
//		Long id;
//		String email;
//		String password;
//		
	
			String firstName = request.getParameter("first_name");
			String lastName = request.getParameter("last_name");
			System.out.println(firstName + " "+ lastName);
//			int age = Integer.parseInt(request.getParameter("admin_age"));
			int age  = calculateAge(request.getParameter("age"));
			Long mobile = Long.parseLong(request.getParameter("admin_mobile"));
			String gender = request.getParameter("gender");
			String password =request.getParameter("password");
			
			
	
		
	
		
		Admin admin = new Admin();
		admin.setFirstName(firstName);
		admin.setLastName(lastName);
		admin.setAge(age);
		admin.setMobile_no(mobile);
		admin.setGender(gender);
		admin.setPassword(password);
		admin.setStatus("pending");

		
		
		Session session = FactoryProvider.getFactory().openSession();
		Transaction transaction = session.beginTransaction();
		
		try {
			session.save(admin);
		} catch (Exception e) {
			System.out.println("data has not been saved");
		}
	
		
		out.print("data have been saved in DB");
		
		transaction.commit();
		session.close();
		
		
		
		
	}

	private int calculateAge(String parameter) {
		String[] age = parameter.split("-");
		int month = Integer.parseInt(age[0]);
		int day = Integer.parseInt(age[1]);
		int year = Integer.parseInt(age[2]);
//		int currYear = new Date().get
		Calendar calendar = Calendar.getInstance();
		int crrYr = calendar.get(Calendar.YEAR);
		
		int ageCurr = year - crrYr;
		return ageCurr;
		
	}

}
