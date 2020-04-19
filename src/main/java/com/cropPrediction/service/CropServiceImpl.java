package com.cropPrediction.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cropPrediction.DAO.CropDAO;
import com.cropPrediction.model.CropVO;



	@Service
	public class CropServiceImpl implements CropService {

		@Autowired
		CropDAO cropDAO;

		@Transactional
		public void cropInsert(CropVO cropVO) {
			this.cropDAO.cropInsert(cropVO);
		}

		@Transactional
		public List<CropVO> cropVOSearchAll() {
			return this.cropDAO.cropVOSearchAll();

		}

		@Transactional
		public CropVO searchCropById(CropVO cropVO) {

			return this.cropDAO.searchCropById(cropVO);
		}

		

		
	}

