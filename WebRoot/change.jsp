<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
	<head>
		<title>My JSP 'NewsPublishView.jsp' starting page</title>
		<link href="../css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" language="javascript">
function back(){
window.history.go(-1);
}
</script>
		<style type="text/css">
<!--
.atten {
	font-size: 12px;
	font-weight: normal;
	color: #F00;
}
-->
</style>
	</head>

	<body class="ContentBody">
		<form method="post" action="../servlet/ChangedNewsServlet">
			<div class="MainDiv">
				<table align="center" width="960px" border="0" cellpadding="0"
					cellspacing="0" class="CContent">
					<tr>
						<th align="center" colspan="4" class="tablestyle_title">
							新闻编辑页面
						</th>
					</tr>
					<tr>
						<td class="CPanel">
							<table border="0" cellpadding="0" cellspacing="0"
								style="width: 100%">
								<tr>
									<td width="100%">
										<fieldset style="height: 100%;">
											<legend>
												编辑新闻
											</legend>
											<table border="0" cellpadding="2" cellspacing="1"
												style="width: 100%">
												<tr>
													<td nowrap align="right" width="11%">
														新闻标题 ：
													</td>
													<td width="27%">
														<input type="text" maxlength="25" name="title"
															value="${user.title}">
													</td>
													<td nowrap align="right" width="11%">
														新闻副标题：
													</td>
													<td width="27%">
														<input type="text" maxlength="25" name="sec_title"
															value="${user.sec_title}">
													</td>
												</tr>
												<tr>
													<td nowrap align="right" width="11%">
														最近发布时间：
													</td>
													<td width="27%">
													<input type="text" maxlength="25" value="${fn:substring(user.time, 0, 19)}">
														<%
	    				Date nows = new Date();
	    				SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	    				String now = s.format(nows);
						request.setAttribute("now",now);
						out.println("<input type='hidden' name='time' value='"+ now +"' readonly='readonly'/>");
	    			 %>
													</td>
													<td nowrap align="right" width="11%">
														作者：
													</td>
													<td width="27%">
														<input type="text" maxlength="50" name="author"
															value="${user.author}">
													</td>
												</tr>
												<tr>
													<td nowrap align="right" width="11%">
														发布账号：
													</td>
													<td width="27%">
														<input type="text" maxlength="11" name="userid"
															value="${user.userid}">
													</td>
													<td nowrap align="right" width="11%">
														栏目编号：
													</td>
													<td width="27%">
														<select name="lmid">
															<c:forEach items="${selectlist}" var="temp">
																<c:set var="lmid" value="${temp.id}" scope="session" />
																<c:set var="lmname" value="${temp.lmname}"
																	scope="session" />
																<c:set var="lanid" value="${user.lmid}" scope="session"></c:set>
																<%
							String lmids = session.getAttribute("lmid").toString();
							String lanmuname = session.getAttribute("lmname").toString();
							int lanmuid = Integer.parseInt(lmids);
							if(lanmuid==Integer.parseInt(session.getAttribute("lanid").toString())){
								out.println("<option value="+ lanmuid +" selected='selected'>"+ lanmuid +"："+lanmuname+"</option>");
							}
							out.println("<option value="+ lanmuid +">"+ lanmuid +"："+lanmuname+"</option>");
						 %>
															</c:forEach>
														</select>
													</td>
												</tr>
												<tr>

													<td width="11%" nowrap align="right">
														新闻内容 ：
													</td>
													<td colspan="3" align="center">
														<FCK:editor instanceName="content" height="400pt">
															<jsp:attribute name="value">${user.content}</jsp:attribute>
														</FCK:editor>
													</td>
												</tr>
											</table>
										</fieldset>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td align="center" colspan="4">
							<input type="submit" value="提交" class="button" />
							<input type="reset" value="重置" class="button" />
							<input type="button" value="返回" onClick="back();" class="button" />
						</td>
					</tr>
				</table>
			</div>
			<input type="hidden" name="id" value="${user.id}" />
		</form>
	</body>
</html>
