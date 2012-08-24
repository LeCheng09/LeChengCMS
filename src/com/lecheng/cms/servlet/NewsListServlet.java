package com.lecheng.cms.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lecheng.cms.dao.NewsList;
import com.lecheng.cms.pojo.NewsPojo;

@SuppressWarnings("serial")
public class NewsListServlet extends HttpServlet {

	public NewsListServlet() {
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
		request.setCharacterEncoding("UTF-8");
		ArrayList<NewsPojo> list = new ArrayList<NewsPojo>();
		NewsList nl = new NewsList();
		/* HttpSession session = request.getSession(); */
		list = nl.select();
		request.setAttribute("newslist", list);
		RequestDispatcher dp = request.getRequestDispatcher("/files/listrenwu.jsp");
		dp.forward(request, response);
	}

	public void init() throws ServletException {
		// Put your code here
	}

}
