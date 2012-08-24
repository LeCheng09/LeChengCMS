<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>项目管理系统 </title>
<link rel="stylesheet" rev="stylesheet" href="css/style.css" type="text/css" media="all" />


<script language="JavaScript" type="text/javascript">
function sub(){
  var f = document.getElementById("form");
  f.target = "_self";
  f.submit(); 
  }
function popwin(flag){
     
	 if(flag == false){
	  	alert("内容不能为空，请重新插入！");
	 } else {
	  	alert("插入成功！");
	  	flag=false;
	 }
	 session.remove();
} 
</script>
<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>

<body class="ContentBody" onload="popwin(${flag})">
  <form action="servlet/LmInsertServlet" method="post"  id="form" target="sypost" >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >新建栏目</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		
		
		<tr>
			<td width="100%">
				<fieldset style="height:100%;">
				<legend>新建栏目</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					    
					    
					  <tr>
					    <td align="right" width="50%">栏目ID:</td>
					    <td width=""50%""><input name="id" type="text" class="text" style="width:154px"  /></td>
					 </tr>		    				    
				     <tr>
					    <td width=""50%"" align="right" >栏目标题:</td>
					    <td colspan="3"><input name="lmname" type="text" class="text" style="width:154px"  /></td>
				    </tr>
					  </table>
			  <br />
				</fieldset>			</td>		
		</tr>
		</table>
	 </td>
  </tr>
		<tr>
			<td colspan="2" align="center" height="50px" >
			<input type="button" name="Submit" value="发送" class="button" onclick="sub();"/>　	
			<input type="button" name="Submit2" value="返回" class="button" onclick="window.history.go(-1);"/>
			</td>
		</tr>
		</table>
	
</div>
</form>
</body>
</html>
