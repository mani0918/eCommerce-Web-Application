package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.domain.MyCart;

public interface MyCartDAO {
	
	public boolean save(MyCart myCart);
	
	public boolean update(MyCart myCart);
	
	public List<MyCart> list(String userId);
	
	public long getTotalAmount(String id);
	
	public boolean delete(MyCart myCart);
	
	public MyCart getCart(String userID, String productName);
	
	public Integer getQuantity(String userID, String productName);


	
}
