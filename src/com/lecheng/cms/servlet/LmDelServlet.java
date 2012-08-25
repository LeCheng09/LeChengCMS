package com.lecheng.cms.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lecheng.cms.dao.LmDao;
import com.lecheng.cms.dao.NewsDelete;

public class LmDelServlet extends HttpServlet {

	public LmDelServlet() {
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
		LmDao ld = new LmDao();
		String[] lth = request.getParameterValues("delid");
		for(int i=0;i<lth.length;i++){
			ld.DelLm(Integer.parseInt(lth[i]));
		}
		SelectServlet nls = new SelectServlet();
		nls.doPost(request, response);
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
