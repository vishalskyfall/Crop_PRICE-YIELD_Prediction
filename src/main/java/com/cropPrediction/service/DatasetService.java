package com.cropPrediction.service;

import java.util.List;

import com.cropPrediction.model.DatasetVO;

public interface DatasetService {
	
	void datasetInsert(DatasetVO datasetVO);
	
	List<DatasetVO> datasetSearchAll();
	
	DatasetVO searchDatasetById(DatasetVO datasetVO);
}
