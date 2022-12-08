package com.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="trainer")
public class Trainer {
	
	@Id
	private int trainerID;
	
	private String trainerName;
	
	private String tainerNumber;
	
	private String trainerEmail;
	
	private String skillSet;
	
	@OneToOne
	private Session session;

	public Trainer() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Trainer(int trainerID, String trainerName, String tainerNumber, String trainerEmail, String skillSet,
			Session session) {
		super();
		this.trainerID = trainerID;
		this.trainerName = trainerName;
		this.tainerNumber = tainerNumber;
		this.trainerEmail = trainerEmail;
		this.skillSet = skillSet;
		this.session = session;
	}

	public int getTrainerID() {
		return trainerID;
	}

	public void setTrainerID(int trainerID) {
		this.trainerID = trainerID;
	}

	public String getTrainerName() {
		return trainerName;
	}

	public void setTrainerName(String trainerName) {
		this.trainerName = trainerName;
	}

	public String getTainerNumber() {
		return tainerNumber;
	}

	public void setTainerNumber(String tainerNumber) {
		this.tainerNumber = tainerNumber;
	}

	public String getTrainerEmail() {
		return trainerEmail;
	}

	public void setTrainerEmail(String trainerEmail) {
		this.trainerEmail = trainerEmail;
	}

	public String getSkillSet() {
		return skillSet;
	}

	public void setSkillSet(String skillSet) {
		this.skillSet = skillSet;
	}

	public Session getSession() {
		return session;
	}

	public void setSession(Session session) {
		this.session = session;
	}
	
	
	
	
	
	

}
