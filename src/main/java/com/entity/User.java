package com.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table; 

@Entity
@Table(name="user")
public class User {
	
	@Id
	private Long empoyeID;
	
	private String firstName;
	
	private String lastName;
	
	private String email;
	
	private  String password;
	
	public List<Session> getSessionList() {
		return sessionList;
	}

	public void setSessionList(List<Session> sessionList) {
		this.sessionList = sessionList;
	}

	@ManyToMany
	private List<Session> sessionList;
	
	
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "User [empoyeID=" + empoyeID + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email
				+ ", password=" + password + "]";
	}

	public User(String firstName, String lastName, Long empoyeID, String email, String password) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.empoyeID = empoyeID;
		this.email = email;
		this.password = password;
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

	public Long getEmpoyeID() {
		return empoyeID;
	}

	public void setEmpoyeID(Long empoyeID) {
		this.empoyeID = empoyeID;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	

}
