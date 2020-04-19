package com.cropPrediction.DAO;

import java.util.List;

import com.cropPrediction.model.LoginVO;

public interface LoginDAO {
	
	void loginInsert(LoginVO loginVO);

	List<LoginVO> loginSearchAll();
	
	LoginVO searchLoginById(LoginVO loginVO);
}
