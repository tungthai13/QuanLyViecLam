<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
      <title>Đăng nhập</title>
   </head>
   
   <%@include file="header.jsp" %>
   
   
   <body class="bg-dark">
      <div class="container">
         <div class="card card-login mx-auto mt-5" style="max-width: 25rem">
            <div class="card-header">Login</div>
            <div class="card-body">
               <form action="dangnhap" method="post">
                  <div class="form-group">
                     <label for="username">Username</label>
                     <input class="form-control" id="username" name="username" type="text" placeholder="Enter Username">
                  </div>
                  <div class="form-group">
                     <label for="password">Password</label>
                     <input class="form-control" id="password" name="password" type="password" placeholder="Enter Password">
                  </div>
                  <div class="form-group">
                     <div class="form-check">
                        <label class="form-check-label">
                        <input class="form-check-input" type="checkbox" name="remember-me"> Remember Password</label>
                     </div>
                  </div>
                  <input type="hidden" name="" value="">
                  <input type="submit" class="btn btn-primary btn-block" value="Login">
               </form>
              
               <div class="text-center">
                  <a class="d-block small mt-3" href="dangky.jsp">Register an Account</a>
                  <a class="d-block small" href="quenmatkhau.jsp">Forgot Password?</a>
               </div>
            </div>
         </div>
      </div>
      
      <%@include file="footer.jsp" %>
   </body>
</html>