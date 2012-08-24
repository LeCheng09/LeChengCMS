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

		
		ArrayList<XiangXiNewsPojo> mylist01 = new ArrayList<XiangXiNewsPojo>();
		mylist01 = sy.selectlm();//头条新闻
		
		ArrayList<XiangXiNewsPojo> list = sy.selectTop4();
		ArrayList<ArrayList<XiangXiNewsPojo>> mylist02 = new ArrayList<ArrayList<XiangXiNewsPojo>>();
		ArrayList<XiangXiNewsPojo> mylist03 = new ArrayList<XiangXiNewsPojo>();
		for(int i = 0;i<list.size();i++){
			ArrayList<XiangXiNewsPojo> mylist02_1 = new ArrayList<XiangXiNewsPojo>();			
			mylist02_1=sy.selectlm04(list.get(i).getLmname());//新闻的前四条
			mylist02.add(mylist02_1);
		}		

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
