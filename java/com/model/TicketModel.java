package com.model;

public class TicketModel {

	private int ticketId;
    private String subject;
    private String description;
    private String status;
    private String createdAt;
    private String updatedAt;
    private int categoryId;
    private int userId;
    
	public TicketModel(int ticketId, String subject, String description, String status, String createdAt,
			String updatedAt, int categoryId, int userId) {
		super();
		this.ticketId = ticketId;
		this.subject = subject;
		this.description = description;
		this.status = status;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
		this.categoryId = categoryId;
		this.userId = userId;
	}

	public int getTicketId() {
		return ticketId;
	}

	public String getSubject() {
		return subject;
	}

	public String getDescription() {
		return description;
	}

	public String getStatus() {
		return status;
	}

	public String getCreatedAt() {
		return createdAt;
	}

	public String getUpdatedAt() {
		return updatedAt;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public int getUserId() {
		return userId;
	}

	public void setTicketId(int ticketId) {
		this.ticketId = ticketId;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}

	public void setUpdatedAt(String updatedAt) {
		this.updatedAt = updatedAt;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
    
	
    
    

}
