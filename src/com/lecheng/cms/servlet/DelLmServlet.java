package com.lecheng.cms.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lecheng.cms.dao.LmDao;



public class DelLmServlet extends HttpServlet {

	
	public DelLmServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); 
	}

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		int id = Integer.parseInt(request.getParameter("id"));
		
		LmDao ld = new LmDao();
		int rs;
		rs = ld.DelLm(id);
		request.setAttribute("rs", rs);
		RequestDispatcher dp = request.getRequestDispatcher("链接");  //请求转发
		dp.forward(request, response); 
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
