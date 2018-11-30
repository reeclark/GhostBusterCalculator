package com.GhostBusterCalculator.GhostBusterCalculator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.GhostBusterCalculator.GhostBusterCalculator.Repository.EquipmentRepository;

@Controller
public class GhostBusterController {
	

	@Autowired
	EquipmentRepository e;
	
@RequestMapping("/")
public ModelAndView index() {
	return new ModelAndView("index", "index", "Hello Ghost Busters!");
}

@PostMapping("/equipment")
public ModelAndView shop() {
	return new ModelAndView("equipment","equipment",e.findAll());
}
}
