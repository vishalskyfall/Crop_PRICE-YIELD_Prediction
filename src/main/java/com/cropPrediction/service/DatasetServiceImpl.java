package com.cropPrediction.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cropPrediction.DAO.DatasetDAO;
import com.cropPrediction.model.DatasetVO;

@Service
public class DatasetServiceImpl implements DatasetService{
	
	@Autowired
	DatasetDAO datasetDAO;
	@Transactional
	public void datasetInsert(DatasetVO datasetVO)
	{
		this.datasetDAO.datasetInsert(datasetVO);
	}
	
	@Transactional
	public List<DatasetVO> datasetSearchAll() {
		return this.datasetDAO.datasetSearchAll();
	
	}

	@Transactional
	public DatasetVO searchDatasetById(DatasetVO datasetVO) {
		
		return this.datasetDAO.searchDatasetById(datasetVO);
	}
}
