package com.lecheng.cms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.lecheng.cms.base.DataBase;
import com.lecheng.cms.pojo.SysPojo;

public class LoginDao {

	private static Connection conn;
	private static ResultSet rs;
	private static PreparedStatement ps;

	DataBase db = new DataBase();

	/**
	 * 查找sys表信息
	 * 
	 * @return
	 */
	public ArrayList<SysPojo> selectSys(String username) {
		ArrayList<SysPojo> list = new ArrayList<SysPojo>();
		String sql = "SELECT * FROM sys WHERE username=?";
		conn = db.getConn();
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			rs = ps.executeQuery();
			while (rs.next()) {
				SysPojo s = new SysPojo();
				s.setId(rs.getInt(1));
				s.setUsername(rs.getString(2));
				s.setPassword(rs.getString(3));

				list.add(s);
			}
			DataBase db = new DataBase();
			db.closeConn(rs, ps, conn);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}
}
