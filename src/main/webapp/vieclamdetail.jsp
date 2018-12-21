
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 

<html >

  <head>
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-resource.min.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Smartweb</title>


<link href="<c:url value="/resources/css/modern-business.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/vendors/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
   
</head>

 <body ng-app="demo1" ng-controller="Hello1">
 <%@ include file="header.jsp" %>


{{tintuc.tieude}}
 <a href="#"></a>	

    <!-- Page Content -->
    <div class="container" >

      <!-- Page Heading/Breadcrumbs -->
     

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="vieclamview">Về trang tin</a>
        </li>
        <li class="breadcrumb-item active">Chi tiết việc làm</li>
      </ol>

      <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-8">

          <!-- Preview Image -->
          <img class="img-fluid rounded" src="http://placehold.it/900x300" alt="">

          <hr>
          <p >
<td> <h1 class="mt-4 mb-3">
        <small>
          <a href="#">${vieclam.tieude }</a>
        </small>
      </h1>
      
</td>
          <!-- Date/Time -->
           <a class="breadcrumb">Tên công ty: ${vieclam.tencongty }</a>

          </p>

          <!-- Post Content -->
          <p class="breadcrumb">Mô tả công việc: ${vieclam.mota }</p>
          <p class="breadcrumb">Mức lương: ${vieclam.mucluong }</p>
          <p class="breadcrumb">Địa chỉ: ${vieclam.diachi }</p>

         

        </div>

        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">

          <!-- Search Widget -->
          <div class="card mb-4">
            <h5 class="card-header">Tìm kiếm</h5>
            <div class="card-body">
              <div class="input-group">
                <input type="text" class="form-control" placeholder="Nhập...">
                <span class="input-group-btn">
                  <button class="btn btn-secondary" type="button">Tìm kiếm!</button>
                </span>
              </div>
            </div>
          </div>

          <!-- Categories Widget -->
          <div class="card my-4">
            <h5 class="card-header">Mục khác</h5>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">Tìm việc</a>
                    </li>
                    <li>
                      <a href="#">Đăng tin tuyển việc</a>
                    </li>
                    <li>
                      <a href="#">Đăng ký hồ sơ</a>
                    </li>
                  </ul>
                </div>
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">Xem thêm tin tức</a>
                    </li>
                    <li>
                      <a href="#"></a>
                    </li>
                    <li>
                      <a href="#"></a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>

          <!-- Side Widget -->
         
            <div >
              <button class="btn btn-danger btn-lg">Làm hồ sơ ngay</button>
            </div>
          

        

      
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->

<script>
	var app= angular.module('demo1', ['ngResource']);
	   app.controller('Hello1', ['$scope', '$resource',function($scope,$resource,Vieclam) {  
		   function Gettintuc(){
		        $scope.vieclam = $resource('http://localhost:8080/SmartWeb/getvl/:idvieclam'
		        ).query(function(data){return data;});
		    };
		  
	       
	       
	       
	   }]);
	</script>
  </body>

</html>
