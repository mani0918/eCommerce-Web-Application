package com.niit.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.domain.Supplier;
import com.niit.shoppingcart.domain.Supplier;

@Controller
public class SupplierController {

	//create supplier
		//fetch all suppliers
		//delete supplier
		//update supplier
		@Autowired HttpSession session;
		
	
		
		@Autowired ProductDAO productDAO;
		
		@Autowired  Supplier supplier;
		@Autowired  SupplierDAO supplierDAO;
	
		
		private static  Logger log = LoggerFactory.getLogger(SupplierController.class);

		
		@GetMapping("/manage_supplier_add")
		public ModelAndView  createSupplier(@RequestParam("id") String id, 
				@RequestParam("name") String name,  @RequestParam("description") String desc)
		{
			supplier.setId(id);
			supplier.setName(name);
			supplier.setDescription(desc);
			
			ModelAndView mv = new ModelAndView("redirect:/manageSuppliers");
			
			mv.addObject("isAdminClickedSuppliers", "true");
			mv.addObject("isAdmin", "true");
			
			//Before calling save method, check whether the supplier id already exist in db or not
			
			//if it is does not exist, then only call save method
			
			if (supplierDAO.getSupplierByID(id)!=null)
			{
				//supplier already exist
				mv.addObject("message", "Supplier already exist with teh id " +id);
				return mv;
				
			}
			else  // actualy else is not required if return statement is there in if condition
			{
				supplierDAO.save(supplier);
				mv.addObject("message", "Supplier created successfuly ");
			}
			
			return mv;
			
			
			
		}
		
		//@RequestMapping("/manage_supplier_delete/{id}")
		
		@GetMapping("/manage_supplier_delete/{id}")
		public ModelAndView deleteSupplier(@PathVariable("id") String id)
		{
			
			log.debug("Starting of the method deleteSupplier");
			log.debug("You are going to delete " + id);
			ModelAndView mv = new ModelAndView("redirect:/manageSuppliers");
			
			
		
			 if(supplierDAO.delete(id))
			 {
				 mv.addObject("message", "successfully deleted the supplier");
			 }
			 else
			 {
				 mv.addObject("message", "Not able to delete the supplier");
			 }
			 
				session.setAttribute("supplierList", supplierDAO.list());
				session.setAttribute("Supplier", supplier);
				
			
				log.debug("Ending of the method deleteSupplier");
			 
			 return mv;
			
		}

		
			@GetMapping("/manage_supplier_edit/{id}")
			public ModelAndView editSupplier(@PathVariable("id") String id)
			{
				log.debug("Starting of the method edit Supplier");
				log.debug("Going to edit "+id);
				ModelAndView mv = new ModelAndView("redirect:/manageSuppliers");
				
				mv.addObject("selectedSupplier", supplierDAO.getSupplierByID(id));
				session.setAttribute("selectedSupplier", supplierDAO.getSupplierByID(id));
				
				
				return mv;
				
			}
			
			@GetMapping("/manage_supplier_update")
			public ModelAndView  updateSupplier(@RequestParam("id") String id, 
					@RequestParam("name") String name,  @RequestParam("description") String desc)
			{
				supplier.setId(id);
				supplier.setName(name);
				supplier.setDescription(desc);
				
				ModelAndView mv = new ModelAndView("redirect:/manageSuppliers");
				
				mv.addObject("isAdminClickedSuppliers", "true");
				mv.addObject("isAdmin", "true");
				
				//Before calling save method, check whether the supplier id already exist in db or not
				
				//if it is does not exist, then only call save method
				
				if (supplierDAO.getSupplierByID(id)==null)
				{
					//supplier already exist
					mv.addObject("message", "Supplier already exist with teh id " +id);
					return mv;
					
				}
				else  // actualy else is not required if return statement is there in if condition
				{
					supplierDAO.update(supplier);
					mv.addObject("message", "Supplier created successfuly ");
				}
				session.setAttribute("selectedSupplier", new Supplier());
				mv.addObject("selectedSupplier", new Supplier());
				
				return mv;
				
				
				
			}
			
			
			
			
	
}
