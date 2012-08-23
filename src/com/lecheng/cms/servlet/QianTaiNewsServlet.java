package com.lecheng.cms.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lecheng.cms.dao.QianTaiLm;
import com.lecheng.cms.pojo.QianTaiXinWenPojo;

public class QianTaiNewsServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public QianTaiNewsServlet() {
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

		request.setCharacterEncoding("utf-8");
		String lmname = request.getParameter("lmname");

		if (lmname.equals("1")) {
			lmname = "国内";
		} else if (lmname.equals("2")) {
			lmname = "国际";
		} else if (lmname.equals("3")) {
			lmname = "军事";
		} else if (lmname.equals("4")) {
			lmname = "财经";
		} else if (lmname.equals("5")) {
			lmname = "互联网";
		} else if (lmname.equals("6")) {
			lmname = "房产";
		} else if (lmname.equals("7")) {
			lmname = "汽车";
		} else if (lmname.equals("8")) {
			lmname = "体育";
		} else if (lmname.equals("9")) {
			lmname = "娱乐";
		} else if (lmname.equals("10")) {
			lmname = "游戏";
		} else if (lmname.equals("11")) {
			lmname = "教育";
		}
		QianTaiLm qtlm = new QianTaiLm();
		ArrayList<QianTaiXinWenPojo> list = new ArrayList<QianTaiXinWenPojo>();
		list = qtlm.selectlm04(lmname);
		HttpSession session = request.getSession();
		session.setAttribute("lmname", lmname);
		session.setAttribute("mylist", list);
		response.sendRedirect("../xianshinews.jsp");
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
