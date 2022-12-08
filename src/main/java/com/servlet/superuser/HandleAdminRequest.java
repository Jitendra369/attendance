package com.servlet.superuser;

import java.io.IOException;
import java.io.PrintWriter;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaDelete;
import javax.persistence.criteria.CriteriaUpdate;
import javax.persistence.criteria.Root;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.hibernate.resource.transaction.spi.TransactionStatus;

import com.entity.Admin;
import com.entity.ResponseMeg;
import com.google.gson.Gson;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class HandleAdminRequest
 */
public class HandleAdminRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HandleAdminRequest() {
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
		
		int id = Integer.parseInt(request.getParameter("adminID"));
		Gson gson = new Gson();

		Session session = FactoryProvider.getFactory().openSession();
		Transaction transaction = session.beginTransaction();

		String action  = request.getParameter("action");
		if (action.equalsIgnoreCase("view")) {
			
			Criteria criteria = session.createCriteria(Admin.class);
			criteria.add(Restrictions.eq("adminID", id));
			Admin admin = (Admin)criteria.uniqueResult();
			PrintWriter out = response.getWriter();
//			out.print(admin.toString());
			out.print(gson.toJson(admin));
			out.close();
			transaction.commit();
			
		}else if (action.equalsIgnoreCase("update")) {
			
			Criteria criteria = session.createCriteria(Admin.class);
//			criteria.add(Restrictions.u)
			ResponseMeg meg = new ResponseMeg();
			

			CriteriaBuilder builder = session.getCriteriaBuilder();
			CriteriaUpdate<Admin> criteriaUpdate = builder.createCriteriaUpdate(Admin.class);
			Root root = criteriaUpdate.from(Admin.class);
			criteriaUpdate.set("status", "approved");
			criteriaUpdate.where(builder.equal(root.get("adminID"), id));
			session.createQuery(criteriaUpdate).executeUpdate();
			meg.setMessage("Approved");
			PrintWriter out = response.getWriter();
			out.print(gson.toJson(meg));
			
			transaction.commit();
//			
		}else if (action.equalsIgnoreCase("delete")) {
			
			ResponseMeg meg = new ResponseMeg();
			
			CriteriaBuilder builder = session.getCriteriaBuilder();
			CriteriaDelete<Admin> criteriaDelete = builder.createCriteriaDelete(Admin.class);
			Root root = criteriaDelete.from(Admin.class);
			criteriaDelete.where(builder.equal(root.get("adminID"), id));
			session.createQuery(criteriaDelete).executeUpdate();
			meg.setMessage("deleted");
			PrintWriter out = response.getWriter();
			out.print(gson.toJson(meg));
			
			transaction.commit();
		}
		
		
		if (transaction.getStatus().equals(TransactionStatus.ACTIVE)) {
			transaction.commit();
		}
		
		session.close();
		
	}

}
