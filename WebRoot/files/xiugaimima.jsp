<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<title>项目管理系统 by www.mycodes.net</title>
<link rel="stylesheet" rev="stylesheet" href="../css/style.css" type="text/css" media="all" />
<script language="JavaScript" type="text/javascript">
function myclick(){
		var str1 = document.getElementById("oldpasword").value;
		var str2 = document.getElementById("newpasword").value;
		var str3 = document.getElementByName("newrealname2").value;
		if(str1 == "" && str2 == "" && str3 == ""){
			alert("不能为空！");
		}
		if(str2!=str3){
			alert("两次输入的新密码不同！");
		}
	}
	function myreset(){
		document.getElementById("oldpasword").value="";
		document.getElementById("newpasword").value="";
		document.getElementByName("newrealname2").value="";
	}

</script>
<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>

<body class="ContentBody">
  <form action="servlet/XiugaimimaServlet" method="post" enctype="multipart/form-data" name="form" target="sypost" >
<div class="MainDiv">

<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent" >
  <tr>
      <th class="tablestyle_title" >密码信息</th>
  </tr>
  <tr>
    <td class="CPanel">
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		<tr><td align="left">　
			
			<input type="button" name="Submit2" value="返回" class="button" onclick="main1.jap"/>
		</td></tr>
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>修改密码</legend>
				<table border="0" cellpadding="2" cellspacing="1" style="width:100%">   
			      <tr>
					    <td nowrap align="right" width="11%">用户名:</td>
					    <td width="27%"><input name='name' id="name" value="${sessionScope.name}" type="text" class="text" style="width:154px" disabled="disabled"/></td>
				        	
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
					    <td  width="11%" nowrap align="right">再次输入:</td>
					    <td colspan="3"><input id="newrealname2" name="newrealname2" type="password" style="width:154px" class="text" /></td>
					    </tr>
					  </table>
			  <br />
				</fieldset></TD>
		</TR>
		</TABLE>
	 	</td>
  			</tr>
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input type="button" name="Submit" value="确定" class="button" onclick="myclick();"/>
			
			<input type="reset" name="Submit2" value="重置" class="button" onclick="myreset();"/></TD>
		</TR>
		</TABLE>
	
	
	 </td>
  </tr>

  </table>
</div>
</form>
</body>
</html>
