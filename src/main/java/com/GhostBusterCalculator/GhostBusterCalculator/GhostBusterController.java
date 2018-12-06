package com.GhostBusterCalculator.GhostBusterCalculator;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.GhostBusterCalculator.GhostBusterCalculator.Repository.EquipmentRepository;
import com.GhostBusterCalculator.GhostBusterCalculator.Repository.StatesRepository;
import com.GhostBusterCalculator.GhostBusterCalculator.Repository.UserRepository;
import com.GhostBusterCalculator.GhostBusterCalculator.Repository.VehicleRepository;
import com.GhostBusterCalculator.GhostBusterCalculator.entity.Equipment;
import com.GhostBusterCalculator.GhostBusterCalculator.entity.GhostData;
import com.GhostBusterCalculator.GhostBusterCalculator.entity.GhostWrapper;
import com.GhostBusterCalculator.GhostBusterCalculator.entity.User;
import com.GhostBusterCalculator.GhostBusterCalculator.entity.Vehicle;

@Controller
public class GhostBusterController {

	@Value("${fbicrime.key}")
	String crimeKey;

	@Autowired
	VehicleRepository v;
	@Autowired
	UserRepository u;
	@Autowired
	EquipmentRepository e;
	@Autowired
	StatesRepository s;

	private User userPermanent;

	@RequestMapping("/")
	public ModelAndView index() {
		return new ModelAndView("index", "index", "Hello Ghost Busters!");
	}

	@RequestMapping("/about")
	public ModelAndView about() {
		return new ModelAndView("about");
	}
	
	@RequestMapping("/fun")
	public ModelAndView fun(){
		return new ModelAndView("fun");
	}

	@RequestMapping("/startup")
	public ModelAndView startup() {
		return new ModelAndView("startup", "states", s.findAll());
	}

	@RequestMapping("/adduser")
	public ModelAndView registerUser(@RequestParam("firstname") String firstname,
			@RequestParam("lastname") String lastname, @RequestParam("email")String email, @RequestParam("employees") Integer employees, @RequestParam("states")String state) {
		
		String[] splitState = state.split(",");
		userPermanent = new User(firstname, lastname, email, splitState[1], splitState[0], employees);
		u.save(userPermanent);
		return new ModelAndView("redirect:/equipment");

	}
	
	@RequestMapping("/getstate")
	public ModelAndView getStates() {
		return new ModelAndView("states", "states", s.findAll());
	}

	@RequestMapping("/equipment")
	public ModelAndView pickEquipment() {
		return new ModelAndView("equipment", "equipment", e.findAll());

	}

	@PostMapping("/addequipment")
	public ModelAndView addEquipment(@RequestParam("price") Float price, @RequestParam("quantity") String quantity) {

		String[] items = quantity.split(",");
		System.out.println(Arrays.toString(items));
		float total = 0;
		for (int i = 0; i < items.length; i++) {
			if (!items[i].equals("0")) {
				int numItems = Integer.parseInt(items[i]);
				Equipment addEquipment = e.findById(i + 1).orElse(null);
				Float equipmentcost = addEquipment.getPrice() * numItems;
				System.out.println(addEquipment + " " + numItems + "  " + equipmentcost);
				total += equipmentcost;
			}

		}

		userPermanent.setEquipmentcost(total);
		u.save(userPermanent);

		return new ModelAndView("redirect:/vehicle");
	}

	@RequestMapping("/vehicle")
	public ModelAndView pickVehicle() {

		return new ModelAndView("vehicle", "vehicle", v.findAll());
	}

	@RequestMapping("/addvehicle")
	public ModelAndView addVehicle(@RequestParam("price") Float price, @RequestParam("quantity") String quantity) {
		String[] items = quantity.split(",");
		System.out.println(Arrays.toString(items));
		float total = 0;
		for (int i = 0; i < items.length; i++) {
			if (!items[i].equals("0")) {
				int numItems = Integer.parseInt(items[i]);
				Vehicle addVehicle = v.findById(i + 1).orElse(null);
				Float vehiclecost = addVehicle.getPrice() * numItems;
				System.out.println(addVehicle + " " + numItems + "  " + vehiclecost);
				total += vehiclecost;
			}

		}

		userPermanent.setVehiclecost(total);
		u.save(userPermanent);

		Float vehicleCost = userPermanent.getVehiclecost();
		Float equipmentCost = userPermanent.getEquipmentcost();
		Float totalCost = vehicleCost + equipmentCost;

		userPermanent.setTotal(totalCost);

		u.save(userPermanent);

		return new ModelAndView("redirect:/results");
	}

	@RequestMapping("/results")
	public ModelAndView getGhostData() {
		ModelAndView mv = new ModelAndView("results");
		RestTemplate rt = new RestTemplate();
		GhostWrapper gW = rt.getForObject(
				"https://api.usa.gov/crime/fbi/sapi/api/estimates/states/" + userPermanent.getLocation() + "?api_key=" + crimeKey, GhostWrapper.class);

		List<GhostData> gD = gW.getResults();
		Integer y = 0;
		Integer ghostAvg = 0;

		for (int i = 0; i < gD.size(); i++) {
			GhostData x = gD.get(i);
			Integer temp = x.getHomicide();
			y = y + temp;
			ghostAvg = y / gD.size();

		}

		float estimatedRevenue = (float) ((ghostAvg * 5000) * .50);
		float yearsToProfit = (userPermanent.getTotal() / estimatedRevenue);

		mv.addObject("profit", yearsToProfit);
		mv.addObject("revenue", estimatedRevenue);
		mv.addObject("ghost", ghostAvg);
		mv.addObject("userStuff", userPermanent);
		return mv;
	}
	


}