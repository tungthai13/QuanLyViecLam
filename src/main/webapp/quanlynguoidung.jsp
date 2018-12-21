<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>

<head>
<meta charset="utf-8">
<title>Quản lý người dùng</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-resource.min.js"></script>


<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<link href="resources/css/styles.css" rel="stylesheet">

</head>

<body ng-app="demo1" ng-controller="Hello1" style="overflow: auto;">

	<%@include file="dashbar.jsp"%>

	<div class="col-md-10">
		<div>
			<h1>Quản lý người dùng</h1>
		</div>
		<button style="margin-top: 20px; width: 60px; height: 40px"
			class="btn btn-info">
			<i class="glyphicon glyphicon-refresh"></i> Refresh
		</button>
		
			<div style="margin-top: 20px;"panel-body">
				<table cellpadding="0" cellspacing="0" border="0"
					class="table table-striped table-bordered" id="example"
					style="overflow: auto;">
					
					<thead>
						<tr>
<form name="personForm" ng-submit="update()">
							<th>
								<div class="form-group">
									<label>ID</label> <input class="form-control" ng-model="id"
										placeholder="ID user" type="text" ng-disabled="!edit" required>
									<span
										ng-show="personForm.id.$touched && personForm.id.$invalid">The
										name is required.</span>
								</div>

							</th>
							<th><div class="form-group">
									<label>Username</label> <input class="form-control"
										placeholder="Username" type="text" ng-model="username">
								</div></th>
								<th><div class="form-group">
									<label>Password</label> <input class="form-control"
										placeholder="Password" type="text" ng-model="password">
								</div></th>
								<th><div class="form-group">
									<label>Họ tên</label> <input class="form-control"
										placeholder="Họ tên" type="text" ng-model="hoten">
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
									<label>Vị trí ứng tuyển</label> <input class="form-control"
										placeholder="Vị trí ứng tuyển" type="text" ng-model="vitriungtuyen">
								</div></th>
								<th><div class="form-group">
									<label>Ảnh</label> <input class="form-control"
										placeholder="Ảnh" type="text" ng-model="anh">
								</div></th>
								<th><div class="form-group">
									<label>Skype</label> <input class="form-control"
										placeholder="Skype" type="text" ng-model="skype">
								</div></th>
								<th><div class="form-group">
									<label>Facebook</label> <input class="form-control"
										placeholder="Facebook" type="text" ng-model="facebook">
								</div></th>
								<th><div class="form-group">
									<label>Quê quán</label> <input class="form-control"
										placeholder="Quê quán" type="text" ng-model="quequan">
								</div></th>
								<th><div class="form-group">
									<label>Học vấn</label> <input class="form-control"
										placeholder="Học vấn" type="text" ng-model="hocvan">
								</div></th>
								<th><div class="form-group">
									<label>Trường</label> <input class="form-control"
										placeholder="Trường" type="text" ng-model="truong">
								</div></th>
								<th><div class="form-group">
									<label>Khoa</label> <input class="form-control"
										placeholder="Khoa" type="text" ng-model="khoa">
								</div></th>
								<th><div class="form-group">
									<label>Năm tốt nghiệp</label> <input class="form-control"
										placeholder="Năm tốt nghiệp" type="text" ng-model="namtotnghiep">
								</div></th>
								<th><div class="form-group">
									<label>Kỹ năng</label> <input class="form-control"
										placeholder="Kỹ năng" type="text" ng-model="kynang">
								</div></th>
							<th><div class="form-group">
									<label>Kinh nghiệm cộng tác</label> <input class="form-control"
										placeholder="Kinh nghiệm công tác" type="text" ng-model="kinhnghiemcongtac">

								</div></th>
							<th><div class="form-group">
									<label>Đã kích hoạt</label> <input class="form-control"
										placeholder="Đã kích hoạt" type="text" ng-model="dakichhoat">
								</div></th>
							<th><div class="form-group">
									<label>Ghi chú</label> <input class="form-control"
										placeholder="Ghi chú" type="text" ng-model="ghichu">
								</div></th>
							<th><div class="form-group">
									<label>CV</label> <input class="form-control"
										placeholder="CV" type="text" ng-model="cv">
								</div></th>
							
							<th><button class="btn btn-primary">
									<i class="glyphicon glyphicon-pencil"></i> Edit
								</button></th>
							<th>Xóa</th>

							</form>


						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="x in user">
							<td>{{x.idUser}}</td>
							<td>{{x.userName}}</td>
							<td>{{x.password}}</td>
							<td>{{x.hoTen}}</td>
							<td>{{x.email}}</td>
							<td>{{x.sdt}}</td>
							<td>{{x.viTriUngTuyen}}</td>
							<td>{{x.anh}}</td>
							<td>{{x.skype}}</td>
							<td>{{x.facebook}}</td>
							<td>{{x.queQuan}}</td>
							<td>{{x.hocVan}}</td>
							<td>{{x.truong}}</td>
							<td>{{x.khoa}}</td>
							<td>{{x.namTotNghiep}}</td>
							<td>{{x.kyNang}}</td>
							<td>{{x.kinhNghiemCongTac}}</td>
							<td>{{x.daKichHoat}}</td>
							<td>{{x.ghiChu}}</td>
							<td>{{x.cv}}</td>
							<td><button class="btn btn-info btn-sm"
									ng-click="editt(x.idUser,x.userName,x.password,x.hoTen,x.email,x.sdt,x.viTriUngTuyen,x.anh,x.skype,
									x.facebook,x.queQuan,x.hocVan,x.truong,x.khoa,x.namTotNghiep,x.kyNang,x.kinhNghiemCongTac,
									x.daKichHoat,x.ghiChu,x.cv)">Sửa</button></td>
							<td><button class="btn btn-info btn-sm"
									ng-click="deletet(x.idUser)">Xóa</button></td>

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
								function($scope, $resource, User) {
									function alluser() {
										$scope.user = $resource(
												'http://localhost:8080/Test1/rest/users')
												.query(function(data) {
													return data;
												});
									}
									;

									alluser();

									$scope.update = function() {
										User = $resource(
												"http://localhost:8080/Test1/rest/updateuser/:iduser",
												{},
												{
													save : {
														method : 'PUT',
														params : {
															iduser : '@iduser'
														}
													}
												});
										var user = {};

										user.iduser = $scope.id;
										user.userName = $scope.username;
										user.password = $scope.password;
										user.hoTen = $scope.hoten;
										user.email = $scope.email;
										user.sdt = $scope.sdt;
										user.viTriUngTuyen = $scope.vitriungtuyen;
										user.anh = $scope.anh;
										user.skype = $scope.skype;
										user.facebook = $scope.facebook;
										user.queQuan = $scope.quequan;
										user.hocVan = $scope.hocvan;
										user.truong = $scope.truong;
										user.khoa = $scope.khoa;
										user.namTotNghiep = $scope.namtotnghiep;
										user.kyNang = $scope.kynang;
										user.kinhNghiemCongTac = $scope.kinhnghiemcongtac;
										user.daKichHoat = $scope.dakichhoat;
										user.ghiChu = $scope.ghichu;
										user.cv = $scope.cv;
									
										User.save({iduser:$scope.id},user);
										window.location = "http://localhost:8080/Test1/quanlynguoidung";
									};

									$scope.editt = function(iduser, username,
											password, hoten, email, sdt,vitriungtuyen,anh,skype,facebook,quequan,hocvan,truong,khoa,namtotnghiep,kynang,kinhnghiemcongtac,dakichhoat,ghichu,cv) {
										$scope.id = (iduser);
										$scope.username = (username);
										$scope.password = (password);
										$scope.hoten = (hoten);
										$scope.email = (email);
										$scope.sdt = (sdt);
										$scope.vitriungtuyen = (vitriungtuyen);
										$scope.anh = (anh);
										$scope.skype = (skype);
										$scope.facebook = (facebook);
										$scope.quequan = (quequan);
										$scope.hocvan = (hocvan);
										$scope.truong = (truong);
										$scope.khoa = (khoa);
										$scope.namtotnghiep = (namtotnghiep);
										$scope.kynang = (kynang);
										$scope.kinhnghiemcongtac = (kinhnghiemcongtac);
										$scope.dakichhoat = (dakichhoat);
										$scope.ghichu = (ghichu);
										$scope.cv = (cv);

									};
									
									$scope.deletet = function(iduser) {
										$scope.id = (iduser);
										User = $resource(
												"http://localhost:8080/Test1/ddelete2/:iduser",
												{},
												{
													delete1 : {
														method : 'DELETE',
														params : {
															iduser : '@iduser'
														}
													}
												});
										var user = {};

										user.idUser = $scope.id;
										User.delete1({
											iduser : $scope.id
										}, user);
										window.location = "http://localhost:8080/Test1/quanlynguoidung";
										
									};
									
									
									
								} ]);

	</script>

</body>



</html>