package com.cropPrediction.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cropPrediction.model.PriceVO;
import com.cropPrediction.model.YieldVO;

@Controller
public class PriceController {

	@GetMapping(value = "/loadPrices")
	public ModelAndView loadPrice(Model model) {

		return new ModelAndView("/farmer/CropSeasons");
	}
	@GetMapping(value = "/loadYield")
	public ModelAndView loadYield(Model model) {

		return new ModelAndView("/farmer/CropYield");
	}

	@GetMapping(value = "/loadMaize")
	public ModelAndView loadMaize(Model model) {

		return new ModelAndView("/farmer/Maize");
	}

	@GetMapping(value = "/loadWheat")
	public ModelAndView loadWheat(Model model) {

		return new ModelAndView("/farmer/Wheat");
	}

	@GetMapping(value = "/loadOnion")
	public ModelAndView loadOnion(Model model) {

		return new ModelAndView("/farmer/Onion");
	}

	@GetMapping(value = "/loadRice")
	public ModelAndView loadRice(Model model) {

		return new ModelAndView("/farmer/Rice");
	}

	@GetMapping(value = "/loadLadyF")
	public ModelAndView loadLadyF(Model model) {

		return new ModelAndView("/farmer/LadyF");
	}

	@GetMapping(value = "/loadDryChillies")
	public ModelAndView loadDryChillies(Model model) {

		return new ModelAndView("/farmer/DryChillies");
	}

	@GetMapping(value = "/loadCotton")
	public ModelAndView loadCotton(Model model) {

		return new ModelAndView("/farmer/Cotton");
	}

	@GetMapping(value = "/loadGroundNut")
	public ModelAndView loadGroundNut(Model model) {

		return new ModelAndView("/farmer/GroundNut");
	}

	@GetMapping(value = "/loadBajara")
	public ModelAndView loadBajara(Model model) {

		return new ModelAndView("/farmer/Bajara");
	}

	@GetMapping(value = "/seasons")
	public ModelAndView seasons(@ModelAttribute PriceVO priceVO, HttpServletRequest request,
			@RequestParam(required = false, value = "season") String season) {
		System.out.println(season);
		priceVO.setSeason(season);
		
		return new ModelAndView("/farmer/allcrops", "priceVO", priceVO);
	}

	@GetMapping(value = "/predictprices")
	public ModelAndView loadCity2(@ModelAttribute PriceVO priceVO, HttpServletRequest request) {
		int year = Integer.parseInt(request.getParameter("Year"));
		int dist = Integer.parseInt(request.getParameter("District"));
		int variety = Integer.parseInt(request.getParameter("Variety"));
		String crop=request.getParameter("crop");
		priceVO.setYear(year);
		priceVO.setDistrict(dist);
		priceVO.setVariety(variety);
		priceVO.setCrop_name(crop);
		System.out.println(crop);
		return new ModelAndView("/farmer/"+crop, "priceVO", priceVO);
	}
	@GetMapping(value = "/predictyield")
	public ModelAndView loadCity3(@ModelAttribute YieldVO yieldVO, HttpServletRequest request) {
		int year = Integer.parseInt(request.getParameter("Year"));
		int dist = Integer.parseInt(request.getParameter("District"));
		int season = Integer.parseInt(request.getParameter("Season"));
		int crop = Integer.parseInt(request.getParameter("Crop"));
		int area = Integer.parseInt(request.getParameter("Area"));
		int rainfall = Integer.parseInt(request.getParameter("Rainfall"));
		yieldVO.setYear(year);
		yieldVO.setDistrict(dist);
		yieldVO.setSeason(season);
		yieldVO.setCrop(crop);
		yieldVO.setArea(area);
		yieldVO.setRainfall(rainfall);
		System.out.println(area+" "+rainfall);
		return new ModelAndView("/farmer/CropYield", "YieldVO", yieldVO);
	}
}