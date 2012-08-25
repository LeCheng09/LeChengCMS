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
	 * 判断登录是否成功
	 * 
	 * @return
	 */
	public boolean selectSys(String username,String pwd) {
		
		boolean flag = false;
		String sql = "SELECT * FROM sys WHERE username=? AND password =?";
		conn = db.getConn();
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, pwd);
			rs = ps.executeQuery();
			if(rs.next()){
				flag = true;
			}
			//DataBase db = new DataBase();
			db.closeConn(rs, ps, conn);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return flag;
	}
	/**
	 * 根据用户名取id
	 */
	public SysPojo selectId(String name){
		//ArrayList<SysPojo> list = new ArrayList<SysPojo>();
		String sql = "SELECT id FROM sys WHERE username=?";
		conn = db.getConn();
		SysPojo s = new SysPojo();
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			rs = ps.executeQuery();	
			if(rs.next()){
				s.setId(rs.getInt(1));
			}
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return s;
	}
	 
	

}
