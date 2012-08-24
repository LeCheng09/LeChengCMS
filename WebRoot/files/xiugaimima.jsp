<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<title>项目管理系统 by www.mycodes.net</title>
<c:if test="${sessionScope.name == null}" >
		<c:redirect url="../LoginJsp.jsp"/>
</c:if>
<link rel="stylesheet" rev="stylesheet" href="../css/style.css" type="text/css" media="all" />
<script language="JavaScript" type="text/javascript">
function popwin(){

		var name = document.getElementById("name").value;
		var str1 = document.getElementById("oldpasword").value;
		var str2 = document.getElementById("newpasword").value;
		var str3 = document.getElementById("confirm").value;
		if(str1 == "" || str2 == "" || str3 == ""){
			alert("密码不能为空！");
		}else{
			if(str2!=str3){
				alert("密码和确认密码必须相同！");
			}else{
			
				var myform = document.getElementById("form");
				myform.submit();
				
			}
		}
		
	}
	function check(flag){
		if(flag != ""){
					if(flag == "success"){
					alert("修改成功！");
					}else if(flag == "error"){
					alert("修改失败！");
					}
				}
	}
function myreset(){
		document.getElementById("oldpasword").value="";
		document.getElementById("newpasword").valuife="";
		document.getElementByName("confirm").value="";
	}
//function popwin(flag){
	//if(flag == true){
		//alert("修改成功！");
	//}else{
		//alert("修改失败！");
	//}
//}

</script>
<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>

<body class="ContentBody">
  <form action="../servlet/XiugaimimaServlet" method="post"  id="form" name="form" >
<div class="MainDiv">

<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent" >
  <tr>
      <th class="tablestyle_title" >密码信息</th>
  </tr>
  <tr>
    <td class="CPanel">
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		<tr><td align="left">　
			
			<label><input type="button" name="Submit2" value="返回" class="button" onClick="javaScript:window.back();"/></label>
		</td></tr>
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>修改密码</legend>
				<table border="0" cellpadding="2" cellspacing="1" style="width:100%">   
			      <tr>
					    <td nowrap align="right" width="11%">用户名:</td>
					    <td width="27%"><input name="name" id="name" value="${sessionScope.name}" type="text" class="text" style="width:154px" disabled="disabled"/></td>
				        	
					    <td align="right" width="25%">&nbsp;</td>
					    <td width="37%">&nbsp;</td>
					    </tr>
					  <tr>
					    <td width="11%" align="right" nowrap>旧密码:</td>
					    <td colspan="3"><input id="oldpasword" name="oldpasword" type="password" style="width:154px" class="text" /></td>
					    </tr>
					  
					  <tr>
					    <td  width="11%" nowrap align="right">新密码:</td>
					    <td colspan="3"><input id="newpasword" name="newpasword" type="password" style="width:154px" class="text" /></td>
					    </tr>
                        <tr>
					    <td  width="11%" nowrap align="right">确认密码:</td>
					    <td colspan="3"><input id="confirm" name="confirm" type="password" style="width:154px" class="text" /></td>
					    </tr>
					  </table>
			  <br />
				</fieldset></TD>
		</TR>
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input type="reset" value="确定" class="button" onClick="popwin();"/>
			
			<input type="reset" value="重置" class="button" onClick="myreset();"/>
			</TD>
		</TR>
	</TABLE>
	</td>
	</tr>
	</table>
</div>
</form>
</body>
</html>
