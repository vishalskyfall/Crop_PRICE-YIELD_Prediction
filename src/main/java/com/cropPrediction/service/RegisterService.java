package com.cropPrediction.service;

import java.util.List;

import com.cropPrediction.model.RegisterVO;

public interface RegisterService {
	
	void registerInsert(RegisterVO registerVO);
	
	List<RegisterVO> registerSearchAll();
	
	RegisterVO searchRegisterById(RegisterVO registerVO);
}
