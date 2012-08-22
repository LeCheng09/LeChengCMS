package com.lecheng.cms.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lecheng.cms.dao.qiantailm;
import com.lecheng.cms.pojo.qiantaixinwenPojo;


public class qiantaixw extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public qiantaixw() {
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

		qiantailm qtlm = new qiantailm();//定义CusSelectBean对象
		ArrayList<qiantaixinwenPojo> list = new ArrayList<qiantaixinwenPojo>();//定义集合对象
		list = qtlm.selectlm();//调用查询的方法
		request.setAttribute("list", list);
		HttpSession session = request.getSession();//在servlet中的没有session所以需要先实例化这个的session对象
		session.setAttribute("list", list);//把上边的集合存放在session范围内
		response.sendRedirect("../xianshinews.jsp");//跳转到前台页面
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
