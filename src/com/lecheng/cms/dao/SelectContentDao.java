package com.lecheng.cms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.lecheng.cms.base.DataBase;
import com.lecheng.cms.pojo.SelectContentPojo;

public class SelectContentDao {

	private static Connection conn;
	private static ResultSet rs;
	private static PreparedStatement ps;
	/**
	 * 得到新闻的全部内容
	 * @return
	 */
	public String SelectContent(){
		DataBase db = new DataBase();
		conn = db.getConn();
		String sql = "SELECT content FROM news WHERE id=2";
		String str = "";
		try{
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();	
			
			if(rs.next()){
				str = rs.getString(1);				
			}
			db.closeConn(rs, ps, conn);
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return str;
	}
}
