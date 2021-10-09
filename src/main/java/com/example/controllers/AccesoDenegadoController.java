package com.example.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AccesoDenegadoController {
	
	final static Logger logger = LoggerFactory.getLogger(AccesoDenegadoController.class);

	@GetMapping("/error")
	public String index(Model model) {
		

		return "error";
	}
}
