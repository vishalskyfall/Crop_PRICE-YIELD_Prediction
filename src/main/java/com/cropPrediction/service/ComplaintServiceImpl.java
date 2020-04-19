package com.cropPrediction.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cropPrediction.DAO.ComplaintDAO;
import com.cropPrediction.model.ComplaintVO;
import com.cropPrediction.model.LoginVO;

@Service
public class ComplaintServiceImpl implements ComplaintService {

	@Autowired
	ComplaintDAO complaintDAO;
	 
	 @Transactional
	 public void insert(ComplaintVO complaintVO){
		 complaintDAO.insert(complaintVO);
	 }
	 
	 @Transactional
	 public List search(){
		List complaintList =  complaintDAO.search();
		return complaintList;
	 }
	 
	 @Transactional
	 public void delete(ComplaintVO complaintVO){
		 complaintDAO.delete(complaintVO);
	 }
	 
	 @Transactional
	 public List edit(ComplaintVO complaintVO){
		List complaintList =  complaintDAO.edit(complaintVO);
		return complaintList;
	 }
	 @Transactional
	 public List complaintByusername(LoginVO loginVO){
		List complaintList =  complaintDAO.complaintByusername( loginVO);
		return complaintList;
	 }
		
	@Transactional	
	public List searchByUsername(LoginVO loginVO){
		List loginList =  complaintDAO.searchByUsername(loginVO);
		return loginList;
	 }
}
