package com.niit.shoppingcart.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcart.dao.MyCartDAO;
import com.niit.shoppingcart.domain.MyCart;
@Repository("myCartDAO")
@Transactional
public class MyCartDAOImpl implements MyCartDAO{
	@Autowired
	private SessionFactory sessionFactory;
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

	public List<MyCart> list() {
		
		return sessionFactory.getCurrentSession().createQuery("from MyCart").list();
		
	}

	public MyCart get(String id) {
		
		return (MyCart) sessionFactory.getCurrentSession().get(MyCart.class,id);
		
	}
	
	
	
	

}
