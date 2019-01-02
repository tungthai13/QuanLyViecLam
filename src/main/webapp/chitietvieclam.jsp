	<%@page import="model.ViecLam"%>
<%@page import="java.util.List"%>
<%@page import="dao.ViecLamDAO"%>
<%@page import="dao.TinTucDAO"%>
<%@page import="model.TinTuc"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page session="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<html>

<head>

<meta charset="utf-8">

<title>Smartweb</title>


<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-resource.min.js"></script>
	


</head>


<body style="margin-top: 30px">

	<%@ include file="header.jsp" %>

	<div class="container" style="margin-top:10px">


		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="trangchu.jsp">Home</a></li>
			<li class="breadcrumb-item"><a href="vieclam.jsp">Việc làm</a></li>
			<li class="breadcrumb-item active">Chi tiết việc làm</li>
		</ol>

		<div class="row">
		<%
					ViecLam chitietvieclam = (ViecLam) request.getAttribute("chitietvieclam");
		
		%>
		

			<div class="col-md-8">

				<img class="img-fluid rounded" src="<%=chitietvieclam.getThumbnail() %>">
					
				<hr>
				<p>
					<td>
						<h1 class="mt-4 mb-3">
							<small> <b><%=chitietvieclam.getTieuDe() %></b>
							</small>
						</h1>

					</td> <a class="breadcrumb"><%=chitietvieclam.getTenCongTy() %></a>

				</p>


				<p class="breadcrumb">Mô tả công việc: <%=chitietvieclam.getMoTa() %></p>
				<p class="breadcrumb">Mức lương: <%=chitietvieclam.getMucLuong()%> triệu</p>
				<p class="breadcrumb">Địa chỉ: <%=chitietvieclam.getDiaChi() %></p>



			</div>

			<div class="col-md-4">

				<div class="card mb-4">
					<h5 class="card-header">Việc làm mới</h5>
					<table>
						<tbody>
						<%
					List<ViecLam>  list =  new ViecLamDAO().top8ViecLam();
					 for(ViecLam vieclam : list){
	%>
							<tr class="mt-4 mb-3" style="margin-top:10px">
								<td><a href="chitietvieclam?id=<%=vieclam.getIdViecLam() %>"><%=vieclam.getTieuDe()%></a></td>
								<tr></tr>
							</tr>
							
							<%} %>
						</tbody>
					</table>
				</div>
				
				<div class="card mb-4">
					<h5 class="card-header">Tin tức mới</h5>
					<table>
						<tbody>
						<%
					List<TinTuc>  list1 =  new TinTucDAO().top8TinTuc();
					 for(TinTuc tintuc : list1){
					%>
							<tr class="mt-4 mb-3" style="margin-top:10px">
								<td><a href="chitiettintuc?id=<%=tintuc.getIdTinTuc() %>"><%=tintuc.getTieuDe() %></a></td>
								<tr></tr>
							</tr>
							<%} %>
						</tbody>
					</table>
				</div>


				


				<div>
					<button class="btn btn-success btn-lg">Làm hồ sơ ngay</button>
				</div>

			</div>
		</div>
	</div>
		
	 <%@ include file="footer.jsp" %>

			<script>
</script>
		
		 
</body>

</html>
