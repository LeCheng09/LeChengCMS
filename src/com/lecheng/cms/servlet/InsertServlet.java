package com.lecheng.cms.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lecheng.cms.dao.LmDao;
import com.lecheng.cms.pojo.LmPojo;

public class InsertServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("lmname");
		System.out.println("栏目名称：" + name);
		//
		boolean flag = false;
		LmDao ud = new LmDao();
		flag = ud.InsertLm(name);
		if(flag){
			response.sendRedirect("../Login.jsp"); //重定向
		}
	}
	public void init() throws ServletException {
		// Put your code here
	}

}
