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
		<link rel="stylesheet" href="css/navbar.css" />
		<link rel="stylesheet" type="text/css" href="css/gainInfo.css"/>
		<link rel="stylesheet" type="text/css" href="css/foot.css"/>
		
		
		<script type="text/javascript" src="js/jquery-3.4.0.min.js" ></script>
		<script type="text/javascript" src="js/jquery.media.js" ></script>
	</head>
	<body>
		<!-- 导航栏 -->
		<jsp:include page="navbar.jsp"></jsp:include>
			
		<!-- 成果内容 -->
		<div class="gain-content">
			<div class="container">
				<div class="row">
					<div class="page-header">
					  <h2>标题 <small>日期</small></h2>
					</div>
				</div>
				<div class="row">
					
					<div class="col-lg-3">
						<div class="panel panel-primary">
						  <div class="panel-heading">成果信息</div>
						  <div class="panel-body">
						  <!-- 著作 -->
						    <c:if test="${Bcategory eq 'worksMaterial'}">
							    <p>${qtname }</p>
								<p>${obj.bname}</p>
								<p>${obj.author}</p>
								<p>${obj.pTime}</p>
								<p>${obj.pressName}</p>
								<p>${obj.information}</p>
								<p>${obj.edition}</p>
							</c:if>
							
							<!-- 论文 -->
						    <c:if test="${Bcategory eq 'paper'}">
							    <p>${qtname }</p>
								<p>${obj.author}</p>
								<p>${obj.subject}</p>
								<p>${obj.magazineName}</p>
								<p>${obj.edition}</p>
								<p>${obj.artcleName}</p>
							</c:if>
							
							<!-- 立项-->
						    <c:if test="${Bcategory eq 'project'}">
							    <p>${qtname }</p>
								<p>${obj.pName}</p>
								<p>${obj.time}</p>
								<p>${obj.level}</p>
								<p>${obj.host}</p>
								<p>${obj.participant}</p>
								<p>${obj.itemCategory}</p>
							</c:if>
							
							<!-- 获奖成果信息 -->
						    <c:if test="${Bcategory eq 'achievements'}">
							    <p>${qtname }</p>
								<p>${obj.aName}</p>
								<p>${obj.level}</p>
								<p>${obj.getTime}</p>
							</c:if>
							
							<!-- 专利信息 -->
						    <c:if test="${Bcategory eq 'patent'}">
							    <p>${qtname }</p>
								<p>${obj.pName}</p>
								<p>${obj.time}</p>
								<p>${obj.level}</p>		
								<p>${obj.host}</p>	
								<p>${obj.participant}</p>		
							</c:if>
						  </div>
						</div>
					</div>
						
					<div class="col-lg-9">
						<c:if test="${Bcategory eq 'paper'}">
						    <div class="panel-body">
							    <a class="media" href="/design2019/img/test/${obj.text }"></a>  
							</div>
						</c:if>
						<c:if test="${Bcategory eq 'worksMaterial'}">
							<img src="/design2019/img/test/${obj.cover}" alt="${obj.bname}">
							<img src="/design2019/img/test/${obj.catalog}" alt="${obj.bname}">
						</c:if>
						<c:if test="${Bcategory eq 'project'}">
							<img src="/design2019/img/test/${obj.prove}" alt="${obj.pName}">
							<img src="/design2019/img/test/${obj.declaration}" alt="${obj.pName}">
						</c:if>
						<c:if test="${Bcategory eq 'patent'}">
							<img src="/design2019/img/test/${obj.certificate}" alt="${obj.pName}">
						</c:if>
						<c:if test="${Bcategory eq 'achievements'}">
							<img src="/design2019/img/test/${obj.certificate}" alt="${obj.aName}">
						</c:if>
					</div>
				</div>
			</div>
		</div>
		
		<script type="text/javascript">  
		    $(function() {  
		        $('a.media').media({width:800, height:600});  
		    });  
		</script> 

	</body>
</html>
