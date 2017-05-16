package com.niit.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.daoimpl.MyCartDAOImpl;
import com.niit.shoppingcart.domain.Category;
import com.niit.shoppingcart.domain.Product;
import com.niit.shoppingcart.domain.Supplier;
import com.niit.shoppingcart.domain.User;

@Controller
public class UserController {

	
	private static Logger log= LoggerFactory.getLogger(UserController.class);
	// we need to implement
	// createuser
	// uodate user
	// get alluser

	// To connect to user in backend
	@Autowired
	UserDAO userDAO;
	@Autowired
	User user;

	@Autowired
	HttpSession session;
	@Autowired
	CategoryDAO categoryDAO;
	@Autowired
	Category category;
	
	@Autowired
	Supplier supplier;
	@Autowired 
	SupplierDAO supplierDAO;
	
	@Autowired
	Product product;
	
	@Autowired
	ProductDAO productDAO;
	
	// Get the user id and password from login page
	// Send these values to userDao.validate
	// based on response, you can navigate to either login.jsp or home.jsp

	// Whenever we configure spring security - we can remove this method

	@RequestMapping("/validate")
	public ModelAndView login(@RequestParam("username") String id, @RequestParam("password") String password) {

		ModelAndView mv = new ModelAndView("redirect:/Home");
		if (userDAO.validate(id, password) == true) {
			user = userDAO.get(id);
			mv.addObject("message", "Welcome " + user.getName());

			
			  mv.addObject("categoryList", categoryDAO.list());
			  mv.addObject("category", category);
			  
			  mv.addObject("supplierList", supplierDAO.list());
			 mv.addObject("supplier", supplier);
			 
			 mv.addObject("productList", productDAO.list());
			 mv.addObject("product", product);
			 
			 
			// check whether user role is admin or user

			if (user.getRole().equals("ROLE_ADMIN")) {
				mv.addObject("isAdmin", "true");
			} else {
				mv.addObject("isAdmin", "false");
				session.setAttribute("isUserLoggedIn", "true");
				session.setAttribute("loggedInUserId", id);
			}
		} 
		else {
			mv.addObject("message", "invalid credentials");
		}

		return mv;

	}
	
	@RequestMapping("/Register")
	public ModelAndView register(@RequestParam("userId") String id, @RequestParam("userPwd") String password, @RequestParam("userName") String name, @RequestParam("userContact") int contact) {

		ModelAndView mv = new ModelAndView("/Home");
		log.debug("Starting of the method register");
		log.debug("Assigning values");
		
		user.setId(id);
		user.setName(name);
		user.setPassword(password);
		user.setContact(contact);
		user.setRole("ROLE_USER");
		
		
		log.info("You are signing up with username : "+id);
		
		if (userDAO.save(user) == true) {
			log.debug("starting of save method");
			user = userDAO.get(id);
			mv.addObject("message", "Welcome " + user.getName() + "! Please Login to Continue");

			mv.addObject("categoryList", categoryDAO.list());
			mv.addObject("category", categoryDAO);

			mv.addObject("supplierList", supplierDAO.list());
			mv.addObject("supplier", supplierDAO);
			

			
		} else {
			log.debug("Error");
			mv.addObject("message", "invalid credentials");
		}
		log.debug("Ending of the method login");
		return mv;

	}

}
