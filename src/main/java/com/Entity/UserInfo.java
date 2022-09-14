package com.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="notetaker")
@Table(name="notetaker")

public class UserInfo {
	@Id
	@Column(name="id")
	private int id;
	
	
		
	@Column(name="username")
	private String username;
	
	@Column(name="password")
	private String password;

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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	

	public UserInfo(int id,String username) {
		super();
		this.id = id;
		
		this.username = username;
	}

	public UserInfo(int id,String username, String password) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
	}

	public UserInfo() {
		super();
	}
	
}