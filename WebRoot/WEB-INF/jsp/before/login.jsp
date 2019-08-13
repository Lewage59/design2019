<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<meta charset="UTF-8">
		<title>登陆</title>
		<link rel="stylesheet" type="text/css" href="css/reset.css"/>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"/>
		<link rel="stylesheet" type="text/css" href="css/navbar.css" />
		<link rel="stylesheet" type="text/css" href="css/login.css"/>
		<link rel="stylesheet" type="text/css" href="css/verify.css"/>
		
		<script src="js/jquery-3.4.0.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/verify.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body>
		<!--导航栏-->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<div class="nav-logo">
						<img src="img/before/logo-img.png" class="logo-img" />
						<div class="logo-font">高校科研成果平台</div>
					</div>
				</div>
			</div>
		</nav>
		
		<!--登陆-->
		<div id="wrapper" class="login-page">
			<!--简介-->
			<div class="jumbotron">
			
			</div>
			
			<!--登陆窗口-->
			<div id="login_form" class="form">
				<div class="login-title">登陆</div>
				<div style="color:red;margin-bottom:10px;">${msg }</div>
				<form:form action="${pageContext.request.contextPath }/user/login" method="post" class="login-form" id="loginForm" >
						<input type="text" name="tno" placeholder="教师工号" id="user_name"/>
						<input type="password" name="tpasswd" placeholder="密码" id="password"/>
						<div style="height:55px;" id="mpanel2" ></div>
						<button id="login" name="login" onclick="check_login()">登　录</button>
				</form:form>
			</div>
		</div>
		
	</body>
	
	<script type="text/javascript">
		function check_login()
		{
		 var name=$("#user_name").val();
		 var pass=$("#password").val();
		 if(name=="" || pass=="")
		 {
			$("#login_form").removeClass('shake_effect');  
			setTimeout(function()
			{
			 $("#login_form").addClass('shake_effect')
			},1);  
		 }else{
		 	this.loginForm.submit();
		 }
		}

		$(function(){
			$("#login").click(function(){
				check_login();
				return false;
			})
		})
		
       	$('#mpanel2').codeVerify({
	    type : 1,
	   	width : '120px',
	   	height : '40px',
	   	fontSize : '20px',
	   	codeLength : 5,
	   	btnId : 'login',
	   	ready : function() {
	   	},
	   	success : function() {
	   		return true;
	   	},
	   	error : function() {
	   		alert('验证码不匹配！');
	   		return false;
	   	}
	   });
	</script>
</html>
