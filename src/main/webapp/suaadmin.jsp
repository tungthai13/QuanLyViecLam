
<%@page import="dao.AdminDAO"%>
<%@page import="model.Admin"%>
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

        <title>Sửa Admin</title>

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
                            <h1 class="page-header">Sửa Admin </h1>
                        </div>
                        <!-- /.col-lg-12 -->
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                
                                 <%
                                 String idAdmin=request.getParameter("idAdmin");
                                 
                                        Admin admin = new AdminDAO().getAdmin(Integer.parseInt(idAdmin));
                                
                                     
                                
                                    %>

                                    <form method="POST"  action="suaAdmin">
                                    <div class="form-group">
                                           
                                            <input minlength="5" type="hidden" value="<%=admin.getIdAdmin() %>" name="idAdmin" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>Username</label>
                                            <input type="text" minlength="5" required value="<%=admin.getUserName()%>" name="userName" class="form-control">

                                        </div>
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input type="text" required value="<%=admin.getPassword() %>" name="password" class="form-control">

                                        </div>
                                       
                                        <div class="form-group">
                                            <label>Quyền</label>
                                            <input type="text" min="0" max="23" value="<%=admin.getQuyen()%>" required name="quyen" class="form-control">

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

