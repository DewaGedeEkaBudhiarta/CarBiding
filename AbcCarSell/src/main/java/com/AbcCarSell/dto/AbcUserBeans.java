package com.AbcCarSell.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="User")

public class AbcUserBeans {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	private int id_user;
	private String username;
	private String email;
	private String password;
	private String role;
	
	public AbcUserBeans( ) {
		
	}

	public AbcUserBeans(int id_user, String username, String email, String password, String role) {
		super();
		this.id_user = id_user;
		this.username = username;
		this.email = email;
		this.password = password;
		this.role = role;
	}

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "AbcUserBeans [id_user=" + id_user + ", username=" + username + ", email=" + email + ", password="
				+ password + ", role=" + role + "]";
	}

	

}
