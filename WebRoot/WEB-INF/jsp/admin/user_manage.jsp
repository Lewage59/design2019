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
                    <a href="/design2019/showTeacherAll"  class="active">
                        <i class="am-icon-wpforms sidebar-nav-link-logo"></i> 教师管理
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="javascript:;" class="sidebar-nav-sub-title">
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
                        <div class="page-header-heading"><i class="am-icon-home page-header-heading-icon"></i>   教师信息管理 </div>
                    </div>
                </div>
            </div>

            <div class="row-content am-cf">
                <div class="row">
                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                        <div class="widget am-cf">
                            <div class="widget-head am-cf">
                                <div class="widget-title am-fl">教师列表</div>
                                <div class="widget-function am-fr">
                                    <a href="javascript:;" class="am-icon-cog"></a>
                                </div>
                            </div>
                            <div class="widget-body  widget-body-lg am-fr">
                            	<div class="am-u-sm-12 am-u-md-6 am-u-lg-6">
                                    <div class="am-form-group">
                                        <div class="am-btn-toolbar">
                                            <div class="am-btn-group am-btn-group-xs">
                                                <button onclick="addTeacher()" type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-plus"></span>  添加教师</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="am-u-sm-12 am-u-md-6 am-u-lg-3">
                                    <div class="am-form-group tpl-table-list-select">
                                        <select data-am-selected="{btnSize: 'sm'}">
							              <option value="option1">所有职位</option>
							       
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
                            	
                                <table width="100%" class="am-table am-table-compact am-table-bordered am-table-radius am-table-striped tpl-table-black " id="example-r">
                                    <thead>
                                        <tr>
                                            <th>工号</th>
                                            <th>教师名</th>
                                            <th>职位</th>
                                            <th>入职时间</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${TuserAll }" var="obj">
                                        <tr class="even gradeC">
                                            <td>${obj.tno}</td>
                                            <td>${obj.tname}</td>
                                            <td>${obj.position}</td>
                                            <td>${obj.inTime}</td>
                                            <td>
                                                <div class="tpl-table-black-operation">
                                                    <a href="javascript:;">
                                                        <i class="am-icon-pencil"></i> 查看
                                                    </a>
                                                    <a href="javascript:;" class="tpl-table-black-operation-del">
                                                        <i class="am-icon-trash"></i> 禁用
                                                    </a>
                                                </div>
                                            </td>
                                        </tr>
                                        </c:forEach>
                                        
                                        <!-- more data -->
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                </div>

                </div>
                </div>

                


            </div>
        </div>
    </div>
    
    <script>
		function addTeacher(){
			window.location.href='/design2019/teacherInit';
		}
    </script>
    
    <script src="/OnlineShop/js/amazeui.min.js"></script>
    <script src="/OnlineShop/js/amazeui.datatables.min.js"></script>
    <script src="/OnlineShop/js/dataTables.responsive.min.js"></script>
    <script src="/OnlineShop/js/app.js"></script>

</body>

</html>