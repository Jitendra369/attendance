package com.entity;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="session")
public class Session {
	
	@Id
	private int sessionID;
	
	private String sessionDesc;
	
	private String skillSet;
	
	


	private String sessionContact;
	
	private String sessionEmail;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date timestamp;
	
	private int avaliableSlot;
	
	@OneToOne
	@JoinColumn(name="skillid")
	private Skill skillID;
	
	@ManyToMany
	private List<User> users;
	
	
//	extra field handle by Admin
	
	public String getSessionContact() {
		return sessionContact;
	}


	public void setSessionContact(String sessionContact) {
		this.sessionContact = sessionContact;
	}


	public String getSessionEmail() {
		return sessionEmail;
	}


	public void setSessionEmail(String sessionEmail) {
		this.sessionEmail = sessionEmail;
	}

	
	public Skill getSkillID() {
		return skillID;
	}


	public void setSkillID(Skill skillID) {
		this.skillID = skillID;
	}


	public List<User> getUsers() {
		return users;
	}


	public void setUsers(List<User> users) {
		this.users = users;
	}



	private int totalStudentEnroll;
	
	private int totalStudentPresent;
	
	private String studentFeedBack;
	
	@OneToOne
	private Trainer trainer; 

	public Session() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Trainer getTrainer() {
		return trainer;
	}



	public void setTrainer(Trainer trainer) {
		this.trainer = trainer;
	}




	public Session(int sessionID, String sessionDesc, String skillSet, Timestamp timestamp, int avaliableSlot) {
		super();
		this.sessionID = sessionID;
		this.sessionDesc = sessionDesc;
		this.skillSet = skillSet;
		this.timestamp = new Date();
		this.avaliableSlot = avaliableSlot;
	}



	public int getSessionID() {
		return sessionID;
	}



	public void setSessionID(int sessionID) {
		this.sessionID = sessionID;
	}



	public String getSessionDesc() {
		return sessionDesc;
	}



	public void setSessionDesc(String sessionDesc) {
		this.sessionDesc = sessionDesc;
	}



	public String getSkillSet() {
		return skillSet;
	}



	public void setSkillSet(String skillSet) {
		this.skillSet = skillSet;
	}



	public Date getTimestamp() {
		return timestamp;
	}



	public void setTimestamp(Date timestamp) {
		this.timestamp = timestamp;
	}



	public int getAvaliableSlot() {
		return avaliableSlot;
	}



	public void setAvaliableSlot(int avaliableSlot) {
		this.avaliableSlot = avaliableSlot;
	}



	public int getTotalStudentEnroll() {
		return totalStudentEnroll;
	}



	public void setTotalStudentEnroll(int totalStudentEnroll) {
		this.totalStudentEnroll = totalStudentEnroll;
	}



	public int getTotalStudentPresent() {
		return totalStudentPresent;
	}



	public void setTotalStudentPresent(int totalStudentPresent) {
		this.totalStudentPresent = totalStudentPresent;
	}



	public String getStudentFeedBack() {
		return studentFeedBack;
	}



	public void setStudentFeedBack(String studentFeedBack) {
		this.studentFeedBack = studentFeedBack;
	}





}
