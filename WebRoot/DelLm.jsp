<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'DelUser.jsp' starting page</title>


    <style type="text/css">
<!--
.STYLE3 {font-size: large}
-->
    </style>
</head>
  
  <body>
 <form name="form2" method="post" action="servlet/DelLmServlet">
 <div align="center">  <h1> 欢迎来到删除页面~！</h1> </div>
 <div>
   
 </div>
 <table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
     <tr>
       <td width="274" align="right"><span class="STYLE3">请输入要删除的栏目名称：</span></td>
       <td width="177" align="left"><label>
         <input type="text" name="lmname">
       </label></td>
	   <td width="349" align="left"><label>
	     <input type="submit" name="Submit" value="提交">
	   </label></td>
     </tr>
     <tr>
       <td colspan="3" align="center"><label></label></td>
     </tr>
   </table>
 
 </form>
  </body>
</html>