package com.cropPrediction.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cropPrediction.DAO.FeedbackDAO;
import com.cropPrediction.model.FeedbackVO;
import com.cropPrediction.model.LoginVO;



@Service
public class FeedbackServiceImpl implements FeedbackService {

	@Autowired
	FeedbackDAO feedbackDAO;

	@Transactional
	public void feedbackInsert(FeedbackVO feedbackVO) {
		this.feedbackDAO.feedbackInsert(feedbackVO);
	}

	@Transactional
	public List<FeedbackVO> feedbackSearchAll() {
		return this.feedbackDAO.feedbackSearchAll();

	}
	 @Transactional
	 public List feedbackByusername(LoginVO loginVO){
		List complaintList =  feedbackDAO.feedbackByusername(loginVO);
		return complaintList;
	 }
	 @Transactional	
		public List searchByUsername(LoginVO loginVO){
			List loginList =  feedbackDAO.searchByUsername(loginVO);
			return loginList;
		 }
	@Transactional
	public FeedbackVO searchFeedbackById(FeedbackVO feedbackVO) {

		return this.feedbackDAO.searchFeedbackById(feedbackVO);
	}
}