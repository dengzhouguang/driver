package com.dzg.driver.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "item")
public class Item implements Serializable {
	private static final long serialVersionUID = -288824468726355498L;
	private String explain;

	@Column(name = "commentate", nullable = false, length = 500)
	public String getExplain() {
		return explain;
	}

	public void setExplain(String explain) {
		this.explain = explain;
	}

	@Column(name = "question", nullable = false, length = 255)
	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	@Column(name = "no", nullable = false, length = 10)
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Column(name = "ta", nullable = false, length = 10)
	public String getTa() {
		return ta;
	}

	public void setTa(String ta) {
		this.ta = ta;
	}

	@Column(name = "tixing", nullable = false, length = 10)
	public String getTixing() {
		return tixing;
	}

	public void setTixing(String tixing) {
		this.tixing = tixing;
	}

	@Id
	@Column(name = "num", nullable = false, length = 10)
	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	@Column(name = "a", nullable = false, length = 255)
	public String getA() {
		return a;
	}

	public void setA(String a) {
		this.a = a;
	}

	@Column(name = "b", nullable = false, length = 255)
	public String getB() {
		return b;
	}

	public void setB(String b) {
		this.b = b;
	}

	@Column(name = "c", nullable = true, length = 255)
	public String getC() {
		return c;
	}

	public void setC(String c) {
		this.c = c;
	}

	@Column(name = "d", nullable = true, length = 255)
	public String getD() {
		return d;
	}

	public void setD(String d) {
		this.d = d;
	}

	@Column(name = "imgurl", nullable = true, length = 255)
	public String getImgurl() {
		return imgurl;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}

	@Override
	public String toString() {
		return "Item [explain=" + explain + ", imgurl=" + imgurl + ", question=" + question + ", id=" + id + ", ta="
				+ ta + ", tixing=" + tixing + ", num=" + num + ", a=" + a + ", b=" + b + ", c=" + c + ", d=" + d + "]";
	}

	private String question;
	private String id;
	private String ta;
	private String tixing;
	private String num;
	private String imgurl;
	private String a;
	private String b;
	private String c;
	private String d;
}
