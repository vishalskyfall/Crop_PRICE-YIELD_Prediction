package com.cropPrediction.DAO;

import java.util.List;

import com.cropPrediction.model.PhotoVO;

public interface PhotoDAO {

	void photoInsert(PhotoVO photoVO);
	 List<PhotoVO> photoSearchAll();
	 PhotoVO searchPhotoById(PhotoVO photoVO);
}
