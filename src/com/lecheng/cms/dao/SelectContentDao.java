package com.lecheng.cms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.lecheng.cms.base.DataBase;
import com.lecheng.cms.pojo.SelectContentPojo;
import com.lecheng.cms.pojo.XiangXiNewsPojo;

public class SelectContentDao {

	private static Connection conn;
	private static ResultSet rs;
	private static PreparedStatement ps;

	/**
	 * 查看头条新闻
	 * 
	 * @return
	 */
	public ArrayList<XiangXiNewsPojo> SelectContent() {
		ArrayList<XiangXiNewsPojo> list = new ArrayList<XiangXiNewsPojo>();
		DataBase db = new DataBase();
		conn = db.getConn();
		String sql = "SELECT title,sec_title,author,TIME,content,id FROM news ORDER BY id DESC LIMIT 1";
		String str = "";
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				XiangXiNewsPojo xw = new XiangXiNewsPojo();
				xw.setTitle(rs.getString(1));
				xw.setSec_title(rs.getString(2));
				xw.setAuthor(rs.getString(3));
				xw.setTime(rs.getString(4));
				xw.setContent(rs.getString(5));
				xw.setId(rs.getInt(6));
				list.add(xw);
			}
			db.closeConn(rs, ps, conn);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}
}
