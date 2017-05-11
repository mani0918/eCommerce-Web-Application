package com.niit.shoppingcart.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.domain.Address;
import com.niit.shoppingcart.domain.Product;
@Repository("productDAO")
@Transactional
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	CategoryDAO categoryDAO;
	public ProductDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	
	public boolean saveOrUpdate(Product product) {
		try{
			sessionFactory.getCurrentSession().saveOrUpdate(product);
		}
		catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	/*public boolean update(Product product) {
		try{
			sessionFactory.getCurrentSession().update(product);
		}
		catch (Exception e) {
		  e.printStackTrace();
		  return false;
		}
		return true;
	}*/

	public List<Product> list() {
		
		return sessionFactory.getCurrentSession().createQuery("from Product").list();
		
		}

	public Product get(String id) {
		
		return (Product) sessionFactory.getCurrentSession().get(Product.class, id);
		
	}

	public Product getProductById(String id) {
		// get method get the date from user table based on primary key i.e., id
		// and set it to product class
		// like select * from product where id = ?
		return (Product) sessionFactory.getCurrentSession().get(Product.class, id);
	}

	public Product getProductByName(String name) {
		return (Product) sessionFactory.getCurrentSession().createQuery("from Product where name = ?")
				.setString(0, name).uniqueResult();
	}

	public List<Product> getAllProductsByCategoryId(String categoryId) {
		
		
		Query query = sessionFactory.getCurrentSession().createQuery("from Product where category_Id=?");
		query.setString(0, categoryId);
		return query.list();

		// TODO Auto-generated method stub
	}

	public List<Product> getAllProductsBySupplierId(String supplierId) {
		
		return sessionFactory.getCurrentSession().createQuery("from Product where supplier_Id = ?").setString(0, supplierId).list();
	
	}

	public boolean delete(String id) {
		try {
			sessionFactory.getCurrentSession().delete(getProductById(id));
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	
	
	
	
	
}
