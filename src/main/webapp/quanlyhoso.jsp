
<%@page import="dao.HoSoDAO"%>
<%@page import="model.HoSo"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Quản lý hồ sơ</title>
    
 
     <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

   
    <link href="vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">


    <link href="vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

  
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">

  
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"> 

   
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
   

</head>

<body>

    <div id="wrapper">


        <%@include file="nav.jsp" %>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Hồ sơ</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>Mã hồ sơ</th>
                                        <th>Họ tên</th>
                                        <th>Ngày sinh</th>
                                        
                                        <th>Email</th>
                                        <th>SĐT </th>
                                        <th>Cv</th>
                                        <th>Nội dung ứng tuyển</th>
                                        <th>Id người dùng</th>
                                        <th>Id việc làm</th>
                                        <th>Trạng Thái</th>
                                        <th>Sửa</th>
                                        <th>Xóa</th>
                                    </tr>
                                </thead>
                                <tbody>
                                 <%
                                 List<HoSo>  list =  new HoSoDAO().tatCaHoSo();
                                for(HoSo hoso : list){
                                     	
                                
                                    %>
                                    <tr class="odd gradeX">
                                        <td><%=hoso.getIdHoSo()%></td>
                                        <td><%=hoso.getHoTen()%></td>
                                        <td><%=hoso.getNgaySinh()%></td>
                                        <td><%=hoso.getEmail() %></td>
                                       	<td><%=hoso.getSdt() %></td>
                                        <td><%=hoso.getCv() %></td>
                                       	<td><%=hoso.getNoiDungUngTuyen() %></td>
                                       	<td><%=hoso.getIdUser() %></td>
                                       	<td><%=hoso.getIdViecLam() %></td>
                                       	<td><%=hoso.getTrangThai() %></td>
										<td><a href="suahoso.jsp?idHoSo=<%=hoso.getIdHoSo()%>">Sửa</a></td>
                                        <td><a href="xoaHoSo?idHoSo=<%=hoso.getIdHoSo()%>">Xóa</a></td>
                                    </tr>
                                    <%
                                    }
                                    %>
                                   
                                </tbody>
                            </table>
                            <!-- /.table-responsive -->
                            <a class="btn btn-primary" href="themhoso.jsp">Thêm hồ sơ mới</a>
                             
                            
    </div>
 

  
    <script src="vendor/jquery/jquery.min.js"></script>

   
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

  
    <script src="vendor/metisMenu/metisMenu.min.js"></script>

   
    <script src="vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="vendor/datatables-responsive/dataTables.responsive.js"></script>

   
    <script src="dist/js/sb-admin-2.js"></script>

   
    <script>
  
    </script>

</body>

</html>
