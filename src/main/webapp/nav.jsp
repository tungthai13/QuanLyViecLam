 <%@page import="model.Admin"%>
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

   
    <link href="vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">


    <link href="vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

  
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">

  
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"> 

   
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
	integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
	crossorigin="anonymous">

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
	Admin admin = (Admin) request.getSession().getAttribute("admin");
%>

<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="quanly.jsp">Admin</a>
            </div>
            <!-- /.navbar-header -->

          <div style="margin-top:15px" class="navbar-buttons navbar-header pull-right" role="navigation" >
          
          <%
          if(admin != null){
        	           
          %>
         <h4>Welcome <%=admin.getUserName() %></h4>  
         <% } else{
        	 request.getRequestDispatcher("dangnhapquantri.jsp").forward(request, response);
        	 %>
         <% } %>
        	
  <a style="margin-top:15px;margin-right:20px;" class="nav-link" href="dangXuatQuanTri">Đăng xuất</a>
  
</div>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                       
                        
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Tables<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                            
                            <%
                            if(admin.getQuyen().equals("admin") || equals("hr")){
                            	
                            
                            %>
                                <li>
                                    <a href="quanlyvieclam.jsp"><i
							class="fas fa-briefcase" style="margin-right:5px"></i>Việc làm</a>
                                </li>
                                <% } %>
                                <%
                                if(admin.getQuyen().equals("admin")|| equals("marketing")){
                               
                                %>
                                <li>
                                    <a href="quanlytintuc.jsp"><i
							class="fas fa-file-alt" style="margin-right:5px"></i>Tin Tức</a>
                                </li>
                                <% } %>
                                
                                
                                <li>
                                    <a href="quanlyhoso.jsp"><i
							class="fas fa-address-book" style="margin-right:5px"></i>Hồ sơ</a>
                                </li>
                                <li>
                                    <a href="quanlynguoidung.jsp"><i
							class="fas fa-user-tie" style="margin-right:5px"></i>Người dùng</a>
                                </li>
                                <li>
                                    <a href="quanlycongty.jsp"><i
							class="fas fa-building" style="margin-right:5px"></i>Công ty</a>
                                </li>
                                <li>
                                    <a href="quanlyadmin.jsp"><i
							class="fas fa-user-shield" style="margin-right:5px"></i>Admin</a>
                                </li>
                                
                            </ul>
                        </li>
                     
                        
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
               <script src="vendor/jquery/jquery.min.js"></script>

   
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

  
    <script src="vendor/metisMenu/metisMenu.min.js"></script>

   
    <script src="vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="vendor/datatables-responsive/dataTables.responsive.js"></script>

   
    <script src="dist/js/sb-admin-2.js"></script>
            
        </nav>
