package com.lecheng.cms.dao;

import java.sql.*;
import java.util.ArrayList;

import com.lecheng.cms.base.DataBase;
import com.lecheng.cms.pojo.XiangXiNewsPojo;

public class XiangXiNewsDao {
	private static Connection conn;
	private static ResultSet rs;
	private static PreparedStatement ps;
	DataBase db = new DataBase();

	/**
	 * 得到新闻的详细内容
	 * 
	 * @return
	 */
	public ArrayList<XiangXiNewsPojo> selectlm(int id) {
		ArrayList<XiangXiNewsPojo> list = new ArrayList<XiangXiNewsPojo>();
		String sql = "SELECT title,content,id FROM news WHERE id=?";
		conn = db.getConn();
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				XiangXiNewsPojo xw = new XiangXiNewsPojo();
				xw.setTitle(rs.getString(1));
				xw.setContent(rs.getString(2));
				xw.setId(rs.getInt(3));
				list.add(xw);
			}
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}

	public ArrayList<XiangXiNewsPojo> selectTitle(String title) {
		ArrayList<XiangXiNewsPojo> list = new ArrayList<XiangXiNewsPojo>();
		String sql = "SELECT title,content,id FROM news WHERE title=?";
		conn = db.getConn();
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, title);
			rs = ps.executeQuery();
			while (rs.next()) {
				XiangXiNewsPojo xw = new XiangXiNewsPojo();
				xw.setTitle(rs.getString(1));
				xw.setContent(rs.getString(2));
				xw.setId(rs.getInt(3));
				list.add(xw);
			}
			rs.close();
			ps.close();
			conn.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}
}
