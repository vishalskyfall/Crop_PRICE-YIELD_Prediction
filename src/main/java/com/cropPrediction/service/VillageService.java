package com.cropPrediction.service;

import java.util.List;

import com.cropPrediction.model.DistrictVO;
import com.cropPrediction.model.VillageVO;

public interface VillageService {
	void villageInsert(VillageVO villageVO);
	List<VillageVO> villageSearchAll();
	VillageVO searchVillageById(VillageVO villageVO);
	List<VillageVO> villageSearchByDistrict(DistrictVO districtVO);
}
