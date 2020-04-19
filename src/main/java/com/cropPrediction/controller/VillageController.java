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

import com.cropPrediction.model.DistrictVO;
import com.cropPrediction.model.VillageVO;
import com.cropPrediction.service.CountryService;
import com.cropPrediction.service.DistrictService;
import com.cropPrediction.service.StateService;
import com.cropPrediction.service.VillageService;

@Controller
public class VillageController {
	@Autowired
	private VillageService villageService;
	@Autowired
	private CountryService countryService;
	
	@Autowired
	private StateService stateService;

	@Autowired
	private DistrictService districtService;
	@GetMapping(value = "/admin/loadVillage")
	public ModelAndView loadVillage(Model model ) {
		model.addAttribute("countryList",this.countryService.countrySearchAll());
		model.addAttribute("stateList",this.stateService.stateSearchAll());
		model.addAttribute("districtList",this.districtService.districtSearchAll());
		return new ModelAndView("/admin/addVillage", "villageVO", new VillageVO());
		
	}

	@GetMapping(value = "/admin/viewVillage")
	public ModelAndView viewVillage() {
		List<VillageVO> villageList = this.villageService.villageSearchAll();
		return new ModelAndView("/admin/viewVillage", "villageList", villageList);
	}

	@RequestMapping(value = "/admin/addVillage")
	public ModelAndView addVillage(@ModelAttribute VillageVO villageVO) {
		villageVO.setVillageStatus(true);
		this.villageService.villageInsert(villageVO);

			return new ModelAndView("redirect:/admin/viewVillage");

	}

	@GetMapping(value = "/admin/editVillage")
	public ModelAndView editVillage(@RequestParam int id,Model model) {
		VillageVO villageVO = new VillageVO();
		villageVO.setId(id);
		villageVO = this.villageService.searchVillageById(villageVO);
		model.addAttribute("countryList",this.countryService.countrySearchAll());
		model.addAttribute("stateList",this.stateService.stateSearchAll());
		model.addAttribute("districtList",this.districtService.districtSearchAll());
		
		return new ModelAndView("/admin/addVillage", "villageVO", villageVO);
	}

	@GetMapping(value = "/admin/deleteVillage")
	public ModelAndView deleteVillage(@RequestParam int id) {
		VillageVO villageVO = new VillageVO();
		villageVO.setId(id);

		villageVO = this.villageService.searchVillageById(villageVO);

		villageVO.setVillageStatus(false);
		this.villageService.villageInsert(villageVO);
		return new ModelAndView("redirect:/admin/viewVillage");
	}
	@GetMapping(value = "/admin/listVillage")
	public ModelAndView listStateByCountry(Model model,@RequestParam int id) {
		DistrictVO districtVO=new DistrictVO();
		districtVO.setId(id);
		List<VillageVO> villageList=villageService.villageSearchByDistrict(districtVO);
		model.addAttribute("villageList", villageList);
		return new ModelAndView("/admin/jsonVillages");
	}
}
