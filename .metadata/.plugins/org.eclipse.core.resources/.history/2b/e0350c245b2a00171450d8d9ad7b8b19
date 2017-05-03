package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController{

	//whenever the user open our website it should navigate to home page
	//http://localhost:8080/ShoppingCart/
	
	@RequestMapping("/")
	public ModelAndView goToHome()
	{
		//model.addAttribute("message", "This is my shopping cart website");
		ModelAndView mv = new ModelAndView("Home");
		mv.addObject("message", "This is my shopping cart website");
		
		
		return mv;
	}
	@RequestMapping("/home")
	public String home()
	{
		return "Home";
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
