package com.cropPrediction.service;

import java.util.List;

import com.cropPrediction.model.FeedbackVO;
import com.cropPrediction.model.LoginVO;

public interface FeedbackService {

	
	 void feedbackInsert(FeedbackVO feedbackVO);
	 List<FeedbackVO> feedbackSearchAll();
	 List feedbackByusername( LoginVO loginVO);
	 public List searchByUsername(LoginVO loginVO);
	 FeedbackVO searchFeedbackById(FeedbackVO feedbackVO);
}
