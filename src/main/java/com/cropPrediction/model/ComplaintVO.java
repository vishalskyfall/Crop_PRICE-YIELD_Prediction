package com.cropPrediction.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Complaint_table")
public class ComplaintVO 
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	@Column(name="complaint_subject")
	private String complaintSubject;
	
	@Column(name="complaint_description")
	private String complaintDescription;
	
	@Column(name="complaint_date")
	private String complaintDate;   //Date
	
	@Column(name="reply")
	private String reply;
	
	@Column(name="reply_date")
	private String replyDate;
	
	@Column(name="response")
	private String response;
	
	public String getResponse() {
		return response;
	}

	public void setResponse(String response) {
		this.response = response;
	}

	@Column(name="complaint_filename")
	private String complaintFileName;
	
	@Column(name="complaint_filelink")
	private String complaintFileLink;
	
	
	@Column(name="complaint_status")
	private String complaintStatus;
	
	@Column(name="status")
	private boolean status;
	
	@ManyToOne
	private LoginVO loginVO;
	
	@ManyToOne
	private RegisterVO registerVO;

	public RegisterVO getRegisterVO() {
		return registerVO;
	}

	public void setRegisterVO(RegisterVO registerVO) {
		this.registerVO = registerVO;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getComplaintSubject() {
		return complaintSubject;
	}

	public void setComplaintSubject(String complaintSubject) {
		this.complaintSubject = complaintSubject;
	}

	public String getComplaintDescription() {
		return complaintDescription;
	}

	public void setComplaintDescription(String complaintDescription) {
		this.complaintDescription = complaintDescription;
	}

	

	public String getReply() {
		return reply;
	}

	public void setReply(String reply) {
		this.reply = reply;
	}

	public String getReplyDate() {
		return replyDate;
	}

	public void setReplyDate(String replyDate) {
		this.replyDate = replyDate;
	}

	public String getComplaintFileName() {
		return complaintFileName;
	}

	
	public String getComplaintDate() {
		return complaintDate;
	}

	public void setComplaintDate(String complaintDate) {
		this.complaintDate = complaintDate;
	}

	public void setComplaintFileName(String complaintFileName) {
		this.complaintFileName = complaintFileName;
	}

	public String getComplaintFileLink() {
		return complaintFileLink;
	}

	public void setComplaintFileLink(String complaintFileLink) {
		this.complaintFileLink = complaintFileLink;
	}

	public String getComplaintStatus() {
		return complaintStatus;
	}

	public void setComplaintStatus(String complaintStatus) {
		this.complaintStatus = complaintStatus;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public LoginVO getLoginVO() {
		return loginVO;
	}

	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}
	
	
	
}
