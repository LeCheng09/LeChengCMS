package com.lecheng.cms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import com.lecheng.cms.base.DataBase;
import com.lecheng.cms.pojo.LmPojo;



public class LmDao {
	
	private static Connection conn;
	private static ResultSet rs;
	private static PreparedStatement ps;
    DataBase db = new DataBase();
	
	public boolean InsertLm(String id, String name){
		String sql = "INSERT INTO cms (id,lmname) VALUES (?,?)";		
		boolean flag = false;
		int ren = 0;
		conn = db.getConn();
		try{
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, name);
			db.closeConn(null, ps, conn);
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		if(ren > 0){
			flag = true;
		}
		
		return flag;
		}
	
	 public ArrayList<LmDao> selectlm(){
			ArrayList<LmDao> list = new ArrayList<LmDao>();
			String sql = "SELECT * FROM cms";
			conn = db.getConn();
			try{
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();
				while(rs.next()){
					LmPojo lp = new LmPojo();
			        lp.setId(rs.getInt(1));
					lp.setLmname(rs.getString(2));
				}
				rs.close();
				ps.close();
				conn.close();
			}catch(Exception e){
				System.out.println(e.getMessage());
			}
			return list;
		}
		public int DelLm( int id){
			
			conn = db.getConn();
			String sql = "DELETE FROM cms WHERE id = ?";
			int rst = 0;
			try{
				ps = conn.prepareStatement(sql);
				ps.setInt(1, id);
				rst = ps.executeUpdate();
				ps.close();
				conn.close();
			}catch(Exception e){
				System.out.println(e.getMessage());
			}
			return rst;		
		}
		public int UpdateLm(int id,String name) {
			conn = db.getConn();
			String sql = " UPDATE cms SET lmname = ? WHERE id=?";
			int rst = 0;
			try{
				ps = conn.prepareStatement(sql);
				ps.setInt(1, id);
				ps.setString(2, name);
				rst = ps.executeUpdate();
				ps.close();
				conn.close();
			}catch(Exception e){
				System.out.println(e.getMessage());
			}
			return rst;		
		}
}
