package com.lecheng.cms.pojo;

public class NewsPojo {
	private int id;
	private String title;
	private String sec_title;
	private String time;
	private String author;
	private int userid;
	private int lmid;
	private String content;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSec_title() {
		return sec_title;
	}

	public void setSec_title(String secTitle) {
		this.sec_title = secTitle;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public int getLmid() {
		return lmid;
	}

	public void setLmid(int lmid) {
		this.lmid = lmid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
}
