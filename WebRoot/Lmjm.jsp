<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'Lmjm.jsp' starting page</title>
    

  </head>
  
  <body>
   <h1 align="center">欢迎来添加~</h1>
  <form name="form1" method="post" action="servlet/InsertServlet">
    <table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="39"><div align="right">栏目名称：</div></td>
        <td><label>
          <input type="text" name="lmname">
        </label></td>
      </tr>
      <tr>
        <td height="59" colspan="2"><div>
          <label>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <input type="submit" name="Submit" value="添加">
          </label>
        </div></td>
		
      </tr>
    </table>
   
   
  </form>
    
  </body>
</html>
