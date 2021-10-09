package com.example.controllers;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.common.Cargo;
import com.example.entities.Empleado;
import com.example.repositories.EmpleadoRepository;

@Controller
@RequestMapping("/empleado")
public class EmpleadoController {

	Logger log = LoggerFactory.getLogger(Empleado.class);

	@Autowired
	EmpleadoRepository repositorio;

	@GetMapping
	public String listarEmpleados(Model model) {

		List<Empleado> empleados = repositorio.findAll();
		model.addAttribute("empleados", empleados);
		model.addAttribute("cargos", Cargo.values());

		return "empleados";
	}

	@GetMapping("{id}")
	public String verEmpleado(@PathVariable ("id") Long id,Model model) {

		Empleado empleado = repositorio.getById(id);
		model.addAttribute("elemento", empleado);
		model.addAttribute("cargos",Cargo.values());

		return "empleado";
	}

	@PostMapping
	public String crearEmpleado(@ModelAttribute Empleado empleado) {
		
		repositorio.save(empleado);

		return "redirect:/empleado";
		
	}
	
	@PostMapping("/{id}")
	public String modificarEmpleado(@PathVariable("id") Long id, @ModelAttribute Empleado empleado) {
		
		repositorio.save(empleado); 
		
		return "redirect:/empleado/" + id;
	}
	
	@GetMapping("/e/{id}")
	public String eliminarEmpleado(@PathVariable("id") Long id) {
		
		repositorio.deleteById(id);
		
		return "redirect:/empleado";
	}
	
}
