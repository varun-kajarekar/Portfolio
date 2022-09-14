package com.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.Entity.UserInfo;

public class login_register_dao {

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

	
	// find User in our DataBase..To prevent Add similer username and password 
	public boolean validateregister(String username, String password) {
		factory = getfactory();
		Transaction transaction = null;
		UserInfo user = null;
        try  {
        	Session session = factory.getSessionFactory().openSession();
            // start a transaction
            transaction = session.beginTransaction();
            // get an user object
            user = (UserInfo) session.createQuery("FROM notetaker U WHERE U.username = :userName").setParameter("userName", username).uniqueResult();
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

	// Register
	public void adduserDetails(UserInfo users) {
		factory = getfactory();

		Session session = factory.getCurrentSession();
		session.beginTransaction();
		session.save(users);
		session.getTransaction().commit();
		System.out.println(users.getUsername()+" --->is added");
		session.close();
		
	}

	
	// LOGIN Auth.....
	public boolean validatesignin(String username, String password) {
		factory = getfactory();

		Transaction transaction = null;
		UserInfo user = null;
        try  {
        	Session session = factory.getSessionFactory().openSession();
            // start a transaction
            transaction = session.beginTransaction();
            // get an user object
            user = (UserInfo) session.createQuery("FROM notetaker U WHERE U.username = :userName").setParameter("userName", username).uniqueResult();

            if (user != null && user.getPassword().equals(password)) {
                return true;
            }
            // commit transaction
            transaction.commit();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
	}
	

}
