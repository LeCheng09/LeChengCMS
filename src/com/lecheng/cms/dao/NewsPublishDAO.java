package com.lecheng.cms.dao;

import java.sql.*;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import com.lecheng.cms.base.DataBase;
import com.lecheng.cms.pojo.LmPojo;
import com.lecheng.cms.pojo.NewsPojo;
import com.lecheng.cms.pojo.SysPojo;

public class NewsPublishDAO {
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;

	DataBase db = new DataBase();

	public boolean Publish(String title, String sec_title, String time,
			String author, int userid, int lmid, String content) {

		String sql = "INSERT INTO news(title, sec_title, time, author, userid, lmid, content) VALUES (?,?,?,?,?,?,?)";
		boolean flag = false;
		int info = 0;
		conn = db.getConn();

		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, title);
			ps.setString(2, sec_title);
			ps.setString(3, time);
			ps.setString(4, author);
			ps.setInt(5, userid);
			ps.setInt(6, lmid);
			ps.setString(7, content);

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

	public ArrayList<LmPojo> Selectlm() {
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
