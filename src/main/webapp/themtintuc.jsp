<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>

<head>
<meta charset="utf-8">
<title>Thêm tin tức</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-resource.min.js"></script>

</head>
<body ng-app="demo1" ng-controller="Hello1">
	<%@include file="dashbar.jsp"%>

	<form style="margin-top: 50px; margin-left: 150px;" name="personForm" ng-submit="create()">
		<div class="col-md-10">
			<div class="panel-title">
				<h1>Thêm tin tức</h1>
			</div>

			<div style="margin-top: 40px" class="panel-body">
				<form>
					<fieldset class="col-sm-6">

						<div class="form-group">
							<label>Tiêu đề</label> <input class="form-control"
								placeholder="Tiêu đề" type="text" ng-model="tieude">
						</div>
						<div class="form-group">
							<label>Ảnh</label> <input class="form-control"
								placeholder="Tên công ty" type="text" ng-model="thumbnail">

						</div>

						<div class="form-group">
							<label>Người đăng</label> <input class="form-control"
								placeholder="Địa chỉ" type="text" ng-model="nguoipost">
						</div>
						<div class="form-group">
							<label>Ngày đăng</label> <input class="form-control"
								placeholder="Mức lương" type="text" ng-model="ngaypost">
						</div>

						<div class="form-group">
							<label>Nội dung vắn tắt</label>
							<textarea class="form-control" placeholder="Mô tả" rows="3"
								ng-model="noidungvantat"></textarea>
						</div>
						<div class="form-group">
							<label>Nội dung chính</label> <input class="form-control"
								placeholder="Category ID" type="text" ng-model="noidungchinh">
						</div>
						<div class="form-group">
							<label>Category ID</label> <input class="form-control"
								placeholder="Category ID" type="text" ng-model="categoryid">
						</div>

						<div>
							<button class="btn btn-primary" id="Create">
								Thêm tin tức</button>
						</div>
					</fieldset>
				</form>
			</div>
		</div>


	</form>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>

	<%@ include file="footer.jsp"%>



	  <script>
  var app= angular.module('demo1', ['ngResource']);
  

   app.controller('Hello1', ['$scope', '$resource',function($scope,$resource) {
       
	        
       $scope.create = function(){
       	Tintuc = $resource(
       		    "http://localhost:8080/Test1/rest/addtintuc",
       		    {},
       		    {addtintuc: {method:'POST',isArray:false}}
       	);
       	
       	var tintuc = {};
   		
       	tintuc.tieude = $scope.tieude;
       	tintuc.thumbnail = $scope.thumbnail;
       	tintuc.nguoipost = $scope.nguoipost;
       	tintuc.ngaypost = $scope.ngaypost;    	
       	tintuc.noidungvantat = $scope.noidungvantat;
       	tintuc.noidungchinh = $scope.noidungchinh;
       	tintuc.categoryid = $scope.categoryid;
       	

	  Tintuc.addtintuc(tintuc);	  
	  alert('Thêm thành công');
	  window.location="http://localhost:8080/Test1/quanlytintuc";
 		
       };

   }]);
</script>


</body>

</html>