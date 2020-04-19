package com.cropPrediction.service;

import java.util.List;

import com.cropPrediction.model.PhotoVO;


public interface PhotoService {

	
	void photoInsert(PhotoVO photoVO);
	 List<PhotoVO> photoSearchAll();
	 PhotoVO searchPhotoById(PhotoVO photoVO);
}