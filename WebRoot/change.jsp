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
		<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath }/My97DatePicker/WdatePicker.js"></script>
		<script type="text/javascript" language="javascript">
function back(){
window.history.go(-1);
}

function tijiao(){
			var reg = /^[0-9]{4}-(((0[13578]|(10|12))-(0[1-9]|[1-2][0-9]|3[0-1]))|(02-(0[1-9]|[1-2][0-9]))|((0[469]|11)-(0[1-9]|[1-2][0-9]|30)))$/;
    		var title = document.getElementById("title").value;
    		var time = document.getElementById("time").value;
    		var author = document.getElementById("author").value;
    		var lmid = document.getElementById("lmid").value;
    		if(title == ""){
    			alert("新闻标题不能为空  ！");
    		}else if(author==""){
    			alert("新闻作者不能为空 ！");
    		}else if(time==""){
    			alert("发布时间不能为空 ！");
    		}else if(!time.match(reg)){
    			alert("请输入正确的发布时间");
    		}else{
    			var str = document.getElementById("news");
    			str.submit();
    		}
    		
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
	<c:if test="${sessionScope.name == null}" >
		<c:redirect url="LoginJsp.jsp"/>
	</c:if>
		<form method="post" action="../servlet/ChangedNewsServlet" id="news" name="news">
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
															value="${user.title}" id="title">
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
													<input type="text" maxlength="25" name="time" value="${fn:substring(user.time, 0, 10)}" id="time">
													<img onclick="WdatePicker({el:'time'});" src="${pageContext.request.contextPath }/My97DatePicker/skin/datePicker.gif" width="16" height="22" align="absmiddle">
														<%--
	    				Date nows = new Date();
	    				SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	    				String now = s.format(nows);
						request.setAttribute("now",now);
						out.println("<input type='hidden' name='time' value='"+ now +"' readonly='readonly'/>");
	    			 --%>
													</td>
													<td nowrap align="right" width="11%">
														作者：
													</td>
													<td width="27%">
														<input type="text" maxlength="50" name="author"
															value="${user.author}" id="author">
													</td>
												</tr>
												<tr>
													<td nowrap align="right" width="11%">
														发布账号：
													</td>
													<td width="27%">
														<%
							String userid = session.getAttribute("id").toString();
							String username = session.getAttribute("name").toString();
							int uid = Integer.parseInt(userid);
							out.println("<input type='hidden' maxlength='11' readonly='readonly' name='userid' value='"+userid+"'>");
							out.println("<input type='text' maxlength='11' readonly='readonly' name='username' value='"+username+"'>");
						 %>
													</td>
													<td nowrap align="right" width="11%">
														栏目编号：
													</td>
													<td width="27%">
														<select name="lmid">
															<c:forEach items="${selectlist}" var="temp">
																<c:set var="lmid" value="${temp.id}" scope="request" />
																<c:set var="lmname" value="${temp.lmname}"
																	scope="request" />
																<c:set var="lanid" value="${user.lmid}" scope="request"></c:set>
																<%
							String lmids = request.getAttribute("lmid").toString();
							String lanmuname = request.getAttribute("lmname").toString();
							int lanmuid = Integer.parseInt(lmids);
							if(lanmuid==Integer.parseInt(request.getAttribute("lanid").toString())){
								out.println("<option value="+ lanmuid +" selected='selected'>"+ lanmuid +"："+lanmuname+"</option>");
							}else{
								out.println("<option value="+ lanmuid +">"+ lanmuid +"："+lanmuname+"</option>");
							}
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
							<input type="button" value="提交" class="button" onclick="tijiao();" />
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
