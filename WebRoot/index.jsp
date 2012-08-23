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
					<a href="index.jsp">首页</a>
						
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
									客货运车辆有3个曝光未处理的立即停止使用、吸毒者30日内必须强制注销驾照、超速3次就会面临丢工作……8月20日，
									江苏省道路交通安全工作联席会议召开电视电话会议，全面部署推进江苏省道路交通安全隐患排查整治工作。
									会议要求，从现在起到10月底，在全省组织开展道路交通安全隐患排查整治工作，力争一次死亡3人以上交通事故明显减少，
									确保不发生一次死亡10人以......

									<a href="servlet/SelectContentServlet" class="more">MORE</a>
								</p>
								<div class="clear"></div>
							</div>
						</div>

						<div class="article">

							<h2>
								<a href="servlet/QianTaiNewsServlet?lmname=1">国内</a>
							</h2>

					<form action="">
							<table width="90%" border="0" align="center"
								style="margin-left: 30px" border="1px">
								<tr>
									<td width="2%">
										<img src="img/arr.gif" alt="" width="3" height="6" />
									</td>
									<td width="88%">
										<a href="servlet/SelectTitleServlet?title=01">江苏清交通隐患 客货运司机1年超速3次要解聘</a>
									</td>
									<td width="10%">
										2012-08-20
									</td>
								</tr>
								<tr>
									<td width="2%">
										<img src="img/arr.gif" alt="" width="3" height="6" />
									</td>
									<td width="88%">
										<a href="servlet/SelectTitleServlet?title=02">中俄昨举行战略安全磋商</a>
									</td>
									<td width="10%">
										2012-08-21
									</td>
								</tr>
							</table></form>
							<a href="servlet/QianTaiNewsServlet?lmname=1" class="more">MORE</a>
							<div class="clear"></div>

						</div>

						<div class="article">

							<h2>
								<a href="servlet/QianTaiNewsServlet?lmname=2">国际</a>
							</h2>
							<table width="90%" border="0" align="center"
								style="margin-left: 30px">
								<tr>
									<td width="2%">
										<img src="img/arr.gif" alt="" width="3" height="6" />
									</td>
									<td width="88%">
										<a href="servlet/SelectTitleServlet?title=03">菲律宾搜救人员发现坠机落海内政部长尸体 </a>
									</td>
									<td width="10%">
										2012-02-14
									</td>
								</tr>
								<tr>
									<td width="2%">
										<img src="img/arr.gif" alt="" width="3" height="6" />
									</td>
									<td width="88%">
										<a href="servlet/SelectTitleServlet?title=04">委内瑞拉监狱骚乱超过20人死亡 </a>
									</td>
									<td width="10%">
										2012-08-09
									</td>
								</tr>
							</table>
							<a href="servlet/QianTaiNewsServlet?lmname=2" class="more">MORE</a>

							<div class="clear"></div>

						</div>

						<div class="article">

							<h2>
								<a href="servlet/QianTaiNewsServlet?lmname=3">军事</a>
							</h2>
							<table width="90%" border="0" align="center"
								style="margin-left: 30px">
								<tr>
									<td width="2%">
										<img src="img/arr.gif" alt="" width="3" height="6" />
									</td>
									<td width="88%">
										<a href="servlet/SelectTitleServlet?title=05">日本抢岛将多样化 中国宜尽早全方位应对考虑 </a>
									</td>
									<td width="10%">
										2012-07-09
									</td>
								</tr>
								<tr>
									<td width="2%">
										<img src="img/arr.gif" alt="" width="3" height="6" />
									</td>
									<td width="88%">
										<a href="servlet/SelectTitleServlet?title=06">美日夺岛军演加强警备 日本变本加厉强化钓鱼岛控制</a>
									</td>
									<td width="10%">
										2012-02-09
									</td>
								</tr>
							</table>
							<a href="servlet/QianTaiNewsServlet?lmname=3" class="more">MORE</a>

							<div class="clear"></div>

						</div>

						<div class="article">

							<h2>
								<a href="servlet/QianTaiNewsServlet?lmname=4">财经</a>
							</h2>
							<table width="90%" border="0" align="center"
								style="margin-left: 30px">
								<tr>
									<td width="2%">
										<img src="img/arr.gif" alt="" width="3" height="6" />
									</td>
									<td width="88%">
										<a href="servlet/SelectTitleServlet?title=07">2015年 磁条银行卡全面退市</a>
									</td>
									<td width="10%">
										2012-08-10
									</td>
								</tr>
								<tr>
									<td width="2%">
										<img src="img/arr.gif" alt="" width="3" height="6" />
									</td>
									<td width="88%">
										<a href="servlet/SelectTitleServlet?title=08">统计局：我国已开始跻身服务贸易大国行列</a>
									</td>
									<td width="10%">
										2012-08-05
									</td>
								</tr>
							</table>
							<a href="servlet/QianTaiNewsServlet?lmname=4" class="more">MORE</a>

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

							<strong class="title">培训项目</strong>
							<ul>
								<li>
									<a href="#">Java开发</a>
								</li>
								<li>
									<a href="#">Java Web 开发</a>
								</li>
								<li>
									<a href="#">Android 系统开发</a>
								</li>
								<li>
									<a href="#">Java 和 Web</a>
								</li>
								<li>
									<a href="#">Java 和 Android</a>
								</li>
								<li>
									<a href="#">Java Web 和 Android</a>
								</li>
								<li>
									<a href="#">Java、Java Web、Android</a>
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
