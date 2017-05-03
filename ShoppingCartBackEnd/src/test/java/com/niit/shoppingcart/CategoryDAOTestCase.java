package com.niit.shoppingcart;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.domain.Category;
import com.niit.shoppingcart.domain.User;

public class CategoryDAOTestCase {

	@Autowired
	static AnnotationConfigApplicationContext context;
	
	@Autowired
	static CategoryDAO categoryDAO;
	@Autowired
	static Category category;
	
	@BeforeClass
	public static void initialize() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();

		// get the userDAO from context
		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");

		// get the user from context
		category = (Category) context.getBean("category");
}
	
	@Test
	public void createCategoryTestCase() {
		category.setId("B123");
		category.setName("BOOKS");
		category.setDescription("This k");
		boolean flag = categoryDAO.save(category);

		// this assertEquals method
		// error-if there is any runtime error- Red mark
		// success-if expected and actual is same- green mark
		// fail-if expected and actual is different- blue mark
		assertEquals("createCategoryTestCase", true, flag);
	}
	
	@Test
		public void updateCategoryTestCase() {
		category.setId("B123");
		category.setName("BOOKS");
		category.setDescription("This category belongs to books");
		boolean flag = categoryDAO.update(category);
		
		// this assertEquals method
		// error-if there is any runtime error- Red mark
		// success-if expected and actual is same- green mark
		// fail-if expected and actual is different- blue mark
		assertEquals("updateCategoryTestCase", true, flag);
	}
	@Test
	public void getAllCategoryTestCase()
	{
		List<Category> categories = categoryDAO.list();
		assertEquals(7,categories.size());
	}
}

