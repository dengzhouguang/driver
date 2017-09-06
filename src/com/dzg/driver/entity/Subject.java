package com.dzg.driver.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
public abstract class Subject{
	public abstract int getId();
	public abstract void setId(int id);
	public abstract String getQuestion();
	public abstract void setQuestion(String question);
	public abstract String getImgurl();
	public abstract void setImgurl(String imgurl);
	public abstract String getOption1();
	public abstract String getOption2();
	public abstract String getOption3();
	public abstract String getOption4();
	public abstract void setOption1(String option1);
	public abstract void setOption2(String option2);
	public abstract void setOption3(String option3);
	public abstract void setOption4(String option4);
	public abstract String getAnswer();
	public abstract void setAnswer(String answer);
}
@Entity
@Table(name = "exam1")
 class Subject1 extends Subject{

	private int id;

	@Id
	@Column(name = "id", nullable = false, length = 6, unique = true)
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "question", nullable = false)
	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	@Column(name = "imgurl", nullable = false)
	public String getImgurl() {
		return imgurl;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}

	@Column(name = "option1", nullable = true)
	public String getOption1() {
		return option1;
	}

	public void setOption1(String option1) {
		this.option1 = option1;
	}

	@Column(name = "option2", nullable = true)
	public String getOption2() {
		return option2;
	}

	public void setOption2(String option2) {
		this.option2 = option2;
	}

	@Column(name = "option3", nullable = true)
	public String getOption3() {
		return option3;
	}

	public void setOption3(String option3) {
		this.option3 = option3;
	}

	@Column(name = "option4", nullable = true)
	public String getOption4() {
		return option4;
	}

	public void setOption4(String option4) {
		this.option4 = option4;
	}

	@Column(name = "answer", nullable = false)
	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	private String question;

	@Override
	public String toString() {
		return "Subject [id=" + id + ", question=" + question + ", imgurl=" + imgurl + ", option1=" + option1
				+ ", option2=" + option2 + ", option3=" + option3 + ", option4=" + option4 + ", answer=" + answer + "]";
	}

	private String imgurl;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private String answer;
}
@Entity
@Table(name = "exam2")
class Subject2 extends Subject {

	private int id;

	@Id
	@Column(name = "id", nullable = false, length = 6, unique = true)
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "question", nullable = false)
	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	@Column(name = "imgurl", nullable = false)
	public String getImgurl() {
		return imgurl;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}

	@Column(name = "option1", nullable = true)
	public String getOption1() {
		return option1;
	}

	public void setOption1(String option1) {
		this.option1 = option1;
	}

	@Column(name = "option2", nullable = true)
	public String getOption2() {
		return option2;
	}

	public void setOption2(String option2) {
		this.option2 = option2;
	}

	@Column(name = "option3", nullable = true)
	public String getOption3() {
		return option3;
	}

	public void setOption3(String option3) {
		this.option3 = option3;
	}

	@Column(name = "option4", nullable = true)
	public String getOption4() {
		return option4;
	}

	public void setOption4(String option4) {
		this.option4 = option4;
	}

	@Column(name = "answer", nullable = false)
	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	private String question;

	@Override
	public String toString() {
		return "Subject [id=" + id + ", question=" + question + ", imgurl=" + imgurl + ", option1=" + option1
				+ ", option2=" + option2 + ", option3=" + option3 + ", option4=" + option4 + ", answer=" + answer + "]";
	}

	private String imgurl;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private String answer;
}
@Entity
@Table(name = "exam3")
class Subject3 extends Subject{

	private int id;

	@Id
	@Column(name = "id", nullable = false, length = 6, unique = true)
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "question", nullable = false)
	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	@Column(name = "imgurl", nullable = false)
	public String getImgurl() {
		return imgurl;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}

	@Column(name = "option1", nullable = true)
	public String getOption1() {
		return option1;
	}

	public void setOption1(String option1) {
		this.option1 = option1;
	}

	@Column(name = "option2", nullable = true)
	public String getOption2() {
		return option2;
	}

	public void setOption2(String option2) {
		this.option2 = option2;
	}

	@Column(name = "option3", nullable = true)
	public String getOption3() {
		return option3;
	}

	public void setOption3(String option3) {
		this.option3 = option3;
	}

	@Column(name = "option4", nullable = true)
	public String getOption4() {
		return option4;
	}

	public void setOption4(String option4) {
		this.option4 = option4;
	}

	@Column(name = "answer", nullable = false)
	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	private String question;

	@Override
	public String toString() {
		return "Subject [id=" + id + ", question=" + question + ", imgurl=" + imgurl + ", option1=" + option1
				+ ", option2=" + option2 + ", option3=" + option3 + ", option4=" + option4 + ", answer=" + answer + "]";
	}

	private String imgurl;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private String answer;
}
@Entity
@Table(name = "exam4")
class Subject4 extends Subject{

	private int id;

	@Id
	@Column(name = "id", nullable = false, length = 6, unique = true)
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "question", nullable = false)
	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	@Column(name = "imgurl", nullable = false)
	public String getImgurl() {
		return imgurl;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}

	@Column(name = "option1", nullable = true)
	public String getOption1() {
		return option1;
	}

	public void setOption1(String option1) {
		this.option1 = option1;
	}

	@Column(name = "option2", nullable = true)
	public String getOption2() {
		return option2;
	}

	public void setOption2(String option2) {
		this.option2 = option2;
	}

	@Column(name = "option3", nullable = true)
	public String getOption3() {
		return option3;
	}

	public void setOption3(String option3) {
		this.option3 = option3;
	}

	@Column(name = "option4", nullable = true)
	public String getOption4() {
		return option4;
	}

	public void setOption4(String option4) {
		this.option4 = option4;
	}

	@Column(name = "answer", nullable = false)
	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	private String question;

	@Override
	public String toString() {
		return "Subject [id=" + id + ", question=" + question + ", imgurl=" + imgurl + ", option1=" + option1
				+ ", option2=" + option2 + ", option3=" + option3 + ", option4=" + option4 + ", answer=" + answer + "]";
	}

	private String imgurl;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private String answer;
}
@Entity
@Table(name = "exam5")
class Subject5 extends Subject{

	private int id;

	@Id
	@Column(name = "id", nullable = false, length = 6, unique = true)
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "question", nullable = false)
	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	@Column(name = "imgurl", nullable = false)
	public String getImgurl() {
		return imgurl;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}

	@Column(name = "option1", nullable = true)
	public String getOption1() {
		return option1;
	}

	public void setOption1(String option1) {
		this.option1 = option1;
	}

	@Column(name = "option2", nullable = true)
	public String getOption2() {
		return option2;
	}

	public void setOption2(String option2) {
		this.option2 = option2;
	}

	@Column(name = "option3", nullable = true)
	public String getOption3() {
		return option3;
	}

	public void setOption3(String option3) {
		this.option3 = option3;
	}

	@Column(name = "option4", nullable = true)
	public String getOption4() {
		return option4;
	}

	public void setOption4(String option4) {
		this.option4 = option4;
	}

	@Column(name = "answer", nullable = false)
	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	private String question;

	@Override
	public String toString() {
		return "Subject [id=" + id + ", question=" + question + ", imgurl=" + imgurl + ", option1=" + option1
				+ ", option2=" + option2 + ", option3=" + option3 + ", option4=" + option4 + ", answer=" + answer + "]";
	}

	private String imgurl;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private String answer;
}
@Entity
@Table(name = "exam6")
class Subject6 extends Subject{

	private int id;

	@Id
	@Column(name = "id", nullable = false, length = 6, unique = true)
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "question", nullable = false)
	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	@Column(name = "imgurl", nullable = false)
	public String getImgurl() {
		return imgurl;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}

	@Column(name = "option1", nullable = true)
	public String getOption1() {
		return option1;
	}

	public void setOption1(String option1) {
		this.option1 = option1;
	}

	@Column(name = "option2", nullable = true)
	public String getOption2() {
		return option2;
	}

	public void setOption2(String option2) {
		this.option2 = option2;
	}

	@Column(name = "option3", nullable = true)
	public String getOption3() {
		return option3;
	}

	public void setOption3(String option3) {
		this.option3 = option3;
	}

	@Column(name = "option4", nullable = true)
	public String getOption4() {
		return option4;
	}

	public void setOption4(String option4) {
		this.option4 = option4;
	}

	@Column(name = "answer", nullable = false)
	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	private String question;

	@Override
	public String toString() {
		return "Subject [id=" + id + ", question=" + question + ", imgurl=" + imgurl + ", option1=" + option1
				+ ", option2=" + option2 + ", option3=" + option3 + ", option4=" + option4 + ", answer=" + answer + "]";
	}

	private String imgurl;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private String answer;
}
@Entity
@Table(name = "exam7")
class Subject7 extends Subject{

	private int id;

	@Id
	@Column(name = "id", nullable = false, length = 6, unique = true)
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "question", nullable = false)
	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	@Column(name = "imgurl", nullable = false)
	public String getImgurl() {
		return imgurl;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}

	@Column(name = "option1", nullable = true)
	public String getOption1() {
		return option1;
	}

	public void setOption1(String option1) {
		this.option1 = option1;
	}

	@Column(name = "option2", nullable = true)
	public String getOption2() {
		return option2;
	}

	public void setOption2(String option2) {
		this.option2 = option2;
	}

	@Column(name = "option3", nullable = true)
	public String getOption3() {
		return option3;
	}

	public void setOption3(String option3) {
		this.option3 = option3;
	}

	@Column(name = "option4", nullable = true)
	public String getOption4() {
		return option4;
	}

	public void setOption4(String option4) {
		this.option4 = option4;
	}

	@Column(name = "answer", nullable = false)
	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	private String question;

	@Override
	public String toString() {
		return "Subject [id=" + id + ", question=" + question + ", imgurl=" + imgurl + ", option1=" + option1
				+ ", option2=" + option2 + ", option3=" + option3 + ", option4=" + option4 + ", answer=" + answer + "]";
	}

	private String imgurl;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private String answer;
}