package food_application.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import food_application.dto.HotelManager;
import food_application.dto.User;

public class ManagerCrud {
	EntityManager em = Persistence.createEntityManagerFactory("vani").createEntityManager();
	EntityTransaction et = em.getTransaction();
	public void saveManager(HotelManager manager) {
		et.begin();
		em.persist(manager);
		et.commit();
	}
	
	public HotelManager fetchEmail(String email) throws Exception{
		Query query = em.createQuery("select a from HotelManager a where a.email=?1");
		query.setParameter(1, email);
		System.out.println(email);
		return (HotelManager) query.getSingleResult();
	}

}
