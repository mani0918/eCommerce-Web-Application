package com.niit.shoppingcart.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcart.dao.MyCartDAO;
import com.niit.shoppingcart.domain.MyCart;
@Repository("myCartDAO")
@Transactional
public class MyCartDAOImpl implements MyCartDAO{
	@Autowired
	private SessionFactory sessionFactory;
	
	private static Logger log= LoggerFactory.getLogger(MyCartDAOImpl.class);
	public MyCartDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	
	
	public boolean save(MyCart myCart) {
		try{
			sessionFactory.getCurrentSession().save(myCart);
		}
		catch (Exception e) {
			e.printStackTrace();
			return false;
			
		}
		return true;
	}

	public boolean update(MyCart myCart) {
		
		try{
			sessionFactory.getCurrentSession().update(myCart);
		}
		catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public List<MyCart> list(String userId) {
		// TODO Auto-generated method stub
		Query query= sessionFactory.getCurrentSession().createQuery("from MyCart where user_id=?");
		query.setString(0, userId);
		return query.list();
		

	}

	public long getTotalAmount(String id) {
		// TODO Auto-generated method stub
		Query query= sessionFactory.getCurrentSession().createQuery(" select sum(price) from MyCart where user_id=?");
		query.setString(0, id);
		return (Long) query.uniqueResult();
	}


	

	public boolean delete(MyCart myCart) {
		try{
			sessionFactory.getCurrentSession().delete(myCart);
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
			
		}
		return true;
	}


	public MyCart getCart(String userID, String productName) {
		String hql = "from MyCart where userID = ? and productName = ?";
		Query  query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, userID);
		query.setString(1, productName);
		return (MyCart) query.uniqueResult();
		

	}


	public Integer getQuantity(String userID, String productName) {

		String hql = "select quntity from  MyCart where userID = ?  &&  productName =?";
	
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, userID);
		query.setString(1, productName);
		log.debug("Ending of the method getTotalAmount");
		return (Integer) query.uniqueResult();

	}


	
	
	
	
	

}
