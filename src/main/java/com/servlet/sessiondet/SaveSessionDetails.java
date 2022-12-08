package com.servlet.sessiondet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.helper.FactoryProvider;

/**
 * Servlet implementation class SaveSessionDetails
 */

@MultipartConfig
public class SaveSessionDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SaveSessionDetails() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int sessionid = Integer.parseInt(request.getParameter("session_id"));
		String sessionName = request.getParameter("session_name");
		String contactNumber = request.getParameter("contact_number");
		String email = request.getParameter("email_address");
		String skillSet = request.getParameter("add_skill_session");
		
		com.entity.Session newSession = new com.entity.Session();
		newSession.setSessionID(sessionid);
		newSession.setSessionDesc(sessionName);
		newSession.setSessionEmail(email);
		newSession.setSkillSet(skillSet);
		PrintWriter writer = response.getWriter();
		Session session = FactoryProvider.getFactory().openSession();
		Transaction transaction = session.beginTransaction();
		
		
		try {
			session.save(newSession);
			writer.print("saved");
			
		} catch (Exception e) {
			// TODO: handle exception
			writer.print("not-saved");
		}
		
		transaction.commit();
		session.close();
		
		
	}

}
