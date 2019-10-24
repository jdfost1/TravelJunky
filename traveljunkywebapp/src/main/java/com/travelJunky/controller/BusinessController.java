package com.travelJunky.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.travelJunky.model.BusinessForm;

@Controller
@RequestMapping("/business-form")
public class BusinessController {
	
	@GetMapping
	public String showBusinessForm(Model model) {
		
		//create business form object for user to submit data to
		model.addAttribute("businessForm", new BusinessForm());
		
		return "business-form";
		
		
		
	}

}
