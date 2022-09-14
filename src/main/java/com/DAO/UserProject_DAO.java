package com.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.Entity.UserInfo;
import com.Entity.UserProject;
import com.Entity.UserSkills;

public class UserProject_DAO {
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

	public void addproject(UserProject project) {
		factory = getfactory();
		
		try  {
			Session session = factory.getCurrentSession();
			session.beginTransaction();
			session.save(project);
			session.getTransaction().commit();
			System.out.println(project.getPname()+"Is added.......");
			session.close();
			}
			catch (Exception e) {
	            e.printStackTrace();
	            }		
	}

	public List<UserProject> listFiles(String userName) {
		factory = getfactory();
		Transaction transaction = null;

		Session session = factory.getCurrentSession();
		
		transaction=session.beginTransaction();

		List<UserProject> project= session.createQuery("from userproject U WHERE U.username = :userName").setParameter("userName", userName).list();
		session.close();
		return project;
	}

	public void deleteProject(int id) {
		factory = getfactory();
		
		try  {
			Session session = factory.getCurrentSession();
			session.beginTransaction();
			UserProject files = session.get(UserProject.class, id);
			session.delete(files);
			session.getTransaction().commit();
			session.close();
			}
			catch (Exception e) {
	            e.printStackTrace();
	            }
		
	}

}
