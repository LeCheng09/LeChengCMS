<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="cs" lang="cs">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<link href="css/screen.css" type="text/css" rel="stylesheet"
			media="screen,projection" />
		<title>欢迎访问乐成科技</title>
	</head>
	<body>

		<!-- Layout -->
		<div id="layout">
			<!-- Header -->
			<div id="header">

				<h1 id="logo">
					乐成科技
				</h1>
				<span id="slogan">www.heblch.com</span>
				<hr class="noscreen" />

				<!-- Quick hidden nav -->
				<p class="noscreen noprint">
					<em>Rychlá navigace: <a href="#">obsah</a>, <a href="#">navigace</a>.</em>
				</p>

				<!-- Quick nav -->
				<div id="quicknav">
					<a href="servlet/ShouYeServlet">首页</a>
					<a href="#">联系</a>
					<a href="LoginJsp.jsp">登录系统</a>
					
				</div>

				<!-- Search -->
				<div id="search">
					<form action="" method="post">
						<fieldset>
							<input type="text" id="phrase" name="phrase" value="搜索网站"
								onfocus="if(this.value=='搜索网站')this.value=''" />
							<input type="button" id="submit" value="SEARCH" />
						</fieldset>
					</form>
				</div>

			</div>
			<!-- end/ Header -->

			<hr class="noscreen" />

			<!-- Navigation -->
			<div id="nav" class="box">
				<ul>
					<li id="active">
					<a href="servlet/ShouYeServlet">首页</a>
						
					</li>
					<!-- Active link -->
					<li><a href="servlet/QianTaiNewsServlet?lmname=1">国内</a></li>
          <li><a href="servlet/QianTaiNewsServlet?lmname=2">国际</a></li>
			<li><a href="servlet/QianTaiNewsServlet?lmname=3">军事</a></li>
			<li><a href="servlet/QianTaiNewsServlet?lmname=4">财经</a></li>
					<li>
						<a href="servlet/QianTaiNewsServlet?lmname=5">互联网</a>
					</li>
					<li>
						<a href="servlet/QianTaiNewsServlet?lmname=6">房产</a>
					</li>
					<li>
						<a href="servlet/QianTaiNewsServlet?lmname=7">汽车</a>
					</li>
					<li>
						<a href="servlet/QianTaiNewsServlet?lmname=8">体育</a>
					</li>
					<li>
						<a href="servlet/QianTaiNewsServlet?lmname=9">娱乐</a>
					</li>
					<li>
						<a href="servlet/QianTaiNewsServlet?lmname=10">游戏</a>
					</li>
					<li>
						<a href="servlet/QianTaiNewsServlet?lmname=11">教育</a>
					</li>
				</ul>
				<hr class="noscreen" />
			</div>
			<!-- end/ Navigation -->

			<div id="container" class="box">

				<!-- Content -->
				<div id="obsah" class="content box">
					<div class="in">

						<div id="new-article">
							<div id="corner">
								<h2>
									<a href="newsmore.jsp">头条新闻</a>
								</h2>
								<div class="f-left article-img">
									<img src="./tmp/image.jpg" alt="image.jpg" title="image" />
									<div></div>
								</div>
								<p class="f-left">
								<c:forEach items="${mylist01}" var="tempp">
								<c:if test="${fn:length(tempp.content)>=100}">${fn:substring(tempp.content,0,99)}......</c:if>
								<c:if test="${fn:length(tempp.content)<100}">${tempp.content}</c:if>
								</c:forEach>
									<a href="servlet/SelectContentServlet" class="more">MORE</a>
								</p>
								<div class="clear"></div>
							</div>
						</div>
<c:forEach items="${mylist03}" var="temp03" varStatus="vs">
<div class="article">
               <h2><a href="servlet/QianTaiNewsServlet?lmname=${vs.count}">${temp03.lmname}</a>	</h2>
              
<table width="90%" border="0" align="center" style="margin-left:30px">
<c:forEach items="${mylist02}" var="temp02" varStatus="vs02" step="${4-vs.index}" begin="${vs.index}">
	<c:forEach items="${temp02}" var="temp01" varStatus="vs01">
		  <tr>
		    <td width="2%"><img src="img/arr.gif" alt="" width="3" height="6" /></td>
		    <td width="88%"><a href="servlet/XiangXiNews?id=${temp01.id }">${temp01.title }</a></td>
		    <td width="10%">${temp01.time}</td>
		  </tr>
	</c:forEach>
</c:forEach>
</table>

               <a href="servlet/QianTaiNewsServlet?lmname=${vs.count}" class="more">MORE</a>
              <div class="clear"></div>
      
</div>
</c:forEach>

					</div>
				</div>
				<!-- end/ Content-->

				<!-- Right sidebox -->
				<div id="panel-right" class="box panel">
					<div id="bottom">
						<div class="in">
							<strong class="title">关于我们</strong>
							<div class="f-left about-img">
								<img src="./tmp/about.jpg" alt="about.jpg" title="about me" />
								<div></div>
							</div>
							<p class="f-left about-me">
								<em>乐成科技 </em>石家庄乐成科技有限公司 乐成科技是一家it服务的优秀提供商，
								致力于打造为客户提供it服务整体解决方案的核心竞争优势，
								是河北最大的it服务提供商之一
							</p>
							<div class="clear"></div>
							<br />

							<strong class="title">友情链接</strong>
							<ul>
								<li>
									<a href="http://www.sjziei.com/">信息工程学院</a>
								</li>
								<li>
									<a href="http://www.hebau.edu.cn/">河北农业大学</a>
								</li>
								<li>
									<a href="http://www.hbu.edu.cn/">河北大学</a>
								</li>
								<li>
									<a href="http://www.sjzc.edu.cn/">石家庄学院</a>
								</li>
								<li>
									<a href="http://www.heuet.edu.cn/">经贸大学</a>
								</li>
								<li>
									<a href="http://www.hebnzxy.com/">女子学院</a>
								</li>
								<li>
									<a href="http://www.kjxinxiedu.com/">科技信息职业学院</a>
								</li>
								<li>
									<a href="www.ibm.com.cn ">IBM</a>
								</li>
								<li>
									<a href="http://www.sinosoft.com.cn/">中科软</a>
								</li>
								<li>
									<a href="http://www.sinodata.net.cn/">中科金财</a>
								</li>
								<li>
									<a href="http://www.tyfoo.com/">泛思</a>
								</li>
							</ul>

							<strong class="title">开发人员(排名不分先后)</strong>
							<ul>
								<li>
									<a href="#">陈雪</a>
								</li>
								<li>
									<a href="#">程志伟</a>
								</li>
								<li>
									<a href="#">董超男</a>
								</li>
								<li>
									<a href="#">游佳宁</a>
								</li>
								<li>
									<a href="#">梁爽</a>
								</li>
								<li>
									<a href="#">路枭</a>
								</li>
								<li>
									<a href="#">安凯</a>
								</li>
                                <li>
									<a href="#">王兴娟</a>
								</li>
                                <li>
									<a href="#">杨文佳</a>
								</li>
                                <li>
									<a href="#">姚雪娇</a>
								</li>
                                <li>
									<a href="#">赵晶</a>
								</li>
							</ul>

						</div>
					</div>
				</div>
				<!-- end/ Right sidebox -->

			</div>

		</div>
		<!-- end/ Layout -->
		<div id="footer">
			<div id="foot">
				<div id="page-bottom">
					<a href="#header">回页首</a>
				</div>
				<p class="f-left">
					&copy; 2008 &ndash; 2012 乐成科技版权所有
				</p>
				<p class="f-right">
					项目网址：<a href="https://github.com/LeCheng09" target="_blank">
                    https://github.com/LeCheng09</a> | Powered by:
					乐成科技09班
				</p>
			</div>
		</div>

	</body>
</html>
