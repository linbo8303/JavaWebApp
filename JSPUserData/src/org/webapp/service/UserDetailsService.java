package org.webapp.service;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.webapp.data.Gender;
import org.webapp.data.UserDetails;

public class UserDetailsService {
	
	// initialize an user and add into database
	public static void createUserDetails(String username, Gender sex, int age, boolean active, String tags ) {
		UserDetails user = new UserDetails(username, sex, age, active, tags);
		
		Transaction trns = null;
		Session session = HibernateUtil.getSessionFactory().openSession();
		
		try {
			trns = session.beginTransaction();
			session.save(user);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			if (trns != null) {
				trns.rollback();
			}
			ex.printStackTrace();
		} finally {
			session.flush();
			session.close();
		}
		
	}
	
	// add user into database
	public static void createUserDetails(UserDetails user) {		
		Transaction trns = null;
		Session session = HibernateUtil.getSessionFactory().openSession();
		
		try {
			trns = session.beginTransaction();
			session.save(user);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			if (trns != null) {
				trns.rollback();
			}
			ex.printStackTrace();
		} finally {
			session.flush();
			session.close();
		}
		
	}
	
	// return the list of user from database
	public static List<UserDetails> getListOfUsers() {
		List<UserDetails> users = new ArrayList<>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction trns = null;
		
		try {
			trns = session.beginTransaction();
			Query query = session.createQuery("from UserDetails");
			users = (List<UserDetails>) query.list();
			trns.commit();
		} catch (Exception ex) {
			if(trns != null) {
				trns.rollback();
			}
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return users;
	}
	
	// return the user with specified userId
	public static UserDetails getUserbyUserId(int userId) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction trns = null;
		UserDetails user = null;
		
		try {
			trns = session.beginTransaction();
			Query query = session.createQuery("from UserDetails where userId = '"+userId+"' ");
			user = (UserDetails) query.uniqueResult();
			trns.commit();
		} catch (Exception ex) {
			if(trns != null) {
				trns.rollback();
			}
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return user;
	}
}
