package com.lecheng.cms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.lecheng.cms.base.DataBase;
import com.lecheng.cms.pojo.qiantaixinwenPojo;



public class qiantailm {
	private static Connection conn;
	private static ResultSet rs;
	private static PreparedStatement ps;
    DataBase db = new DataBase();
    /**
     * 国内的所有新闻
     * @return
     */
	public ArrayList<qiantaixinwenPojo> selectlm(){
		ArrayList<qiantaixinwenPojo> list = new ArrayList<qiantaixinwenPojo>();
		String sql = "SELECT news.title,news.time FROM news,lm WHERE news.lmid = lm.id AND lm.lmname='国内'";
		conn = db.getConn();
		try{
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
				qiantaixinwenPojo xw = new qiantaixinwenPojo();
		        xw.setTitle(rs.getString(1));
		        String time = rs.getString(2).substring(0,10);
		        xw.setTime(time);
		        list.add(xw);
			}
			rs.close();
			ps.close();
			conn.close();
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return list;
	}
	/**
	 * 国际的所有新闻
	 * @return
	 */
	public ArrayList<qiantaixinwenPojo> selectlm01(){
		ArrayList<qiantaixinwenPojo> list = new ArrayList<qiantaixinwenPojo>();
		String sql = "SELECT news.title,news.time FROM news,lm WHERE news.lmid = lm.id AND lm.lmname='国际'";
		conn = db.getConn();
		try{
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
				qiantaixinwenPojo xw = new qiantaixinwenPojo();
		        xw.setTitle(rs.getString(1));
		        String time = rs.getString(2).substring(0,10);
		        xw.setTime(time);
		        list.add(xw);
			}
			rs.close();
			ps.close();
			conn.close();
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return list;
	}

	/**
	 * 军事的所有新闻
	 * @return
	 */
	public ArrayList<qiantaixinwenPojo> selectlm02(){
		ArrayList<qiantaixinwenPojo> list = new ArrayList<qiantaixinwenPojo>();
		String sql = "SELECT news.title,news.time FROM news,lm WHERE news.lmid = lm.id AND lm.lmname='军事'";
		conn = db.getConn();
		try{
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
				qiantaixinwenPojo xw = new qiantaixinwenPojo();
		        xw.setTitle(rs.getString(1));
		        String time = rs.getString(2).substring(0,10);
		        xw.setTime(time);
		        list.add(xw);
			}
			rs.close();
			ps.close();
			conn.close();
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return list;
	}

	
	/**
	 * 财经的所有新闻
	 * @return
	 */
	public ArrayList<qiantaixinwenPojo> selectlm03(){
		ArrayList<qiantaixinwenPojo> list = new ArrayList<qiantaixinwenPojo>();
		String sql = "SELECT news.title,news.time FROM news,lm WHERE news.lmid = lm.id AND lm.lmname='财经'";
		conn = db.getConn();
		try{
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
				qiantaixinwenPojo xw = new qiantaixinwenPojo();
		        xw.setTitle(rs.getString(1));
		        String time = rs.getString(2).substring(0,10);
		        xw.setTime(time);
		        list.add(xw);
			}
			rs.close();
			ps.close();
			conn.close();
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return list;
	}

}

