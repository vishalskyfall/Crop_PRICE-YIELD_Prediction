package com.cropPrediction.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cropPrediction.DAO.CountryDAO;
import com.cropPrediction.model.CountryVO;

@Service
public class CountryServiceImpl implements CountryService {

	@Autowired
	CountryDAO countryDAO;

	@Transactional
	public void countryInsert(CountryVO countryVO) {
		this.countryDAO.countryInsert(countryVO);
	}

	@Transactional
	public List<CountryVO> countrySearchAll() {
		return this.countryDAO.countrySearchAll();

	}

	@Transactional
	public CountryVO searchCountryById(CountryVO countryVO) {

		return this.countryDAO.searchCountryById(countryVO);
	}
}
