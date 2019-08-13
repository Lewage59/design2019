<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!--导航栏-->
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<div class="nav-logo">
				<img src="img/before/logo-img.png" class="logo-img" />
				<div class="logo-font">高校科研成果平台</div>
			</div>
		</div>
		<div class="collapse navbar-collapse" id="navbar-collapse">
			<ul class="nav navbar-nav navbar-left nav-content">
				<li><a href="/design2019/before" class="nav-active">首页</a></li>
				<li><a href="/design2019/categoryQueryAll?category=论文">论文</a></li>
				<li><a href="/design2019/categoryQueryAll?category=著作">著作</a></li>
				<li><a href="/design2019/categoryQueryAll?category=立项">立项</a></li>
				<li><a href="/design2019/categoryQueryAll?category=专利">专利</a></li>
				<li><a href="/design2019/categoryQueryAll?category=获奖成果">获奖成果</a></li>
			</ul>	
			<ul class="person-info nav navbar-nav navbar-right">
				<li><a href="javascript:;">欢迎，${tuser.tname }</a></li>
				<li><a href="/design2019/userCenter"><span class="glyphicon glyphicon-user"></span> 个人中心</a></li>
			</ul>
		</div>
	</div>
</nav>
