<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<meta charset="utf-8" />
		<title>首页</title>
		<link rel="stylesheet" href="css/reset.css"/>
		<link rel="stylesheet" href="css/font-awesome.min.css" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="css/style.css"/>
		<link rel="stylesheet" href="css/navbar.css" />
		<link rel="stylesheet" type="text/css" href="css/foot.css"/>
		<link rel="stylesheet" href="css/index.css" />
		
		<script type="text/javascript" src="js/jquery-3.4.0.min.js" ></script>
		<script type="text/javascript" src="js/bootstrap.min.js" ></script>
	</head>
	<body>
		<!-- 导航栏 -->
		<jsp:include page="navbar.jsp"></jsp:include>
		
		<!--<div class="my-search">
			<div class="container">
	    	</div>
    	</div>-->
		
		<!--网站数据及上传成果-->
		<div class="container">
	        <div class="slider-info">
		        <div class="row">
		            <div class="col-lg-6 col-md-6 ">
			            <h5>赶快晒出你的
			              <br>科研成果</h5>
			            <p class="mt-2">科研成果是科技工作者辛勤劳动的结晶，是人类重要的精神财富和物质财富；是一种具有特殊意义的生产力，也是衡量科学研究任务完成与否，质量优劣，以及科研人员贡献大小的重要标志。是国家的财富、智力的资源。</p>
			            <div class="outs_more-buttn mt-md-4 mt-3">
			              <!-- Button trigger modal -->
							<button type="button" class="btn btn-primary btn-lg addbtn" data-toggle="modal" data-target="#myModal" id="myspan">
							  申请成果
							</button>
			            </div>
		            </div>
			        	<div class="col-lg-6 col-md-6 banner-two-grid ">
			            	<img src="img/before/b1.png" alt="" class="img-fluid">
			            </div>
			        </div>
		        </div>
	        </div>
	    </div>
	    
	    <!--上传成果提示框-->
	    <div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" id="myModal">
		  <div class="modal-dialog modal-sm" role="document" aria-hidden="true">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title">成果类别</h4>
		      </div>
		      <div class="modal-body modal-btn">
		        <button id="paper" type="button" class="btn btn-primary btn-lg">论文</button>
		        <button id="work" type="button" class="btn btn-primary btn-lg">著作</button>
		        <button id="project" type="button" class="btn btn-primary btn-lg">立项</button>
		        <button id="patent" type="button" class="btn btn-primary btn-lg">专利</button>
		        <button id="achievements" type="button" class="btn btn-primary btn-lg">获奖成果</button>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
		      </div>
		    </div><!-- /.modal-content -->
		  </div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
	    
	    <!--数据统计-->
	    <div class="alldata">
	    	<div class="title"><hr><span>成果统计</span></div>
		    <div class="container statistics">
			    <div class="row">
			        <div class="col-lg-3 col-md-6 col-sm-6 my-3 about-grid-gried">
			          <div class="about-fashion-grid ">
			            <div class="text-center">${Paper}</div>
			            <div class="about-wthree-grid mb-3 mt-lg-4 mt-3 type-title">
			              <h4>论文</h4>
			            </div>
			            <p>论文是根据有价值的生产实践或科研课题写作的，具有原创性和独到性的论文</p>
			          </div>
			        </div>
			        <div class="col-lg-3 col-md-6 col-sm-6 my-3 about-grid-gried">
			          <div class="about-fashion-grid ">
			            <div class="text-center">${Wsmaterial}</div>
			            <div class="about-wthree-grid mb-3 mt-lg-4 mt-3 type-title">
			              <h4>著作</h4>
			            </div>
			            <p>具有创造性的文章、著述，并且前人没有阐发过或没有记载过的文章或书籍</p>
			          </div>
			        </div>
			        <div class="col-lg-3 col-md-6 col-sm-6 my-3 about-grid-gried">
			          <div class="about-fashion-grid ">
			            <div class="text-center">${Project}</div>
			            <div class="about-wthree-grid mb-3 mt-lg-4 mt-3 type-title">
			              <h4>立项</h4>
			            </div>
			            <p>建设性项目已经获得政府投资计划主管机关的行政许可，可以进入项目实施阶段</p>
			          </div>
			        </div>
			        <div class="col-lg-3 col-md-6 col-sm-6 my-3 about-grid-gried">
			          <div class="about-fashion-grid ">
			            <div class="text-center">${Patent}</div>
			            <div class="about-wthree-grid mb-3 mt-lg-4 mt-3 type-title">
			              <h4>专利</h4>
			            </div>
			            <p>由政府机关或者代表若干国家的区域性组织根据申请而颁发的一种文件</p>
			          </div>
			        </div>
			    </div>
			</div>
			
			<div class="title"><hr><span>成果展示</span></div>
			<div class="container news-gain">
				<div class="row">
				    <div class="col-xs-6 col-md-4 news-gain-info">
					    <a href="#" class="thumbnail">
				      		<img src="img/before/g1.jpg" alt="...">
					    </a>
					    <!--<div class="news-gain-title">
					    	<div class="news-gain-bg">
					    		<span>标题</span>
					    	</div>
					    </div>-->
				    </div>
				    <div class="col-xs-6 col-md-4 news-gain-info">
					    <a href="#" class="thumbnail">
					      <img src="img/before/g2.jpg"" alt="...">
					    </a>
				    </div>
				    <div class="col-xs-6 col-md-4 news-gain-info">
					    <a href="#" class="thumbnail">
					      <img src="img/before/g3.jpg"" alt="...">
					    </a>
				    </div>
				    <div class="col-xs-6 col-md-4 news-gain-info">
					    <a href="#" class="thumbnail">
					      <img src="img/before/g4.jpg"" alt="...">
					    </a>
				    </div>
				    <div class="col-xs-6 col-md-4 news-gain-info">
					    <a href="#" class="thumbnail">
					      <img src="img/before/g5.jpg"" alt="...">
					    </a>
				    </div>
				    <div class="col-xs-6 col-md-4 news-gain-info">
					    <a href="#" class="thumbnail">
					      <img src="img/before/g6.jpg"" alt="...">
					    </a>
				    </div>
				</div>
			</div>
		</div>
		
		<!--网站相关信息-->
		
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
			$(document).ready(function(){
				$("#paper").click(function(){
					window.location.href = "/design2019/PaperRegisterInit";
				});
				$("#work").click(function(){
					window.location.href = "/design2019/WorksMaterialRegisterInit";
				});
				$("#project").click(function(){
					window.location.href = "/design2019/ProjectRegisterInit";
				});
				$("#patent").click(function(){
					window.location.href = "/design2019/PatentRegisterInit";
				});
				$("#achievements").click(function(){
					window.location.href = "/design2019/AchieveRegisterInit";
				});
			});
		</script>
	</body>
</html>
