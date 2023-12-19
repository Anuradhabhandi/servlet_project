package food_application.dao;

import javax.persistence.EntityManager;

import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import food_application.dto.User;


public class UserCrud {
	EntityManager em = Persistence.createEntityManagerFactory("vani").createEntityManager();
	EntityTransaction et = em.getTransaction();
	
//	method to store the data in a database
	public void SaveUser(User user) {
		et.begin();
		em.persist(user);
		et.commit();	
	}
	
//	method to fetch the data by email
	public User fetchEmail(String email) {
		 Query query = em.createQuery("select a from User a where a.email=?1");
		 query.setParameter(1, email);
		return (User) query.getSingleResult();
	}
	
//	method to update the password
    public void update(String email,String pwd) {
	   Query q = em.createQuery("update User a set a.pwd=?1 where a.email=?2");
	    q.setParameter(1, pwd);
	    q.setParameter(2, email);
	    System.out.println(email+pwd);
	   et.begin();
	   q.executeUpdate();
	   et.commit();
	   
   }

}
