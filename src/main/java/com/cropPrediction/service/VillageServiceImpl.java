package com.cropPrediction.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cropPrediction.DAO.VillageDAO;
import com.cropPrediction.model.DistrictVO;
import com.cropPrediction.model.VillageVO;

@Service
public class VillageServiceImpl implements VillageService{
	
	@Autowired
	VillageDAO villageDAO;
	@Transactional
	public void villageInsert(VillageVO villageVO)
	{
		this.villageDAO.villageInsert(villageVO);
	}
	
	@Transactional
	public List<VillageVO> villageSearchAll() {
		return this.villageDAO.villageSearchAl();
	
	}

	@Transactional
	public VillageVO searchVillageById(VillageVO villageVO) {
		
		return this.villageDAO.searchVillageById(villageVO);
	}

	@Override
	@Transactional
	public List<VillageVO> villageSearchByDistrict(DistrictVO districtVO) {
		return villageDAO.villageSearchByDistrict(districtVO);
		
	}
}
