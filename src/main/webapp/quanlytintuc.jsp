<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>

<head>
<meta charset="utf-8">
<title>Quản lý tin tức</title>

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
			<h1>Quản lý tin tức</h1>
		</div>
		<button style="margin-top: 20px; width: 60px; height: 40px"
			class="btn btn-info" ng-click="alltintuc()">
			<i class="glyphicon glyphicon-refresh"></i> Refresh
		</button>
		
		<button style="margin-top: 20px; width: 120px; height: 40px;margin-left:20px;"
			class="btn btn-info">
			<a href="themtintuc.jsp" style="color:white" ><i class="glyphicon glyphicon-refresh"></i> Thêm tin tức</a>
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
									
								</div>

							</th>
							<th><div class="form-group">
									<label>Tiêu đề</label> <input class="form-control"
										placeholder="Tiêu đề" type="text" ng-model="tieude">
								</div></th>
								
							<th><div class="form-group">
									<label>Ảnh</label> <input class="form-control"
										placeholder="Ảnh" type="text" ng-model="thumbnail">
								</div></th>
								
							<th><div class="form-group">
									<label>Người đăng</label> <input class="form-control"
										placeholder="Người đăng" type="text" ng-model="nguoidang">

								</div></th>
							
							<th><div class="form-group">
									<label>Ngày đăng</label> <input class="form-control"
										placeholder="Ngày đăng" type="text" ng-model="ngaydang">
								</div></th>
							<th><div class="form-group">
									<label>Nội dung vắn tắt</label> <input class="form-control"
										placeholder="Nội dung vắn tắt" type="text" ng-model="noidungvantat">
								</div></th>
							<th><div class="form-group">
									<label>Nội dung chính</label>
									<textarea class="form-control" placeholder="Nội dung chính" rows="3"
										ng-model="noidungchinh"></textarea>
								</div></th>
								<th><div class="form-group">
									<label>Category ID</label>
									<textarea class="form-control" placeholder="Category ID" rows="3"
										ng-model="categoryid"></textarea>
								</div></th>
								
							<th><button class="btn btn-primary">
									<i class="glyphicon glyphicon-pencil"></i> Edit
								</button></th>
							<th>Xóa</th>

							</form>


						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="x in tintuc">
							<td>{{x.idtintuc}}</td>
							<td>{{x.tieude}}</td>
							<td>{{x.thumbnail}}</td>
							<td>{{x.nguoipost}}</td>
							<td>{{x.ngaypost}}</td>
							<td>{{x.noidungvantat}}</td>
							<td>{{x.noidungchinh}}</td>
							<td>{{x.categoryid}}</td>
							 <td><button class="btn btn-info btn-sm"
									ng-click="editt(x.idtintuc,x.tieude,x.thumbnail,x.nguoipost,x.ngaypost,x.noidungvantat,x.noidungchinh,x.categoryid)">Sửa</button></td>
							<td><button class="btn btn-info btn-sm"
									ng-click="deletet(x.idtintuc)">Xóa</button></td> 

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
							function($scope, $resource, Tintuc) {
								function alltintuc() {
									$scope.tintuc = $resource(
											'http://localhost:8080/Test1/rest/alltintuc')
											.query(function(data) {
												return data;
											});
								}
								;

								alltintuc();
								
								$scope.update = function() {
									Tintuc = $resource(
											"http://localhost:8080/Test1/rest/updatetintuc/:idtintuc",
											{},
											{
												save : {
													method : 'PUT',
													params : {
														idtintuc : '@idtintuc'
													}
												}
											});
									var tintuc = {};

									tintuc.idtintuc = $scope.id;
									tintuc.tieude = $scope.tieude;
									tintuc.thumbnail = $scope.thumbnail;
									tintuc.nguoipost = $scope.nguoidang;							
									tintuc.ngaypost = $scope.ngaydang;
									tintuc.noidungvantat = $scope.noidungvantat;
									tintuc.noidungchinh = $scope.noidungchinh;
									tintuc.categoryid = $scope.categoryid;
									Tintuc.save({idtintuc:$scope.id},tintuc);
									window.location = "http://localhost:8080/Test1/quanlytintuc";
								};

								$scope.editt = function(idtintuc, tieude,
										thumbnail,nguoidang, ngaydang, noidungvantat, noidungchinh,categoryid) {
									$scope.id = (idtintuc);
									$scope.tieude = (tieude);
									$scope.thumbnail = (thumbnail);
									$scope.nguoidang = (nguoidang);
									$scope.ngaydang = (ngaydang);
									$scope.noidungvantat = (noidungvantat);
									$scope.noidungchinh = (noidungchinh);
									$scope.categoryid = (categoryid);

								};
								
								$scope.deletet = function(idtintuc) {
									$scope.id = (idtintuc);
									Tintuc = $resource(
											"http://localhost:8080/Test1/ddelete1/:idtintuc",
											{},
											{
												delete1 : {
													method : 'DELETE',
													params : {
														idtintuc : '@idtintuc'
													}
												}
											});
									var tintuc = {};

									tintuc.idtintuc = $scope.id;
									Tintuc.delete1({
										idtintuc : $scope.id
									}, tintuc);
									window.location = "http://localhost:8080/Test1/quanlytintuc";
									alltintuc();
								};

							
								
								
							} ]);
							
	</script>

</body>



</html>