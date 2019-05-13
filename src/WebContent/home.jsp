<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title>后台管理中心</title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<link rel="stylesheet" href="css/toto.css">
<script src="js/jquery.js"></script>
</head>
<body style="background-color: #f2f9fd;">
	<div class="header bg-main">
		<div class="logo margin-big-left fadein-top">
			<h1>
				<img src="images/y.jpg" class="radius-circle rotate-hover"
					height="50" alt="" /> 后台管理中心
			</h1>
		</div>
		<div class="head-l">
			<a class="button button-little bg-blue" href="login.jsp"><span
				class="icon-power-off"></span> 退出登录</a>
		</div>
		
		<div class="shenfen">
		欢迎，尊贵的<%=session.getAttribute("username")%>管理员！
		</div>
		
	</div>



		
	<div class="leftnav">
		<div class="leftnav-title">
			<strong><span class="icon-list"></span>菜单列表</strong>
		</div>
		<h2><span class="icon-user"></span>首页
		</h2>
		<ul style="display: block">
			<li><a href="homepage.jsp" target="right"><span
					class="icon-caret-right"></span>首页简介</a></li>
		</ul>
		
		
		<h2>
			<span class="icon-star-o"></span>签到专区
		</h2>
		<ul>
			<li><a href="Signin.jsp" target="right"><span
					class="icon-caret-right"></span>签到</a></li>
					
			<li><a href="SignQuery.jsp" target="right"><span
					class="icon-caret-right"></span>学生签到信息查询</a></li>

		</ul>
		
		<h2>
			<span class="icon-pencil-square-o"></span>学生信息查询
		</h2>
		<ul>
			<li><a href="Gerencx.jsp" target="right"><span
					class="icon-caret-right"></span>个人信息查询</a></li>
			<li><a href="Increasestu.jsp" target="right"><span
					class="icon-caret-right"></span>添加学生</a></li>
			<li><a href="Deletestu.jsp" target="right"><span
					class="icon-caret-right"></span>删除学生</a></li>
		</ul>


	</div>
	<script type="text/javascript">
		$(function() {
			$(".leftnav h2").click(function() {
				$(this).next().slideToggle(200);
				$(this).toggleClass("on");
			})
			$(".leftnav ul li a").click(function() {
				$("#a_leader_txt").text($(this).text());
				$(".leftnav ul li a").removeClass("on");
				$(this).addClass("on");
			})
		});
	</script>
	<ul class="bread">
		<li><a href="index.jsp" target="right" class="icon-home"> 首页</a>
		</li>
		<li><a href="##" id="a_leader_txt">网站信息</a></li>
	</ul>
	<div class="admin">
		<iframe src="index.jsp" name="right" width="100%" height="100%"></iframe>
	</div>

</body>
</html>