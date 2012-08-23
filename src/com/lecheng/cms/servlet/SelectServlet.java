package com.lecheng.cms.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lecheng.cms.dao.LmDao;
import com.lecheng.cms.pojo.LmPojo;

public class SelectServlet extends HttpServlet {

	public SelectServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArrayList<LmPojo> list = new ArrayList<LmPojo>();
		request.setCharacterEncoding("UTF-8");
		LmDao id = new LmDao();
		list = id.selectlm();
		request.setAttribute("mylist", list);
		RequestDispatcher dp = request
				.getRequestDispatcher("../files/Lmlist.jsp"); // 请求转发
		dp.forward(request, response);
	}

	public void init() throws ServletException {
		// Put your code here
	}

}
