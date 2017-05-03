package com.niit.shoppingcart;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.AddressDAO;
import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.domain.Address;
import com.niit.shoppingcart.domain.Category;

public class AddressDAOTestCase {

	@Autowired
	static AnnotationConfigApplicationContext context;
	
	@Autowired
	static AddressDAO addressDAO;
	@Autowired
	static Address address;
	
	@BeforeClass
	public static void initialize() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();

		// get the userDAO from context	
		addressDAO = (AddressDAO) context.getBean("addressDAO");
		//addressDAO=(AddressDAO)context.getBean("addressDAO");


		// get the user from context
		address=(Address)context.getBean("address");
}
	@Test
	public void createAddressTestCase() {
		address.setId("rakeshaddress");
		address.setUser_id("rakesh");
		address.setH_no("11/14/394/44");
		address.setStreet("vasthucolony");
		address.setCity("LBNagar,Hyd");
		address.setCountry("India");
		address.setPincode("500074");
		boolean flag = addressDAO.save(address);

		// this assertEquals method
		// error-if there is any runtime error- Red mark
		// success-if expected and actual is same- green mark
		// fail-if expected and actual is different- blue mark
		assertEquals("createAddressTestCase", true, flag);
	}
	
	@Test
	public void updateAddressTestCase() {
		address.setId("suveenaddress");
		address.setUser_id("suveen");
		address.setH_no("2-46-11");
		address.setStreet("villavari");
		address.setCity("kakinada");
		address.setCountry("India");
		address.setPincode("533003");
		boolean flag = addressDAO.update(address);
	
	// this assertEquals method
	// error-if there is any runtime error- Red mark
	// success-if expected and actual is same- green mark
	// fail-if expected and actual is different- blue mark
	assertEquals("updateAddressTestCase", true, flag);
}
	
	
	@Test
	public void listAllAddressTestCase()
	{
		int actualSize = addressDAO.list().size();
		assertEquals(2, actualSize);
	}
	
}
