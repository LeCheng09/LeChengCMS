<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'NewsPublishFail.jsp' starting page</title>
<c:if test="${sessionScope.name == null}" >
		<c:redirect url="LoginJsp.jsp"/>
</c:if>
  </head>
  
  <body>
     	新闻发布失败！（3秒后自动返回发布界面）
		<%
			response.setHeader("Refresh", "3;URL=PublishNewsFisrtView.jsp");
		%>
  </body>
</html>
