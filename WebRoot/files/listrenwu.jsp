<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>新闻管理系统</title>
		<link href="../css/css.css" rel="stylesheet" type="text/css" />
		<link href="../css/style.css" rel="stylesheet" type="text/css" />
	</head>
	<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

.tabfont01 {
	font-family: "宋体";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}

.font051 {
	font-family: "宋体";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}

.font201 {
	font-family: "宋体";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}

.button {
	font-family: "宋体";
	font-size: 14px;
	height: 37px;
}

html {
	overflow-x: auto;
	overflow-y: auto;
	border: 0;
}
-->
</style>

	<SCRIPT language="JavaScript" type="text/javascript">
	function sousuo() {
		window
				.open(
						"gaojisousuo.htm",
						"",
						"depended=0,alwaysRaised=1,width=800,height=510,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
	}
	function selectAll() {
		var obj = document.fom.elements;
		for ( var i = 0; i < obj.length; i++) {
			if (obj[i].name == "delid") {
				obj[i].checked = true;
			}
		}
	}

	function unselectAll() {
		var obj = document.fom.elements;
		for ( var i = 0; i < obj.length; i++) {
			if (obj[i].name == "delid") {
				if (obj[i].checked == true)
					obj[i].checked = false;
				else
					obj[i].checked = true;
			}
		}
	}

	function link() {
		document.getElementById("fom").action = "addrenwu.htm";
		document.getElementById("fom").submit();
	}

	function con() {
		if (confirm("确定删除吗？")) {
			<c:forEach items="${newslist}" var="list">
			var del = document.getElementById("${list.id}");
			del.href = "../servlet/DeleteNewsServlet?id=${list.id}";
			</c:forEach>
		}
	}
	function allcon() {
		if (confirm("确定删除吗？")) {
			var	fm = document.getElementById("fom");
			fm.submit();
		}
	}
</SCRIPT>

	<body>
		<form name="fom" id="fom" method="post" action="../servlet/DeleteNewsAllServlet">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">

				<tr>
					<td height="30">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td height="62" background="../images/nav04.gif">

									<table width="98%" border="0" align="center" cellpadding="0"
										cellspacing="0">
										<tr>
											<td width="21">
												<img src="../images/ico07.gif" width="20" height="18" />
											</td>
											<td width="538">
												查看内容：按时间：
												<input name="textfield" type="text" size="12"
													readonly="readonly" />
												<span class="newfont06">至</span>
												<input name="textfield" type="text" size="12"
													readonly="readonly" />
												<input name="Submit4" type="button" class="right-button02"
													value="查 询" />
											</td>
											<td width="144" align="left">
												<a href="#" onclick=
	sousuo();
> <input name="Submit3"
														type="button" class="right-button07" value="高级搜索" /> </a>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<table id="subtree1" style="DISPLAY: " width="100%" border="0"
							cellspacing="0" cellpadding="0">
							<tr>
								<td>
									<table width="95%" border="0" align="center" cellpadding="0"
										cellspacing="0">
										<tr>
											<td height="20">
												<span class="newfont07">选择：<a href="#"
													class="right-font08" onclick=
	selectAll();;
>全选</a>-<a
													href="#" class="right-font08" onclick=
	unselectAll();;
>反选</a>
												</span>
												<input name="Submit" type="button" class="right-button08"
													value="删除所选任务" onclick="allcon();" />
												<input name="Submit2" type="button" class="right-button08"
													value="添加任务" onclick=
	link();;
/>
											</td>
										</tr>
										<tr>
											<td height="40" class="font42">
												<table width="100%" border="0" cellpadding="4"
													cellspacing="1" bgcolor="#464646" class="newfont03">
													<tr class="CTitle">
														<td height="22" colspan="7" align="center"
															style="font-size: 16px">
															新闻目录
														</td>
													</tr>
													<tr bgcolor="#EEEEEE" align="center">
														<td width="4%" height="30">
															选择
														</td>
														<td width="15%">
															新闻标题
														</td>
														<td width="15%">
															副标题
														</td>
														<td width="15%">
															创建时间
														</td>
														<td width="15%">
															作者
														</td>
														<td width="21%">
															内容
														</td>
														<td width="15%">
															操作
														</td>
													</tr>
													<c:forEach items="${newslist}" var="list">
														<tr bgcolor="#FFFFFF">
															<td height="20">
																<input type="checkbox" name="delid" value="${list.id}" />
															</td>
															<td>
																${ list.title }
															</td>
															<td>
																${ list.sec_title }
															</td>
															<td>
															${fn:substring(list.time, 0, 19)}
															</td>
															<td>
																${ list.author }
															</td>
															<td>
																<c:if test="${fn:length(list.content) <= 36}">${list.content}</c:if>
																<c:if test="${fn:length(list.content) > 36}">${fn:substring(list.content,
												0, 36)}...</c:if>	
															</td>
															<td align="center">
																<a href="../servlet/ChangeNewsServlet?id=${list.id}&title=${list.title}&sec_title=${list.sec_title}&time=${list.time}&author=${list.author}&content=${list.content}">编辑</a>|
																<a href="#" id="${list.id }" onclick="con();">删除</a>
															</td>
														</tr>
													</c:forEach>
												</table>
											</td>
										</tr>
									</table>
									<table width="95%" border="0" align="center" cellpadding="0"
										cellspacing="0">
										<tr>
											<td height="6">
												<img src="../images/spacer.gif" width="1" height="1" />
											</td>
										</tr>
										<tr>
											<td height="33">
												<table width="100%" border="0" align="center"
													cellpadding="0" cellspacing="0" class="right-font08">
													<tr>
														<td width="50%">
															共
															<span class="right-text09">5</span> 页 | 第
															<span class="right-text09">1</span> 页
														</td>
														<td width="49%" align="right">
															[
															<a href="#" class="right-font08">首页</a> |
															<a href="#" class="right-font08">上一页</a> |
															<a href="#" class="right-font08">下一页</a> |
															<a href="#" class="right-font08">末页</a>] 转至：
														</td>
														<td width="1%">
															<table width="20" border="0" cellspacing="0"
																cellpadding="0">
																<tr>
																	<td width="1%">
																		<input name="textfield3" type="text"
																			class="right-textfield03" size="1" />
																	</td>
																	<td width="87%">
																		<input name="Submit23222" type="submit"
																			class="right-button06" value=" " />
																	</td>
																</tr>
															</table>
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
