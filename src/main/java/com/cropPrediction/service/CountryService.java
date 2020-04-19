package com.cropPrediction.service;

import java.util.List;

import com.cropPrediction.model.CountryVO;

public interface CountryService  {
	
	 void countryInsert(CountryVO countryVO);
	 List<CountryVO> countrySearchAll();
	 CountryVO searchCountryById(CountryVO countryVO);
}
