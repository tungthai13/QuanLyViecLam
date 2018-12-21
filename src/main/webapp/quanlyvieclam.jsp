<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>

<head>
<meta charset="utf-8">
<title>Quản lý việc làm</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-resource.min.js"></script>


<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<link href="resources/css/styles.css" rel="stylesheet">

</head>

<body ng-app="demo1" ng-controller="Hello1">

	<%@include file="dashbar.jsp"%>

	<div class="col-md-10">
		<div>
			<h1>Quản lý việc làm</h1>
		</div>
		<button style="margin-top: 20px; width: 60px; height: 40px"
			class="btn btn-info">
			<i class="glyphicon glyphicon-refresh"></i> Refresh
		</button>
		
		<button style="margin-top: 20px; width: 120px; height: 40px;margin-left:20px;"
			class="btn btn-info">
			<a href="themvieclam" style="color:white" ><i class="glyphicon glyphicon-refresh"></i> Thêm việc làm</a>
		</button>
		
			<div style="margin-top: 20px;"panel-body">
				<table cellpadding="0" cellspacing="0" border="0"
					class="table table-striped table-bordered" id="example">
					
					<thead>
						<tr>
<form name="personForm" ng-submit="update()">
							<th>
								<div class="form-group">
									<label>ID</label> <input class="form-control" ng-model="id"
										placeholder="ID" type="text" ng-disabled="!edit" required>
									<span
										ng-show="personForm.id.$touched && personForm.id.$invalid">The
										name is required.</span>
								</div>

							</th>
							<th><div class="form-group">
									<label>Tiêu đề</label> <input class="form-control"
										placeholder="Tiêu đề" type="text" ng-model="tieude">
								</div></th>
							<th><div class="form-group">
									<label>Ten công ty</label> <input class="form-control"
										placeholder="Tên công ty" type="text" ng-model="tencongty">

								</div></th>
							<th><div class="form-group">
									<label>Ảnh</label> <input class="form-control"
										placeholder="Ảnh" type="text" ng-model="thumbnail">
								</div></th>
							<th><div class="form-group">
									<label>Địa chỉ</label> <input class="form-control"
										placeholder="Địa chỉ" type="text" ng-model="diachi">
								</div></th>
							<th><div class="form-group">
									<label>Mức lương</label> <input class="form-control"
										placeholder="Mức lương" type="text" ng-model="mucluong">
								</div></th>
							<th><div class="form-group">
									<label>Mô tả</label>
									<textarea class="form-control" placeholder="Mô tả" rows="3"
										ng-model="mota"></textarea>
								</div></th>
							<th><button class="btn btn-primary">
									<i class="glyphicon glyphicon-pencil"></i> Edit
								</button></th>
							<th>Xóa</th>

							</form>


						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="x in vieclam">
							<td>{{x.idvieclam}}</td>
							<td>{{x.tieude}}</td>
							<td>{{x.tencongty}}</td>
							<td>{{x.thumbnail}}</td>
							<td>{{x.diachi}}</td>
							<td>{{x.mucluong}}</td>
							<td>{{x.mota}}</td>
							<td><button class="btn btn-info btn-sm"
									ng-click="editt(x.idvieclam,x.tieude,x.tencongty,x.diachi,x.mucluong,x.mota)">Sửa</button></td>
							<td><button class="btn btn-info btn-sm"
									ng-click="deletet(x.idvieclam)">Xóa</button></td>

						</tr>
					</tbody>
				</table>
			</div>
	</div>

	<br>


	<div style="margin: 50px auto">
		<ul class="pagination justify-content-center">
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span> <span
					class="sr-only">Previous</span>
			</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">4</a></li>
			<li class="page-item"><a class="page-link" href="#">5</a></li>
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
					class="sr-only">Next</span>
			</a></li>
		</ul>
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
												'http://localhost:8080/Test1/rest/allvieclam')
												.query(function(data) {
													return data;
												});
									}
									;

									allvieclam();

									$scope.update = function() {
										Vieclam = $resource(
												"http://localhost:8080/Test1/rest/updatevieclam/:idvieclam",
												{},
												{
													save : {
														method : 'PUT',
														params : {
															idvieclam : '@idvieclam'
														}
													}
												});
										var vieclam = {};

										vieclam.idvieclam = $scope.id;
										vieclam.tieude = $scope.tieude;
										vieclam.tencongty = $scope.tencongty;
										vieclam.thumbnail = $scope.thumbnail;
										vieclam.diachi = $scope.diachi;
										vieclam.mucluong = $scope.mucluong;
										vieclam.mota = $scope.mota;
										Vieclam.save({idvieclam:$scope.id},vieclam);
										window.location = "http://localhost:8080/Test1/quanlyvieclam";
									};

									$scope.editt = function(idvieclam, tieude,
											tencongty, diachi, mucluong, mota) {
										$scope.id = (idvieclam);
										$scope.tieude = (tieude);
										$scope.tencongty = (tencongty);
										$scope.diachi = (diachi);
										$scope.mucluong = (mucluong);
										$scope.mota = (mota);

									};
									
									$scope.deletet = function(idvieclam) {
										$scope.id = (idvieclam);
										Vieclam = $resource(
												"http://localhost:8080/Test1/ddelete/:idvieclam",
												{},
												{
													delete1 : {
														method : 'DELETE',
														params : {
															idvieclam : '@idvieclam'
														}
													}
												});
										var vieclam = {};

										vieclam.idvieclam = $scope.id;
										Vieclam.delete1({
											idvieclam : $scope.id
										}, vieclam);
										window.location = "http://localhost:8080/Test1/quanlyvieclam";
									};

									
								} ]);
	</script>

</body>



</html>