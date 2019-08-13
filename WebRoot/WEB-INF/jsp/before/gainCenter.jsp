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
		<title>个人中心--我的成果</title>
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
						  <li role="presentation"><a href="/design2019/userCenter"><i class="glyphicon glyphicon-user"></i>个人信息</a></li>
						  <li role="presentation" class="active"><a href="/design2019/categoryQuery?category=论文"><i class="glyphicon glyphicon-stats"></i>我的成果</a></li>
						  <li role="presentation"><a href="javascript:;"><i class="glyphicon glyphicon-check"></i>待审核</a></li>
						</ul>
					</div>
					<div class="col-sm-9">
						<h1 class="page-title"><i class="glyphicon glyphicon-stats"></i>我的成果</h1>
						<ul class="nav nav-tabs">
						  	<li role="presentation" class="active"><a href="/design2019/categoryQuery?category=论文">论文</a></li>
							<li role="presentation"><a href="/design2019/categoryQuery?category=著作">著作</a></li>
							<li role="presentation"><a href="/design2019/categoryQuery?category=立项">立项</a></li>
							<li role="presentation"><a href="/design2019/categoryQuery?category=专利">专利</a></li>
							<li role="presentation"><a href="/design2019/categoryQuery?category=获得成果">获得成果</a></li>
						</ul>
						<div class="widget-content">
							<table class="table table-striped table-bordered table-hover">
							<tbody>
								<!-- 著作 -->
								<c:if test="${Ucategory eq 'worksMaterial'}">
								    <c:forEach items="${obj }" var="obj">
								    	<tr>
								    		<td><img class="gain-img" src="/design2019/img/test/${obj.cover}"></td>
											<td>${obj.bname}</td>
											<td>${obj.author}</td>
											<td>${obj.pTime}</td>
											<td>${obj.pressName}</td>
											<td class="action-td">
												<a href="/OnlineShop/order/orderFinished?orderId=${oflist.order_id }" class="btn btn-small btn-warning">
													查看详情
												</a>
											</td>
										</tr>
									</c:forEach>
								</c:if>
								
								<!-- 论文 -->
								<c:if test="${Ucategory eq 'paper'}">
								    <c:forEach items="${obj }" var="obj">
										<tr>
											<td><img class="gain-img" src="/design2019/img/test/${obj.cover}"></td>
											<td>${obj.subject}</td>
											<td>${obj.author}</td>
											<td>${obj.time}</td>
											<td>${obj.pcategory}</td>
											<td class="action-td">
												<a href="/OnlineShop/order/orderFinished?orderId=${oflist.order_id }" class="btn btn-small btn-warning">
													查看详情
												</a>
											</td>
										</tr>
									</c:forEach>
								</c:if>
								
								<!-- 立项-->
								<c:if test="${Ucategory eq 'project'}">
								    <c:forEach items="${obj }" var="obj">
								    	<tr>
									    	<td>${tname }</td>
											<td>${obj.pName}</td>
											<td>${obj.time}</td>
											<td>${obj.level}</td>
											<td class="action-td">
												<a href="/OnlineShop/order/orderFinished?orderId=${oflist.order_id }" class="btn btn-small btn-warning">
													查看详情
												</a>
											</td>
										</tr>
									</c:forEach>
								</c:if>
								
								<!-- 获奖成果信息 -->
								<c:if test="${Ucategory eq 'achievements'}">
								    <c:forEach items="${obj }" var="obj">
								    	<tr>
											<td>${obj.aName}</td>
											<td>${obj.level}</td>
											<td>${obj.getTime}</td>
											<td class="action-td">
												<a href="/OnlineShop/order/orderFinished?orderId=${oflist.order_id }" class="btn btn-small btn-warning">
													查看详情
												</a>
											</td>
										</tr>
									</c:forEach>
								</c:if>
								
								<!-- 专利信息 -->
								<c:if test="${Ucategory eq 'patent'}">
								    <c:forEach items="${obj }" var="obj">
								    	<tr>
											<td>${obj.pName}</td>
											<td>${obj.host}</td>
											<td>${obj.time}</td>
											<td>${obj.level}</td>
											<td class="action-td">
												<a href="/OnlineShop/order/orderFinished?orderId=${oflist.order_id }" class="btn btn-small btn-warning">
													查看详情
												</a>
											</td>	
										</tr>		
									</c:forEach>
								</c:if>
							</tbody>
							</table>
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
		
	</body>
</html>