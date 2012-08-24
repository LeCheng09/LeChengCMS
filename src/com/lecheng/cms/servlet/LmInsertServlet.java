package com.lecheng.cms.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lecheng.cms.dao.LmDao;

public class LmInsertServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("lmname");
		boolean flag = false;
		LmDao ud = new LmDao();
		if(name != ""){
			flag = ud.InsertLm(name);
		} else {
			session.setAttribute("flag", flag);
			response.sendRedirect("../LmInsert.jsp");
		}
		if(flag){
			session.setAttribute("flag", flag);
			response.sendRedirect("../LmInsert.jsp");
		}
	}
	public void init() throws ServletException {
		// Put your code here
	}

}
