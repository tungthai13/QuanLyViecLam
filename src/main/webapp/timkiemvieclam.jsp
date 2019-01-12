<%@page import="model.ViecLam"%>
<%@page import="java.util.List"%>
<%@page import="dao.ViecLamDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"

	pageEncoding="UTF-8"%>
<html lang="en">

<head>

<meta charset="utf-8">

<title>SMARTWEB</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>


<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-resource.min.js"></script>

</head>


<body style="margin-top: 20px">

	<%@ include file="header.jsp"%>

	<div class="container">

		<h1 class="mt-4 mb-3">Danh sách việc làm tìm thấy</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="trangchu.jsp">Home</a></li>
			<li class="breadcrumb-item active">Việc làm</li>
		</ol>


		<div>

			<table class="table">
				<tbody>
				
				<%
				
				
                              List<ViecLam>  list = (List<ViecLam>) request.getAttribute("listViecLamTimKiem");
                                for(ViecLam vieclam : list){
                                     
                                
                                    %>
					<tr>
						<td style="width: 20px"><img
							style="width: 80px; height: 70px" src="<%=vieclam.getThumbnail() %>" /></td>
						<td> <a href="chitietvieclam?id=<%=vieclam.getIdViecLam() %>" ><%=vieclam.getTieuDe() %></a>
							<p>
								<b>Tên công ty: <%=vieclam.getCongTy().getTenCongTy() %></b>
							</p></td>
						<td><b>Mức lương: <%=vieclam.getMucLuong()%> triệu</b>
							<p>
								<b>Địa chỉ: <%=vieclam.getDiaChi() %></b>
							</p></td>
							
					</tr>
					<%
                                    }
                                    %>

				</tbody>
			</table>

		</div>
		<!-- Pagination -->
	

	</div>


	


	<script>
		
	</script>
</body>

</html>
