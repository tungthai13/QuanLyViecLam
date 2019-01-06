<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="dao.NguoiDungDAO"%>
<%@page import="model.NguoiDung"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta charset="utf-8" />
	<title>Bảng cá nhân</title>

	<meta name="description" content="3 styles with inline editable feature" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

	<!-- bootstrap & fontawesome -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
	<link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

	<!-- page specific plugin styles -->
	<link rel="stylesheet" href="assets/css/jquery-ui.custom.min.css" />
	<link rel="stylesheet" href="assets/css/jquery.gritter.min.css" />
	<link rel="stylesheet" href="assets/css/select2.min.css" />
	<link rel="stylesheet" href="assets/css/bootstrap-datepicker3.min.css" />
	<link rel="stylesheet" href="assets/css/bootstrap-editable.min.css" />

	<!-- text fonts -->
	<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

	<!-- ace styles -->
	<link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
			<![endif]-->
			<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
			<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		  <![endif]-->

		  <!-- inline styles related to this page -->

		  <!-- ace settings handler -->
		  <script src="assets/js/ace-extra.min.js"></script>

		  <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body class="no-skin">
		<div id="navbar" class="navbar navbar-default          ace-save-state">
			<div class="navbar-container ace-save-state" id="navbar-container">
				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
					<span class="sr-only">Toggle sidebar</span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>
				</button>

				<div class="navbar-header pull-left">
					<a href="index.html" class="navbar-brand">
						<small>
							<i class="fa fa-leaf"></i>
							Thông tin cá nhân
						</small>
					</a>
				</div>

<%
											NguoiDung user = (NguoiDung) request.getAttribute("user");
											%>
				<div class="navbar-buttons navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">						
						<li class="light-blue dropdown-modal">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="assets/images/avatars/profile-pic.jpg" alt="" />
								<span class="user-info">
									<small>Welcome,</small>
									<%=user.getUserName() %>
								</span>

								<i class="ace-icon fa fa-caret-down"></i>
							</a>

							<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="#">
										<i class="ace-icon fa fa-cog"></i>
										Settings
									</a>
								</li>

								<li>
									<a href="profile.html">
										<i class="ace-icon fa fa-user"></i>
										Profile
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="#">
										<i class="ace-icon fa fa-power-off"></i>
										Logout
									</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div><!-- /.navbar-container -->
		</div>

		<div class="main-container ace-save-state" id="main-container">
			<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>

			<div id="sidebar" class="sidebar                  responsive                    ace-save-state">
				<script type="text/javascript">
					try{ace.settings.loadState('sidebar')}catch(e){}
				</script>

				

				

				<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				</div>
			</div>

			<div class="main-content">
				<div class="main-content-inner">
					<div class="page-content">
						

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="clearfix">
									

							
								</div>

								<div class="hr dotted"></div>

								<div>
									<div id="user-profile-1" class="user-profile row">
										<div class="col-xs-12 col-sm-3 center">
											<div>
												<span class="profile-picture">
													<img id="avatar" class="editable img-responsive" alt="" src="assets/images/avatars/profile-pic.jpg" />
												</span>

												<div class="space-4"></div>

												<div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
													<div class="inline position-relative">
														<a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">
															<i class="ace-icon fa fa-circle light-green"></i>
															&nbsp;
															<span class="white"><%=user.getHoTen()
																	%></span>
														</a>

														<ul class="align-left dropdown-menu dropdown-caret dropdown-lighter">
															<li class="dropdown-header"> Change Status </li>

															<li>
																<a href="#">
																	<i class="ace-icon fa fa-circle green"></i>
																	&nbsp;
																	<span class="green">Available</span>
																</a>
															</li>

															<li>
																<a href="#">
																	<i class="ace-icon fa fa-circle red"></i>
																	&nbsp;
																	<span class="red">Busy</span>
																</a>
															</li>

															<li>
																<a href="#">
																	<i class="ace-icon fa fa-circle grey"></i>
																	&nbsp;
																	<span class="grey">Invisible</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</div>

											<div class="space-6"></div>

											

											<div class="hr hr12 dotted"></div>

											
											<div class="hr hr16 dotted"></div>
										</div>

										<div class="col-xs-12 col-sm-9">
											

											<div class="space-12"></div>
											
											

											<div class="profile-user-info profile-user-info-striped">
												<div class="profile-info-row">
													<div class="profile-info-name"> Họ tên </div>

													<div class="profile-info-value">
														<span class="editable" id="hoTen"><%=user.getHoTen() %></span>
													</div>
												</div>

												<div class="profile-info-row">
													<div class="profile-info-name"> Quê quán </div>

													<div class="profile-info-value">
														<i class="fa fa-map-marker light-orange bigger-110"></i>
														
														<span class="editable" id="city"><%=user.getQueQuan() %></span>
													</div>
												</div>

												<div class="profile-info-row">
													<div class="profile-info-name"> Tuổi </div>

													<div class="profile-info-value">
														<span class="editable" id="age">23</span>
													</div>
												</div>

												<div class="profile-info-row">
													<div class="profile-info-name"> Email </div>

													<div class="profile-info-value">
														<span class="editable" id="signup"><%=user.getEmail() %></span>
													</div>
												</div>

												<div class="profile-info-row">
													<div class="profile-info-name"> Số điện thoại </div>

													<div class="profile-info-value">
														<span class="editable" id="login"><%=user.getSdt() %></span>
													</div>
												</div>

												<div class="profile-info-row">
													<div class="profile-info-name"> Vị trí mong muốn </div>

													<div class="profile-info-value">
														<span class="editable" id="about"><%=user.getViTriUngTuyen() %></span>
													</div>
												</div>
												<div class="profile-info-row">
													<div class="profile-info-name"> Kinh nghiệm </div>

													<div class="profile-info-value">
														<span class="editable" id="about"><%=user.getKinhNghiemCongTac() %></span>
													</div>
												</div>
												<div class="profile-info-row">
													<div class="profile-info-name"> Trường </div>

													<div class="profile-info-value">
														<span class="editable" id="about"><%=user.getTruong() %></span>
													</div>
												</div>
												<div class="profile-info-row">
													<div class="profile-info-name"> Kỹ năng </div>

													<div class="profile-info-value">
														<span class="editable" id="about"><%=user.getKyNang() %></span>
													</div>
												</div>
												
												
											</div>
											
									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<button class="btn btn-info" type="button">
											<a style="color:white" href="chinhSuaThongTinCaNhan"><i class="fas fa-wrench"></i>
												Chỉnh sửa</a>
												
											</button>

											&nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
												<i class="fas fa-unlock-alt"></i>
												Cài đặt mật khẩu
											</button>
										</div>
									</div>

											<div class="space-20"></div>

											

											<div class="hr hr2 hr-double"></div>

											<div class="space-6"></div>

									
											
										</div>
									</div>
								</div>

								

								

<!-- PAGE CONTENT ENDS -->
</div><!-- /.col -->
</div><!-- /.row -->
</div><!-- /.page-content -->
</div>
</div><!-- /.main-content -->



	</body>
	</html>
	
	
	
	
	
	
	
	
	
