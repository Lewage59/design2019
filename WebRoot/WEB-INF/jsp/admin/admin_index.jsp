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
                    <a href="/design2019/admin/login" class="active">
                        <i class="am-icon-home sidebar-nav-link-logo"></i> 首页
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="/design2019/showTeacherAll">
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
                        <div class="page-header-heading"><i class="am-icon-home page-header-heading-icon"></i>   后台系统首页 </div>
                    </div>
                </div>
            </div>

            <div class="row-content am-cf">
                <div class="row  am-cf">
                    <div class="am-u-sm-12 am-u-md-4 am-u-lg-4">
                        <div class="widget widget-primary am-cf">
                            <div class="widget-statistic-header">
                                待审核
                            </div>
                            <div class="widget-statistic-body">
                                <div class="widget-statistic-value">
                                    ${Auex}
                                </div>
                                <div class="widget-statistic-description">
                                    今日比昨天多 <strong>15</strong> 
                                </div>
                                <span class="widget-statistic-icon am-icon-credit-card-alt"></span>
                            </div>
                        </div>
                    </div>
                    <div class="am-u-sm-12 am-u-md-4 am-u-lg-4">
                        <div class="widget widget-purple am-cf">
                            <div class="widget-statistic-header">
                                全部成果
                            </div>
                            <div class="widget-statistic-body">
                                <div class="widget-statistic-value">
                                    ${Asum}
                                </div>
                                <div class="widget-statistic-description">
                                    已审核成果 <strong>${Aex}</strong>
                                </div>
                                <span class="widget-statistic-icon am-icon-support"></span>
                            </div>
                        </div>
                    </div>
                    <div class="am-u-sm-12 am-u-md-4 am-u-lg-4">
                        <div class="widget widget-primary am-cf">
                            <div class="widget-statistic-header">
                                教师数量
                            </div>
                            <div class="widget-statistic-body">
                                <div class="widget-statistic-value">
                                    ${Atsum}
                                </div>
                                <span class="widget-statistic-icon am-icon-credit-card-alt"></span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row am-cf">
                    <div class="am-u-sm-12 am-u-md-8">
                        <div class="widget am-cf">
                            <div class="widget-head am-cf">
                                <div class="widget-title am-fl">成果数量</div>
                                <div class="widget-function am-fr">
                                    <a href="javascript:;" class="am-icon-cog"></a>
                                </div>
                            </div>
                            <div class="widget-body-md widget-body tpl-amendment-echarts am-fr" id="tpl-echarts">
                            </div>
                        </div>
                    </div>
                    
                    <div class="am-u-sm-12 am-u-md-4">
                        <div class="widget am-cf">
                            <div class="widget-head am-cf">
                                <div class="widget-title am-fl">网站统计</div>
                                <div class="widget-function am-fr">
                                    <a href="javascript:;" class="am-icon-cog"></a>
                                </div>
                            </div>
                            <div class="widget-body widget-body-md am-fr">

                                <div class="am-progress-title">待审核 <span class="am-fr am-progress-title-more">${Auex}</span></div>
                                <div class="am-progress">
                                    <div class="am-progress-bar" style="width: ${Auex}%"></div>
                                </div>
                                <div class="am-progress-title">全部成果 <span class="am-fr am-progress-title-more">${Asum}</span></div>
                                <div class="am-progress">
                                    <div class="am-progress-bar  am-progress-bar-warning" style="width: ${Asum}%"></div>
                                </div>
                                <div class="am-progress-title">已审核 <span class="am-fr am-progress-title-more">${Aex}</span></div>
                                <div class="am-progress">
                                    <div class="am-progress-bar am-progress-bar-danger" style="width: ${Aex}%"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                    
                <div class="row am-cf">
                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-4 widget-margin-bottom-lg ">
                        <div class="tpl-user-card am-text-center widget-body-lg">
                            <div class="tpl-user-card-title">
                                小张
                            </div>
                            <div class="achievement-subheading">
                                月度最佳教师
                            </div>
                            <img class="achievement-image" src="assets/img/user07.png" alt="">
                            <div class="achievement-description">
                                小张在
                                <strong>本网站内</strong> 申请了
                                <strong>23</strong>成果
                            </div>
                        </div>
                    </div>
                    

                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-8 widget-margin-bottom-lg">

                        <div class="widget am-cf widget-body-lg">

                            <div class="widget-body  am-fr">
                                <div class="am-scrollable-horizontal ">
                                    <table width="100%" class="am-table am-table-compact am-text-nowrap tpl-table-black " id="example-r">
                                        <thead>
                                            <tr>
                                                <th>文章标题</th>
                                                <th>作者</th>
                                                <th>时间</th>
                                                <th>操作</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="gradeX">
                                                <td>新加坡大数据初创公司 Latize 获 150 万美元风险融资</td>
                                                <td>张鹏飞</td>
                                                <td>2016-09-26</td>
                                                <td>
                                                    <div class="tpl-table-black-operation">
                                                        <a href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 编辑
                                                        </a>
                                                        <a href="javascript:;" class="tpl-table-black-operation-del">
                                                            <i class="am-icon-trash"></i> 删除
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="even gradeC">
                                                <td>自拍的“政治角色”：观众背对希拉里自拍合影表示“支持”</td>
                                                <td>天纵之人</td>
                                                <td>2016-09-26</td>
                                                <td>
                                                    <div class="tpl-table-black-operation">
                                                        <a href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 编辑
                                                        </a>
                                                        <a href="javascript:;" class="tpl-table-black-operation-del">
                                                            <i class="am-icon-trash"></i> 删除
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="gradeX">
                                                <td>关于创新管理，我想和你当面聊聊。</td>
                                                <td>王宽师</td>
                                                <td>2016-09-26</td>
                                                <td>
                                                    <div class="tpl-table-black-operation">
                                                        <a href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 编辑
                                                        </a>
                                                        <a href="javascript:;" class="tpl-table-black-operation-del">
                                                            <i class="am-icon-trash"></i> 删除
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="even gradeC">
                                                <td>究竟是趋势带动投资，还是投资引领趋势？</td>
                                                <td>着迷</td>
                                                <td>2016-09-26</td>
                                                <td>
                                                    <div class="tpl-table-black-operation">
                                                        <a href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 编辑
                                                        </a>
                                                        <a href="javascript:;" class="tpl-table-black-operation-del">
                                                            <i class="am-icon-trash"></i> 删除
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="even gradeC">
                                                <td>Docker领域再添一员，网易云发布“蜂巢”，加入云计算之争</td>
                                                <td>醉里挑灯看键</td>
                                                <td>2016-09-26</td>
                                                <td>
                                                    <div class="tpl-table-black-operation">
                                                        <a href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 编辑
                                                        </a>
                                                        <a href="javascript:;" class="tpl-table-black-operation-del">
                                                            <i class="am-icon-trash"></i> 删除
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>


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
    <script src="/OnlineShop/js/amazeui.min.js"></script>
    <script src="/OnlineShop/js/amazeui.datatables.min.js"></script>
    <script src="/OnlineShop/js/dataTables.responsive.min.js"></script>
    <script src="/OnlineShop/js/app.js"></script>

</body>

</html>