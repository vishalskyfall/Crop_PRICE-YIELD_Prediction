package com.cropPrediction.service;

import java.util.List;

import com.cropPrediction.model.DistrictVO;
import com.cropPrediction.model.StateVO;

public interface DistrictService {
	void districtInsert(DistrictVO districtVO);
	List<DistrictVO> districtSearchAll();
	DistrictVO searchDistrictById(DistrictVO districtVO);
	List<DistrictVO> districtSearchByState(StateVO stateVO);
}
