package com.cropPrediction.service;

import java.util.List;

import com.cropPrediction.model.CropVO;
import com.cropPrediction.model.UploadImageVO;

public interface UploadImageService {

	 void uploadImageInsert(UploadImageVO UploadImageVO);
	 List<UploadImageVO> uploadImageSearchAll();
	 UploadImageVO searchUploadImageById(UploadImageVO UploadImageVO);
	 int imageCountOfCrop(CropVO cropVO);
	 List<UploadImageVO> getImagesByCrop(CropVO cropVO);
}
