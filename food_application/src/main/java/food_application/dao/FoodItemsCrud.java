package food_application.dao;

import java.util.List;


import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import food_application.dto.FoodItems;


public class FoodItemsCrud {
	EntityManager em = Persistence.createEntityManagerFactory("vani").createEntityManager();
	EntityTransaction et = em.getTransaction();
	public void saveFoodItems(FoodItems fooditems) {
		et.begin();
		em.persist(fooditems);
		et.commit();
	}
	
//	fetching food items
	public List<FoodItems> fetchFoodItems(){
		Query query = em.createQuery("select a from FoodItems a");
		return query.getResultList();
	}
	
	public FoodItems deleteFoodItems(int id) {
		FoodItems db = em.find(FoodItems.class, id);
		if(db!=null) {
			et.begin();
			em.remove(db);
			et.commit();
			return db;
		}
		else
			return null;
	}
	public void updateFoodItems(FoodItems fooditems) {
		FoodItems ft = em.find(FoodItems.class, fooditems.getId());
		if(ft!=null) {
			et.begin();
			System.out.println(fooditems);
			em.merge(fooditems);
			et.commit();
		}
	}
	
	public FoodItems fetchId(int id) {
		FoodItems db = em.find(FoodItems.class, id);
		if(db!=null) {
			return db;
		}
		else
			return null;
		
	}

}
