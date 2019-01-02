<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.NguoiDung" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="resources/css/modern-business.css" rel="stylesheet">
<link href="<c:url value="/resources/css/modern-business.css"/>">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">


<nav
	class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="trangchu.jsp">SMARTWEB</a>
		<div class="collapse navbar-collapse" id="navbarResponsive"
			style="margin-left: 50px">
			<ul class="navbar-nav" style="margin-left: 50px; margin-top: 15px">
				<form action="timKiemViecLam">
					<li class="nav-item">
						<div class="input-group">

							<input type="text" name="timKiem" class="form-control"
								placeholder="Nhập..."> <span class="input-group-btn">
								<button class="btn btn-secondary" type="submit">Tìm
									kiếm</button>
							</span>

						</div>
					</li>
				</form>
				<li class="nav-item"><a class="nav-link" href="vieclam.jsp">Việc
						tìm người</a></li>
						
				<li class="nav-item"><a class="nav-link" href="tintuc.jsp">Tin tức</a></li>
				<% 
					NguoiDung user = (NguoiDung) request.getSession().getAttribute("user");
					if (user == null) {
				%>
				<li class="nav-item"><a class="nav-link" href="dangky.jsp">Đăng
						Ký</a></li>
				<li class="nav-item"><a class="nav-link" href="dangnhap.jsp">Đăng
						nhập</a></li>
				<% } else { %>
					<li class="nav-item"><a class="nav-link" href="#">Xin chào <%=user.getUserName()%></a></li>
					<li class="nav-item"><a class="nav-link" href="DangXuat">Đăng xuất</a></li>
				<% } %>
				<sec:authorize access="isAuthenticated()">
					<li class="nav-item"><a class="nav-link" href="#"><sec:authentication
								property="principal.username" /></a></li>
				</sec:authorize>
			</ul>
		</div>
	</div>
</nav>
