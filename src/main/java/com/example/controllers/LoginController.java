package com.example.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

	final static Logger logger = LoggerFactory.getLogger(LoginController.class);

	
	@GetMapping("/login")
	public String index(Model model) {

		logger.info("[AuthorizationController-login]");

		return "index";
	}

	@GetMapping({ "/accesDenied" })
	public String accesDenied(Model model) {

		logger.info("[AuthorizationController-accesDenied]");

		return "accesDenied";
	}
}
