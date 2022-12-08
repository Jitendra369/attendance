package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Admin {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int adminID;
	
	private String firstName;
	
	private String lastName;
	
	private int age;
	
	private String gender;
	
	private Long mobile_no;
	
	private String password;
	
	private String status; 
	
	
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}


	

	@Override
	public String toString() {
		return "Admin [adminID=" + adminID + ", firstName=" + firstName + ", lastName=" + lastName + ", age=" + age
				+ ", gender=" + gender + ", mobile_no=" + mobile_no + ", password=" + password + ", status=" + status
				+ "]";
	}




	public Admin( String firstName, String lastName, int age, String gender, Long mobile_no,
			String password) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		this.gender = gender;
		this.mobile_no = mobile_no;
		this.password = password;
		this.status ="pending";
	}




	public String getStatus() {
		return status;
	}




	public void setStatus(String status) {
		this.status = status;
	}




	public int getAdminID() {
		return adminID;
	}




	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public Long getMobile_no() {
		return mobile_no;
	}


	public void setMobile_no(Long mobile_no) {
		this.mobile_no = mobile_no;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}
	
	
	

}
