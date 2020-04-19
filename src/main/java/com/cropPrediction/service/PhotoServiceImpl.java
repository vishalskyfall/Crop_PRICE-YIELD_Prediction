package com.cropPrediction.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;

import com.cropPrediction.DAO.PhotoDAO;
import com.cropPrediction.model.PhotoVO;
import com.cropPrediction.model.UploadImageVO;

public class PhotoServiceImpl implements PhotoService {

	@Autowired
	PhotoDAO photoDAO;

	@Transactional
	public void photoInsert(PhotoVO photoVO) {
		this.photoDAO.photoInsert(photoVO);
	}

	@Transactional
	public List<PhotoVO> photoSearchAll() {
		return this.photoDAO.photoSearchAll();

	}

	@Transactional
	public PhotoVO searchPhotoById(PhotoVO photoVO) {

		return this.photoDAO.searchPhotoById(photoVO);
	}

	

}
