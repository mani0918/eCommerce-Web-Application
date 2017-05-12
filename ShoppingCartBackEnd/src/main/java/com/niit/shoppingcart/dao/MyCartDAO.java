package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.domain.MyCart;

public interface MyCartDAO {
	
	public boolean save(MyCart myCart);
	
	public boolean update(MyCart myCart);
	
	public List<MyCart> list(String userID);
	
	public double getTotalAmount(String userID);
	
	public boolean delete(int id);
	
	public MyCart getCartById(int id);
	
	//public Integer getQuantity(String userID, String productName);

	
	
}
