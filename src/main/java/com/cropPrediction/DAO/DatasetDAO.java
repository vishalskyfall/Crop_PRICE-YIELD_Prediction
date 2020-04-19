package com.cropPrediction.DAO;

import java.util.List;

import com.cropPrediction.model.DatasetVO;

public interface DatasetDAO {
	
	void datasetInsert(DatasetVO datasetVO);

	List<DatasetVO> datasetSearchAll();
	
	DatasetVO searchDatasetById(DatasetVO datasetVO);
	
}
