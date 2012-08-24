package com.lecheng.cms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.lecheng.cms.base.DataBase;

public class ChangeNews {
	/**
	 * 修改新闻
	 */
	public int changeNews(int id, String title, String sec_title, String time, String author, int userid, int lmid, String content){
		int num = 0;
		String sql = "UPDATE news SET title=?,sec_title=?, time=?, author=?, userid=?, lmid=?, content=? WHERE id=?";
		DataBase db = new DataBase();
		Connection conn = db.getConn();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, title);
			ps.setString(2, sec_title);
			ps.setString(3, time);
			ps.setString(4, author);
			ps.setInt(5, userid);
			ps.setInt(6, lmid);
			ps.setString(7, content);
			ps.setInt(8, id);
			num = ps.executeUpdate();
			db.closeConn(null, ps, conn);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return num;
	}
}
