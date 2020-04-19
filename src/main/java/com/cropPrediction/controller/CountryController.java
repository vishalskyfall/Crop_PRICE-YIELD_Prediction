package com.cropPrediction.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cropPrediction.model.CountryVO;
import com.cropPrediction.service.CountryService;


@Controller

public class CountryController {
	@Autowired
	private CountryService countryService;

	@GetMapping(value = "/admin/loadCountry")

	public ModelAndView addCountry() {

		return new ModelAndView("/admin/addCountry", "countryVO", new CountryVO());// view one welcome
	}

	@GetMapping(value = "/admin/viewCountry")

	public ModelAndView viewCountry() {

		List<CountryVO> countryList = this.countryService.countrySearchAll();
		return new ModelAndView("/admin/viewCountry", "countryList", countryList);// view one welcome
	}

	@PostMapping(value = "/admin/addCountry")

	public ModelAndView addCountry(@ModelAttribute CountryVO countryVO) {
		countryVO.setCountryStatus(true);
		this.countryService.countryInsert(countryVO);
		/*if(countryVO.getId()==0)
		{
		return new ModelAndView("redirect:/loadCountry");
		}
		else
		{*/
			return new ModelAndView("redirect:/admin/viewCountry");
		
	}

	@GetMapping(value = "/admin/editCountry")
	public ModelAndView editCountry(@RequestParam int id) {
		CountryVO countryVO = new CountryVO();
		countryVO.setId(id);
		countryVO = this.countryService.searchCountryById(countryVO);
		return new ModelAndView("/admin/addCountry", "countryVO", countryVO);
	}

	@GetMapping(value = "/admin/deleteCountry")

	public ModelAndView deleteCountry(@RequestParam int id) {
		CountryVO countryVO = new CountryVO();
		countryVO.setId(id);
		countryVO = this.countryService.searchCountryById(countryVO);
		countryVO.setCountryStatus(false);
		this.countryService.countryInsert(countryVO);
		return new ModelAndView("redirect:/admin/viewCountry");
	}
	
	


}