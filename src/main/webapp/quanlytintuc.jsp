
<%@page import="dao.TinTucDAO"%>
<%@page import="model.TinTuc"%>
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

    <title>Quản lý tin tức</title>
    
 
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
                    <h1 class="page-header">Tin tức</h1>
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
                                        <th>Mã tin tức </th>
                                        <th>Ảnh</th>
                                        <th>Tiêu đề</th>
                                        
                                        <th>Người đăng</th>
                                        <th>Ngày đăng </th>
                                        <th>Nội dung vắn tắt</th>
                                        <th>Nội dung chính</th>
                                        <th>Sửa</th>
                                        <th>Xóa</th>
                                    </tr>
                                </thead>
                                <tbody>
                                 <%
                                 List<TinTuc>  list =  new TinTucDAO().tatCaTinTuc();
                                for(TinTuc tintuc : list){
                                     
                                
                                    %>
                                    <tr class="odd gradeX">
                                        <td><%=tintuc.getIdTinTuc()%></td>
                                        <td><%=tintuc.getThumbnail()%></td>
                                        <td><%=tintuc.getTieuDe()%></td>
                                        <td><%=tintuc.getNguoiPost() %></td>
                                       	<td><%=tintuc.getNgayPost() %></td>
                                        <td><%=tintuc.getNoiDungVanTat() %></td>
                                       	<td><%=tintuc.getNoiDungChinh() %></td>
										<td><a href="#">Sửa</a></td>
                                        <td><a href="#">Xóa</a></td>
                                    </tr>
                                    <%
                                    }
                                    %>
                                   
                                </tbody>
                            </table>
                            <!-- /.table-responsive -->
                            <a class="btn btn-primary" href="#">Thêm tin tức mới</a>
                             
                            
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
