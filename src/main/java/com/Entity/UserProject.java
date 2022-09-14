package com.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="userproject")
@Table(name="userproject")
public class UserProject {
	
	@Id
	@Column(name="id")
	private int id;
	
	@Column(name="username")
	private String username;
	
	@Column(name="pname")
	private String pname;

	@Column(name="plink")
	private String plink;
	
	@Column(name="pinfo")
	private String pinfo;


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

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPlink() {
		return plink;
	}

	public void setPlink(String plink) {
		this.plink = plink;
	}

	public String getPinfo() {
		return pinfo;
	}

	public void setPinfo(String pinfo) {
		this.pinfo = pinfo;
	}

	public UserProject(int id, String username, String pname, String plink, String pinfo) {
		super();
		this.id = id;
		this.username = username;
		this.pname = pname;
		this.plink = plink;
		this.pinfo = pinfo;
	}

	public UserProject() {
		super();
	}
	

}
