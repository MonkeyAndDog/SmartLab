<%--
  User: Mr.Hu
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

	<head>
		<base href="<%=basePath%>" />
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>实验室综合管理系统</title>
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
		<link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
		<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
		<link rel="stylesheet" href="dist/css/skins/skin-blue.css">
		<link rel="stylesheet" href="plugins/pace/pace.min.css" />
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	  <![endif]-->

		<!-- Google Font -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
	</head>

	<body class="hold-transition skin-blue fixed sidebar-mini">
		<div class="wrapper">

			<!-- Main Header -->
			<header class="main-header">
				<!-- Logo -->
				<a href="index2.html" class="logo">
					<!-- mini logo for sidebar mini 50x50 pixels -->
					<span class="logo-mini"><b>S</b>Lab</span>
					<!-- logo for regular state and mobile devices -->
					<span class="logo-lg"><b>Smart</b>Lab</span>
				</a>

				<!-- Header Navbar -->
				<nav class="navbar navbar-static-top" role="navigation">
					<!-- 侧边工具条-->
					<a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
						<span class="sr-only">Toggle navigation</span>
					</a>
					<!-- Navbar Right Menu -->
					<div class="navbar-custom-menu">
						<ul class="nav navbar-nav">
							<!-- User Account Menu -->
							<li class="dropdown user user-menu">
								<!-- Menu Toggle Button -->
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<!-- The user image in the navbar-->
									<img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
									<!-- hidden-xs hides the username on small devices so only the image appears. -->
									<span class="hidden-xs">${session.name}</span>
								</a>
								<ul class="dropdown-menu">
									<!-- The user image in the menu -->
									<li class="user-header">
										<img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
										<p>
											用户名：<span>${session.username}</span><br />
											<small>权限：${session.status}</small>
										</p>
									</li>
									<!-- Menu Footer-->
									<li class="user-footer">
										<div class="pull-right">
											<a href="logout.action" class="btn btn-default btn-flat">登出</a>
										</div>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</nav>
			</header>
			<!-- Left side column. contains the logo and sidebar -->
			<aside class="main-sidebar">

				<!-- sidebar: style can be found in sidebar.less -->
				<section class="sidebar">

					<!-- Sidebar user panel (optional) -->
					<div class="user-panel">
						<div class="pull-left image">
							<img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
						</div>
						<div class="pull-left info">
							<p>${session.name}</p>
							<!-- Status -->
							<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
						</div>
					</div>

					<!-- Sidebar Menu -->
					<ul class="sidebar-menu" data-widget="tree">
						<li class="header">导航</li>
						<!-- Optionally, you can add icons to the links -->
						<li>
							<a href="#"><i class="fa fa-dashboard"></i> <span>操作盘</span></a>
						</li>
						<li class="treeview">
							<a href="#"><i class="fa fa-leaf"></i> <span>项目</span>
								<span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="#">我的任务</a>
								</li>
								<li>
									<a href="admin_project_list.jsp">项目列表</a>
								</li>
								<li>
									<a href="admin_project_create.jsp">项目申请</a>
								</li>
							</ul>
						</li>
						<li class="treeview">
							<a href="#"><i class="fa fa-leaf"></i> <span>新闻</span>
								<span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="admin_news_list.jsp">新闻列表</a>
								</li>
								<li>
									<a href="news_create.jsp">写新闻</a>
								</li>
							</ul>
						</li>
						<li>
							<a href="#"><i class="glyphicon glyphicon-user"></i> <span>人员管理</span></a>
						</li>
						<li>
							<a href="#"><i class="glyphicon glyphicon-wrench"></i> <span>设备预约</span></a>
						</li>
						<li>
							<a href="#"><i class="fa fa-calculator "></i> <span>设备管理</span></a>
						</li>
						<li>
							<a href="#"><i class="fa fa-bar-chart"></i> <span>比赛统计</span></a>
						</li>
						<li>
							<a href="#"><i class="fa fa-smile-o"></i> <span>荣誉系统</span></a>
						</li>
						<li>
							<a href="#"><i class="fa fa-database"></i> <span>工作简报</span></a>
						</li>
						<li>
							<a href="#"><i class="fa fa-file"></i> <span>文档管理</span></a>
						</li>
						<li>
							<a href="#"><i class="fa fa-calendar-o"></i> <span>知识库</span></a>
						</li>

					</ul>
					<!-- /.sidebar-menu -->
				</section>
				<!-- /.sidebar -->
			</aside>

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Main content -->
				<section class="content container-fluid">
					<div id="newsList" class="box box-primary">
						<div class="box-header">
							<h3 class="box-title">新闻列表</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<table class="table table-bordered table-hover">
								<thead>
									<tr>
										<th>名称</th>
										<th>发表人</th>
										<th>时间</th>
										<th>详情</th>
									</tr>
								</thead>
								<tbody>
									<tr v-for="item in news">
										<td>{{item.title}}</td>
										<td>{{item.pushUser}}</td>
										<td>{{item.createDate}}</td>
										<td>
											<a v-bind:href="'pullNewsDetail.action?newsId=' + item.id">查看</a>
										</td>
									</tr>
								</tbody>
								<tfoot>
									<tr>
										<th>名称</th>
										<th>发表人</th>
										<th>时间</th>
										<th>详情</th>
									</tr>
								</tfoot>
							</table>
						</div>
						<!-- /.box-body -->
					</div>
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

			<!-- Main Footer -->
			<footer class="main-footer">
				<!-- To the right -->
				<div class="pull-right hidden-xs">
					任何你想到的
				</div>
				<!-- Default to the left -->
				<strong>Copyright &copy; 2018 <a href="#">Mr.Hu</a>.</strong> All rights reserved.
			</footer>
			<div class="control-sidebar-bg"></div>
		</div>
		<!-- ./wrapper -->

		<script src="plugins/pace/pace.min.js"></script>
		<script src="bower_components/jquery/dist/jquery.min.js"></script>
		<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
		<script src="dist/js/adminlte.min.js"></script>
		<script src="js/mui.min.js"></script>
		<script src="js/vue.min.js"></script>
		<script>
			mui.init(
				initData()
			)

			function initData() {
				/**
				 *初始化新闻列表 
				 */
                mui.ajax('http://101.200.56.88:8080/smartlab/api/get/news/list', {
                    data:{
                        apikey:'HDFY32JN28'
                    },
                    type: 'post',
					success: function(data) {
						var oJson = JSON.parse(data);
						news.news = news.news.concat(covertNews(oJson));
					},
					error: function(xhr, type, errorThrown) {
						console.log(errorThrown);
						console.log(type)
					}
				})
			}

			var news = new Vue({
				el: '#newsList',
				data: {
					news: []
				}
			})

			function covertNews(items) {
				var newItems = [];
				items.forEach(function(item) {
					newItems.push({
						title: item.title,
						createDate: item.createDate,
						pushUser: item.user.name,
						id: item.id
					});
				});
				return newItems;
			}
		</script>
	</body>

</html>