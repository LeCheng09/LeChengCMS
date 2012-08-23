package com.lecheng.cms.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lecheng.cms.dao.ShouYeDao;
import com.lecheng.cms.pojo.XiangXiNewsPojo;

public class ShouYeServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ShouYeServlet() {
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
		HttpSession session = request.getSession();
		ShouYeDao sy = new ShouYeDao();
		String str1 = "国内";
		String str2 = "国际";
		String str3 = "军事";
		String str4 = "财经";
		ArrayList<XiangXiNewsPojo> mylist01 = new ArrayList<XiangXiNewsPojo>();

		ArrayList<ArrayList<XiangXiNewsPojo>> mylist02 = new ArrayList<ArrayList<XiangXiNewsPojo>>();
		ArrayList<XiangXiNewsPojo> mylist02_1 = new ArrayList<XiangXiNewsPojo>();
		ArrayList<XiangXiNewsPojo> mylist02_2 = new ArrayList<XiangXiNewsPojo>();
		ArrayList<XiangXiNewsPojo> mylist02_3 = new ArrayList<XiangXiNewsPojo>();
		ArrayList<XiangXiNewsPojo> mylist02_4 = new ArrayList<XiangXiNewsPojo>();
		ArrayList<XiangXiNewsPojo> mylist03 = new ArrayList<XiangXiNewsPojo>();
		mylist01 = sy.selectlm();//头条新闻

		mylist02_1=sy.selectlm04(str1);//新闻的前四条
		mylist02_2=sy.selectlm04(str2);//新闻的前四条
		mylist02_3=sy.selectlm04(str3);//新闻的前四条
		mylist02_4=sy.selectlm04(str4);//新闻的前四条
		mylist02.add(mylist02_1);
		mylist02.add(mylist02_2);
		mylist02.add(mylist02_3);
		mylist02.add(mylist02_4);

		mylist03=sy.selectlm05();//动态获得导航栏
		session.setAttribute("mylist01", mylist01);
		session.setAttribute("mylist02", mylist02);
		session.setAttribute("mylist03", mylist03);
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("../index.jsp");
		rd.forward(request, response);
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
