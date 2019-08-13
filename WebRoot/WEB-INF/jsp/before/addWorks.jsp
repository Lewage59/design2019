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
		<title>申请成果--著作</title>
		<link rel="stylesheet" href="css/reset.css"/>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/font-awesome.min.css" />
		<link rel="stylesheet" href="css/navbar.css" />
		<link rel="stylesheet" type="text/css" href="css/foot.css"/>
		<link rel="stylesheet" href="layui/css/layui.css"  media="all">
        <link rel="stylesheet" type="text/css" href="css/addType.css"/>
		
		<script type="text/javascript" src="js/jquery-3.4.0.min.js" ></script>
		<script type="text/javascript" src="js/bootstrap.min.js" ></script>
		<script src="layui/layui.js" charset="utf-8"></script>
	</head>
	<body>
		<!-- 导航栏 -->
		<jsp:include page="navbar.jsp"></jsp:include>
		
		<div class="tyle-content">
			<div class="container">
				<nav class="navbar navbar-default">
			      <div class="container-fluid">
			        <div class="navbar-header">
			          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-5" aria-expanded="false">
			            <span class="sr-only">Toggle navigation</span>
			            <span class="icon-bar"></span>
			            <span class="icon-bar"></span>
			            <span class="icon-bar"></span>
			          </button>
			          <a class="navbar-brand" href="javascript:;">申请著作</a>
			        </div>
			        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-5">
			          <p class="navbar-text navbar-right">Signed in as <a href="#" class="navbar-link">Mark Otto</a></p>
			        </div>
			      </div>
			    </nav>
				<form:form action="/design2019/WorksMaterialRegister" class="layui-form" method="post" modelAttribute="Wmaterial" enctype="multipart/form-data">	
				  <div class="layui-form-item">
				    <label class="layui-form-label">书名</label>
				    <div class="layui-input-block">
				      <input type="text" name="bname" lay-verify="title" autocomplete="off" placeholder="请输入书名" class="layui-input">
				    </div>
				  </div>
				  <div class="layui-form-item">
				    <label class="layui-form-label">作者</label>
				    <div class="layui-input-block">
				      <input type="text" name="author" lay-verify="required" placeholder="请输入论文作者" autocomplete="off" class="layui-input">
				    </div>
				  </div>
				  
				  <div class="layui-form-item">
				    <label class="layui-form-label">出版社名</label>
				    <div class="layui-input-block">
				      <input type="text" name="pressName" lay-verify="required" placeholder="请输入出版社名" autocomplete="off" class="layui-input">
				    </div>
				  </div>
				  
				  <div class="layui-form-item">
				    <label class="layui-form-label">出版信息</label>
				    <div class="layui-input-block">
				      <input type="text" name="information" lay-verify="required" placeholder="请输入出版信息" autocomplete="off" class="layui-input">
				    </div>
				  </div>
				  
				  <div class="layui-form-item">
				  	<div class="layui-inline">
					      <label class="layui-form-label">版次</label>
					      <div class="layui-input-block">
					        <input type="text" name="edition" lay-verify="publicNum" placeholder="请输入版本" autocomplete="off" class="layui-input">
					      </div>
				      </div>
				  </div>
				  
				  <div class="layui-form-item">
				  	<div class="layui-inline">
					    <label class="layui-form-label">上传封面</label>
					    <div class="layui-input-block">
					      	<input id="coverImage" name="Mcover" type="file" size="30">					
					    </div>
				    </div>
				    <div class="layui-inline">
					    <label class="layui-form-label">上传目录</label>
					    <div class="layui-input-block">
					      	<input id="catalogImage" name="Mcatalog" type="file">					
					    </div>
				    </div>
				  </div>
				  
				  <div class="layui-form-item layui-form-text">
				    <label class="layui-form-label">获奖情况</label>
				    <div class="layui-input-block">
				      <textarea placeholder="请输入获奖情况，并在100字以内" name="prizeWin" class="layui-textarea"></textarea>
				    </div>
				  </div>
				  
				  <div class="layui-form-item">
				    <div class="layui-input-block">
				      <button class="layui-btn type-sb-btn"  onclick="gogo()" lay-filter="demo1">提交</button>
				      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
				    </div>
				  </div>
				</form:form>
				
			</div>
		</div>
		
		
		
		<!--页脚-->
		<div class="foot-bottom">
			<div class="foot-content">
				<div class="container foot-first-row">
					<div class="row">
						Copyright © 2019.Company BackgroundMusic All rights reserved.
					</div>
				</div>
				<div class="foot-second-row">
					<div class="foot-second-info">
						<a href=""#>广州BGM有限公司</a>
						<span class="hidden-xs"></span>
					</div>
					<div class="foot-second-info">
						<a href=""#>0000-12345678 </a>
						<span class="hidden-xs"></span>
					</div>
					<div class="foot-second-info">
						<a href=""#>广州大学华软软件学院</a>
					</div>
				</div>
			</div>
		</div>
		
		<script>
		layui.use(['form', 'layedit', 'laydate'], function(){
		  var form = layui.form
		  ,layer = layui.layer
		  ,layedit = layui.layedit
		  ,laydate = layui.laydate;
		});
		
		//提交按钮
		function gogo(){		
			document.forms[0].submit();
		}
			
		</script>
		
	</body>
</html>
