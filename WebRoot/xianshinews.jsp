<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
					<a href="index.jsp">首页</a>
					<a href="#">联系</a>
					<a href="login.html">登录系统</a>
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
						<a href="index.jsp">首页</a>
					</li>
					<!-- Active link -->
					<li><a href="xianshinews.jsp">国内</a></li>
          <li><a href="xianshinews01.jsp">国际</a></li>
			<li><a href="xianshinews02.jsp">军事</a></li>
			<li><a href="xianshinews03.jsp">财经</a></li>
					<li>
						<a href="#">互联网</a>
					</li>
					<li>
						<a href="#">房产</a>
					</li>
					<li>
						<a href="#">汽车</a>
					</li>
					<li>
						<a href="#">体育</a>
					</li>
					<li>
						<a href="#">娱乐</a>
					</li>
					<li>
						<a href="#">游戏</a>
					</li>
					<li>
						<a href="#">教育</a>
					</li>
				</ul>
				<hr class="noscreen" />
			</div>
			<!-- end/ Navigation -->

			<div id="container" class="box">

				<!-- Content -->
				<div id="obsah" class="content box">
					<div class="in">

						<div class="article">

							<h2>
								<a href="#">国内</a>
							</h2>


							<table width="90%" border="0" align="center"
								style="margin-left: 30px" border="1px">
								<c:forEach items="${list}" var="temp" >
								<tr>
									<td width="2%">
										<img src="img/arr.gif" alt="" width="3" height="6" />
									</td>
									<td width="88%">
										${temp.title}
									</td>
									<td width="10%">
										${temp.time}
									</td>
								</tr>
								</c:forEach>
							</table>
							<div class="clear"></div>

						</div>
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
								<em>Name Surname</em> "Lorem ipsum dolor sit amet, consectetuer
								adip iscing elit, sed diam non ummy nibh euismod tincidunt u”
							</p>
							<div class="clear"></div>
							<br />

							<strong class="title">友情链接</strong>
							<ul>
								<li>
									<a href="#">Business</a>
								</li>
								<li>
									<a href="#">Art &amp; Photography</a>
								</li>
								<li>
									<a href="#">Communications</a>
								</li>
								<li>
									<a href="#">Fashion</a>
								</li>
								<li>
									<a href="#">Hosting</a>
								</li>
								<li>
									<a href="#">Interior &amp; Furniture</a>
								</li>
								<li>
									<a href="#">Music</a>
								</li>
								<li>
									<a href="#">Real Estate</a>
								</li>
								<li>
									<a href="#">Sport</a>
								</li>
								<li>
									<a href="#">Travel</a>
								</li>
								<li>
									<a href="#">Web design</a>
								</li>
							</ul>

							<strong class="title">Entries by month</strong>
							<ul>
								<li>
									<a href="#">August 2008 (38)</a>
								</li>
								<li>
									<a href="#">July 2008 (81)</a>
								</li>
								<li>
									<a href="#">June 2008 (58)</a>
								</li>
								<li>
									<a href="#">May 2008 (60)</a>
								</li>
								<li>
									<a href="#">April 2008 (68)</a>
								</li>
								<li>
									<a href="#">March 2008 (82)</a>
								</li>
								<li>
									<a href="#">February 2008 (36)</a>
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
					京 ICP备11011334号-1 京公网安备110105007294 | Powered by:
					<a href="#">乐成科技09班</a>
				</p>
			</div>
		</div>

	</body>
</html>