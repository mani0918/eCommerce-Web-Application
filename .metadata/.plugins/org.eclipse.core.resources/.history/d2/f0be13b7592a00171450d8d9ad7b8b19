package com.niit.shoppingcart;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.domain.Supplier;

public class SupplierDAOTestCase {

	@Autowired
	static AnnotationConfigApplicationContext context;
	
	@Autowired
	static SupplierDAO supplierDAO;
	@Autowired
	static Supplier supplier;
	
	@BeforeClass
	public static void initialize() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();

		// get the userDAO from context
		supplierDAO = (SupplierDAO) context.getBean("supplierDAO");

		// get the user from context
		supplier = (Supplier) context.getBean("supplier");
}
	@Test
	public void createSupplierTestCase() {
		supplier.setId("D10");
		supplier.setName("DELL");
		supplier.setDescription("Dell supplies laptops");
		boolean flag = supplierDAO.save(supplier);

		// this assertEquals method
		// error-if there is any runtime error- Red mark
		// success-if expected and actual is same- green mark
		// fail-if expected and actual is different- blue mark
		assertEquals("createSupplierTestCase", true, flag);
	}
	@Test
	public void updateCategoryTestCase() {
	supplier.setId("D10");
	supplier.setName("DELL");
	supplier.setDescription("Dell supplies laptops, monitors, CPU, keyboards and mouses");
	boolean flag = supplierDAO.update(supplier);
	
	// this assertEquals method
	// error-if there is any runtime error- Red mark
	// success-if expected and actual is same- green mark
	// fail-if expected and actual is different- blue mark
	assertEquals("updatesupplierTestCase", true, flag);
}
	
	@Test
	public void listAllSupplierTestCase()
	{
		int actualSize = supplierDAO.list().size();
		assertEquals(2, actualSize);
	}
	
}
