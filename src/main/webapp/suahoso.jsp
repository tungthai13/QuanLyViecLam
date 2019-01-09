
<%@page import="model.HoSo"%>
<%@page import="java.util.List"%>
<%@page import="dao.HoSoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Sửa hồ sơ</title>

        <!-- Bootstrap Core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="dist/css/sb-admin-2.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

 
    </head>

    <body>

        <div id="wrapper">

            <!-- Navigation -->
            <%@include file="nav.jsp" %>

            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Sửa hồ sơ </h1>
                        </div>
                        <!-- /.col-lg-12 -->
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                
                                 <%
                                 String idHoSo=request.getParameter("idHoSo");
                                 
                                        HoSo hoso = new HoSoDAO().getHoSo(Integer.parseInt(idHoSo));
                                
                                     
                                
                                    %>

                                 <form method="POST"  action="suaHoSo">
                                 <div class="form-group">
                                           
                                            <input minlength="5" type="hidden" value="<%=hoso.getIdHoSo() %>" name="idHoSo" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>Họ tên</label>
                                            <input type="text" minlength="5" required value="<%=hoso.getHoTen() %>"  name="hoTen" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>Ngày sinh</label>
                                            <input type="date" required value="<%=hoso.getNgaySinh() %>"  name="ngaySinh" class="form-control">

                                        </div>
                                       
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input type="text" min="0" max="23" required value="<%=hoso.getEmail()%>"  name="email" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>Số điện thoại</label>
                                            <input type="text" required value="<%=hoso.getSdt() %>"  name="sdt" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>CV</label>
                                            <input type="float" required value="<%=hoso.getCv()%>"  name="cv" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>Nội dung ứng tuyển</label>
                                            <input type="text" required value="<%=hoso.getNoiDungUngTuyen()%>"  name="noiDungUngTuyen" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>ID người dùng</label>
                                            <input type="float" required value="<%=hoso.getIdUser() %>"  name="idUser" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>ID việc làm</label>
                                            <input type="float" required value="<%=hoso.getIdViecLam() %>"  name="idViecLam" class="form-control">

                                        </div>
                                         <div class="form-group">
                                            <label>Trạng thái</label>
                                            <input type="text" required value="<%=hoso.getTrangThai() %>"  name="trangThai" class="form-control">

                                        </div>
                                        

                                        <button type="submit" class="btn btn-default">Sửa</button>

                                    </form>
                                   
                                   
    </div>
    <!-- /.col-lg-6 (nested) -->
    
    <!-- /.col-lg-6 (nested) -->
    </div>
    <!-- /.row (nested) -->
    </div>
</div>
<!-- /.row -->
</div>
<!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="../vendor/jquery/jquery.min.js"></script>

                                    <!-- Bootstrap Core JavaScript -->
                                    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

                                    <!-- Metis Menu Plugin JavaScript -->
                                    <script src="vendor/metisMenu/metisMenu.min.js"></script>

                                    <!-- Custom Theme JavaScript -->
                                    <script src="dist/js/sb-admin-2.js"></script>

                                    </body>

                                    </html>

