<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page session="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<html>

<head>

<meta charset="utf-8">

<title>Smartweb</title>


<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-resource.min.js"></script>
	


</head>


<body style="margin-top: 30px" ng-app="demo1"
	ng-controller="Hello1">

	<%@ include file="header.jsp" %>

	<div class="container" style="margin-top:10px">


		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="trangchu.jsp">Home</a></li>
			<li class="breadcrumb-item"><a href="vieclam.jsp">Việc làm</a></li>
			<li class="breadcrumb-item active">Chi tiết việc làm</li>
		</ol>

		<div class="row">

			<div class="col-md-8">

				<img class="img-fluid rounded" src="">
					
				<hr>
				<p>
					<td>
						<h1 class="mt-4 mb-3">
							<small> <b>{{chitietvieclam.tieude}}</b>
							</small>
						</h1>

					</td> <a class="breadcrumb">Ơchitietvieclam.tencongty }}</a>

				</p>


				<p class="breadcrumb">Mô tả công việc: ${chitietvieclam.mota }</p>
				<p class="breadcrumb">Mức lương: ${chitietvieclam.mucluong }</p>
				<p class="breadcrumb">Địa chỉ: ${chitietvieclam.diachi }</p>



			</div>

			<div class="col-md-4">

				<div class="card mb-4">
					<h5 class="card-header">Việc làm mới</h5>
					<table>
						<tbody>
							<tr ng-repeat="x in vieclam" class="mt-4 mb-3" style="margin-top:10px">
								<td><a href="#">{{x.tieude}}</a></td>
								<tr></tr>
							</tr>
						</tbody>
					</table>
				</div>
				
				<div class="card mb-4">
					<h5 class="card-header">Tin tức mới</h5>
					<table>
						<tbody>
							<tr ng-repeat="x in tintuc" class="mt-4 mb-3" style="margin-top:10px">
								<td><a href="#">{{x.tieude}}</a></td>
								<tr></tr>
							</tr>
						</tbody>
					</table>
				</div>


				


				<div>
					<button class="btn btn-success btn-lg">Làm hồ sơ ngay</button>
				</div>

			</div>
			
		</div>
	</div>
		
	 <%@ include file="footer.jsp" %>

			<script>
	var app = angular.module('demo1', [ 'ngResource' ]);
	app
			.controller(
					'Hello1',
					[
							'$scope',
							'$resource',
							function($scope, $resource, Vieclam) {
								function top5vieclam() {
									$scope.vieclam = $resource(
											'http://localhost:8080/Test1/rest/top5vieclam')
											.query(function(data) {
												return data;
											});
								}
								;

								top5vieclam();
								
								function alltintuc() {
									$scope.tintuc = $resource(
											'http://localhost:8080/Test1/rest/top5tintuc')
											.query(function(data) {
												return data;
											});
								}
								;

								alltintuc();

								function Getvieclam(){
							        $scope.chitietvieclam = $resource('http://localhost:8080/Test1/rest/getvieclam/:idvieclam'
							        ).query(function(data){return data;});
							       
							    };
							    
							} ]);
</script>
		
		 
</body>

</html>
