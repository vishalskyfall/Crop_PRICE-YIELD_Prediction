package com.cropPrediction.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cropPrediction.model.CountryVO;
import com.cropPrediction.model.StateVO;
import com.cropPrediction.service.CountryService;
import com.cropPrediction.service.StateService;

@Controller
public class StateController {

	@Autowired
	private StateService stateService;

	@Autowired
	private CountryService CountryService;

	@GetMapping(value = "/admin/loadState")
	public ModelAndView loadState(Model model) {
		model.addAttribute("countryList", this.CountryService.countrySearchAll());
		return new ModelAndView("/admin/addState", "stateVO", new StateVO());
	}

	@GetMapping(value = "/admin/viewState")
	public ModelAndView viewState() {
		List<StateVO> stateList = this.stateService.stateSearchAll();
		return new ModelAndView("/admin/viewState", "stateList", stateList);
	}

	@RequestMapping(value = "/admin/addState")
	public ModelAndView addState(@ModelAttribute StateVO stateVO) {
		stateVO.setStateStatus(true);
		this.stateService.stateInsert(stateVO);
		return new ModelAndView("redirect:/admin/viewState");

	}

	@GetMapping(value = "/admin/editState")
	public ModelAndView editState(@RequestParam int id, Model model) {
		
		StateVO stateVO = new StateVO();
		stateVO.setId(id);
		stateVO = this.stateService.searchStateById(stateVO);
		
		model.addAttribute("countryList", this.CountryService.countrySearchAll());
		return new ModelAndView("/admin/addState", "stateVO", stateVO);
	}

	@GetMapping(value = "/admin/deleteState")
	public ModelAndView deleteState(@RequestParam int id) {
		StateVO stateVO = new StateVO();
		stateVO.setId(id);

		stateVO = this.stateService.searchStateById(stateVO);

		stateVO.setStateStatus(false);
		this.stateService.stateInsert(stateVO);
		return new ModelAndView("redirect:/admin/viewState");
	}
	@GetMapping(value = "/admin/listState")
	public ModelAndView listStateByCountry(Model model,@RequestParam int id) {
		System.out.println(id);
		CountryVO countryVO=new CountryVO();
		countryVO.setId(id);
		//countryVO=countryService.countrySearchById(countryVO);
		List<StateVO> stateList=stateService.stateSearchByCountry(countryVO);
		
		System.out.println(stateList.get(0).getStateName());
		model.addAttribute("stateList", stateList);
		return new ModelAndView("/admin/jsonStates");
	}
}
