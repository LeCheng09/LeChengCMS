package com.lecheng.cms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.lecheng.cms.base.DataBase;

public class NewsDelete {
	/**
	 * 删除新闻目录
	 */
	public int deleteNews(int id){
		int num = 0;
		String sql = "DELETE FROM news WHERE id=?";
		DataBase db = new DataBase();
		Connection conn = db.getConn();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			num = ps.executeUpdate();
			db.closeConn(null, ps, conn);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return num;
	}
}
