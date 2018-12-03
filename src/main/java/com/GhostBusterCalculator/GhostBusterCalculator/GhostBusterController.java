package com.GhostBusterCalculator.GhostBusterCalculator;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.GhostBusterCalculator.GhostBusterCalculator.entity.User;
import com.GhostBusterCalculator.GhostBusterCalculator.Repository.EquipmentRepository;
import com.GhostBusterCalculator.GhostBusterCalculator.Repository.UserRepository;
import com.GhostBusterCalculator.GhostBusterCalculator.Repository.VehicleRepository;
import com.GhostBusterCalculator.GhostBusterCalculator.entity.GhostData;
import com.GhostBusterCalculator.GhostBusterCalculator.entity.GhostWrapper;

@Controller
public class GhostBusterController {
	
	@Value("${fbicrime.key}")
	String crimeKey;

	@Autowired
	EquipmentRepository e;
	
	@Autowired
	VehicleRepository v;
	
	@Autowired
	UserRepository u;
	
@RequestMapping("/")
public ModelAndView index() {
	return new ModelAndView("index", "index", "Hello Ghost Busters!");
}

@RequestMapping("/about")
public ModelAndView about() {
	return new ModelAndView("about");
}

@RequestMapping("/startup")
public ModelAndView startup(Integer userid, String firstname, String lastname, String location, Integer employees) {
	u.save(new User(userid, firstname, lastname, location, employees));
	return null;
}

@RequestMapping("/equipment")
public ModelAndView equipment() {
	return new ModelAndView("equipment","equipment",e.findAll());
}


@RequestMapping("/showresults")
public ModelAndView getGhostData() {
	ModelAndView mv =  new ModelAndView("results");
	RestTemplate rt = new RestTemplate();
	GhostWrapper gW = rt.getForObject("https://api.usa.gov/crime/fbi/sapi/api/estimates/states/mi?api_key=" + crimeKey, GhostWrapper.class);
	
	
	List<GhostData> gD = gW.getResults();
	GhostData test = gD.get(0);
	Integer y = 0;
	Integer ghostAvg = 0;
	


		for (int i = 0; i < gD.size(); i++) {
			GhostData x = gD.get(i);
			Integer temp = x.getHomicide();
			y = y + temp;
			ghostAvg = y / gD.size();
			
		}
	
	mv.addObject("ghost", ghostAvg);
	
	return mv;
}



@RequestMapping("/vehicle")
public ModelAndView vehicle() {
	return new ModelAndView("vehicle","vehicle",v.findAll());
}

}
