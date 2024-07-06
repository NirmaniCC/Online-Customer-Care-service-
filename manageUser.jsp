<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    <%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.connection.DBConnect"%>
<%@page import="com.model.EmployeeModel"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">

    <title>Bootstrap Admin Template </title>
    <link rel="shortcut icon" href="img/favicon.ico">
    
    <!-- global stylesheets -->
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/font-icon-style.css">
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">

    <!-- Core stylesheets -->
    <link rel="stylesheet" href="css/ui-elements/card.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
	<%
        Connection con = null;
    %>
    
    <% EmployeeModel employeeObj = (EmployeeModel) session.getAttribute("employeeObj"); %>
<!--====================================================
                         MAIN NAVBAR
======================================================-->        
    <header class="header">
        <nav class="navbar navbar-expand-lg ">
            <div class="search-box">
                <button class="dismiss"><i class="icon-close"></i></button>
                <form id="searchForm" action="#" role="search">
                    <input type="search" placeholder="Search Now" class="form-control">
                </form>
            </div>
            <div class="container-fluid ">
                <div class="navbar-holder d-flex align-items-center justify-content-between">
                    <div class="navbar-header">
                        <a href="index.html" class="navbar-brand">
                            <div class="brand-text brand-big hidden-lg-down"><img src="img/logo-white.png" alt="Logo" class="img-fluid"></div>
                            <div class="brand-text brand-small"><img src="img/logo-icon.png" alt="Logo" class="img-fluid"></div>
                        </a>
                        <a id="toggle-btn" href="#" class="menu-btn active">
                            <span></span>
                            <span></span>
                            <span></span>
                        </a>
                    </div>
                </div>
                <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                    
                    <li class="nav-item dropdown"><a id="profile" class="nav-link logout" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle" style="height: 30px; width: 30px;"></a>
                        <ul aria-labelledby="profile" class="dropdown-menu profile">
                            <li>
                                <a rel="nofollow" href="#" class="dropdown-item d-flex">
                                    <div class="msg-profile"> <img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>
                                    <div class="msg-body">
                                        <h3 class="h5">${employeeObj.name}</h3><span>${employeeObj.email}</span>
                                    </div>
                                </a>
                                <hr>
                            </li>                            
                            <li>
                                <a rel="nofollow" href="profile.html" class="dropdown-item">
                                    <div class="notification">
                                        <div class="notification-content"><a href="logout.jsp"><i class="fa fa-power-off"></i>Logout</a></div>
                                    </div>
                                </a> 
                            </li>
                        </ul>
                    </li>
                    
                </ul> 
            </div>
        </nav>
    </header>

<!--====================================================
                        PAGE CONTENT
======================================================-->
    <div class="page-content d-flex align-items-stretch">

        <!--***** SIDE NAVBAR *****-->
        <nav class="side-navbar">
            <div class="sidebar-header d-flex align-items-center">
                <div class="avatar"><img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>
                <div class="title">
                    <h1 class="h4">${employeeObj.name}</h1>
                </div>
            </div>
            <hr>
            <!-- Sidebar Navidation Menus-->
            <ul class="list-unstyled">
                <li > <a href="mainAdminDashboard.jsp">Profile</a></li>
                <li > <a href="users.jsp">Users</a></li>
                
            </ul>
        </nav>

        <div class="content-inner">

            
            <div class="row">
				                <div class="col-md-12">
				
				                    <!--***** USER INFO *****-->
				                    <div class="card form" style="padding: 20px">
				                        <div class="card-header">
				                            <h3><i class="fa fa-user-circle"></i> User Info</h3>
				                        </div>
				                        <br>
				                        <form method="post" action="/CustomerCare/updateAdminUserServelet">
				                        <%
			                              try {         
			                            	String mob = request.getParameter("id");
									        con = DBConnect.getConnection();
											String s1 = "SELECT * FROM users WHERE user_id = ?";
											PreparedStatement pstmt = con.prepareStatement(s1);
											pstmt.setString(1, mob); // Use 'nic' variable instead of 'mob'
											ResultSet rs1 = pstmt.executeQuery();
											while (rs1.next()) {
											%>
				                            <div class="row">
				                                <div class="col-md-6">
				                                    <div class="form-group">
				                                        <label for="name">User Id</label>
				                                        <input type="text" class="form-control" name="id" value="<%= rs1.getString(1)%>" readonly>
				                                    </div>
				                                    <div class="form-group">
				                                        <label for="name">User Name</label>
				                                        <input type="text" class="form-control" name="username" value="<%= rs1.getString(2)%>">
				                                    </div>
				                                    <div class="form-group">
				                                        <label for="name">Full Name</label>
				                                        <input type="text" class="form-control" name="name" value="<%= rs1.getString(3)%>">
				                                    </div>
				                                </div>
				                                <div class="col-md-6">
				                                	<div class="form-group">
				                                        <label for="name">Email</label>
				                                        <input type="text" class="form-control" name="email" value="<%= rs1.getString(4)%>">
				                                    </div> 
				                                    <div class="form-group">
				                                        <label for="name">Mobile</label>
				                                        <input type="text" class="form-control" name="mobile" value="<%= rs1.getString(5)%>">
				                                    </div>
				
				                                    <div class="form-group">
				                                        <label for="name">Password</label>
				                                        <input type="text" class="form-control" name="password" value="<%= rs1.getString(6)%>">
				                                    </div>
				                                </div>
				                            </div> 
				                            
				                            <button type="submit" class="btn btn-general btn-blue mr-2">Update</button>  
				                            <button type="reset" class="btn btn-general btn-white">Cancel</button> 
				                            <%
											 }
						                    con.close();
						                } catch (Exception e) {
						                    e.printStackTrace();
						                }
							       		%>
				                        </form>
				                    </div>
				                    </div>
            
                              
                               
                               
							       
				               
                 </div>
                 </div>
                                    
    </div> 

    <!--Global Javascript -->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper/popper.min.js"></script>
    <script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.cookie.js"></script>
    <script src="js/jquery.validate.min.js"></script> 
    <script src="js/chart.min.js"></script> 
    <script src="js/front.js"></script> 
    
    <!--Core Javascript -->
    <script src="js/mychart.js"></script>

</body>
</html>