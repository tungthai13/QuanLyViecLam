
<%@page import="dao.NguoiDungDAO"%>
<%@page import="model.NguoiDung"%>
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

    <title>Quản lý người dùng</title>
    
 
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
                    <h1 class="page-header">Người dùng </h1>
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
                                        <th>Mã người dùng </th>
                                        <th>Username</th>
                                        <th>Password</th>                                        
                                        <th>Họ tên</th>
                                        <th>Email </th>
                                        <th>Sđt</th>
                                        <th>Phân quyền</th>
                                        <th>Vị trí ứng tuyển </th>
                                        <th>Ảnh</th>
                                        <th>Skype</th>                                        
                                        <th>Facebook</th>
                                        <th>Quê quán </th>
                                        <th>Học vấn</th>
                                        <th>Trường</th>
                                        <th>Khoa</th>
                                        <th>Năm tốt nghiệp</th>
                                        <th>Kỹ năng</th>                                        
                                        <th>Kinh nghiệm công tác</th>
                                        <th>Ghi chú </th>
                                        <th>CV</th>

                                        <th>Sửa</th>
                                        <th>Xóa</th>
                                    </tr>
                                </thead>
                                <tbody>
                                 <%
                                 List<NguoiDung>  list =  new NguoiDungDAO().tatCaNguoiDung();
                                for(NguoiDung nguoidung : list){
                                     
                                
                                    %>
                                    <tr class="odd gradeX">
                                        <td><%=nguoidung.getIdUser()%></td>
                                        <td><%=nguoidung.getUserName()%></td>
                                        <td><%=nguoidung.getPassword()%></td>
                                        <td><%=nguoidung.getHoTen() %></td>
                                       	<td><%=nguoidung.getEmail() %></td>
                                        <td><%=nguoidung.getSdt() %></td>
                                       	<td><%=nguoidung.getPhanQuyen() %></td>
                                       	<td><%=nguoidung.getViTriUngTuyen()%></td>
                                        <td><%=nguoidung.getAnh()%></td>
                                        <td><%=nguoidung.getSkype()%></td>
                                        <td><%=nguoidung.getFacebook() %></td>
                                       	<td><%=nguoidung.getQueQuan() %></td>
                                        <td><%=nguoidung.getHocVan() %></td>
                                       	<td><%=nguoidung.getTruong() %></td>
                                       	<td><%=nguoidung.getKhoa()%></td>
                                        <td><%=nguoidung.getNamTotNghiep()%></td>
                                        <td><%=nguoidung.getKyNang()%></td>
                                        <td><%=nguoidung.getKinhNghiemCongTac() %></td>
                                       	<td><%=nguoidung.getGhiChu() %></td>
                                        <td><%=nguoidung.getCv() %></td>
										<td><a href="suanguoidung.jsp?idUser=<%=nguoidung.getIdUser()%>">Sửa</a></td>
                                        <td><a href="xoaNguoiDung?idUser=<%=nguoidung.getIdUser()%>">Xóa</a></td>
                                    </tr>
                                    <%
                                    }
                                    %>
                                   
                                </tbody>
                            </table>
                            <!-- /.table-responsive -->
                            <a class="btn btn-primary" href="themnguoidung.jsp">Thêm người dùng mới</a>
                             
                            
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
