package com.dzg.driver.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class User extends Object implements Serializable{
	private static final long serialVersionUID = -7466560273311487523L;
	private String id;
	private String username;
	private int score;
	@Column(name = "username", nullable = false, length = 20)
	public String getUsername() {
		return username;
	}

	public User() {
		super();
	}

	public User(String username, String password, String id, int score, int power) {
		super();
		this.username = username;
		this.password = password;
		this.id = id;
		this.score = score;
		this.power = power;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "password", nullable = false, length = 20)
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", id=" + id + ", score=" + score + "]";
	}

	@Id
	@Column(name = "id", nullable = false, length = 12, unique = true)
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Column(name = "score", nullable = false, length = 3)
	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}
	private String password;
	

	private int power;
	@Column(name = "power", nullable = true)
	public int getPower() {
		return power;
	}

	public void setPower(int power) {
		this.power = power;
	}
}
