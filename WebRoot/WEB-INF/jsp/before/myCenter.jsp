<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<base href="<%=basePath%>">
		<meta charset="UTF-8">
		<title>个人中心</title>
		<link rel="stylesheet" href="css/font-awesome.min.css" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/reset.css"/>
		<link rel="stylesheet" type="text/css" href="css/style.css"/>
		<link rel="stylesheet" href="css/navbar.css" />
		<link rel="stylesheet" type="text/css" href="css/userCenter.css"/>
		<link rel="stylesheet" type="text/css" href="css/foot.css"/>
		
		<script type="text/javascript" src="js/jquery-3.4.0.min.js" ></script>
	</head>
	<body>
		<!-- 导航栏 -->
		<jsp:include page="navbar.jsp"></jsp:include>
		
		<!-- 信息内容 -->
		<div class="my-content">
			<div class="container">
				<div class="row">
					<div class="col-sm-3">
						<div class="account-container">
							<div class="account-avatar">
								<img src="img/before/head.png" alt="头像" class="thumbnail">
							</div> 
							<div class="account-details">
								<span class="account-name">${tuser.tname }</span>
								<span class="account-role">${tuser.tno }</span>
								<span class="account-role">${tuser.position }</span>
							</div> 
						</div>
						<hr>
						<ul class="nav nav-pills nav-stacked user-c-nav" id="menu">
						  <li role="presentation" class="active"><a href="/design2019/userCenter"><i class="glyphicon glyphicon-user"></i>个人信息</a></li>
						  <li role="presentation"><a href="/design2019/categoryQuery?category=论文"><i class="glyphicon glyphicon-stats"></i>我的成果</a></li>
						  <li role="presentation"><a href="javascript:;"><i class="glyphicon glyphicon-check"></i>待审核</a></li>
						</ul>
					</div>
					<!-- 内容 -->
					<div class="col-sm-9">
						<h1 class="page-title"><i class="glyphicon glyphicon-user"></i>个人信息</h1>
						<div class="row mydata">
					        <div class="col-lg-4 col-md-6 col-sm-6 text-center my-3 counter-list-grid">
					          <div class="counter-wthree-list">
					            <h4>${Uex }</h4>
					            <h6 class="mt-3">审核中</h6>
					          </div>
					        </div>
					        <div class="col-lg-4 col-md-6 col-sm-6 text-center my-3 counter-list-grid">
					          <div class="counter-wthree-list">
					            <h4>${Ex }</h4>
					            <h6 class="mt-3">已审核</h6>
					          </div>
					        </div>
					        <div class="col-lg-4 col-md-6 col-sm-6 text-center my-3 counter-list-grid">
					          <div class="counter-wthree-list">
					            <h4>${Sum }</h4>
					            <h6 class="mt-3">所有成果</h6>
					          </div>
					        </div>
					       </div>
						<div class="widget">
							<div class="widget-header"><h3>基本信息</h3></div>
							<div class="widget-content-info">
								<form:form action="/design2019/alterUserInfo" class="form-horizontal" method="post" >
								  <div class="form-group">
								    <label for="inputName3" class="col-sm-2 control-label">教师工号</label>
								    <div class="col-sm-10">
								      <input type="text" value="${tuser.tno }" class="form-control" name="tno" placeholder="${tuser.tname }" disabled>
								    </div>
								  </div>
								  <div class="form-group">
								    <label for="inputtel3" class="col-sm-2 control-label">教师名</label>
								    <div class="col-sm-10">
								      <input type="text" value="${userCenter.tname}" class="form-control" name="tname" placeholder="教师名">
								    </div>
								  </div>
								  <div class="form-group">
								    <label for="inputPassword3" class="col-sm-2 control-label">个人密码</label>
								    <div class="col-sm-10">
								      <input type="password" value="${userCenter.tpasswd}" class="form-control" id="passwd" name="tpasswd" placeholder="Password">
								    </div>
								  </div>
								  <div class="form-group">
								    <label for="inputEmail3" class="col-sm-2 control-label">职位</label>
								    <div class="col-sm-10">
								      <input type="text" value="${userCenter.position}" class="form-control" name="position" placeholder="职位">
								    </div>
								  </div>
								  <div class="form-group">
								    <div class="col-sm-offset-2 col-sm-10">
								      <input type="hidden" name="tid" value="${userCenter.tid}">
								      <button type="submit" onclick="sbbtn()" class="btn btn-default">保存</button>
								    </div>
								  </div>
								</form:form>
							</div>
						</div>
					</div>

				</div>
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
			//提交按钮
			function sbbtn(){		
				document.forms[0].submit();
			}
		</script>
	</body>
</html>
