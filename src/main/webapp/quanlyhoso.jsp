<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>

<head>
<meta charset="utf-8">
<title>Quản lý hồ sơ</title>

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
			<h1>Quản lý hồ sơ</h1>
		</div>
		<button style="margin-top: 20px; width: 60px; height: 40px"
			class="btn btn-info" ng-click="allhoso()">
			<i class="glyphicon glyphicon-refresh"></i> Refresh
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
									<label>Họ tên</label> <input class="form-control"
										placeholder="Họ tên" type="text" ng-model="hoten">
								</div></th>
								
							<th><div class="form-group">
									<label>Ngày sinh</label> <input class="form-control"
										placeholder="dd/mm/yyyy" type="text" ng-model="ngaysinh">
								</div></th>
								
							<th><div class="form-group">
									<label>Email</label> <input class="form-control"
										placeholder="Email" type="text" ng-model="email">

								</div></th>
							
							<th><div class="form-group">
									<label>SĐT</label> <input class="form-control"
										placeholder="SĐT" type="text" ng-model="sdt">
								</div></th>
							<th><div class="form-group">
									<label>cv</label> <input class="form-control"
										placeholder="CV" type="text" ng-model="cv">
								</div></th>
							<th><div class="form-group">
									<label>ID user</label>
									<textarea class="form-control" placeholder="ID user" rows="3"
										ng-model="iduser"></textarea>
								</div></th>
								<th><div class="form-group">
									<label>Nội dung ứng tuyển</label>
									<textarea class="form-control" placeholder="Nội dung ứng tuyển" rows="3"
										ng-model="noidungungtuyen"></textarea>
								</div></th>
								<th><div class="form-group">
									<label>ID việc làm</label>
									<textarea class="form-control" placeholder="ID việc làm" rows="3"
										ng-model="idvieclam"></textarea>
								</div></th>
								
							<th><button class="btn btn-primary">
									<i class="glyphicon glyphicon-pencil"></i> Edit
								</button></th>
							<th>Xóa</th>

							</form>


						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="x in hoso">
							<td>{{x.idhoso}}</td>
							<td>{{x.hoten}}</td>
							<td>{{x.ngaysinh}}</td>
							<td>{{x.email}}</td>
							<td>{{x.sdt}}</td>
							<td>{{x.cv}}</td>
							<td>{{x.iduser}}</td>
							<td>{{x.noidungungtuyen}}</td>
							<td>{{x.idvieclam}}</td>
							 <td><button class="btn btn-info btn-sm"
									ng-click="editt(x.idhoso,x.hoten,x.ngaysinh,x.email,x.sdt,x.cv,x.iduser,x.noidungungtuyen,x.idvieclam)">Sửa</button></td>
							<td><button class="btn btn-info btn-sm"
									ng-click="deletet(x.idhoso)">Xóa</button></td> 

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
							function($scope, $resource, Hoso) {
								function allhoso() {
									$scope.hoso = $resource(
											'http://localhost:8080/Test1/rest/allhoso')
											.query(function(data) {
												return data;
											});
								}
								;

								allhoso();
								
								 $scope.update = function() {
									Hoso = $resource(
											"http://localhost:8080/Test1/rest/updatehoso/:idhoso",
											{},
											{
												save : {
													method : 'PUT',
													params : {
														idhoso : '@idhoso'
													}
												}
											});
									var hoso = {};

									hoso.idhoso = $scope.id;
									hoso.hoten = $scope.hoten;
									hoso.ngaysinh = $scope.ngaysinh;
									hoso.email = $scope.email;							
									hoso.sdt = $scope.sdt;
									hoso.cv = $scope.cv;
									hoso.iduser = $scope.iduser;
									hoso.noidungungtuyen = $scope.noidungungtuyen;
									hoso.idvieclam = $scope.idvieclam;
									Hoso.save({idhoso:$scope.id},hoso);
									window.location = "http://localhost:8080/Test1/quanlyhoso";
									allhoso();
								};

								$scope.editt = function(idhoso, hoten,
										ngaysinh,email, sdt, cv, iduser,noidungungtuyen,idvieclam) {
									$scope.id = (idhoso);
									$scope.hoten = (hoten);
									$scope.ngaysinh = (ngaysinh);
									$scope.email = (email);
									$scope.sdt = (sdt);
									$scope.cv = (cv);
									$scope.iduser = (iduser);
									$scope.noidungungtuyen = (noidungungtuyen);
									$scope.idvieclam = (idvieclam);

								};
								
								$scope.deletet = function(idhoso) {
									$scope.id = (idhoso);
									Hoso = $resource(
											"http://localhost:8080/Test1/ddelete3/:idhoso",
											{},
											{
												delete1 : {
													method : 'DELETE',
													params : {
														idhoso : '@idhoso'
													}
												}
											});
									var hoso = {};

									hoso.idhoso = $scope.id;
									Hoso.delete1({
										idhoso : $scope.id
									}, hoso);
									window.location = "http://localhost:8080/Test1/quanlyhoso";
									allhoso();
								};
 
							
								
								
							} ]);
							
	</script>

</body>



</html>