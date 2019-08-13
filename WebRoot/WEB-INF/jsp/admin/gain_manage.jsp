<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>高校科研后台管理系统</title>
    <script src="/OnlineShop/js/echarts.min.js"></script>
    <link rel="stylesheet" href="/OnlineShop/css/amazeui.min.css" />
    <link rel="stylesheet" href="/OnlineShop/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="/OnlineShop/css/app.css">
    <script src="/OnlineShop/js/jquery.min.js"></script>
</head>

<body data-type="index">
    <script src="/OnlineShop/js/theme.js"></script>
    <div class="am-g tpl-g">
        <!-- 头部 -->
        <header>
            <!-- logo -->
            <div class="am-fl tpl-header-logo">
            	<div class="header-font">后台管理系统</div>
            </div>
            <!-- 右侧内容 -->
            <div class="tpl-header-fluid">
                <!-- 侧边切换 -->
                <div class="am-fl tpl-header-switch-button am-icon-list">
                    <span></span>
                </div>
                <!-- 搜索 -->
                <div class="am-fl tpl-header-search">
                    <form class="tpl-header-search-form" action="javascript:;">
                        <button class="tpl-header-search-btn am-icon-search"></button>
                        <input class="tpl-header-search-box" type="text" placeholder="搜索内容...">
                    </form>
                </div>
                <!-- 其它功能-->
                <div class="am-fr tpl-header-navbar">
                    <ul>
                        <!-- 欢迎语 -->
                        <li class="am-text-sm tpl-header-navbar-welcome">
                            <a href="javascript:;">欢迎你, <span>admin</span> </a>
                        </li>

                        <!-- 退出 -->
                        <li class="am-text-sm">
                            <a href="/OnlineShop/admin/exit">
                                <span class="am-icon-sign-out"></span> 退出
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

        </header>
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
        <!-- 侧边导航栏 -->
        <div class="left-sidebar">
            <!-- 用户信息 -->
            <div class="tpl-sidebar-user-panel">
                <div class="tpl-user-panel-slide-toggleable">
                    <div class="tpl-user-panel-profile-picture">
                        <img src="img/admin/logo-img1.png" alt="">
                    </div>
                    <span class="user-panel-logged-in-text">
			        	<i class="am-icon-circle-o am-text-success tpl-user-panel-status-icon"></i>
			                       admin
			        </span>
			        <small>管理员</small>
                </div>
            </div>

            <!-- 菜单 -->
            <ul class="sidebar-nav">
                <li class="sidebar-nav-link">
                    <a href="/design2019/admin/login">
                        <i class="am-icon-home sidebar-nav-link-logo"></i> 首页
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="/design2019/showTeacherAll">
                        <i class="am-icon-wpforms sidebar-nav-link-logo"></i> 教师管理
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="javascript:;" class="sidebar-nav-sub-title active">
                        <i class="am-icon-table sidebar-nav-link-logo"></i> 数据列表
                        <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
                    </a>
                    <ul class="sidebar-nav sidebar-nav-sub">
                        <li class="sidebar-nav-link">
                            <a href="/design2019/AcategoryQueryAll?category=论文">
                                <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 论文
                            </a>
                        </li>

                        <li class="sidebar-nav-link">
                            <a href="/design2019/AcategoryQueryAll?category=著作">
                                <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 著作教材
                            </a>
                        </li>
                        
                        <li class="sidebar-nav-link">
                            <a href="/design2019/AcategoryQueryAll?category=立项">
                                <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 立项
                            </a>
                        </li>
                        
                        <li class="sidebar-nav-link">
                            <a href="/design2019/AcategoryQueryAll?category=专利">
                                <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 专利
                            </a>
                        </li>
                        
                        <li class="sidebar-nav-link">
                            <a href="/design2019/AcategoryQueryAll?category=获奖成果">
                                <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 获奖成果
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>


        <!-- 内容区域 -->
        <div class="tpl-content-wrapper">

            <div class="container-fluid am-cf">
                <div class="row">
                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-9">
                        <div class="page-header-heading"><i class="am-icon-home page-header-heading-icon"></i>   成果信息管理 </div>
                    </div>
                </div>
            </div>

            <div class="row-content am-cf">

                <div class="row am-cf">
					<div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                        <div class="widget am-cf">
                            <div class="widget-head am-cf">
                                <div class="widget-title  am-cf">成果列表</div>
                            </div>
                            <div class="widget-body  am-fr">

                                <div class="am-u-sm-12 am-u-md-6 am-u-lg-6">
                                    <div class="am-form-group">
                                        
                                    </div>
                                </div>
                                <div class="am-u-sm-12 am-u-md-6 am-u-lg-3">
                                    <div class="am-form-group tpl-table-list-select">
                                        <select data-am-selected="{btnSize: 'sm'}">
							              <option value="option1">所有类别</option>
							       
							            </select>
                                    </div>
                                </div>
                                <div class="am-u-sm-12 am-u-md-12 am-u-lg-3">
                                    <div class="am-input-group am-input-group-sm tpl-form-border-form cl-p">
                                        <input type="text" class="am-form-field ">
                                        <span class="am-input-group-btn">
            <button class="am-btn  am-btn-default am-btn-success tpl-table-list-field am-icon-search" type="button"></button>
          </span>
                                    </div>
                                </div>
								<!-- 著作素材 -->
								<c:if test="${AAcategory eq 'worksMaterial'}">
                                <div class="am-u-sm-12">
                                    <table width="100%" class="am-table am-table-compact am-table-striped tpl-table-black ">
                                        <thead>
                                            <tr>
                                                <th>封面</th>
                                                <th>书名</th>
                                                <th>作者</th>
                                                <th>发表时间</th>
                                                <th>审核情况</th>
                                                <th>操作</th>
                                            </tr>
                                        </thead>
                                        <tbody>
											<c:forEach items="${AqueryAll }" var="obj">
	                                            <tr class="gradeX">
	                                                <td>
	                                                    <img src="/design2019/img/test/${obj.cover}" style="width: 50px;height: 50px;" class="tpl-table-line-img" alt="">
	                                                </td>
	                                                <td class="am-text-middle">${obj.bname}</td>
	                                                <td class="am-text-middle">${obj.author}</td>
	                                                <td class="am-text-middle">${obj.pTime}</td>
	                                                <c:if test="${obj.examine==1}">
														<td class="am-text-middle">审核通过</td>
													</c:if>
													<c:if test="${obj.examine==0}">
														<td class="am-text-middle">待审核</td>
													</c:if>
	                                                <td class="am-text-middle">
	                                                    <div class="tpl-table-black-operation">
	                                                        <a href="javascript:;">
	                                                            <i class="am-icon-pencil"></i> 查看
	                                                        </a>
	                                                        <a href="javascript:;" class="tpl-table-black-operation-del">
	                                                            <i class="am-icon-trash"></i> 审核
	                                                        </a>
	                                                    </div>
	                                                </td>
	                                            </tr>
	                                         </c:forEach>
                                            <!-- more data -->
                                        </tbody>
                                    </table>
                                </div>
                                </c:if>
                                <!--论文-->
                                <c:if test="${AAcategory eq 'paper'}">
                                <div class="am-u-sm-12">
                                    <table width="100%" class="am-table am-table-compact am-table-striped tpl-table-black ">
                                        <thead>
                                            <tr>
                                                <th>封面</th>
                                                <th>题目</th>
                                                <th>作者</th>
                                                <th>发表时间</th>
                                                <th>审核情况</th>
                                                <th>操作</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${AqueryAll }" var="obj">
                                            <tr class="gradeX">
                                                <td>
                                                    <img src="/design2019/img/test/${obj.cover}" style="width: 50px;height: 50px;" class="tpl-table-line-img" alt="">
                                                </td>
                                                <td class="am-text-middle">${obj.subject}</td>
                                                <td class="am-text-middle">${obj.author}</td>
                                                <td class="am-text-middle">${obj.time}</td>
                                                <c:if test="${obj.examine==1}">
														<td class="am-text-middle">审核通过</td>
													</c:if>
													<c:if test="${obj.examine==0}">
														<td class="am-text-middle">待审核</td>
												</c:if>
                                                <td class="am-text-middle">
                                                    <div class="tpl-table-black-operation">
                                                        <a href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 查看
                                                        </a>
                                                        <a href="javascript:;" class="tpl-table-black-operation-del">
                                                            <i class="am-icon-trash"></i> 审核
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                         </c:forEach>
                                            <!-- more data -->
                                        </tbody>
                                    </table>
                                </div>
                                </c:if>
                                <!--立项-->
                                <c:if test="${AAcategory eq 'project'}">
                                <div class="am-u-sm-12">
                                    <table width="100%" class="am-table am-table-compact am-table-striped tpl-table-black ">
                                        <thead>
                                            <tr>
                                                <th>项目名</th>
                                                <th>主持人</th>
                                                <th>项目级别</th>
                                                <th>发表时间</th>
                                                <th>审核情况</th>
                                                <th>操作</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${AqueryAll }" var="obj">
                                            <tr class="gradeX">
                                            	<td class="am-text-middle">${obj.pName}</td>
                                                <td class="am-text-middle">${obj.host}</td>
                                                <td class="am-text-middle">${obj.level}</td>
                                                <td class="am-text-middle">${obj.time}</td>
                                                <c:if test="${obj.examine==1}">
														<td class="am-text-middle">审核通过</td>
													</c:if>
													<c:if test="${obj.examine==0}">
														<td class="am-text-middle">待审核</td>
												</c:if>
                                                <td class="am-text-middle">
                                                    <div class="tpl-table-black-operation">
                                                        <a href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 查看
                                                        </a>
                                                        <a href="javascript:;" class="tpl-table-black-operation-del">
                                                            <i class="am-icon-trash"></i> 审核
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                         </c:forEach>
                                            
                                            <!-- more data -->
                                        </tbody>
                                    </table>
                                </div>
                                </c:if>
                                <!--获奖成果-->
                                <c:if test="${AAcategory eq 'achievements'}">
                                <div class="am-u-sm-12">
                                    <table width="100%" class="am-table am-table-compact am-table-striped tpl-table-black ">
                                        <thead>
                                            <tr>
                                                <th>获奖名称</th>
                                                <th>获奖级别</th>
                                                <th>发表时间</th>
                                                <th>审核情况</th>
                                                <th>操作</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<c:forEach items="${AqueryAll }" var="obj">
                                            <tr class="gradeX">
                                                <td class="am-text-middle">${obj.aName}</td>
                                                <td class="am-text-middle">{obj.level}</td>
                                                <td class="am-text-middle">${obj.getTime}</td>
                                                <c:if test="${obj.examine==1}">
														<td class="am-text-middle">审核通过</td>
													</c:if>
													<c:if test="${obj.examine==0}">
														<td class="am-text-middle">待审核</td>
												</c:if>
                                                <td class="am-text-middle">
                                                    <div class="tpl-table-black-operation">
                                                        <a href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 查看
                                                        </a>
                                                        <a href="javascript:;" class="tpl-table-black-operation-del">
                                                            <i class="am-icon-trash"></i> 审核
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                            </c:forEach>
                                            
                                            <!-- more data -->
                                        </tbody>
                                    </table>
                                </div>
                                </c:if>
                                <!--专利-->
                                <c:if test="${AAcategory eq 'patent'}">
                                <div class="am-u-sm-12">
                                    <table width="100%" class="am-table am-table-compact am-table-striped tpl-table-black ">
                                        <thead>
                                            <tr>
                                                <th>专利名称</th>
                                                <th>主持者</th>
                                                <th>等级</th>
                                                <th>发表时间</th>
                                                <th>审核情况</th>
                                                <th>操作</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${AqueryAll }" var="obj">
                                            <tr class="gradeX">
                                                <td class="am-text-middle">${obj.pName}</td>
                                                <td class="am-text-middle">${obj.host}</td>
                                                <td class="am-text-middle">${obj.level}</td>
                                                <td class="am-text-middle">${obj.time}</td>
                                                <c:if test="${obj.examine==1}">
														<td class="am-text-middle">审核通过</td>
													</c:if>
													<c:if test="${obj.examine==0}">
														<td class="am-text-middle">待审核</td>
												</c:if>
                                                <td class="am-text-middle">
                                                    <div class="tpl-table-black-operation">
                                                        <a href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 查看
                                                        </a>
                                                        <a href="javascript:;" class="tpl-table-black-operation-del">
                                                            <i class="am-icon-trash"></i> 审核
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                         </c:forEach>
                                            
                                            <!-- more data -->
                                        </tbody>
                                    </table>
                                </div>
                                </c:if>
                                
                                <div class="am-u-lg-12 am-cf">

                                    <div class="am-fr">
                                        <ul class="am-pagination tpl-pagination">
                                            <li class="am-disabled"><a href="#">«</a></li>
                                            <li class="am-active"><a href="#">1</a></li>
                                            <li><a href="#">»</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                


            </div>
        </div>
    </div>
    <script src="/OnlineShop/js/amazeui.min.js"></script>
    <script src="/OnlineShop/js/amazeui.datatables.min.js"></script>
    <script src="/OnlineShop/js/dataTables.responsive.min.js"></script>
    <script src="/OnlineShop/js/app.js"></script>

</body>

</html>