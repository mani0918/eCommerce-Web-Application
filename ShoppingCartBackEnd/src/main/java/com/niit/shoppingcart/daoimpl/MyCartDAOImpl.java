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

	public List<MyCart> list(String userID) {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("from MyCart where user_id=?").setString(0, userID).list();
		

	}

	public double getTotalAmount(String userID) {
		// TODO Auto-generated method stub
		Query query= sessionFactory.getCurrentSession().createQuery(" select sum(price) from MyCart where user_id=?");
		query.setString(0, userID);
		return  (Double) query.uniqueResult();
	}


	

	public boolean delete(int id) {
		try{
			sessionFactory.getCurrentSession().delete(getCartById(id));
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


	/*public Integer getQuantity(String userID, String productName) {

		String hql = "select quntity from  MyCart where userID = ?  &&  productName =?";
	
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, userID);
		query.setString(1, productName);
		log.debug("Ending of the method getTotalAmount");
		return (Integer) query.uniqueResult();

	}
*/

	public MyCart getCartById(int id) {
		
		return (MyCart) sessionFactory.getCurrentSession().createQuery("from MyCart where id=?").setInteger(0, id).uniqueResult();
		
	}


	
	
	
	
	

}
