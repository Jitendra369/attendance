package com.servlet.users;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.User;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class SaveRegistDataServlet
 */
@MultipartConfig
public class SaveRegistDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveRegistDataServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Long id = Long.parseLong(request.getParameter("emp_id"));
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* refrence:code -> delete */
//		Session ses = FactoryProvider.getFactory().openSession();
//		Transaction transaction = ses.beginTransaction();
//		Note note = ses.get(Note.class, note_id);
//		ses.delete(note);
//		transaction.commit();
//		ses.close();
		
		
		/* refrence:code -> save */
//		Session session =  FactoryProvider.getFactory().openSession();
//		Transaction transaction = session.beginTransaction();
//		session.save(newNote);
//		transaction.commit();
//		session.close();
		
		//			get all data from registration page
		System.out.println("SaveRegisterDataServlet.java");
		System.out.println(request);
		
		String firstName = request.getParameter("first_name");
		String lastName = request.getParameter("last_name");
		System.out.println(firstName+" "+ lastName);
		Long id = Long.parseLong(request.getParameter("emp_id"));
		String email = request.getParameter("email");
		String password =request.getParameter("password");
		User user = new User();
		
//		creating user object 
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setEmail(email);
		user.setPassword(password);
		user.setEmpoyeID(id);
		System.out.println("object added");
		
		
		
		Session session = FactoryProvider.getFactory().openSession();
		Transaction transaction = session.beginTransaction();
		session.save(user);
		transaction.commit();
		session.close();
		
		System.out.println("data save to database");
		PrintWriter out = response.getWriter();
		out.print("data have been saved in DB");
		
	}

}
