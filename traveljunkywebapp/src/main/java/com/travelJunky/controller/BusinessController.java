package com.travelJunky.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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
	@PostMapping String submitForm(@ModelAttribute("businessForm") BusinessForm businessForm, BindingResult bindingResult, Model model) {
		
		//save business referral to database
		
		//send email to travel junky office/administrator
		
		//send email to business contact
		
		return "confirmation-page";
	}

}
