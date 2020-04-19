package com.cropPrediction.DAO;

import java.util.List;

import com.cropPrediction.model.CountryVO;

public interface CountryDAO {

	 void countryInsert(CountryVO countryVO);
	 List<CountryVO> countrySearchAll();
	 CountryVO searchCountryById(CountryVO countryVO);
}
