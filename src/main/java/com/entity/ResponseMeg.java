package com.entity;

public class ResponseMeg {
	private String message;
	private String cssClass;
	
	
	public ResponseMeg() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ResponseMeg(String message, String cssClass) {
		super();
		this.message = message;
		this.cssClass = cssClass;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getCssClass() {
		return cssClass;
	}
	public void setCssClass(String cssClass) {
		this.cssClass = cssClass;
	}
	
	

}
