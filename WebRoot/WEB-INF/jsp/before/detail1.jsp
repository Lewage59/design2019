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
    
    <title>My JSP 'detail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    This is detail page.著作 <br>
    <!-- 著作 -->
    <c:if test="${Bcategory eq 'worksMaterial'}">
	    <tr><td>${qtname }</td></tr>
		<tr><td>${obj.bname}</td></tr>
		<tr><td>${obj.author}</td></tr>
		<tr><td>${obj.pTime}</td></tr>
		<tr><td>${obj.pressName}</td></tr>
		<tr><td>${obj.information}</td></tr>
		<tr><td>${obj.edition}</td></tr>
		<tr><td>${obj.catalog}</td></tr>
		<tr><td>${obj.cover}</td></tr>		
	</c:if>
	
	<!-- 论文 -->
    <c:if test="${Bcategory eq 'paper'}">
	    <tr><td>${qtname }</td></tr>
		<tr><td>${obj.author}</td></tr>
		<tr><td>${obj.subject}</td></tr>
		<tr><td>${obj.catalog}</td></tr>
		<tr><td>${obj.cover}</td></tr>
		<tr><td>${obj.magazineName}</td></tr>
		<tr><td>${obj.edition}</td></tr>
		<tr><td>${obj.artcleName}</td></tr>
		<tr><td>${obj.text}</td></tr>
	</c:if>
	
	<!-- 立项-->
    <c:if test="${Bcategory eq 'project'}">
	    <tr><td>${qtname }</td></tr>
		<tr><td>${obj.pName}</td></tr>
		<tr><td>${obj.time}</td></tr>
		<tr><td>${obj.level}</td></tr>
		<tr><td>${obj.host}</td></tr>
		<tr><td>${obj.declaration}</td></tr>
		<tr><td>${obj.prove}</td></tr>
		<tr><td>${obj.participant}</td></tr>
		<tr><td>${obj.itemCategory}</td></tr>
	</c:if>
	
	<!-- 获奖成果信息 -->
    <c:if test="${Bcategory eq 'achievements'}">
	    <tr><td>${qtname }</td></tr>
		<tr><td>${obj.aName}</td></tr>
		<tr><td>${obj.level}</td></tr>
		<tr><td>${obj.getTime}</td></tr>
		<tr><td>${obj.certificate}</td></tr>
	</c:if>
	
	<!-- 专利信息 -->
    <c:if test="${Bcategory eq 'patent'}">
	    <tr><td>${qtname }</td></tr>
		<tr><td>${obj.pName}</td></tr>
		<tr><td>${obj.time}</td></tr>
		<tr><td>${obj.level}</td></tr>		
		<tr><td>${obj.certificate}</td></tr>	
		<tr><td>${obj.host}</td></tr>	
		<tr><td>${obj.participant}</td></tr>		
	</c:if>
  </body>
</html>
