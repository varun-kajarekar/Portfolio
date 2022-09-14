package com.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.Entity.UserInfo;
import com.Entity.userwebsite;
public class UserInfo_DAO {
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

	
	// Add user information
	public void adduserinfo(userwebsite users) {
		factory = getfactory();
		
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		session.save(users);
		session.getTransaction().commit();
		System.out.println(users.getName()+" --->is added");
		session.close();
	}	
	
	// retrive userr information
	public List<userwebsite> listFiles(String userName) {
		factory = getfactory();
		Transaction transaction = null;

		Session session = factory.getCurrentSession();
		transaction=session.beginTransaction();

		List<userwebsite> files= session.createQuery("from userinfo U WHERE U.username = :userName").setParameter("userName", userName).list();
		System.out.println(files);
		session.close();
		return files;
	}
	
	// find user info is in database or not to add user information 
	public boolean validate(String userName) {
		factory = getfactory();

        Transaction transaction = null;
        userwebsite user = null;
        try  {
        	Session session = factory.getSessionFactory().openSession();
            // start a transaction
            transaction = session.beginTransaction();
            // get an user object
            user = (userwebsite) session.createQuery("FROM userinfo U WHERE U.username = :userName").setParameter("userName", userName).uniqueResult();
            if (user == null ) {
                return true;
            }
            // commit transaction
            transaction.commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
            return false;    
            }
        return false;
    }
	
	
	// Delete user
	public void deleteFiles(String users) {
		factory = getfactory();
		
		try  {
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		userwebsite files = session.get(userwebsite.class, users);
		session.delete(files);
		session.getTransaction().commit();
		session.close();
		}
		catch (Exception e) {
            e.printStackTrace();
            }
		
	}
	
	
	
	
}
