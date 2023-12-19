package food_application.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import food_application.dto.Food;

public class FoodCrud {
	EntityManager em = Persistence.createEntityManagerFactory("vani").createEntityManager();
	EntityTransaction et = em.getTransaction();
	public void saveFood(Food food) {
		et.begin();
		em.merge(food);
		et.commit();
	}
    public List<Food> fetchFood(){
    	Query query = em.createQuery("select a from Food a");
    	return query.getResultList();
    }
    
    public Food fetchId(int id) {
    	Food db = em.find(Food.class, id);
    	if(db!=null) {
    		return db;
    	}
    	else
    		return null;
    }
    
    public void deleteFood(int id) {
    	Food db = em.find(Food.class,id);
    	if(db!=null) {
    		et.begin();
    		em.remove(db);
    		et.commit();
    	}
    }
    
    public Double totalPrice() {
    	Query price = em.createQuery("select sum(a.price) from Food a");
    	return (Double) price.getSingleResult();
    }
}
