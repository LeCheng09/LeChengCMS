package com.lecheng.cms.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lecheng.cms.dao.ChangeNews;

@SuppressWarnings("serial")
public class ChangedNewsServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ChangedNewsServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String sec_title = request.getParameter("sec_title");
		String time = request.getParameter("time");
		String author = request.getParameter("author");
		String userid = request.getParameter("userid");
		String lmid = request.getParameter("lmid");
		String content = request.getParameter("content");
		ChangeNews cn = new ChangeNews();
		int num = 0;
		num = cn.changeNews(Integer.parseInt(id), title, sec_title, time, author, Integer.parseInt(userid), Integer.parseInt(lmid), content);
		if(num > 0){
			NewsListServlet nls = new NewsListServlet();
			nls.doPost(request, response);
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
