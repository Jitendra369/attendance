package com.servlet.trainer;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.Trainer;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class SaveTrainerInformation
 */

@MultipartConfig
public class SaveTrainerInformation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveTrainerInformation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int sessionid = Integer.parseInt(request.getParameter("session_id"));
		System.out.println(sessionid);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
//		1. get all information from user
//		2.create database session and trainer one-to-one/ one-to-many 
//		3. insert into database --> through ajax call
		
//		 get All information
		System.out.println("inside the SaveTrainerInformation: Servlet");
		int sessionid = Integer.parseInt(request.getParameter("session_id"));
		String sessionName = request.getParameter("session_name");
		String sessionContNum = request.getParameter("contact_number");
		String sessionEmail = request.getParameter("email_address");
		String sessionSkills  = request.getParameter("add_skill_session");
		System.out.println(sessionName + sessionContNum);
		
//		get trainer details
		int trainerID  = Integer.parseInt(request.getParameter("trainer_id"));
		String trainerName  = request.getParameter("trainer_name");
		String trainerNumber = request.getParameter("trainer_number");
		String trainerEmail = request.getParameter("trainer_email");
		String trainerSkill = request.getParameter("skill_set_Trainer");
		
//		getting Object-ready 
		Trainer trainer = new Trainer();
		trainer.setTrainerID(trainerID);
		trainer.setTrainerName(trainerName);
		trainer.setTainerNumber(trainerNumber);
		trainer.setTrainerEmail(trainerEmail);
		trainer.setSkillSet(sessionSkills);
		
		
		
		com.entity.Session newSession = new com.entity.Session();
		newSession.setSessionID(sessionid);
		newSession.setSessionDesc(sessionName);
		newSession.setSessionContact(sessionContNum);
		newSession.setSessionEmail(sessionEmail);
		newSession.setSkillSet(sessionSkills);
		newSession.setTrainer(trainer);
		trainer.setSession(newSession);
		PrintWriter out = response.getWriter();
		
		
		
//		adding data to database
		Session session = FactoryProvider.getFactory().openSession();
		Transaction  transaction = session.beginTransaction();

		try {
			session.save(trainer);
			session.save(newSession);
			out.print("data saved");
			
		} catch (Exception e) {
			// TODO: handle exception
			out.print("data not saved");
		}
		
		
		transaction.commit();
		session.close();
		
		
		
		
		
	}

}
