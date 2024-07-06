package com.model;

public class FeedbackModel {

	private int feedbackId;
    private String message;
    private String createdAt;
    private String userId;
    private int feedbackTypeId;
    
	public FeedbackModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public FeedbackModel(int feedbackId, String message, String createdAt, String userId, int feedbackTypeId) {
		super();
		this.feedbackId = feedbackId;
		this.message = message;
		this.createdAt = createdAt;
		this.userId = userId;
		this.feedbackTypeId = feedbackTypeId;
	}

	public int getFeedbackId() {
		return feedbackId;
	}

	public String getMessage() {
		return message;
	}

	public String getCreatedAt() {
		return createdAt;
	}

	public String getUserId() {
		return userId;
	}

	public int getFeedbackTypeId() {
		return feedbackTypeId;
	}

	public void setFeedbackId(int feedbackId) {
		this.feedbackId = feedbackId;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public void setFeedbackTypeId(int feedbackTypeId) {
		this.feedbackTypeId = feedbackTypeId;
	}
    
    

}
