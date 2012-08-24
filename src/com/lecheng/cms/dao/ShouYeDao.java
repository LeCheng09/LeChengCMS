package com.lecheng.cms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.lecheng.cms.base.DataBase;
import com.lecheng.cms.pojo.QianTaiXinWenPojo;
import com.lecheng.cms.pojo.XiangXiNewsPojo;

public class ShouYeDao {
	private static Connection conn;
	private static ResultSet rs;
	private static PreparedStatement ps;
	DataBase db = new DataBase();
	//查看头条新闻
	public ArrayList<XiangXiNewsPojo> selectlm() {
		
		ArrayList<XiangXiNewsPojo> list = new ArrayList<XiangXiNewsPojo>();
		String sql = "SELECT content FROM news ORDER BY id DESC LIMIT 1";
		conn = db.getConn();
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				XiangXiNewsPojo xw = new XiangXiNewsPojo();
				
				xw.setContent(rs.getString(1));
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
	
	//动态获取标题和时间放置首页
	public ArrayList<XiangXiNewsPojo> selectlm04(String str) {
		ArrayList<XiangXiNewsPojo> list = new ArrayList<XiangXiNewsPojo>();
		String sql = "SELECT news.title,news.time,news.id FROM news,lm WHERE news.lmid = lm.id  and lmname = ? LIMIT 0,2";
		conn = db.getConn();
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, str);
			rs = ps.executeQuery();
			while (rs.next()) {
				XiangXiNewsPojo xw = new XiangXiNewsPojo();
				xw.setTitle(rs.getString(1));
				String time = rs.getString(2).substring(0, 10);
				xw.setTime(time);
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
	//动态获得导航栏
	public ArrayList<XiangXiNewsPojo> selectlm05() {
		ArrayList<XiangXiNewsPojo> list = new ArrayList<XiangXiNewsPojo>();
		String sql = "SELECT lmname FROM lm  LIMIT 4";
		conn = db.getConn();
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				XiangXiNewsPojo xw = new XiangXiNewsPojo();
				xw.setLmname(rs.getString(1));
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

	public ArrayList<XiangXiNewsPojo> selectTop4() {
		ArrayList<XiangXiNewsPojo> list = new ArrayList<XiangXiNewsPojo>();
		String sql = "SELECT lmname FROM lm  LIMIT 4";
		conn = db.getConn();
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				XiangXiNewsPojo xw = new XiangXiNewsPojo();
				xw.setLmname(rs.getString(1));
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
