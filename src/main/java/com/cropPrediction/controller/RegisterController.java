
package com.cropPrediction.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cropPrediction.model.LoginVO;
import com.cropPrediction.model.RegisterVO;
import com.cropPrediction.service.CountryService;
import com.cropPrediction.service.DistrictService;
import com.cropPrediction.service.LoginService;
import com.cropPrediction.service.RegisterService;
import com.cropPrediction.service.StateService;
import com.cropPrediction.service.VillageService;
import com.cropPrediction.utils.BaseMethod;

@Controller
public class RegisterController {

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

	@GetMapping(value = "/register")
	public ModelAndView register(Model model) {
		model.addAttribute("countryList", this.countryService.countrySearchAll());
		model.addAttribute("stateList", this.stateService.stateSearchAll());
		model.addAttribute("districtList", this.districtService.districtSearchAll());
		model.addAttribute("villageList", this.villageService.villageSearchAll());
		return new ModelAndView("/register", "registerVO", new RegisterVO());
	}

	@PostMapping(value = "/registerFarmer")
	public ModelAndView registerFarmer(@ModelAttribute RegisterVO registerVO) {

		String password = BaseMethod.generatePassword();
		LoginVO loginVO = registerVO.getLoginVO();
		loginVO.setUsername(registerVO.getLoginVO().getUsername());
		registerVO.setLoginVO(loginVO);
		BaseMethod.sendMail(registerVO.getLoginVO().getUsername(), password, registerVO.getName());

		loginVO.setPassword(password);
		loginVO.setEnabled("1");
		loginVO.setRole("ROLE_FARMER");
		this.loginService.loginInsert(loginVO);

		this.registerService.registerInsert(registerVO);
		return new ModelAndView("/login", "loginVO", new LoginVO());
	}

}
