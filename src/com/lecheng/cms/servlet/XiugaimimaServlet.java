package com.lecheng.cms.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lecheng.cms.dao.UserDao;

public class XiugaimimaServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public XiugaimimaServlet() {
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
		//获取name值
		HttpSession session = request.getSession(true);
		String name = (String) session.getAttribute("name");
		//分别获取旧密码和新密码的值
		String oldpasword = request.getParameter("oldpasword");
		String newpasword = request.getParameter("newpasword");

		// String newname2 = request.getParameter("newpasword2");

		boolean flag = false;
		//String str="";
		UserDao ud = new UserDao();


		if (flag) {
			response.sendRedirect("../chenggong.jsp"); // 重定向
		} else {

		flag = ud.xiugai(newpasword, name, oldpasword);
		//if(flag){
			//javax.swing.JOptionPane.showMessageDialog(null,"修改成功！");
		//}else{
			//javax.swing.JOptionPane.showMessageDialog(null,"修改失败！");
		//}
		//System.out.println(flag);
		if(flag){
			response.sendRedirect("../chenggong.jsp");
		}else{

			response.sendRedirect("../shibai.jsp");
		}

		//session.setAttribute("str", str);
		//response.sendRedirect("xiugaimima.jsp");
		

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
