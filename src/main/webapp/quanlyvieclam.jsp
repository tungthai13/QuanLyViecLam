
<%@page import="dao.ViecLamDAO"%>
<%@page import="model.ViecLam"%>
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

    <title>Quản lý việc làm</title>
    
 
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
                    <h1 class="page-header">Việc làm</h1>
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
                                        <th>Mã việc làm</th>
                                        <th>Ảnh</th>
                                        <th>Tiêu đề</th>
                                        
                                        <th>Tên công ty</th>
                                        <th>Địa chỉ </th>
                                        <th>Mức lương</th>
                                        <th>Mô tả</th>
                                        <th>Sửa</th>
                                        <th>Xóa</th>
                                    </tr>
                                </thead>
                                <tbody>
                                 <%
                                 List<ViecLam>  list =  new ViecLamDAO().tatCaViecLam();
                                for(ViecLam vieclam : list){
                                     
                                
                                    %>
                                    <tr class="odd gradeX">
                                        <td><%=vieclam.getIdViecLam()%></td>
                                        <td><%=vieclam.getThumbnail()%></td>
                                        <td><%=vieclam.getTieuDe()%></td>
                                        <td><%=vieclam.getTenCongTy() %></td>
                                       	<td><%=vieclam.getDiaChi() %></td>
                                        <td><%=vieclam.getMucLuong() %> triệu</td>
                                       	<td><%=vieclam.getMoTa() %></td>
										<td><a href="suavieclam.jsp?idViecLam=<%=vieclam.getIdViecLam()%>">Sửa</a></td>
                                        <td><a href="xoaViecLam?idViecLam=<%=vieclam.getIdViecLam()%>">Xóa</a></td>
                                    </tr>
                                    <%
                                    }
                                    %>
                                   
                                </tbody>
                            </table>
                            <!-- /.table-responsive -->
                            <a class="btn btn-primary" href="themvieclam.jsp">Thêm việc làm mới</a>
                             
                            
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
