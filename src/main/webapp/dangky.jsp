<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<title>Đăng ký</title>
<script src='https://www.google.com/recaptcha/api.js'></script>

</head>
<%@include file="header.jsp" %>

<%
	if(user != null){
		request.getRequestDispatcher("trangCaNhan").forward(request, response);
	}
%>

<body  class="bg-dark">
	<div class="container">
		<div class="card card-register mx-auto mt-5">
			<div class="card-header"><marquee >Đăng ký</marquee></div>
			<div class="card-body">
				
			
				  <form method="POST" action="dangKy" >    
				  					                            
                                        <div class="form-group">

                                            <label><b>Tên đăng nhập</b></label>
                                            <input type="text" minlength="5" required  name="userName" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label><b>Mật khẩu</b></label>
                                            <input type="text" required name="password" class="form-control">

                                        </div>
                                       
                                        <div class="form-group">
                                            <label><b>Nhập lại mật khẩu</b></label>
                                            <input type="text" min="0" max="23" required name="replayPassword" class="form-control">

                                        </div>
                                       

                                        
				<div>
					<button class="btn btn-success btn-lg" type="submit"><a>Đăng ký</a></button>
				</div>
                                    </form>
				
			</div>
		</div>
	</div>
	
	<%@include file="footer.jsp" %>
</body>


</html>