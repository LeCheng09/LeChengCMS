<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>项目管理系统 by www.mycodes.net</title>
    <style type="text/css">
		<!--
		body {
			margin-left: 0px;
			margin-top: 0px;
			margin-right: 0px;
			margin-bottom: 0px;
		}
		-->
	</style>
		<link href="css/css.css" rel="stylesheet" type="text/css" />
		
    <script type="text/javascript">
    	<%--定义一个判断输入是否正确的方法 --%>
		function myselect(){
		<%--获取组件的属性值--%>
		var mytext = document.getElementById("textfield").value;
		var mytext2 = document.getElementById("textfield2").value;

		<%--限制输入不为空--%>
	
		
		if(mytext == "" && mytext2 == ""){
			alert("输入不能为空!");
		}else if(mytext == "" && mytext2 != ""){
			alert("输入用户名不能为空!");
		}else if(mytext != "" && mytext2 == ""){
			alert("输入密码不能为空!");
		}
		else{
			var form1 = document.getElementById("form1");
			form1.action="servlet/LoginServlet";
			form1.submit();
		}
		} 
 
  

    	<%--定义一个清空所有值的方法 --%>
		function clearAll(){
		<%--清空所有值--%>
		document.getElementById("textfield").value = "";
		document.getElementById("textfield2").value = "";
		}
		function login(msg){
			if(msg != ""){
				alert(msg);
			}
		}
   </script>

  </head>
  
  <body onload="login('${err}')">
    <form id="form1" name="form1" method="post">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr>
	    <td height="147" background="images/top02.gif"><img src="images/title01.jpg" width="900" height="147" />       </td>
	  </tr>
	</table>
	<table width="562" border="0" align="center" cellpadding="0" cellspacing="0" class="right-table03">
	  <tr>
	    <td width="221"><table width="95%" border="0" cellpadding="0" cellspacing="0" class="login-text01">
	      
	      <tr>
	        <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="login-text01">
	          <tr>
	            <td align="center"><img src="images/ico13.gif" width="107" height="97" /></td>
	          </tr>
	          <tr>
	            <td height="40" align="center">&nbsp;</td>
	          </tr>
	          
	        </table></td>
	        <td><img src="images/line01.gif" width="5" height="292" /></td>
	      </tr>
	    </table></td>
	    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
	      <tr>
	        <td width="31%" height="35" class="login-text02">用户名称：<br /></td>
	        <td width="69%"><input name="username" id="textfield" type="text" size="30" /></td>
	      </tr>
	      <tr>
	        <td height="35" class="login-text02">密　码：<br /></td>
	        <td><input name="password" id="textfield2" type="password" size="33" /></td>
	      </tr>
	      <tr>
	        <td height="35">&nbsp;</td>
	        <td><input name="Submit2" type="submit" class="right-button01" value="确认登陆" onClick="myselect();" />
	          <input name="Submit232" type="submit" class="right-button02" value="重 置" onClick="clearAll();"/></td>
	      </tr>
	    </table></td>
	  </tr>
	</table>
	</form>
  </body>
</html>
