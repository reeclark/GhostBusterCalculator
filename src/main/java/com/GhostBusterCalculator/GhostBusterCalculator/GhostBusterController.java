package com.GhostBusterCalculator.GhostBusterCalculator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.GhostBusterCalculator.GhostBusterCalculator.Repository.EquipmentRepository;
import com.GhostBusterCalculator.GhostBusterCalculator.entity.GhostData;

@Controller
public class GhostBusterController {
	
	@Value("${fbicrime.key}")
	String crimeKey;

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

@RequestMapping("/")
public ModelAndView getGhostData() {
	ModelAndView mv =  new ModelAndView("index");
	RestTemplate rt = new RestTemplate();
	GhostData d = rt.getForObject("https://api.usa.gov/crime/fbi/sapi/estimates/states/mi?api_key=" + crimeKey, GhostData.class);
	mv.addObject("ghost", d.getHomicide());
	
	return mv;
}

}
