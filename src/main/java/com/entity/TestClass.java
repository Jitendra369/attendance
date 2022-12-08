package com.entity;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.helper.FactoryProvider;

public class TestClass {
	public static void main(String[] args) {
		
		com.entity.Session schoolSession = new com.entity.Session();
		schoolSession.setSessionDesc("java session");
		
		Trainer trainer = new Trainer();
		trainer.setTrainerID(1);
		trainer.setTrainerName("android");
		trainer.setTrainerEmail("asdasd@gmail.com");
		trainer.setSkillSet("lavada login");
//		trainer.setTainerNumber(124658);
		
		Session session = FactoryProvider.getFactory().openSession();
		Transaction transaction = session.beginTransaction();
		
		session.save(schoolSession);
		session.save(trainer);
		
		transaction.commit();
		session.close();
		
	}
}
