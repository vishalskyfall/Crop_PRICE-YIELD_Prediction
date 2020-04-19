package com.cropPrediction.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cropPrediction.DAO.RegisterDAO;
import com.cropPrediction.model.RegisterVO;

@Service
public class RegisterServiceImpl implements RegisterService{
	
	@Autowired
	RegisterDAO registerDAO;
	@Transactional
	public void registerInsert(RegisterVO registerVO)
	{
		this.registerDAO.registerInsert(registerVO);
	}
	
	@Transactional
	public List<RegisterVO> registerSearchAll() {
		return this.registerDAO.registerSearchAll();
	
	}

	@Transactional
	public RegisterVO searchRegisterById(RegisterVO registerVO) {
		return this.registerDAO.searchRegisterById(registerVO);
	}
}
