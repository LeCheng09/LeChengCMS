package com.lecheng.cms.base;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DataBase {

	private static Connection conn;
	private static ResultSet rs;
	private static PreparedStatement ps;

	/**
	 * 数据库连接
	 */
	public Connection getConn() {
		try {
			// 加载数据库驱动
			Class.forName("com.mysql.jdbc.Driver");
			// 创建数据库连接
			conn = DriverManager
					.getConnection("jdbc:mysql://192.168.1.18:3306/cms?user=root&password=root");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return conn;
	}

	/**
	 * 数据库关闭
	 * 
	 * @param ResultSet
	 * @param PreparedStatement
	 * @param Connection
	 */
	public void closeConn(ResultSet myrs, PreparedStatement myps,
			Connection myconn) {
		try {
			if (myrs != null) {
				myrs.close();
			}
			if (myps != null) {
				myps.close();
			}
			if (myconn != null) {
				myconn.close();
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
