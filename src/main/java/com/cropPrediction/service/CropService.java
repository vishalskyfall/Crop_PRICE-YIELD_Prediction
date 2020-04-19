package com.cropPrediction.service;

import java.util.List;

import com.cropPrediction.model.CropVO;

public interface CropService {

	void cropInsert(CropVO cropVO);
	 List<CropVO> cropVOSearchAll();
	 CropVO searchCropById(CropVO cropVO);
}
