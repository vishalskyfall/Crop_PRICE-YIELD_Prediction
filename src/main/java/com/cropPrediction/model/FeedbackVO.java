package com.cropPrediction.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="feedback_table")
public class FeedbackVO {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	@Column(name="feedback")
	private String feedback;
	
	@Column(name = "feedback_status")
	private boolean feedbackStatus;
	
	@Column(name="feedback_date")
	private String feedbackDate; 
	
	@Column(name="rating")
	private String rating; 

	@ManyToOne
	private RegisterVO registerVO;
	@ManyToOne
	private LoginVO loginVO;
	

	public LoginVO getLoginVO() {
		return loginVO;
	}

	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}

	public RegisterVO getRegisterVO() {
		return registerVO;
	}

	public void setRegisterVO(RegisterVO registerVO) {
		this.registerVO = registerVO;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public boolean isFeedbackStatus() {
		return feedbackStatus;
	}

	public void setFeedbackStatus(boolean feedbackStatus) {
		this.feedbackStatus = feedbackStatus;
	}

	public String getFeedbackDate() {
		return feedbackDate;
	}

	public void setFeedbackDate(String feedbackDate) {
		this.feedbackDate = feedbackDate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
}
