package com.niit.shoppingcart.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.domain.Address;
import com.niit.shoppingcart.domain.Product;
@Repository("productDAO")
@Transactional
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	private SessionFactory sessionFactory;
	public ProductDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	
	public boolean save(Product product) {
		try{
			sessionFactory.getCurrentSession().save(product);
		}
		catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean update(Product product) {
		try{
			sessionFactory.getCurrentSession().update(product);
		}
		catch (Exception e) {
		  e.printStackTrace();
		  return false;
		}
		return true;
	}

	public List<Product> list() {
		
		return sessionFactory.getCurrentSession().createQuery("from Product").list();
		
		}

	public Product get(String id) {
		
		return (Product) sessionFactory.getCurrentSession().get(Product.class, id);
		
	}

	
	
	
}
