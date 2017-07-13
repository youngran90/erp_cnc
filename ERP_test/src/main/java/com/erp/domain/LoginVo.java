package com.erp.domain;

import java.io.Serializable;

public class LoginVo implements Serializable {

	private String id;
	private String pw;
	
	public LoginVo(){};
	
public LoginVo(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	@Override
	public String toString() {
		return "LoginVo [id=" + id + ", pw=" + pw + "]";
	}
	
	
	
}
