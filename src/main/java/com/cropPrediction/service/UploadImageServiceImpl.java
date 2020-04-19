package com.cropPrediction.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cropPrediction.DAO.UploadImageDAO;
import com.cropPrediction.model.CropVO;
import com.cropPrediction.model.UploadImageVO;

@Service
public class UploadImageServiceImpl implements UploadImageService {

	@Autowired
	UploadImageDAO uploadImageDAO;

	@Transactional
	public void uploadImageInsert(UploadImageVO uploadImageVO) {
		this.uploadImageDAO.uploadImageInsert(uploadImageVO);
	}

	@Transactional
	public List<UploadImageVO> uploadImageSearchAll() {
		return this.uploadImageDAO.uploadImageSearchAll();

	}

	@Transactional
	public UploadImageVO searchUploadImageById(UploadImageVO uploadImageVO) {

		return this.uploadImageDAO.searchUploadImageById(uploadImageVO);
	}

	@Transactional
	public int imageCountOfCrop(CropVO cropVO) {
		
		return this.uploadImageDAO.imageCountOfCrop(cropVO);
	}

	@Transactional
	public List<UploadImageVO> getImagesByCrop(CropVO cropVO) {
		return this.uploadImageDAO.getImagesByCrop(cropVO);
	}

	
}
