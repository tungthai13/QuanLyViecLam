
<%@page import="model.NguoiDung"%>
<%@page import="java.util.List"%>
<%@page import="dao.NguoiDungDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Them người dùng</title>

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
                            <h1 class="page-header">Thêm người dùng mới</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">

                                    <form method="POST"  action="themNguoiDung">
                                    <div class="form-group">
                                            <label>Username</label>
                                            <input type="text" minlength="5" required name="userName" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input type="text" minlength="5" required name="password" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>Họ tên</label>
                                            <input type="text" minlength="5" required name="hoTen" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input type="text" minlength="5" required name="email" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>Số điện thoại</label>
                                            <input type="text" minlength="5" required name="sdt" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>Phân quyền</label>
                                            <input type="text" minlength="5" required name="phanQuyen" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>Vị trí ứng tuyển</label>
                                            <input type="text" minlength="5" required name="viTriUngTuyen" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>Ảnh</label>
                                            <input type="text" minlength="5" required name="anh" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>Skype</label>
                                            <input type="text" minlength="5" required name="skype" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>Facebook</label>
                                            <input type="text" minlength="5" required name="facebook" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>Quê quán</label>
                                            <input type="text" minlength="5" required name="queQuan" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>Học vấn</label>
                                            <input type="text" minlength="5" required name="hocVan" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>Trường</label>
                                            <input type="text" minlength="5" required name="truong" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>Khoa</label>
                                            <input type="text" minlength="5" required name="khoa" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>Năm tốt nghiệp</label>
                                            <input type="text" required name="namTotNghiep" class="form-control">

                                        </div>
                                       
                                        <div class="form-group">
                                            <label>Kỹ năng</label>
                                            <input type="text" min="0" max="23" required name="kyNang" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>Kinh nghiệm công tác</label>
                                            <input type="text" required name="kinhNghiemCongTac" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>Ghi chú</label>
                                            <input type="text" required name="ghiChu" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>CV</label>
                                            <input type="text" required name="cv" class="form-control">

                                        </div>

                                        <button type="submit" class="btn btn-default">Thêm</button>

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

