package com.lecheng.cms.pojo;

public class QianTaiXinWenPojo {
	private int id;// 新闻id
	private String title;// 新闻标题
	private String time;// 新闻发布时间
	private String lmname;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLmname() {
		return lmname;
	}

	public void setLmname(String lmname) {
		this.lmname = lmname;
	}
}
