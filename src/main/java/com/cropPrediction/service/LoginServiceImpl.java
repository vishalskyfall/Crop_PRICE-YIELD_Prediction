package com.cropPrediction.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cropPrediction.DAO.LoginDAO;
import com.cropPrediction.model.LoginVO;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	LoginDAO loginDAO;

	@Transactional
	public void loginInsert(LoginVO loginVO) {
		this.loginDAO.loginInsert(loginVO);
	}

	@Transactional
	public List<LoginVO> loginSearchAll() {
		return this.loginDAO.loginSearchAll();

	}

	@Transactional
	public LoginVO searchLoginById(LoginVO loginVO) {
		return this.loginDAO.searchLoginById(loginVO);
	}
}
