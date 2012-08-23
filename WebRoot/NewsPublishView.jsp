<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<html>

	<head>

		<title>My JSP 'NewsPublishView.jsp' starting page</title>
		<link rel="stylesheet" rev="stylesheet" href="css/style.css" type="text/css" media="all" />
		<script type="text/javascript" language="javascript">
    	function back(){
    		window.history.go(-1);
    	}
    	function tijiao(){
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
    		}else if(lmid=="0"){
    			alert("请选择栏目编号！");
    		}else{
    			var str = document.getElementById("ff");
    			str.submit();
    		}
    		
    	}
    </script>
    <script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js">
   		
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
		
		<form method="post" action="servlet/NewsPublishServlet" id="ff">
		<div class="MainDiv">
			<table align="center" width="960px" border="0" cellpadding="0" cellspacing="0" class="CContent">
				<tr>
					<th align="center" colspan="4" class="tablestyle_title">新闻发布页面</th>
				</tr>
				 
				 <tr>
				 	<td class="CPanel">
				 		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">	
				 			<tr>
				 				<td width="100%">
				<fieldset style="height:100%;">
				<legend>新建新闻</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
				 
				 <tr>
					<td nowrap align="right" width="11%">
						新闻标题：				</td>
					<td width="27%"><input type="text" maxlength="25" name="title" id="title"></td>
					<td nowrap align="right" width="11%">副标题： </td>
					<td width="27%"><input type="text" maxlength="25" name="sec_title"></td>
				</tr>
				<tr>
					<td nowrap align="right" width="11%">发布时间： </td>
					<td width="27%">
					
					<input id="time" type="text" name="time"/>
<img onclick="WdatePicker({el:'time'})" src="My97DatePicker/skin/datePicker.gif" width="16" height="22" align="absmiddle" />
					<%
    				//Date nows = new Date();
    				//SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
    				//String now = s.format(nows);
					//request.setAttribute("now",now);
					//out.println("<input type='text' name='time' value='"+ now +"' readonly='readonly'/>");
    			 %></td>
					<td nowrap align="right" width="11%">作者：</td>
					<td width="27%"><input type="text" maxlength="50" name="author" id="author"></td>
				</tr>
				<tr>
					<td nowrap align="right" width="11%">发布账号： </td>
					<td width="27%">
					
					 <%
							String userid = session.getAttribute("id").toString();
							String username = session.getAttribute("name").toString();
							int uid = Integer.parseInt(userid);
							out.println("<input type='hidden' maxlength='11' readonly='readonly' name='userid' value='"+userid+"'>");
							out.println("<input type='text' maxlength='11' readonly='readonly' name='username' value='"+username+"'>");
						 %>
					</td>
					<td nowrap align="right" width="11%">栏目编号： </td>
					<td width="27%">
					<select name="lmid" id="lmid">
                      <option value="0" disabled="disabled" selected="selected"> 请选择栏目编号： </option>
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
                    </select></td>
				</tr>
				<tr>

					<td width="11%" nowrap align="right">
						新闻内容	：				</td>
					<td colspan="3" align="center">
						<FCK:editor instanceName="content" height="400pt">
   							<jsp:attribute name="value">
   									请输入新闻内容   			
   							</jsp:attribute>
		                </FCK:editor>					
		             </td>
				</tr>
				</table>
				</fieldset>
				</td></tr></table>
			
				
				</td>
				<tr>
					<td align="center" colspan="4">
						<input type="button" value="发布" class="button" onClick="tijiao();"/>
						<input type="reset" value="重置" class="button"/>
						<input type="button" value="返回" onClick="back();" class="button" />
						</td>
				</tr>
			</table>
			
		
			</div>
		</form>
	</body>
</html>