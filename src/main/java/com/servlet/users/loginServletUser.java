package com.servlet.users;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.query.Query;
//import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.User;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class loginServletUser
 */
public class loginServletUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServletUser() {
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
//		validate email and password
		String email = request.getParameter("email_add");
		String password = request.getParameter("password");
		
	    Session session = FactoryProvider.getFactory().openSession();
	    Transaction transaction = session.beginTransaction();
	    String queryStr = "from User where email=:x and password=:n";
	    Query query = session.createQuery(queryStr);
	    query.setParameter("x", email);
	    query.setParameter("n", password);
	    
//	    User user = query.getFirs
	    int x = query.getFirstResult();
	    System.out.println("resule of the query is :" + x);
	    List<User> user = query.getResultList();
	    User user2 = user.get(0);
	    if (user2.getEmail().equals(email) || user2.getPassword().equals(password)) {
	    	System.out.println("Valid user");
	    	System.out.println(user.toString());
		}else {
			System.out.println("Invalid user");
		}
	    		
	    
	    
	    
	    
	    
		
		
	}

}
