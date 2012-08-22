package com.lecheng.cms.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lecheng.cms.dao.NewsPublishDAO;

public class NewsPublishServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public NewsPublishServlet() {
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
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String idx = request.getParameter("newsid");
		int id = Integer.parseInt(idx);
		System.out.println("新闻编号：" + id);

		String title = request.getParameter("title");
		System.out.println("主标题：" + title);

		String sec_title = request.getParameter("sec_title");
		System.out.println("副标题：" + sec_title);

		String time = request.getParameter("time");
		System.out.println("发布时间：" + time);

		String author = request.getParameter("author");
		System.out.println("作者：" + author);

		String useridx = request.getParameter("userid");
		int userid = Integer.parseInt(useridx);
		System.out.println("发布账号：" + userid);

		String lmidx = request.getParameter("lmid");
		int lmid = Integer.parseInt(lmidx);
		System.out.println("栏目编号：" + lmid);

		String content = request.getParameter("content");
		System.out.println("正文：" + content);

		boolean flag = true;
		NewsPublishDAO npd = new NewsPublishDAO();

		flag = npd.Publish(id, title, sec_title, time, author, userid, lmid,
				content);
		if (flag) {
			response.sendRedirect("../NewsPublishSuccess.jsp"); //
		} else {
			response.sendRedirect("../NewsPublishFail.jsp");
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
