package com.dzg.driver.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "exam")
public class Exercise {
	private int id;

	private String question;

	private String a;
	private String b;
	private String c;
	private String d;
	private String type;
	private String answer;
	private String bestanswer;
	private String imgurl;

	@Id
	@Column(name = "id", nullable = false, length = 6, unique = true)
	public int getId() {
		return id;
	}

	@Override
	public String toString() {
		return "Exercise [id=" + id + ", question=" + question + ", a=" + a + ", b=" + b + ", c=" + c + ", d=" + d
				+ ", type=" + type + ", answer=" + answer + ", bestanswer=" + bestanswer + ", imgurl=" + imgurl + "]";
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "question", nullable = true)
	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	@Column(name = "a", nullable = true)
	public String getA() {
		return a;
	}

	public void setA(String a) {
		this.a = a;
	}

	@Column(name = "b", nullable = true)
	public String getB() {
		return b;
	}

	public void setB(String b) {
		this.b = b;
	}

	@Column(name = "c", nullable = true)
	public String getC() {
		return c;
	}

	public void setC(String c) {
		this.c = c;
	}

	@Column(name = "d", nullable = true)
	public String getD() {
		return d;
	}

	public void setD(String d) {
		this.d = d;
	}

	@Column(name = "type", nullable = true)
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Column(name = "answer", nullable = true)
	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	@Column(name = "bestanswer", nullable = true)
	public String getBestanswer() {
		return bestanswer;
	}

	public void setBestanswer(String bestanswer) {
		this.bestanswer = bestanswer;
	}

	@Column(name = "imgurl", nullable = true)
	public String getImgurl() {
		return imgurl;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}
}
