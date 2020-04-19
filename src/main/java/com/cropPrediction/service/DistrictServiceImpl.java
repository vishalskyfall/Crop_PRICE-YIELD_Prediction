package com.cropPrediction.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cropPrediction.DAO.DistrictDAO;
import com.cropPrediction.model.DistrictVO;
import com.cropPrediction.model.StateVO;

@Service
public class DistrictServiceImpl implements DistrictService{
	
	@Autowired
	DistrictDAO districtDAO;
	@Transactional
	public void districtInsert(DistrictVO districtVO)
	{
		this.districtDAO.districtInsert(districtVO);
	}
	
	@Transactional
	public List<DistrictVO> districtSearchAll() {
		return this.districtDAO.districtSearchAll();
	
	}

	@Transactional
	public DistrictVO searchDistrictById(DistrictVO districtVO) {
		
		return this.districtDAO.searchDistrictById(districtVO);
	}

	@Override
	@Transactional
	public List<DistrictVO> districtSearchByState(StateVO stateVO) {
		return districtDAO.districtSearchByState(stateVO);
	}
}
