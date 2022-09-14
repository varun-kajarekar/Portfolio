package com.Entity;

import javax.persistence.*;


@Entity(name="theme")
@Table(name="theme")
public class UserTheme {
	@Id
	@Column(name="username")
	private String username;
	
	@Column(name="theme")
	private String theme;

	public UserTheme() {
		super();
	}

	public UserTheme(String username, String theme) {
		super();
		this.username = username;
		this.theme = theme;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getTheme() {
		return theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}
	
	
	
	
	

}
