<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>My JSP 'NewsPublishView.jsp' starting page</title>
		<script type="text/javascript" language="javascript">
    	function back(){
    		window.location.href="";
    	}
    </script>

	</head>

	<body>
		<h2 align="center">
			新闻发布页面
		</h2>
		<form method="post" action="servlet/NewsPublishServlet">
			<table align="center" cellpadding="20" cellspacing="2" border="10">
				<tr>
					<td align="center">
						新闻编号
					</td>
					<td align="center">
						<input type="text" maxlength="11" name="newsid">
					</td>
				</tr>
				<tr>
					<td align="center">
						新闻标题
					</td>
					<td align="center">
						<input type="text" maxlength="25" name="title">
					</td>
				</tr>
				<tr>
					<td align="center">
						新闻副标题
					</td>
					<td align="center">
						<input type="text" maxlength="25" name="sec_title">
					</td>
				</tr>
				<tr>
					<td align="center">
						发布时间
					</td>
					<td align="center">
						<%
    				Date nows = new Date();
    				SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
    				String now = s.format(nows);
					request.setAttribute("now",now);
					out.println("<input type='text' name='time' value='"+ now +"' readonly='readonly'/>");
    			 %>
					</td>
				</tr>
				<tr>
					<td align="center">
						作者
					</td>
					<td align="center">
						<input type="text" maxlength="50" name="author">
					</td>
				</tr>
				<tr>
					<td align="center">
						发布账号
					</td>
					<td align="center">
						<input type="text" maxlength="11" name="userid">
					</td>
				</tr>
				<tr>
					<td align="center">
						栏目编号
					</td>
					<td align="center">
						<select name="lmid">
							<option value="0" disabled="disabled" selected="selected">
								请选择栏目编号
							</option>
							<c:forEach items="${selectlist}" var="temp">
								<c:set var="lmid" value="${temp.id}" scope="session" />
								<c:set var="lmname" value="${temp.lmname}" scope="session" />

								<%
							String lmids = session.getAttribute("lmid").toString();
							String lanmuname = session.getAttribute("lmname").toString();
							int lanmuid = Integer.parseInt(lmids);
							
							out.println("<option value="+ lanmuid +">"+ lanmuid +"："+lanmuname+"</option>");
						 %>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td align="center">
						新闻内容
					</td>
					<td align="center">
						<textarea cols="20" name="content" rows="12"></textarea>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="2">
						<input type="submit" value="发布" />
						<input type="reset" value="重置" />
						<input type="button" value="返回" onclick="back();" />
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>