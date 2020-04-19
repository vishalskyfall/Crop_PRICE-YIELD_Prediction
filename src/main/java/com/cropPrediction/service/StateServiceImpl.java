package com.cropPrediction.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cropPrediction.DAO.StateDAO;
import com.cropPrediction.model.CountryVO;
import com.cropPrediction.model.StateVO;

@Service
public class StateServiceImpl implements StateService{
	
	@Autowired
	StateDAO stateDAO;
	@Transactional
	public void stateInsert(StateVO stateVO)
	{
		this.stateDAO.stateInsert(stateVO);
	}
	
	@Transactional
	public List<StateVO> stateSearchAll() {
		return this.stateDAO.stateSearchAll();
	
	}

	@Transactional
	public StateVO searchStateById(StateVO stateVO) {
		
		return this.stateDAO.searchStateById(stateVO);
	}

	@Override
	@Transactional
	public List<StateVO> stateSearchByCountry(CountryVO countryVO) {
		return stateDAO.stateSearchByCountry(countryVO);
	}
}
