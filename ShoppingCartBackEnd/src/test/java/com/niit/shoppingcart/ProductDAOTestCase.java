package com.niit.shoppingcart;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.domain.Product;

public class ProductDAOTestCase {

	@Autowired
	static AnnotationConfigApplicationContext context;
	
	@Autowired
	static ProductDAO productDAO;
	@Autowired
	static Product product;
	
	@BeforeClass
	public static void initialize() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();

		// get the userDAO from context	
		productDAO = (ProductDAO) context.getBean("productDAO");
		//productDAO=(ProductDAO)context.getBean("productDAO");


		// get the user from context
		product=(Product)context.getBean("product");

}
	
	@Test
	public void createProductTestCase() {
		product.setId("DELL10");
		product.setName("DELLInspiron15");
		product.setDescription("DELL Inspiron15 5000 series");
		product.setPrice(35000);
		product.setCategory_id("EL1254");
		product.setSupplier_id("D10");
		boolean flag = productDAO.saveOrUpdate(product);

		// this assertEquals method
		// error-if there is any runtime error- Red mark
		// success-if expected and actual is same- green mark
		// fail-if expected and actual is different- blue mark
		assertEquals("createProductTestCase", true, flag);
	}
	@Test
	public void updateProductTestCase() {
		product.setId("DELL10");
		product.setName("DELLInspiron15");
		product.setDescription("DELL Inspiron15 5000 series");
		product.setPrice(35066);
		product.setCategory_id("EL1254");
		product.setSupplier_id("D10");
		boolean flag = productDAO.saveOrUpdate(product);
		
		// this assertEquals method
		// error-if there is any runtime error- Red mark
		// success-if expected and actual is same- green mark
		// fail-if expected and actual is different- blue mark
		assertEquals("updateProductTestCase", true, flag);
	}
	

	/*@Test
	public void updateProductTestCase() {
		product.setId("DELL10");
		product.setName("DELL LAPTOP");
		product.setDescription("DELL Inspiron15 5000 series");
		product.setPrice(35000);
		product.setCategory_id("EL1254");
		product.setSupplier_id("D10");
		boolean flag = productDAO.update(product);
	
	// this assertEquals method
	// error-if there is any runtime error- Red mark
	// success-if expected and actual is same- green mark
	// fail-if expected and actual is different- blue mark
	assertEquals("updateProductTestCase", true, flag);
}*/
	
	
	@Test
	public void listAllProductTestCase()
	{
		int actualSize = productDAO.list().size();
		assertEquals(1, actualSize);
	}
	
	
}
