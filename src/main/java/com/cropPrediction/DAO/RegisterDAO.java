package com.cropPrediction.DAO;

import java.util.List;

import com.cropPrediction.model.RegisterVO;

public interface RegisterDAO {
	
	void registerInsert(RegisterVO registerVO);

	List<RegisterVO> registerSearchAll();
	
	RegisterVO searchRegisterById(RegisterVO registerVO);
}
