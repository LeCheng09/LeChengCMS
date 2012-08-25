<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>栏目管理列表</title>
<c:if test="${sessionScope.name == null}" >
		<c:redirect url="../LoginJsp.jsp"/>
</c:if>
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
.font051 {font-family: "宋体";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}
.font201 {font-family: "宋体";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.button {
	font-family: "宋体";
	font-size: 14px;
	height: 37px;
}
html { overflow-x: auto; overflow-y: auto; border:0;} 
-->
</style>

<link href="../css/css.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">

</script>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
</head>
<SCRIPT SelectServlet.java>
function sousuo(){
	window.open("","","depended=0,alwaysRaised=1,width=800,height=510,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
}
function selectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			obj[i].checked = true;
		}
	}
}

function unselectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			if (obj[i].checked==true) obj[i].checked = false;
			else obj[i].checked = true;
		}
	}
}

function link(){
    document.getElementById("fom").action="../LmInsert.jsp";
    document.getElementById("fom").submit();
}

function con(){
	if (confirm("确定删除吗？")) {
			<c:forEach items="${mylist}" var="temp">
			var del = document.getElementById("${temp.id}");
			del.href = "../servlet/DelLmServlet?id=${temp.id}";
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
<form name="fom" id="fom" method="post" action="../servlet/LmDelServlet">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  
  <tr>
    <td height="30">    
     
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="62" background="../images/nav04.gif">
            
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		    <tr>
			  <td width="21"><img src="../images/ico07.gif" width="20" height="18" /></td>
				<td width="538">查看内容：按ID：
					<input name="textfield" type="text" size="12" readonly="readonly"/>
					<span class="newfont06">至</span>
					<input name="textfield" type="text" size="12" readonly="readonly"/>
					<input name="Submit4" type="button" class="right-button02" value="查 询" />
				</td>
			   <td width="144" align="left"><a href="#" onclick="sousuo()">
			     	<input name="Submit3" type="button" class="right-button07" value="高级搜索" />
			   </a></td>
		    </tr>
           </table>
          
          </td>
        </tr>
    </table>
    
    </td>
  </tr>
  
  <tr>
    <td>
      <table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>
          	<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
          	 <tr>
               <td height="30"><span class="newfont07">选择：<a href="#" class="right-font08" onclick="selectAll();">全选</a>-<a href="#" class="right-font08" onclick="unselectAll();">反选</a></span>
	              <input name="Submit" type="button" class="right-button08" value="删除所选任务" onclick="allcon();"/>
	              <input name="Submit2" type="button" class="right-button08" value="添加任务" onclick="link();"/></td>
          	 </tr>
             <tr>
                <td height="40" class="font42">
                
					<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
						 <tr class="CTitle" >
	                    	<td height="30" colspan="7" align="center" style="font-size:16px">任务详细列表</td>
	                  	 </tr>
	                 	 <tr bgcolor="#EEEEEE">
						    <td width="4%" align="center" height="30">选择</td>
		                    <td width="10%" align="center">ID</td>
							<td width="10%" align="center">栏目名称</td>
							<td width="12%">操作</td>
	                  	 </tr>
	                   <c:forEach items="${mylist}" var="temp">		   
		                  <tr bgcolor="#FFFFFF">
						    <td height="20" align="center"><input type="checkbox" value="${temp.id}" name="delid"/></td>
		                    <td align="center">${temp.id}</td>
						    <td align="center">${temp.lmname}</td>
		                    <td><a href="../files/LmUpdate.jsp">编辑|</a>
								<a href="#" id="${temp.id}" onclick="con();">删除</a>
							</td>
		                  </tr>  
		               </c:forEach>                          
	                 </table>
	            </td>
        	</tr>
      </table>
      
      <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="6"><img src="images/spacer.gif" width="1" height="1" /></td>
        </tr>
        <tr>
          <td height="33">
          
          	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="right-font08">
              <tr>
                <td width="50%">共 <span class="right-text09">1</span> 页 | 第 <span class="right-text09">1</span> 页</td>
                <td width="49%" align="right">[<a href="#" class="right-font08">首页</a> | <a href="#" class="right-font08">上一页</a> | <a href="#" class="right-font08">下一页</a> | <a href="#" class="right-font08">末页</a>] 转至：</td>
                <td width="1%">
                
	                <table width="20" border="0" cellspacing="0" cellpadding="0">
	                    <tr>
	                      <td width="1%"><input name="textfield3" type="text" class="right-textfield03" size="1" /></td>
	                      <td width="87%"><input name="Submit23222" type="submit" class="right-button06" value=" " /></td>
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
