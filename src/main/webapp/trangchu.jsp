<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Smartweb</title>

<link href="<c:url value="resources/css/modern-business.css"/>"
	rel="stylesheet">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-resource.min.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="jquery.shorten.1.0.js"></script>

<script type="text/javascript">
	$(".card-text").shorten({
		"showChars" : 10,
		"moreText" : "Xem thêm",
		"lessText" : "Rút gọn",
	});
</script>

<style>
.carousel-inner img {
	width: 100%;
	height: 100%;
}
</style>



</head>
<%@ include file="header.jsp"%>
<body ng-app="demo1" ng-controller="Hello1">

	

	<div id="demo" class="carousel slide" data-ride="carousel">


		<ul class="carousel-indicators">
			<li data-target="#demo" data-slide-to="0" class="active"></li>
			<li data-target="#demo" data-slide-to="1"></li>
			<li data-target="#demo" data-slide-to="2"></li>
		</ul>


		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="resources/abc2.jpg" alt="Messi">
			</div>
			<div class="carousel-item">
				<img src="resources/abc1.jpg" alt="Messi 2">
			</div>
			<div class="carousel-item">
				<img src="resources/abc3.jpg" alt="Hạ Long">
			</div>
		</div>


		<a class="carousel-control-prev" href="#demo" data-slide="prev"> <span
			class="carousel-control-prev-icon"></span>
		</a> <a class="carousel-control-next" href="#demo" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		</a>
	</div>


	<div class="container">

		<h1 class="my-4">Chào mừng đến với Smartweb</h1>


		<div class="row">
			<div class="col-lg-4 mb-4">
				<div class="card h-50">
					<h4 class="card-header">Danh sách việc làm mới</h4>
					
					<div class="card-body">
						<p class="card-text" ng-repeat="x in vieclam">
							<a href="chitietvieclam.jsp">{{x.tieude}}</a>
						</p>
					</div>
					<div class="card-footer">
						<a href="vieclam.jsp" class="btn btn-primary">Learn More</a>
					</div>
				</div>
			</div>
			<div class="col-lg-4 mb-4">
				<div class="card h-50">
					<h4 class="card-header">Danh sách tin tức mới</h4>
					<div class="card-body">
						<p class="card-text" ng-repeat="x in tintuc">
							<a href="">{{x.tieude}}</a>
						</p>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-primary">Learn More</a>
					</div>
				</div>
			</div>
			
		</div>
		<!-- /.row -->

		<!-- Portfolio Section -->
		<h2>Hồ sơ mới</h2>

		<div class="row">
			<div class="col-lg-4 col-sm-6 portfolio-item">
				<div class="card h-50">
					<a href="#"><img class="card-img-top"
						src="resources/cv.jpg" alt=""></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="#">Hồ sơ 1</a>
						</h4>
						<p class="card-text">
							Nguyễn Thành Long, 22 tuổi - sinh viên năm cuối trường đại học Điện Lực <a href="#" style="text-decoration: underline;">Chi tiết</a>
						</p>

					</div>
				</div>
			</div>
			<div class="col-lg-4 col-sm-6 portfolio-item">
				<div class="card h-50">
					<a href="#"><img class="card-img-top"
						src="resources/cv.jpg" alt=""></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="#">Hồ sơ 2</a>
						</h4>
						<p class="card-text">
							Nguyễn Thành Long, 22 tuổi - sinh viên năm cuối trường đại học Điện Lực <a
								href="#" style="text-decoration: underline;">Chi tiết</a>
						</p>

					</div>
				</div>
			</div>
			<div class="col-lg-4 col-sm-6 portfolio-item">
				<div class="card h-50">
					<a href="#"><img class="card-img-top"
						src="resources/cv.jpg" alt=""></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="#">Hồ sơ 3</a>
						</h4>
						<p class="card-text">
							Nguyễn Thành Long, 22 tuổi - sinh viên năm cuối trường đại học Điện Lực<a href="#"
								style="text-decoration: underline;">Chi tiết</a>
						</p>

					</div>
				</div>
			</div>


			<div class="row" style="margin-top: 30px">
				<div class="col-lg-6">
					<h2>Thông tin thêm về công ty</h2>
					<p>Một số ưu điểm:</p>
					<ul>
						<li>Trên 15 năm kinh nghiệm phát triển các hệ thống
							IT/Software</li>
						<li>Trên 150 chuyên gia IT/Phần mềm, bao gồm Software DEV,
							Mobile DEV, Software Testing Specialists, PMs, BAs, SAs. Có thể
							mở rộng đội ngũ nhanh chóng với mạng lưới trên 30.000 ứng viên.</li>
						<li>Tin cậy bởi các đối tác lớn: Viettel, FPT Software, FPT
							IS, Techcombank, MB Bank, SeABank…</li>
						<li>Hợp đồng, khách hàng tiêu biểu</li>
						<li>Phát triển website Tuyển dụng cho FPT – Software (2013 –
							2014)</li>
					</ul>
					<p>Doanh nghiệp CNTT hàng đầu tại Việt Nam, chuyên về cung cấp
						giải pháp và nhân lực trong lĩnh vực CNTT:</p>
					<ul>
						<li>Top 17 Doanh nghiệp phần mềm & dịch vụ CNTT – 2015</li>
						<li>Top 40 Doanh nghiệp công nghệ thông tin hàng đầu Việt Nam
							– 2015</li>
						<li>Giải Sao khuê cho Dịch vụ phái cử nguồn nhân lực – 2014</li>
					</ul>
				</div>
				<div class="col-lg-6">
					<img class="img-fluid rounded" src="resources/sm.jpg" alt="">
				</div>
			</div>



		</div>

	</div>




	<script>
	var app = angular.module('demo1', [ 'ngResource' ]);
	app
			.controller(
					'Hello1',
					[
							'$scope',
							'$resource',
							function($scope, $resource, Vieclam) {
								function allvieclam() {
									$scope.vieclam = $resource(
											'http://localhost:8080/Test1/rest/top5vieclam')
											.query(function(data) {
												return data;
											});
								}
								;

								allvieclam();
								
								
								function alltintuc() {
									$scope.tintuc = $resource(
											'http://localhost:8080/Test1/rest/top5tintuc')
											.query(function(data) {
												return data;
											});
								}
								;

								alltintuc();
								
								
							}
							
							
							
							]);
</script>


	<%@ include file="footer.jsp"%>
</body>



</html>

