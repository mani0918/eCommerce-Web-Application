package com.niit.shoppingcart;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.domain.User;

public class UserDAOTestCase {

	@Autowired
	static AnnotationConfigApplicationContext context;

	@Autowired
	static UserDAO userDAO;
	@Autowired
	static User user;

	// the above objects need to initialize
	/**
	 * This method is going to execute before calling any one of the test case
	 * and will execute only once
	 */

	@BeforeClass
	public static void initialize() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();

		// get the userDAO from context
		userDAO = (UserDAO) context.getBean("userDAO");

		// get the user from context
		user = (User) context.getBean("user");

	}

	@Test
	public void createUserTestCase() {
		user.setId("suveen");
		user.setName("Suveen Kumar");
		user.setPassword("suveen");
		user.setRole("Admin");
		user.setContact(55555);
		boolean flag = userDAO.save(user);

		// this assertEquals method
		// error-if there is any runtime error- Red mark
		// success-if expected and actual is same- green mark
		// fail-if expected and actual is different- blue mark
		assertEquals("createUserTestCase", true, flag);

	}

	@Test
	public void updateUserTestCase() {
		user.setId("mani");
		user.setName("mh6242");
		user.setPassword("maha");
		user.setRole("Admin");
		user.setContact(88888);
		boolean flag = userDAO.update(user);

		// this assertEquals method
		// error-if there is any runtime error- Red mark
		// success-if expected and actual is same- green mark
		// fail-if expected and actual is different- blue mark
		assertEquals("updateUserTestCase", true, flag);

	}

	@Test
	public void validateUserTestCase() {
		boolean flag = userDAO.validate("mani", "maha");

		assertEquals(true, flag);
	}

	@Test
	public void listAllUserTestCase() {
		int actualSize = userDAO.list().size();
		assertEquals(3, actualSize);
	}

}
