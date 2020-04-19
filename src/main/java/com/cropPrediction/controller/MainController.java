package com.cropPrediction.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cropPrediction.model.LoginVO;
import com.cropPrediction.model.RegisterVO;
import com.cropPrediction.model.VillageVO;
import com.cropPrediction.service.CountryService;
import com.cropPrediction.service.DistrictService;
import com.cropPrediction.service.LoginService;
import com.cropPrediction.service.RegisterService;
import com.cropPrediction.service.StateService;
import com.cropPrediction.service.VillageService;

@Controller
public class MainController {
	
	@Autowired
	CountryService countryService;
	@Autowired
	StateService stateService;
	@Autowired
	DistrictService districtService;
	@Autowired
	VillageService villageService;
	@Autowired
	RegisterService registerService;
	@Autowired
	LoginService loginService;
	
	
	
	@GetMapping(value="/admin")
	public ModelAndView adminIndex() {

		return new ModelAndView("/admin/index");
	}
	
	@GetMapping(value="/farmer")
	public ModelAndView farmerIndex() {

		return new ModelAndView("/farmer/index");
	}
	
	@GetMapping(value = "/admin/viewFarmer")

	public ModelAndView viewCountry(Model model) {
		/*model.addAttribute("countryList", this.countryService.countrySearchAll());
		model.addAttribute("stateList",this.stateService.stateSearchAll());
		model.addAttribute("districtList",this.districtService.districtSearchAll());
		model.addAttribute("villageList",this.villageService.villageSearchAll());*/
		model.addAttribute("loginList",this.loginService.loginSearchAll());
		model.addAttribute("registerList",this.registerService.registerSearchAll());
		List<RegisterVO> farmerList = this.registerService.registerSearchAll();
		return new ModelAndView("/admin/viewFarmer", "farmerList", farmerList);// view one welcome
	}
	
	@GetMapping(value = "/admin/deleteFarmer")
	public ModelAndView deleteFarmer(@RequestParam int id) {
		LoginVO loginVO = new LoginVO();
		loginVO.setId(id);

		loginVO = this.loginService.searchLoginById(loginVO);

		loginVO.setStatus(false);
		this.loginService.loginInsert(loginVO);
		return new ModelAndView("redirect:/admin/viewFarmer");
	}
	
	
	/*@GetMapping(value="/register")
	public ModelAndView register() {
		return new ModelAndView("/admin/register","registerVO",new RegisterVO());
	}*/
	
	 /*private void radioModelList(Model model) {
	        List<String> flavorslist = new ArrayList<String>();
	        flavorslist.add("Male");
	        flavorslist.add("Female");
	        flavorslist.add("Can't Say");
	        flavorslist.add("mango");
	        flavorslist.add("cherry");
	        model.addAttribute("radioList", new RegisterVO());
	    }
	*/
	
}
