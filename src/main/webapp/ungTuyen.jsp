<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<title>Ứng tuyển</title>
<script src='https://www.google.com/recaptcha/api.js'></script>

</head>
<%@include file="header.jsp" %>

<body  class="bg-dark">
	<div class="container">
		<div class="card card-register mx-auto mt-5">
			<div class="card-header"><marquee >Nhập Thông Tin Ứng Tuyển</marquee></div>
			<div class="card-body">
			
			  <%
			  
                                 String idViecLam=request.getParameter("idViecLam");
                                 request.setAttribute("idViecLam", idViecLam);
                                        
                                
                                     
                                
                                    %>
			
				  <form method="POST" action="ungTuyenKhongDangNhap" > 
				  						<div class="form-group">
                                           
                                            <input minlength="5" type="hidden" value="<%=idViecLam %>" name="idViecLam" class="form-control">

                                        </div>      
				  						<div class="form-group">
                                           
                                            <input minlength="5" type="hidden" value="<%=idViecLam %>" name="idViecLam" class="form-control">

                                        </div>                              
                                        <div class="form-group">

                                            <label><b>Họ tên</b></label>
                                            <input type="text" minlength="5" required  name="hoTen" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label><b>Ngày sinh</b></label>
                                            <input type="date" required name="ngaySinh" class="form-control">

                                        </div>
                                       
                                        <div class="form-group">
                                            <label><b>Email</b></label>
                                            <input type="text" min="0" max="23" required name="email" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label><b>Số điện thoại</b></label>
                                            <input type="text" required  name="sdt" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label><b>Nội dung ứng tuyển</b></label>
                                            <input type="float" required name="noiDungUngTuyen" class="form-control">

                                        </div>
                                        

                                        
				<div>
					<button class="btn btn-success btn-lg" type="submit"><a>Ứng tuyển</a></button>
				</div>
                                    </form>
				
			</div>
		</div>
	</div>
	
	<%@include file="footer.jsp" %>
</body>


</html>