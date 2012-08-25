package com.lecheng.cms.pojo;

public class XiangXiNewsPojo {
	private String title;// 新闻标题
	private String content;//新闻内容
	private int id;
	private String time;//发布时间
	private String lmname;//栏目名称
	private String sec_title;//副标题
	private String author;//新闻作者

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getLmname() {
		return lmname;
	}

	public void setLmname(String lmname) {
		this.lmname = lmname;
	}

	public String getSec_title() {
		return sec_title;
	}

	public void setSec_title(String secTitle) {
		sec_title = secTitle;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}
}
