package com.cropPrediction.service;

import java.util.List;

import com.cropPrediction.model.LoginVO;

public interface LoginService {
	
	void loginInsert(LoginVO loginVO);
	
	List<LoginVO> loginSearchAll();
	
	LoginVO searchLoginById(LoginVO loginVO);
}
