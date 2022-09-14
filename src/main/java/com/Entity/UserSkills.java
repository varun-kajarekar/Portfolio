package com.Entity;

import javax.persistence.*;


@Entity(name = "userskill")
@Table(name="userskill")
public class UserSkills {
	
	@Id
	@Column(name="id")
	private int id;
	
	@Column(name="username")
	private String username;
	
	@Column(name="skill")
	private String skill;
	
	@Column(name="rate")
	private int rate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getSkill() {
		return skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}

	public int getRate() {
		return rate;
	}

	public void setRate(int rate) {
		this.rate = rate;
	}

	public UserSkills(int i, String username, String skill, int rate) {
		super();
		this.id = i;
		this.username = username;
		this.skill = skill;
		this.rate = rate;
	}

	public UserSkills() {
		super();
	}
	

}
