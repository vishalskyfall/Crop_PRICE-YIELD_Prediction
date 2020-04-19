package com.cropPrediction.DAO;

import java.util.List;

import com.cropPrediction.model.CountryVO;
import com.cropPrediction.model.StateVO;

public interface StateDAO {
	
	void stateInsert(StateVO stateVO);

	List<StateVO> stateSearchAll();
	
	StateVO searchStateById(StateVO stateVO);

	List<StateVO> stateSearchByCountry(CountryVO countryVO);
}
