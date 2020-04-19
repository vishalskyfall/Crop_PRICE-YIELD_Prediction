package com.cropPrediction.service;

import java.util.List;

import com.cropPrediction.model.ComplaintVO;
import com.cropPrediction.model.LoginVO;

public interface ComplaintService {

	public void insert(ComplaintVO complaintVO);

	public List search();

	public void delete(ComplaintVO complaintVO);

	public List edit(ComplaintVO complaintVO);

	public List complaintByusername(LoginVO loginVO);

	public List searchByUsername(LoginVO loginVO);
}
