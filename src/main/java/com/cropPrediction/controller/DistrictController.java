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
import com.cropPrediction.model.DistrictVO;
import com.cropPrediction.model.StateVO;
import com.cropPrediction.service.CountryService;
import com.cropPrediction.service.DistrictService;
import com.cropPrediction.service.StateService;

@Controller
public class DistrictController {
	@Autowired
	private DistrictService districtService;
	@Autowired
	private CountryService CountryService;
	@Autowired
	private StateService StateService;
	
	@GetMapping(value = "/admin/loadDistrict")
	public ModelAndView loadDistrict(Model model) {
		model.addAttribute("countryList", this.CountryService.countrySearchAll());
		model.addAttribute("stateList",this.StateService.stateSearchAll());
		return new ModelAndView("/admin/addDistrict", "districtVO", new DistrictVO());
	}

	@GetMapping(value = "/admin/viewDistrict")
	public ModelAndView viewDistrict() {
		List<DistrictVO> districtList = this.districtService.districtSearchAll();
		return new ModelAndView("/admin/viewDistrict", "districtList", districtList);
	}

	@RequestMapping(value = "/admin/addDistrict")
	public ModelAndView addDistrict(@ModelAttribute DistrictVO districtVO) {
		districtVO.setDistrictStatus(true);
		this.districtService.districtInsert(districtVO);
		/*if (districtVO.getId() == 0)
			return new ModelAndView("redirect:/loadDistrict");
		else*/
			return new ModelAndView("redirect:/admin/viewDistrict");

	}

	@GetMapping(value = "/admin/editDistrict")
	public ModelAndView editDistrict(@RequestParam int id,Model model) {
		DistrictVO districtVO = new DistrictVO();
		districtVO.setId(id);
		districtVO = this.districtService.searchDistrictById(districtVO);
		model.addAttribute("countryList", this.CountryService.countrySearchAll());
		model.addAttribute("stateList",this.StateService.stateSearchAll());
		return new ModelAndView("/admin/addDistrict", "districtVO", districtVO);
	}

	@GetMapping(value = "/admin/deleteDistrict")
	public ModelAndView deleteDistrict(@RequestParam int id) {
		DistrictVO districtVO = new DistrictVO();
		districtVO.setId(id);

		districtVO = this.districtService.searchDistrictById(districtVO);

		districtVO.setDistrictStatus(false);
		this.districtService.districtInsert(districtVO);
		return new ModelAndView("redirect:/admin/viewDistrict");
	}
	
	@GetMapping(value = "/admin/listDistrict")
	public ModelAndView listStateByCountry(Model model,@RequestParam int id) {
		StateVO stateVO=new StateVO();
		stateVO.setId(id);
		//countryVO=countryService.countrySearchById(countryVO);
		List<DistrictVO> districtList=districtService.districtSearchByState(stateVO);
		System.out.println(districtList.size());
		System.out.println(districtList.get(0).getDistrictName());
		model.addAttribute("districtList", districtList);
		return new ModelAndView("/admin/jsonDistricts");
		
		
		
	}
}
