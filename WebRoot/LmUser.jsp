<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'LmUser.jsp' starting page</title>
 <c:if test="${sessionScope.name == null}" >
		<c:redirect url="LoginJsp.jsp"/>
</c:if>   
  </head>
  
  <body>
   <h1>结果显示</h1>
    <table width="100%" border="1" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td><div align="center">ID</div></td>
      <td><div align="center">栏目名称</div></td>
    </tr>
	   <c:forEach items="${mylist}" var="temp">
	    <tr>
	      <td><div align="center">${temp.id}</div></td>
	      <td><div align="center">${temp.lmname}</div></td>
	    </tr>
	  </c:forEach>
  	</table>
  </body>
</html>
