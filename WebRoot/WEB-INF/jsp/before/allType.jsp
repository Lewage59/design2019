<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<meta charset="UTF-8">
		<title>成果</title>
		<link rel="stylesheet" href="css/reset.css"/>
		<link rel="stylesheet" href="css/font-awesome.min.css" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="css/style.css"/>
		<link rel="stylesheet" href="css/navbar.css" />
		<link rel="stylesheet" type="text/css" href="css/search.css"/>
		<link rel="stylesheet" type="text/css" href="css/foot.css"/>
		
		<script type="text/javascript" src="js/jquery-3.4.0.min.js" ></script>
	</head>
	<body>
		<div class="inner_page-banner" id="home">
			<!-- 导航栏 -->
			<jsp:include page="navbar.jsp"></jsp:include>
			
			<!--标题-->
		    <div class="page-name teax-center">
		      <h5>${Acategory }</h5>
		    </div>
		</div>
		
		<!--路径导航-->
		<div class="using-border py-3">
		    <div class="inner_breadcrumb  ml-4">
		      <ul class="short_ls text-center">
		        <li>
		          <a href="index.html">首页</a>
		          <span>/ /</span>
		        </li>
		        <li>分类</li>
		      </ul>
		    </div>
		</div>
		
		<!--分类内容-->
		<!--论文和著作-->
		<!-- 著作 -->
	    <c:if test="${Acategory eq 'worksMaterial'}">
	    	<div class="type-lz-content">
				<div class="container">
					<div class="row">
					    <c:forEach items="${queryAll }" var="obj">
				    	<div class="col-sm-6 col-md-3">
					    	<div class="thumbnail">
						      	<img src="/design2019/img/test/${obj.cover}" alt="${obj.bname}">
						      	<div class="caption">
						      	  	<h4>${obj.bname}</h4>
						        	<p>${obj.author}</p>
						        	<p>${obj.pressName}</p>
						        	<p><a href="/design2019/Detail?id=${obj.wid}&category=著作" class="btn btn-primary" role="button">查看详情</a></p>
						      	</div>
						    </div>
						</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</c:if>
		<!-- /著作 -->
		<!-- 论文 -->
	    <c:if test="${Acategory eq 'paper'}">
	    	<div class="type-lz-content">
				<div class="container">
					<div class="row">
					    <c:forEach items="${queryAll }" var="obj">
					    <div class="col-sm-6 col-md-3">
					    	<div class="thumbnail">
						      	<img src="/design2019/img/test/${obj.cover}" alt="${obj.subject}">
						      	<div class="caption">
						      	  	<h4>${obj.subject}</h4>
						        	<p>${obj.author}</p>
						        	<p>${obj.pcategory}</p>
						        	<p><a href="/design2019/Detail?id=${obj.pid}&category=论文" class="btn btn-primary" role="button">查看详情</a></p>
						      	</div>
						    </div>
						</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</c:if>
		<!-- /论文 -->
		<!--/论文和著作-->
		
		<!-- 立项、获奖成果和专利 -->
		<!-- 立项-->
		<c:if test="${Acategory eq 'project'}">
		<div class="type-lhz-content">
			<div class="container">
				<ul class="media-list">
					<c:forEach items="${queryAll }" var="obj">
				  	<li class="media ct-alist">
				    	<div class="media-left">
				    	</div>
					    <div class="media-body">
					      	<h4 class="media-heading">${obj.pName}</h4>
					      	<div class="the-content">
					      		<p>${obj.host}</p>
					      		<p>${obj.level}</p>
					      		<p>${obj.time}</p>
					      	</div>
					    </div>
					    <div class="media-right"><button id="detail-ll" onclick="window.location.href = '/design2019/Detail?id=${obj.pid}&category=立项'" type="button" class="btn btn-info">查看详情</button></div>
				  	</li>
				  	</c:forEach>
				</ul>
			</div>
		</div>
		</c:if>
		    
		<!-- 获奖成果信息 -->
	    <c:if test="${Acategory eq 'achievements'}">
	    <div class="type-lhz-content">
			<div class="container">
				<ul class="media-list">
				    <c:forEach items="${queryAll }" var="obj">
				    <li class="media ct-alist">
				    	<div class="media-left">
				    	</div>
					    <div class="media-body">
					      	<h4 class="media-heading">${obj.aName}</h4>
					      	<div class="the-content">
					      		<p>${obj.host}</p>
					      		<p>${obj.level}</p>
					      		<p>${obj.getTime}</p>
					      	</div>
					    </div>
					    <div class="media-right"><button id="detail-cg" onclick="window.location.href = '/design2019/Detail?id=${obj.wid}&category=成果'" type="button" class="btn btn-info">查看详情</button></div>
				  	</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		</c:if>
		
		<!-- 专利信息 -->
	    <c:if test="${Acategory eq 'patent'}">
	    <div class="type-lhz-content">
			<div class="container">
				<ul class="media-list">
				    <c:forEach items="${queryAll }" var="obj">
				    <li class="media ct-alist">
				    	<div class="media-left">
				    	</div>
					    <div class="media-body">
					      	<h4 class="media-heading">${obj.pName}</h4>
					      	<div class="the-content">
					      		<p>${obj.host}</p>
					      		<p>${obj.level}</p>
					      		<p>${obj.time}</p>
					      	</div>
					    </div>
					    <div class="media-right"><button id="detail-zl" onclick="window.location.href = '/design2019/Detail?id=${obj.pid}&category=专利'" type="button" class="btn btn-info">查看详情</button></div>
				  	</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		</c:if>
		
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
		
		
		<script type="text/javascript">
			
		</script>
	</body>
</html>
