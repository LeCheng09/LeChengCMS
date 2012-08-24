<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'shibai.jsp' starting page</title>
    <c:if test="${sessionScope.name == null}" >
		<c:redirect url="../LoginJsp.jsp"/>
  </c:if>
  </head>
  
  <body>
  
   
    <h2>修改失败！</h2>
   <a href="files/xiugaimima.jsp">返回</a>
  </body>
</html>
