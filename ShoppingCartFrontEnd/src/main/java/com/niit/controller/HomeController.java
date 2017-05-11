package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.domain.Category;
import com.niit.shoppingcart.domain.Product;
import com.niit.shoppingcart.domain.Supplier;

@Controller
public class HomeController{

	//whenever the user open our website it should navigate to home page
	//http://localhost:8080/ShoppingCart/

	@Autowired HttpSession session;
	
	@Autowired Category category;
	
	@Autowired CategoryDAO categoryDAO;
	
	@Autowired ProductDAO productDAO;
	
	@Autowired Product product;
	
	@Autowired SupplierDAO supplierDAO;
	
	@Autowired Supplier supplier;
	
	
	@RequestMapping({"/","/Home"})
	public ModelAndView goToHome()
	{
		//model.addAttribute("message", "This is my shopping cart website");
		ModelAndView mv = new ModelAndView("Home");
		mv.addObject("isCustomerAtHome","true");
			mv.addObject("message", "This is my shopping cart website");
		

		// get all categories
				List<Category> categoryList = categoryDAO.list();

				// attach to session
				session.setAttribute("categoryList", categoryList);
				session.setAttribute("category", category);
				
				List<Supplier> supplierList = supplierDAO.list();
				session.setAttribute("supplierList", supplierList);
				session.setAttribute("supplier", supplier);
				List<Product> productList = productDAO.list();
				session.setAttribute("Product", product);
				session.setAttribute("ProductList", productList);
				
				
	return  mv;
	}
	
	@RequestMapping("/LoginPage")
	public String loginPage(Model model)
	{
		model.addAttribute("isUserClickedLogin", "true");
		return "Home";
	}
	
	@RequestMapping("/RegistrationPage")
	public String registrationPage(Model model)
	{
		model.addAttribute("isUserClickedRegister", "true");
		return "Home";
	}
	
	
}
