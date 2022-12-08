package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="skill")
public class Skill {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int skillID;
	
	private String skillType;
	
	private String skillDesc;
	
//	@OneToOne
//	@JoinColumn(name="sessionid", nullable = true)
	
	private int sessionID;

	
	public Skill() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Skill(int skillID, String skillType, String skillDesc, int sessionID) {
		super();
		this.skillID = skillID;
		this.skillType = skillType;
		this.skillDesc = skillDesc;
	}


	public int getSkillID() {
		return skillID;
	}


	public void setSkillID(int skillID) {
		this.skillID = skillID;
	}


	public String getSkillType() {
		return skillType;
	}


	public void setSkillType(String skillType) {
		this.skillType = skillType;
	}


	public String getSkillDesc() {
		return skillDesc;
	}


	public void setSkillDesc(String skillDesc) {
		this.skillDesc = skillDesc;
	}


	public int getSessionID() {
		return sessionID;
	}


	public void setSessionID(int sessionID) {
		this.sessionID = sessionID;
	}

}
