<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��Ŀ����ϵͳ by www.mycodes.net</title>
<c:if test="${sessionScope.name == null}" >
		<c:redirect url="../LoginJsp.jsp"/>
</c:if>
<link rel="stylesheet" rev="stylesheet" href="../css/style.css" type="text/css" media="all" />


<script language="JavaScript" type="text/javascript">
function tishi()
{
  var a=confirm('��ݿ��б����и���Ա����Ϣ��������޸Ļ�������Ϣ��');
  if(a!=true)return false;
  window.open("��ͻҳ.htm","","depended=0,alwaysRaised=1,width=800,height=400,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
}

function check()
{
document.getElementById("aa").style.display="";
}


function link(){
alert('����ɹ���');
    document.getElementById("fom").action="xuqiumingxi.htm";
   document.getElementById("fom").submit();
}



</script>
<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>

<body class="ContentBody">
  <form action="" method="post" enctype="multipart/form-data" name="fom" id="fom" target="sypost" >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >�������ҳ��</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		<tr><td align="left">
		<input type="button" name="Submit" value="����" class="button" onclick="alert('����ɹ���');"/>��
			
			<input type="button" name="Submit2" value="����" class="button" onclick="window.history.go(-1);"/>
		</td></tr>

		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>�������</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					 
					  <tr>
					    <td nowrap align="right" width="13%">�������:</td>
					    <td width="41%"><input name="text" class="text" style="width:250px" type="text" size="40" />
				        <span class="red"> *</span></td>
					    <td align="right" width="19%">����:</td>
					    <td width="27%"><input name="Input22" id="Input22" class="text" style="width:154px" /></td>
					    </tr>
					  <tr>
					    <td nowrap align="right">�ƻ���ʼʱ��:</td>
					    <td><input name="" id="" class="text" style="width:154px" /></td>
					    <td align="right">�ƻ�����ʱ��:</td>
					    <td><input name="Input" id="Input" class="text" style="width:154px" /></td>
					  </tr>
					   <tr>
					    <td nowrap align="right">����ִ����:</td>
					    <td><select name="select2" >
                          <option  selected="selected">==��ѡ��==</option>
                          <option>�ݲ�</option>
                          <option>һ��</option>
                          <option>��Ҫ</option>
                          <option>��</option>
                          <option>�ܼ�</option>
                        </select></td>
					    <td align="right">���ȼ�:</td>
					    <td><select name="select" >
                          <option  selected="selected">==��ѡ��==</option>
                          <option>�ݲ�</option>
                          <option>һ��</option>
                          <option>��Ҫ</option>
                          <option>��</option>
                          <option>�ܼ�</option>
                        </select></td>
					  </tr>
					  <tr>
					    <td nowrap align="right" height="120px">����˵��:</td>
					    <td colspan="3">
<FCK:editor instanceName="content" height="400pt">
   			<jsp:attribute name="value">
   			请输入内容
   			
   			</jsp:attribute>
		</FCK:editor>       
</td>
					    </tr>
					  </table>
			 <br />
				</fieldset>			</TD>
		</TR>
		
		</TABLE>
	
	
	 </td>
  </tr>
  

		
		
		
		
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input type="button" name="Submit" value="����" class="button" onclick="link();"/>��
			
			<input type="button" name="Submit2" value="����" class="button" onclick="window.history.go(-1);"/></TD>
		</TR>
		</TABLE>
	
	
	 </td>
  </tr>
  
  
  
  
  </table>

</div>
</form>
</body>
</html>
