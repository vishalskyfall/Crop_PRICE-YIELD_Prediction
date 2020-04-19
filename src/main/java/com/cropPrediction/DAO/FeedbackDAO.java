package com.cropPrediction.DAO;

import java.util.List;

import com.cropPrediction.model.FeedbackVO;
import com.cropPrediction.model.LoginVO;

public interface FeedbackDAO {

	 void feedbackInsert(FeedbackVO feedbackVO);
	 List<FeedbackVO> feedbackSearchAll();
	 public List feedbackByusername( LoginVO loginVO);
	 FeedbackVO searchFeedbackById(FeedbackVO feedbackVO);
	 public List searchByUsername(LoginVO loginVO);
}
