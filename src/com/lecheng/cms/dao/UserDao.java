package com.lecheng.cms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.lecheng.cms.base.DataBase;

public class UserDao {
	private static Connection conn;
	private static ResultSet rs;
	private static PreparedStatement ps;
	DataBase db = new DataBase();
	public boolean xiugai(String newword, String name, String oldword){
		String sql = "UPDATE sys SET password=? WHERE username=? && password=? ";
		boolean flag1 = false;
		int ren = 0;
		conn = db.getConn();
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, newword);
			ps.setString(2, name);
			ps.setString(3, oldword);
			ren = ps.executeUpdate();
			ps.close();
			conn.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		if (ren > 0) {
			flag1 = true;
		}

		return flag1;
	}
}
