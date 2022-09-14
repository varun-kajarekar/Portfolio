package com.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.Entity.UserInfo;
import com.Entity.UserSkills;

public class Userskills_DAO {
private static SessionFactory factory;
	
	public static SessionFactory getfactory(){
		try {
			if(factory == null) {
				factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(UserInfo.class).buildSessionFactory();
			}
			
		}
		catch (Exception e) {
            e.printStackTrace();
		}
		return factory;
	}

	public void addskills(UserSkills userskill) {
		factory = getfactory();
		
		try  {
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		session.save(userskill);
		session.getTransaction().commit();
		System.out.println(userskill.getSkill()+" --->is added");
		session.close();
		}
		catch (Exception e) {
            e.printStackTrace();
            }
	}

	public List<UserSkills> showSkills(String userName) {
		factory = getfactory();
		Transaction transaction = null;
		Session session = factory.getCurrentSession();
		transaction=session.beginTransaction();
		List<UserSkills> skills= session.createQuery("from userskill U WHERE U.username = :userName").setParameter("userName", userName).list();
		System.out.println(skills);
		session.close();
		return skills;
		
		
}
		

	public void deleteSkills(int userid) {
		factory = getfactory();
		
		try  {
			Session session = factory.getCurrentSession();
			session.beginTransaction();
			UserSkills files = session.get(UserSkills.class, userid);
			session.delete(files);
			session.getTransaction().commit();
			session.close();
			}
			catch (Exception e) {
	            e.printStackTrace();
	            }
		
	}
	
	
	
	
	
	

}
