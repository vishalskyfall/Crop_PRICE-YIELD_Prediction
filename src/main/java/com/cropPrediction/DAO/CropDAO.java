package com.cropPrediction.DAO;

import java.util.List;

import com.cropPrediction.model.CropVO;

public interface CropDAO {
	void cropInsert(CropVO cropVO);
	 List<CropVO> cropVOSearchAll();
	 CropVO searchCropById(CropVO cropVO);
}
