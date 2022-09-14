package com.Entity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="userinfo")
@Table(name="userinfo")

public class userwebsite {
	@Id
	@Column(name ="username")
	private String username;
	
	@Column(name ="name")
	private String name;
	
	@Column(name ="profession")
	private String profession;
	
	@Column(name ="about")
	private String about;

	@Column(name = "resume")
	private String resume;
	
	public String getResume() {
		return resume;
	}

	public void setResume(String resume) {
		this.resume = resume;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getProfession() {
		return profession;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}

	
	
	
	public userwebsite(String username, String name, String profession, String about,String resume) {
		super();
		this.username = username;
		this.name = name;
		this.profession = profession;
		this.about = about;
		this.resume = resume;
	}
	

	public userwebsite() {
		super();
	}

	
	
}
