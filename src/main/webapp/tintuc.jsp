
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<html >

  <head>
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-resource.min.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Smartweb</title>

    <!-- Bootstrap core CSS -->
  
<link href="<c:url value="/resources/css/modern-business.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/vendors/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
   
  </head>

  <body ng-app="demo1" ng-controller="Hello1" style="margin-top:15px">

<%@ include file="header.jsp"%>
  <!-- Navigation -->
     

	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-4 mb-3">
			TIN TỨC <small>Hà Nội</small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="chitiettintuc.jsp">Home</a></li>
			<li class="breadcrumb-item active">Tin tức</li>
		</ol>



<div class="row">

		<table class="col-lg-8" >
		
		<tr  class="card mb-4" ng-repeat="x in tintuc">
			  
              <td class="media mt-4" style="height:110px;">
                <img style="width: 80px; height:80px; margin-left:20px" src="{{x.thumbnail}}" alt="">
                <div class="media-body">
                  <a href="#"><h6 class="mt-0">{{x.tieude}}</h6></a>
                  <p>{{x.noidungvantat}}</p>
                  <p>{{x.ngaypost| date : 'medium'}}</p>
                </div>
              </td>
              
			  
              
			</tr>

		</table>
	
	
<!-- Comments Form -->
          

        

        <!-- Sidebar Widgets Column -->
        <div class="col-lg-4">

          <!-- Search Widget -->
          <div class="card mb-4">
            <h5 class="card-header">Tuyển dụng hấp dẫn</h5>
            <div class="card-body">
              <p></p>
            </div>
          </div>

          <!-- Categories Widget -->
          <div class="card my-4">
            <h5 class="card-header">Hồ sơ hot</h5>
            <div class="card-body">
              <div class="row">
                
               
              </div>
            </div>
          </div>
        
	</div>
</div>
</div>



	<!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Smartweb</p>
    </div>
    <!-- /.container -->
  </footer>
<script>
	var app= angular.module('demo1', ['ngResource']);
	   app.controller('Hello1', ['$scope', '$resource',function($scope,$resource,Tintuc) {  
		   function fetchAllPersons(){
		        $scope.tintuc = $resource('http://localhost:8080/Test1/rest/alltintuc'
		        ).query(function(data){return data;});
		    };
		    fetchAllPersons();
		    
		   
	       
	       
	       
	   }]);
	</script>
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
