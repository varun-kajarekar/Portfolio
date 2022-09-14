package com.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.Entity.UserInfo;
import com.Entity.UserTheme;
import com.Entity.userwebsite;

public class UserTheme_DAO {
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
	
	public void addtheme(String username,UserTheme theme){
		factory = getfactory();
		
		 Transaction transaction = null;
		 UserTheme user = null;
	        try  {
	        	Session session = factory.getSessionFactory().openSession();
	            // start a transaction
	            transaction = session.beginTransaction();
	            // get an user object
	            user = (UserTheme) session.createQuery("FROM theme U WHERE U.username = :userName").setParameter("userName", username).uniqueResult();
	            if (user == null ) {
	            	Session session1 = factory.getCurrentSession();
	        		session1.beginTransaction();
	        		session1.save(theme);
	        		session1.getTransaction().commit();
	        		System.out.println(theme.getTheme()+" --->is added");
	        		session1.close();      	
	            }
	            else {
	            	// Delete existing data
	            	try  {
	            		Session session2 = factory.getCurrentSession();
	            		session2.beginTransaction();
	            		UserTheme files = session2.get(UserTheme.class, username);
	            		session2.delete(files);
	            		session2.getTransaction().commit();
	            		session2.close();
	            		}
	            		catch (Exception e) {
	                        e.printStackTrace();
	                        }
	            		
	            	Session session3 = factory.getCurrentSession();
	        		session3.beginTransaction();
	        		session3.save(theme);
	        		session3.getTransaction().commit();
	        		System.out.println(theme.getTheme()+" --->is added");
	        		session3.close(); 
	            	
	            }
	            
	            
	            // commit transaction
	            transaction.commit();
	        } catch (Exception e) {
	            e.printStackTrace();	            
	            
	        }

	}

	public List<UserTheme> listTheme(String userName) {
		Transaction transaction = null;
		factory = getfactory();
		
		Session session = factory.getCurrentSession();
		transaction=session.beginTransaction();
		List<UserTheme> files= session.createQuery("from theme U WHERE U.username = :userName").setParameter("userName", userName).list();
		System.out.println(files);
		session.close();
		return files;

	}

}
