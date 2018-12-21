<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
a:hover {
	color: red;
}
</style>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
	integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
	crossorigin="anonymous">

<div class="header">
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<!-- Logo -->
				<div class="logo">
					<h1>
						<a href="quanly.jsp">SmartWeb</a>
					</h1>
				</div>
			</div>
			<div class="col-md-5">
				<div class="row">
					<div class="col-lg-12">
						<div class="input-group form">
							<input type="text" class="form-control" placeholder="Search...">
							<span class="input-group-btn">
								<button class="btn btn-primary" type="button">Search</button>
							</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="navbar navbar-inverse" role="banner">
					<nav
						class="collapse navbar-collapse bs-navbar-collapse navbar-right"
						role="navigation">
						<ul class="nav navbar-nav">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">My Account <b class="caret"></b></a>
								<ul class="dropdown-menu animated fadeInUp">
									<li><a href="profile.html">Profile</a></li>
									<li><a href="login.html">Logout</a></li>
								</ul></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="page-content">
	<div class="row">
		<div class="col-md-2">
			<div class="sidebar content-box" style="display: block;">
				<ul class="nav">
					<!-- Main menu -->
					<li style="width: 100%"><a href="quanly.jsp"><i
							class="fas fa-home"></i> Trang chủ</a></li>
					<li style="width: 100%"><a href="quanlyvieclam"><i
							class="fas fa-briefcase"></i> Việc làm</a></li>
					<li style="width: 100%"><a href="quanlytintuc.jsp"><i
							class="fas fa-file-alt"></i> Tin Tức</a></li>
					<li style="width: 100%"><a href="quanlyhoso"><i
							class="fas fa-address-book"></i> Hồ sơ</a></li>
					<li style="width: 100%"><a href="quanlynguoidung.jsp"><i
							class="fas fa-user-tie"></i> Người dùng</a></li>
				</ul>
			</div>
		</div>