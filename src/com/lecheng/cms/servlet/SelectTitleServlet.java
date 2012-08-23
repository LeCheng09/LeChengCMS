package com.lecheng.cms.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lecheng.cms.dao.XiangXiNewsDao;
import com.lecheng.cms.pojo.XiangXiNewsPojo;

public class SelectTitleServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public SelectTitleServlet() {
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

		request.setCharacterEncoding("utf-8");
		String title = request.getParameter("title");
		
		if(title.equals("01")){
			title="江苏清交通隐患 客货运司机1年超速3次要解聘";
		}else if(title.equals("02")){
			title="中俄昨举行战略安全磋商";
		}else if(title.equals("03")){
			title="菲律宾搜救人员发现坠机落海内政部长尸体";
		}else if(title.equals("04")){
			title="委内瑞拉监狱骚乱超过20人死亡";
		}else if(title.equals("05")){
			title="日本抢岛将多样化 中国宜尽早全方位应对考虑";
		}else if(title.equals("06")){
			title="美日夺岛军演加强警备 日本变本加厉强化钓鱼岛控制";
		}else if(title.equals("07")){
			title="2015年 磁条银行卡全面退市";
		}else if(title.equals("08")){
			title="统计局：我国已开始跻身服务贸易大国行列";
		}
		XiangXiNewsDao xxnd = new XiangXiNewsDao(); 
		ArrayList<XiangXiNewsPojo> list = new ArrayList<XiangXiNewsPojo>();
		list = xxnd.selectTitle(title);
		HttpSession session = request.getSession();
		session.setAttribute("mylist", list);
		response.sendRedirect("../xiangxinews.jsp");
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
