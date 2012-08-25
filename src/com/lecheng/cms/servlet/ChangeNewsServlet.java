package com.lecheng.cms.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lecheng.cms.dao.NewsList;
import com.lecheng.cms.dao.NewsPublishDAO;
import com.lecheng.cms.pojo.LmPojo;
import com.lecheng.cms.pojo.NewsPojo;

@SuppressWarnings("serial")
public class ChangeNewsServlet extends HttpServlet {

	public ChangeNewsServlet() {
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
		
		ArrayList<NewsPojo> list = new ArrayList<NewsPojo>();
		NewsList nl = new NewsList();
		/*HttpSession session = request.getSession();*/
		list = nl.select();
		int idt = Integer.parseInt(request.getParameter("id"));
		for(int i = 0;i < list.size();i++){
			if(idt == list.get(i).getId())
				request.setAttribute("user", list.get(i));
		}
		NewsPublishDAO npd = new NewsPublishDAO();
		
		ArrayList<LmPojo> list2 = new ArrayList<LmPojo>();
		list2 = npd.Selectlm();
		
		request.setAttribute("selectlist", list2);
		//HttpSession session = request.getSession();
		//session.setAttribute("selectlist", list2);
		RequestDispatcher dp = request.getRequestDispatcher("/change.jsp");
		dp.forward(request, response);
		
	}

	public void init() throws ServletException {
		// Put your code here
	}

}
