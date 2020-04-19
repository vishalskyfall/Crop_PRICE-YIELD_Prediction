package com.cropPrediction.DAO;

import java.util.List;

import com.cropPrediction.model.DistrictVO;
import com.cropPrediction.model.StateVO;

public interface DistrictDAO {
	
	void districtInsert(DistrictVO districtVO);

	List<DistrictVO> districtSearchAll();
	
	DistrictVO searchDistrictById(DistrictVO districtVO);

	List<DistrictVO> districtSearchByState(StateVO stateVO);
}
