package com.lecheng.cms.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lecheng.cms.dao.NewsDelete;

@SuppressWarnings("serial")
public class DeleteNewsServlet extends HttpServlet {

	public DeleteNewsServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		NewsDelete nd = new NewsDelete();
		int num = 0;
		num = nd.deleteNews(Integer.parseInt(id));
		if(num > 0){
			NewsListServlet nls = new NewsListServlet();
			nls.doPost(request, response);
		}
	}

	public void init() throws ServletException {
	}

}
