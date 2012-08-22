package com.lecheng.cms.dao;

import java.sql.*;
import java.util.ArrayList;

import com.lecheng.cms.base.DataBase;
import com.lecheng.cms.pojo.LmPojo;
import com.lecheng.cms.pojo.NewsPojo;

public class NewsPublishDAO {
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;

	DataBase db = new DataBase();

	public boolean Publish(int id, String title, String sec_title, String time,
			String author, int userid, int lmid, String content) {

		String sql = "INSERT INTO news(id, title, sec_title, time, author, userid, lmid, content) VALUES (?,?,?,?,?,?,?,?)";
		boolean flag = false;
		int info = 0;
		conn = db.getConn();

		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ps.setString(2, title);
			ps.setString(3, sec_title);
			ps.setString(4, time);
			ps.setString(5, author);
			ps.setInt(6, userid);
			ps.setInt(7, lmid);
			ps.setString(8, content);

			info = ps.executeUpdate();

			db.closeConn(rs, ps, conn);

		} catch (Exception e) {
			e.printStackTrace();
		}
		if (info > 0) {
			flag = true;
		} else {
			flag = false;
		}
		return flag;
	}
	
	public ArrayList<LmPojo> Selectlm(){
		ArrayList<LmPojo> list = new ArrayList<LmPojo>();
		String sql = "SELECT * FROM lm";
		conn = db.getConn();
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				LmPojo lp = new LmPojo();
				lp.setId(rs.getInt(1));
				lp.setLmname(rs.getString(2));
				list.add(lp);
			}
			db.closeConn(rs, ps, conn);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
