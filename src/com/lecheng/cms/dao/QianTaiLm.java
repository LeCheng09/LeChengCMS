package com.lecheng.cms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.lecheng.cms.base.DataBase;
import com.lecheng.cms.pojo.QianTaiXinWenPojo;



public class QianTaiLm {
	private static Connection conn;
	private static ResultSet rs;
	private static PreparedStatement ps;
    DataBase db = new DataBase();
    /**
     * 国内的所有新闻
     * @return
     */
	public ArrayList<QianTaiXinWenPojo> selectlm(){
		ArrayList<QianTaiXinWenPojo> list = new ArrayList<QianTaiXinWenPojo>();
		String sql = "SELECT news.title,news.time FROM news,lm WHERE news.lmid = lm.id AND lm.lmname='国内'";
		conn = db.getConn();
		try{
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
				QianTaiXinWenPojo xw = new QianTaiXinWenPojo();
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
	public ArrayList<QianTaiXinWenPojo> selectlm01(){
		ArrayList<QianTaiXinWenPojo> list = new ArrayList<QianTaiXinWenPojo>();
		String sql = "SELECT news.title,news.time FROM news,lm WHERE news.lmid = lm.id AND lm.lmname='国际'";
		conn = db.getConn();
		try{
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
				QianTaiXinWenPojo xw = new QianTaiXinWenPojo();
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
	public ArrayList<QianTaiXinWenPojo> selectlm02(){
		ArrayList<QianTaiXinWenPojo> list = new ArrayList<QianTaiXinWenPojo>();
		String sql = "SELECT news.title,news.time FROM news,lm WHERE news.lmid = lm.id AND lm.lmname='军事'";
		conn = db.getConn();
		try{
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
				QianTaiXinWenPojo xw = new QianTaiXinWenPojo();
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
	public ArrayList<QianTaiXinWenPojo> selectlm03(){
		ArrayList<QianTaiXinWenPojo> list = new ArrayList<QianTaiXinWenPojo>();
		String sql = "SELECT news.title,news.time FROM news,lm WHERE news.lmid = lm.id AND lm.lmname='财经'";
		conn = db.getConn();
		try{
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
				QianTaiXinWenPojo xw = new QianTaiXinWenPojo();
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
	 * 其他栏目新闻
	 * @param lmname
	 * @return
	 */
	public ArrayList<QianTaiXinWenPojo> selectlm04(String lmname){
		ArrayList<QianTaiXinWenPojo> list = new ArrayList<QianTaiXinWenPojo>();
		String sql = "SELECT news.title,news.time,news.id FROM news,lm WHERE news.lmid = lm.id AND lm.lmname=?";
		conn = db.getConn();
		try{
			ps = conn.prepareStatement(sql);
			ps.setString(1, lmname);
			rs = ps.executeQuery();
			while(rs.next()){
				QianTaiXinWenPojo xw = new QianTaiXinWenPojo();
		        xw.setTitle(rs.getString(1));
		        String time = rs.getString(2).substring(0,10);
		        xw.setTime(time);
		        xw.setId(rs.getInt(3));
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

