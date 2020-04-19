package com.cropPrediction.DAO;

import java.util.List;

import com.cropPrediction.model.DistrictVO;
import com.cropPrediction.model.VillageVO;

public interface VillageDAO {
	
	void villageInsert(VillageVO villageVO);

	List<VillageVO> villageSearchAl();
	
	VillageVO searchVillageById(VillageVO villageVO);

	List<VillageVO> villageSearchByDistrict(DistrictVO districtVO);
}
