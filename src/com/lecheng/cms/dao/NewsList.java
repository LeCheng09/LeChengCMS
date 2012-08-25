package com.lecheng.cms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.lecheng.cms.base.DataBase;
import com.lecheng.cms.pojo.NewsPojo;

public class NewsList {
	private static Connection conn;
	private static ResultSet rs;
	private static PreparedStatement ps;
	
	public ArrayList<NewsPojo> select(){
		ArrayList<NewsPojo> list = new ArrayList<NewsPojo>();
		DataBase db = new DataBase();
		conn = db.getConn();
		String sql = "SELECT * From news ORDER BY TIME DESC";
		try{
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
				NewsPojo np = new NewsPojo();
				np.setId(rs.getInt(1));
				np.setTitle(rs.getString(2));
				np.setSec_title(rs.getString(3));
				np.setTime(rs.getString(4));
				np.setAuthor(rs.getString(5));
				np.setUserid(rs.getInt(6));
				np.setLmid(rs.getInt(7));
				np.setContent(rs.getString(8));
				list.add(np);
			}
			db.closeConn(rs, ps, conn);
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return list;
	}
}
