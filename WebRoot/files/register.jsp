<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<title>项目管理系统 by www.mycodes.net</title>
<c:if test="${sessionScope.name == null}" >
		<c:redirect url="../LoginJsp.jsp"/>
</c:if>

<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
	color: #3791cf;
}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>

<link href="user2/css/bg.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
<!--
//注册
function save1(){
	if(!Validator.Validate(document.getElementById('form1'),1))
	{
		return false;
	}
	
	
	var mm=document.getElementById("mm");
	var checkmm=document.getElementById("checkmm");
	if(mm.value!=checkmm.value){
		alert("密码和确认密码必须相同！");
		return false;
	}
	
	var fom=document.getElementById("form1");
	fom.action="saveUsers.action";
	fom.submit();
}


function resetform(){
document.getElementById("form1").reset()
}

function setNull()
{
	form1.reset();
}

function showBm(){
	var objbm = document.getElementById("bm");
	var objbmjd = document.getElementById("bmjd");
	var objbmsq = document.getElementById("bmsq");
	var qxtr = document.getElementById("qxtr");
	if (objbm != null && objbmjd != null && objbmsq != null && qxtr != null){
		if (objbm.value==10){
			objbmjd.style.display = "";
			objbmsq.style.display = "";
			qxtr.style.display = "none";
		}else{
			objbmjd.style.display = "none";
			objbmsq.style.display = "none";
			qxtr.style.display = "";
		}
	}
}

function showBmjd(){
	var objbmjd = document.getElementById("bmjd");
	if (objbmjd != null){
		var objbmjdvalue = objbmjd.value;
		if (objbmjdvalue != ""){
			buffalo.remoteCall("usersBuffaloAction.getbmsq",[objbmjdvalue],showbmsq);
		}
	}
}

function showbmsq(reply){
	var state = reply.getResult();
	var objbmsq = document.getElementById("bmsq");
	if (state != null  && objbmsq != null){
		objbmsq.options.length = 0;
		objbmsq.options[0]=new Option("==请选择==","");
		for (var i=0;i<state.length;i++){
			objbmsq.options[i+1]=new Option(state[i][1],state[i][0]);
		}
	}else{
		return;
	}
}
function ok(){
	var String name = document.getElementById("yhm");
	var String rename = document.getElementById("yhxm");
	var String parsword = document.getElementById("mm");
	var String word = document.getElementById("checkmm");
	
	if(name == ""){
		alert("用户名不能为空！");
	}else if(rename == ""){
		alert("用户真实姓名不能为空！");
	}else if(parsword == ""){
		alert("密码不能为空！");
	}else if(parsword != word){
		alert("密码不能为空！");
	}else{
		var myform = document.getElementById("form1");
		myform.submit();
	}
}
-->
</script>


</head>

<body>
<form id="form1" name="form1" action="../servlet/RegisterServlet" method="post">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
  		<tr>
    		<td width="45" valign="top"><img src="../user2/images/register_03.gif" width="45" height="386" /></td>
    		<td width="623" valign="top">
    			<table width="100%" border="0" cellspacing="0" cellpadding="0">
      				<tr>
        				<td><img src="../user2/images/register_04.gif" width="623" height="135" /></td>
      				</tr>
    			</table>
    			<table width="100%" border="0" cellspacing="0" cellpadding="0">
        			<tr>
        				<td background="../user2/images/register_28.gif">
            			<table width="100%" height="158" border="0" cellpadding="0" cellspacing="0">
              				<tr>
                				<td align="center">
                					<table width="272" border="0" cellspacing="0" cellpadding="0">
                  						<tr>
                  							<td width="123" height="25" align="left"><img src="../user2/images/register_10.gif" width="79" height="17" /></td>
                    						<td width="268" align="left"><label><input name="yhm" id="yhm" type="text" dataType="Limit" require="true" msg="用户名不能为空"  /></label></td>
                  						</tr>
                  						<tr>
                    				<td height="25" align="left"><img src="../user2/images/register_13.gif" width="79" height="18" /></td>
                    				<td align="left"><input  name="yhxm" id="yhxm" type="text" dataType="Limit" require="true" msg="用户姓名不能为空"  /></td>
                  				</tr>
                  				<tr>
                    				<td height="25" align="left"><img src="../user2/images/register_15.gif" width="79" height="17" /></td>
                    				<td align="left"><input name="mm" id="mm" size="25" type="password" dataType="Limit" require="true" msg="密码不能为空"  /></td>
                  				</tr>
                  				<tr>
                    				<td height="25" align="left"><img src="../user2/images/register_17.gif" width="76" height="19" /></td>
                    				<td align="left"><input name="checkmm" id="checkmm" size="25" type="password" dataType="Limit" require="true" msg="确认密码不能为空" /></td>
                  				</tr>
                			</table>
                		</td>
                		<td width="232" align="right" valign="top"><img src="../user2/images/register_08.gif" width="232" height="172" /></td>
                	</tr>
            	</table>
                <table width="623" height="41" border="0" cellpadding="0" cellspacing="0">
                	<tr align="center">
						<td width="201">&nbsp;</td>
                        <td width="107"><input onClick="ok();" type="image" src="../user2/images/register_22.gif" width="82" height="23"  /></td>
                        <td width="62"><input onclick="resetform();" type="image" src="../user2/images/rr_24.gif" width="62" height="23"></td>
						<td width="201">&nbsp;</td>
                    </tr>
				</table>
                <table border="0" cellpadding="0" cellspacing="0">	
                	<tr align="center">
                        <td align="right" width="160"><input type="checkbox" name="c" id="c" value="1"></input></td>
                        <td align="left">所有统计</td>
					</tr>
					<tr align="center">
						<td align="right" width="160"><input type="checkbox" name="c" id="c" value="2"></input></td>
                        <td align="left">公安局管理权限</td>
					</tr>
					<tr align="center">
						<td align="right" width="160"><input type="checkbox" name="c" id="c" value="3"></input></td>
                        <td align="left">人口和计划生育管理权限</td>
					</tr>
					<tr align="center">
						<td align="right" width="160"><input type="checkbox" name="c" id="c" value="4"></input></td>
                        <td align="left">教育管理权限</td>
					</tr>
					<tr align="center">
						<td align="right" width="160"><input type="checkbox" name="c" id="c" value="5"></input></td>
                        <td align="left">劳动保障管理权限</td>
					</tr>
					<tr align="center">
						<td align="right" width="160"><input type="checkbox" name="c" id="c" value="6"></input></td>
                        <td align="left">劳动保障管理权限</td>
					</tr>
					<tr align="center">
						<td align="right" width="160"><input type="checkbox" name="c" id="c" value="7"></input></td>
                        <td align="left">建设管理权限</td>
					</tr>
					<tr align="center">
						<td align="right" width="160"><input type="checkbox" name="c" id="c" value="8"></input></td>
                        <td align="left">卫生管理权限</td>
					</tr>
					<tr align="center">
						<td align="right" width="160"><input type="checkbox" name="c" id="c" value="9"></input></td>
                        <td align="left">工商管理权限</td>
                    </tr> 		
				</table>
          	</td>
		</tr>
	</table>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="9"><img src="../user2/images/register_31.gif" width="9" height="44" /></td>
          <td background="../user2/images/register_32.gif">&nbsp;</td>
          <td width="11"><img src="../user2/images/register_34.gif" width="11" height="44" /></td>
        </tr>
   	</table>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>&nbsp;</td>
        </tr>
    </table>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>&nbsp;</td>
        </tr>
    </table>
 </td>
    <td class="bg">&nbsp;</td>
  </tr>
</table>
</form>
<iframe id="ifr" name="ifr" style="display:none" ></iframe>
</body>
</html>
