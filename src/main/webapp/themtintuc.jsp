
<%@page import="model.TinTuc"%>
<%@page import="java.util.List"%>
<%@page import="dao.TinTucDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Them tin tức</title>

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
                            <h1 class="page-header">Thêm tin tức mới</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">

                                    <form method="POST"  action="themTinTuc">
                                        <div class="form-group">
                                            <label>Ảnh</label>
                                            <input type="text" minlength="5" required name="thumbnail" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>Tiêu đề</label>
                                            <input type="text" required name="tieuDe" class="form-control">

                                        </div>
                                       
                                        <div class="form-group">
                                            <label>Người đăng</label>
                                            <input type="text" min="0" max="23" required name="nguoiPost" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>Ngày đăng</label>
                                            <input type="date" required name="ngayPost" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>Nội dung vắn tắt</label>
                                            <input type="float" required name="noiDungVanTat" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>Nội dung chính</label>
                                            <input type="textarea" required name="noiDungChinh" class="form-control">

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

