
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   
<html lang="en">

  <head>
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-resource.min.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SMARTWEB</title>

    <!-- Bootstrap core CSS -->
   <link href="<c:url value="/resources/css/modern-business.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/vendors/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
  
  </head>

  <body ng-app="demo1" ng-controller="Hello1">

    <%@ include file="header.jsp"%>

    <!-- Page Content -->
    <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">Việc làm 
        <small>24/7</small>
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="in">Home</a>
        </li>
        <li class="breadcrumb-item active">Tin tức tuyển dụng</li>
      </ol>
     

<div class="content-box-large">
  				<div class="panel-heading">
					<div class="panel-title"></div>
				</div>
  				<div class="panel-body">
  					<div class="table-responsive">
  						<table class="table">
			              <thead>
			                <tr>
			                  <th>Danh sách tuyển dụng</th>
			                  <th></th>
			                  <th></th>
			                  <th></th>
			                </tr>
			              </thead>
			              <tbody ng-repeat='x in vieclam'>
			                <tr>
			                  <td>
			                  <a href="<c:url value='/vieclam{{x.idvieclam}}' />" >{{x.tieude}}</a>
			                  <p>{{x.tencongty}}</p>
			                  </td>
			                  <td></td>
			                  <td>
			                  <a>Mức lương: {{x.mucluong}}</a>
			                  <p>Địa chỉ: {{x.diachi}}</p>
			                  </td>
			                  <td></td>
			                </tr>
			               
			              </tbody>
			            </table>
  					</div>
  				</div>
  			</div>
      <!-- Pagination -->
      <ul class="pagination justify-content-center">
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Previous">
            <span aria-hidden="true">&laquo;</span>
            <span class="sr-only">Previous</span>
          </a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">1</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">2</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">3</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Next">
            <span aria-hidden="true">&raquo;</span>
            <span class="sr-only">Next</span>
          </a>
        </li>
      </ul>

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
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script>
var app= angular.module('demo1', ['ngResource']);
app.controller('Hello1', ['$scope', '$resource',function($scope,$resource,Vieclam) {  
	   function fetchAllPersons(){
	        $scope.vieclam = $resource('http://localhost:8080/SmartWeb/rest/vieclam'
	        ).query(function(data){return data;});
	    };
	    fetchAllPersons();
	    
	   
    
    
    
}]);
			
	
	</script>
  </body>

</html>
