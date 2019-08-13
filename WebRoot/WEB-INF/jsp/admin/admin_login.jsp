<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>后台管理系统-登陆</title>

    <link rel="stylesheet" href="/OnlineShop/css/amazeui.min.css" />
    <link rel="stylesheet" href="/OnlineShop/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="/OnlineShop/css/app.css">
    <script src="/OnlineShop/js/jquery.min.js"></script>

</head>

<body data-type="login">
    <script src="/OnlineShop/js/theme.js"></script>
    <div class="am-g tpl-g">
        <!-- 风格切换 -->
        <div class="tpl-skiner">
            <div class="tpl-skiner-toggle am-icon-cog">
            </div>
            <div class="tpl-skiner-content">
                <div class="tpl-skiner-content-title">
                    选择主题
                </div>
                <div class="tpl-skiner-content-bar">
                    <span class="skiner-color skiner-white" data-color="theme-white"></span>
                    <span class="skiner-color skiner-black" data-color="theme-black"></span>
                </div>
            </div>
        </div>
        <div class="tpl-login">
            <div class="tpl-login-content">
                <div class="tpl-login-logo">
                	<img width="160px" src="/OnlineShop/images/admin/admin-login1.png">
                </div>
                <form action="${pageContext.request.contextPath }/admin/login" method="post" id="loginForm" class="am-form tpl-form-line-form">
                	<div style="color:red;">${msg }</div>
                    <div class="am-form-group">
                        <input type="text" class="tpl-form-input" name="admin" id="user-name" placeholder="请输入账号">
                    </div>
                    <div class="am-form-group">
                        <input type="password" class="tpl-form-input" name="password" id="user-passwd" placeholder="请输入密码">
                    </div>
                    <div class="am-form-group">
                        <button type="button" onclick="login()" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-success  tpl-login-btn">登陆</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="/OnlineShop/js/amazeui.min.js"></script>
    <script src="/OnlineShop/js/app.js"></script>
	<script>
	function login(){
		 var name=$("#user-name").val();
		 var pass=$("#user-passwd").val();
		 if(name=="" || pass=="")
		 {
			alert("用户名或密码不允许为空！");  
			return false;
		 }else{
		 	this.loginForm.submit();
		 	return true;
		 }
	}
	</script>
</body>

</html>