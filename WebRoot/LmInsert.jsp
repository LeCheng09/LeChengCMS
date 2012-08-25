<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>项目管理系统 </title>
<c:if test="${sessionScope.name == null}" >
		<c:redirect url="LoginJsp.jsp"/>
</c:if>
<link rel="stylesheet" rev="stylesheet" href="css/style.css" type="text/css" media="all" />


<script language="JavaScript" type="text/javascript">
function sub(){
 var name = document.getElementById("lmname").value;
 if(name != ""){
  alert("插入成功！");
  
  var f = document.getElementById("form");
  f.action="servlet/LmInsertServlet";
  f.target = "_self";
  f.submit(); 
  }else{
    alert("内容不能为空，请重新插入！");
  }
 } 
 function fh(){
  var f = document.getElementById("form");
  f.action="files/mainfra.jsp";
  f.target = "_self";
  f.submit();
  
 }
</script>
<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>

<body class="ContentBody" onload="">
  
  <form  method="post"  id="form" target="sypost" >
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
					    <td colspan="3"><input name="lmname" id="lmname" type="text" class="text" style="width:154px"  /></td>
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
			<input type="button" name="Submit2" id="fanhui" value="返回" class="button" onclick="fh();"/>　		　	
			</td>
		</tr>
		</table>
	
</div>
</form>
</body>
</html>
