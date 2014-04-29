package com.sample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/auth")
public class WelcomeController {

	@RequestMapping(value = "/login")
	public String printWelcome(ModelMap model) {
		System.out.println("WelcomeController.printWelcome()");

		UserDetails userDetails = new UserDetails();
		model.put("loginForm", userDetails);
		return "welcome";

	}

	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public String getLogin(@ModelAttribute("loginForm") UserDetails loginForm,
			BindingResult result, ModelMap model) {

		System.out.println("Model  " + model);

		UserDetails pojo = (UserDetails) model.get("loginForm");
		System.out.println("Details");
		System.out.println("First Name : " + pojo.getFirstName());
		System.out.println("Last Name : " + pojo.getLastName());
		System.out.println("Email ID : " + pojo.getEmail());
		model.put("homeForm", pojo);

		return "success";
		// return "redirect:login.do";
	}

}