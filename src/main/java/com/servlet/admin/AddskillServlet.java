package com.servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.Skill;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class AddskillServlet
 */

@MultipartConfig
public class AddskillServlet extends HttpServlet {
	
    public AddskillServlet() {
        super();
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int skillID = Integer.parseInt(request.getParameter("skill_id"));
		String skillType = request.getParameter("skill_type");
		String skillDesc = request.getParameter("skill_desc");
		
		Skill skill = new Skill();
		skill.setSkillID(skillID);
		skill.setSkillType(skillType);
		skill.setSkillDesc(skillDesc);
		
		PrintWriter writer = response.getWriter();
		
		
		Session session = FactoryProvider.getFactory().openSession();
		Transaction trans = session.beginTransaction();
		try {

			session.save(skill);
			writer.print("saved");
			
		} catch (Exception e) {
			// TODO: handle exception
			writer.print("not saved");
		}
		trans.commit();
		session.close();
	}

}
