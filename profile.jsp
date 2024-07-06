<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    <%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.connection.DBConnect"%>
<%@page import="com.model.UserModel"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Business Bootstrap Responsive Template</title>
    <link rel="shortcut icon" href="img/favicon.ico">

    <!-- global stylesheets -->
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/font-icon-style.css">
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">

    <!-- Core stylesheets -->
    <link rel="stylesheet" href="css/profile.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/button.css">
</head>
<body id="page-top">

<% UserModel userObj = (UserModel) session.getAttribute("userObj"); %>

<!--====================================================
                         HEADER
======================================================--> 

    <header>

      <!-- Top Navbar  -->
      <div class="top-menubar">
        <div class="topmenu">
          <div class="container">
            <div class="row">
              <div class="col-md-7">
                <ul class="list-inline top-contacts">
                  <li>
                    <i class="fa fa-envelope"></i> Email: <a href="mailto:info@themeborn.com">info@themeborn.com</a>
                  </li>
                  <li>
                    <i class="fa fa-phone"></i> Hotline: (1) 111 222 33
                  </li>
                </ul>
              </div> 
              <div class="col-md-5">
                <ul class="list-inline top-data">
                  <li><a href="#" target="_empty"><i class="fa top-social fa-facebook"></i></a></li>
                  <li><a href="#" target="_empty"><i class="fa top-social fa-twitter"></i></a></li>
                  <li><a href="#" target="_empty"><i class="fa top-social fa-google-plus"></i></a></li> 
                  <li>					
					<c:if test="${empty userObj}">
					    <div class="form__button">
					    	<a class="btn btn-outline-info" href="./login.jsp">Sign In</a>
					    </div>
					</c:if>	
                  </li>  
                </ul>
              </div>
            </div>
          </div>
        </div> 
      </div> 
      
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-light" id="mainNav" data-toggle="affix">
        <div class="container">
          <a class="navbar-brand smooth-scroll" href="index.html">
            <img src="img/logo-s.png" alt="logo">
          </a> 
          <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"> 
                <span class="navbar-toggler-icon"></span>
          </button>  
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item" ><a class="nav-link smooth-scroll" href="index.jsp">Home</a></li>
                <li class="nav-item" ><a class="nav-link smooth-scroll" href="about.jsp" >About</a></li>
                <li class="nav-item" ><a class="nav-link smooth-scroll" href="contact.jsp">Contact</a></li>  
                
                	<c:if test="${not empty userObj}">
						    <li class="nav-item dropdown"><a id="profile" class="nav-link logout" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle" style="height: 30px; width: 30px;"></a>
		                        <ul aria-labelledby="profile" class="dropdown-menu profile">
		                            
		                            <li>
		                                <a rel="nofollow" href="profile.jsp" class="dropdown-item">
		                                    <div class="notification">
		                                        <div class="notification-content"><i class="fa fa-user "></i>My Profile</div>
		                                    </div>
		                                </a>
		                            </li>
		                            
		                            <li>
		                                <a rel="nofollow" href="logout.jsp" class="dropdown-item">
		                                    <div class="notification">
		                                        <div class="notification-content"><i class="fa fa-power-off"></i>Logout</div>
		                                    </div>
		                                </a> 
		                            </li>
		                        </ul>
		                    </li>
					</c:if>
                
                
                
     
   
            </ul>  
          </div>
        </div>
      </nav>
    </header> 
    
<!--====================================================
                        PAGE CONTENT
======================================================-->
<div class="page-content d-flex justify-content-center">

	<div class="content-inner chart-cont">

            <!--***** CONTENT *****-->     
            <div class="row mt-2" id="card-prof">
                <div class="col-md-3">
                    <div class="card hovercard">
                        <div class="cardheader"></div>
                        <div class="avatar">
                            <img alt="" src="img/avatar-1.jpg" class="img-fluid">
                        </div>
                        <c:if test="${not empty userObj}">
 
                        <div class="info">
                            <div class="title">
                                <a target="_blank" href="#">${userObj.fullName}</a>
                            </div>
                            <div class="desc">${userObj.email}</div> 
                            <hr>
                        </div>
                        </c:if>
                        <nav class="nav text-center prof-nav">
                            <ul  class="list-unstyled ">
                                <li><a href="profile.jsp#profile">Profile</a></li> 
                                <li><a href="profile.jsp#buzz">Inbox</a></li> 
                                <li><a href="profile.jsp#references">Setting</a></li> 
                                <li><a href="login.html">Logout</a></li> 
                            </ul>
                        </nav>
                        <div class="bottom">
                            <a class="btn btn-info btn-twitter btn-sm custom" href="#">
                                <i class="fa fa-twitter"></i>
                            </a>
                            <a class="btn btn-danger btn-sm custom" rel="publisher"
                               href="#">
                                <i class="fa fa-google-plus"></i>
                            </a>
                            <a class="btn btn-primary btn-sm custom" rel="publisher"
                               href="#">
                                <i class="fa fa-facebook"></i>
                            </a> 
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="card hovercard">
                        <div class="tab" role="tabpanel"> 
                            <ul class="nav nav-tabs" role="tablist">
                              <li class="nav-item ">
                                <a class="nav-link active" href="#profile" role="tab" data-toggle="tab"><span><i class="fa fa-user"></i></span> Profile</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="#buzz" role="tab" data-toggle="tab"><span><i class="fa fa-inbox"></i></span> Inbox</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="#references" role="tab" data-toggle="tab"><span><i class="fa fa-cog"></i></span> Setting</a>
                              </li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content tabs">
                              <div role="tabpanel" class="tab-pane fade show active" id="profile">
                               
                                    <div class="row mt-3">
                                        <h5 class="col-12 mb-2">User Info</h5>
                                        <%
						                  
										        String id = userObj.getUserId();
										        Connection con = DBConnect.getConnection();
												String s = "SELECT * FROM users WHERE user_id = ?";
												PreparedStatement pstmt = con.prepareStatement(s);
												pstmt.setString(1, id); // Use 'nic' variable instead of 'mob'
												ResultSet rs = pstmt.executeQuery();
												while (rs.next()) {
												%>
                                        <div class="col-6">
                                            <div class="form-group">
                                                <strong class="mr-5"><i class="fa fa-envelope"> User ID: </i></strong>    <%= rs.getString(1)%>
                                            </div>
                                            <div class="form-group">
                                                <strong class="mr-5"><i class="fa fa-phone"> User Name: </i></strong>   <%= rs.getString(2)%>
                                            </div>
                                            <div class="form-group">
                                                <strong class="mr-5"><i class="fa fa-user"> Full Name: </i></strong>    <%= rs.getString(3)%>
                                            </div> 
                                        </div>
                                        <div class="col-6">
                                            <div class="form-group">
                                                <strong class="mr-5"><i class="fa fa-globe"> Password: </i></strong>    <%= rs.getString(6)%>
                                            </div>
                                            <div class="form-group">
                                                <strong class="mr-5"><i class="fa fa-map-marker"> E-mail: </i></strong>   <%= rs.getString(4)%> 
                                            </div>
                                            <div class="form-group">
                                                <strong class="mr-5"><i class="fa fa-globe"> Mobile: </i></strong>    <%= rs.getString(5)%>
                                            </div> 
                                        </div>
                                        <%
							                }
							       		%>
                                    </div>
                              </div>
                              <div role="tabpanel" class="tab-pane fade" id="buzz">
                                    <div class="panel panel-default widget">
                                        <div class="panel-heading d-flex justify-content-between">
                                            <h3 class="panel-title"><i class="fa fa-comment"></i> Tickets</h3>
                                            <button onclick="window.location.href='addTicket.jsp?id=<%=id%>'" type="submit" class="btn btn-primary" style="line-height: 23px">Add Ticket</button>
                                        </div>
                                        <div class="panel-body">
                                            <ul class="list-group">
                                            <%
						                       try {
						                    	   String id2 = userObj.getUserId();
											        Connection con2 = DBConnect.getConnection();
						                           String sql2 = "SELECT * FROM tickets WHERE users_user_id = ?";
					
						                           PreparedStatement ps2 = con.prepareStatement(sql2);
						                           ps2.setString(1, id2);
						                           ResultSet rs2 = ps2.executeQuery();
					
						                           while (rs2.next()) { 
						                        	   String mob = rs2.getString(1);
						                        %>
                                                <li class="list-group-item">
                                                    <div class="row">
                                                        <div class=" col-md-12">
                                                            <div>
                                                                <a href="#">
                                                                    <%= rs2.getString(1)%></a>
                                                                    <%
											                       try {
											                    		String categoryID = rs2.getString(7);
																        Connection con3 = DBConnect.getConnection();
											                           String sql3 = "SELECT * FROM categories WHERE category_id = ?";
										
											                           PreparedStatement ps3 = con.prepareStatement(sql3);
											                           ps3.setString(1, categoryID);
											                           ResultSet rs3 = ps3.executeQuery();
										
											                           while (rs3.next()) { 
											                        %>
                                                                <div class="mic-info">
                                                                     <%= rs3.getString(2)%>
                                                                </div>
                                                                <%
									                                   }
									                                   con3.close();
									                               } catch (Exception e) {
									                                   e.printStackTrace();
									                               }
									                           %> 
                                                            </div>
                                                            <div class="comment-text">
                                                                <%= rs2.getString(2)%>
                                                            </div>
                                                            <a  href="updateTicket.jsp?id=<%=mob%>" class="btn btn-sm btn-hover btn-primary custom" href="#reply" ><span class="fa fa-share-alt" style="padding-right:3px;"></span></a>
                                                            <a href="deleteTicket.jsp?id=<%=mob%>" class="btn btn-sm btn-hover btn-danger custom"><span class="fa fa-remove" style="padding-right:3px;"></span></a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <%
						                                   }
						                                   con2.close();
						                               } catch (Exception e) {
						                                   e.printStackTrace();
						                               }
						                           %>       
                                            </ul>
                                            
                                        </div>
                                    </div>
                              </div>
                              <div role="tabpanel" class="tab-pane fade" id="references">
                              <form method="post" action="/CustomerCare/updateUserServelet">
                              <%
						                  
						        String id1 = userObj.getUserId();
						        Connection con1 = DBConnect.getConnection();
								String s1 = "SELECT * FROM users WHERE user_id = ?";
								PreparedStatement pstmt1 = con.prepareStatement(s1);
								pstmt1.setString(1, id1); // Use 'nic' variable instead of 'mob'
								ResultSet rs1 = pstmt1.executeQuery();
								while (rs1.next()) {
								%>
                                    <div class="row mx-2">
                                        <div class="col-md-12 panel-heading">
                                            <h3 class="panel-title"><i class="fa fa-comment"></i> Edit Info</h3><br>
                                        </div>
                                        
                                        <div class="col-md-6 ">
                                            <div class="form-group row">
                                                <label for="example-text-input" style="width: 85px;" class=" col-form-label">User Id</label>
                                                <div class="col-9">
                                                    <input class="form-control" type="text" value="<%= rs1.getString(1)%>" name="userId" readonly>
                                                </div>
                                            </div> 
                                            <div class="form-group row">
                                                <label for="example-email-input" style="width: 85px;" class=" col-form-label">User Name</label>
                                                <div class="col-9">
                                                    <input class="form-control" type="text" value="<%= rs1.getString(2)%>" name="userName">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="example-url-input" style="width: 85px;" class=" col-form-label">Full Name</label>
                                                <div class="col-9">
                                                    <input class="form-control" type="text" value="<%= rs1.getString(3)%>" name="fullName">
                                                </div>
                                            </div>   
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label for="example-text-input" style="width: 85px;" class=" col-form-label">Password</label>
                                                <div class="col-9">
                                                    <input class="form-control" type="text" value="<%= rs1.getString(6)%>" name="password">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="example-date-input" style="width: 85px;" class=" col-form-label">Email</label>
                                                <div class="col-9">
                                                    <input class="form-control" type="text" value="<%= rs1.getString(4)%>" name="email">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="example-tel-input" style="width: 85px;" class=" col-form-label">Mobile</label>
                                                <div class="col-9">
                                                    <input class="form-control" type="text" value="<%= rs1.getString(5)%>" name="mobile">
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-12 panel-heading">
										    <div class="text-center">
										        <button type="submit" class="btn btn-success" style="line-height: 23px">Update</button>
										    </div>
										</div>
                                        
                                        
                                        
                                    </div> 
                                    <%
							                }
							       		%>
                                
                                    </form>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> 

        </div>
        </div>


<!--====================================================
                      FOOTER
======================================================--> 
    <footer> 
        <div id="footer-s1" class="footer-s1">
          <div class="footer">
            <div class="container">
              <div class="row">
                <!-- About Us -->
                <div class="col-md-3 col-sm-6 ">
                  <div><img src="img/logo-w.png" alt="" class="img-fluid"></div>
                  <ul class="list-unstyled comp-desc-f">
                     <li><p>Businessbox is a corporate business theme. You can customize what ever you think to make your website much better from your great ideas. </p></li> 
                  </ul><br> 
                </div>
                <!-- End About Us -->

                <!-- Recent News -->
                <div class="col-md-3 col-sm-6 ">
                  <div class="heading-footer"><h2>Useful Links</h2></div>
                  <ul class="list-unstyled link-list">
                    <li><a href="about.jsp">About us</a><i class="fa fa-angle-right"></i></li>
                    <li><a href="contact.jsp">Contact us</a><i class="fa fa-angle-right"></i></li> 
                  </ul>
                </div>
                <!-- End Recent list -->

                <!-- Recent Blog Entries -->
                <div class="col-md-3 col-sm-6 ">
                  <div class="heading-footer"><h2>Recent Post Entries</h2></div>
                  <ul class="list-unstyled thumb-list">
                    <li>
                      <div class="overflow-h">
                        <a href="#">Praesent ut consectetur diam.</a>
                        <small>02 OCT, 2017</small>
                      </div>
                    </li>
                    <li>
                      <div class="overflow-h">
                        <a href="#">Maecenas pharetra tellus et fringilla.</a>
                        <small>02 OCT, 2017</small>
                      </div>
                    </li>
                  </ul>
                </div>
                <!-- End Recent Blog Entries -->

                <!-- Latest Tweets -->
                <div class="col-md-3 col-sm-6">
                  <div class="heading-footer"><h2>Get In Touch</h2></div>
                  <address class="address-details-f">
                    25, Dist town Street, Logn <br>
                    California, US <br>
                    Phone: 800 123 3456 <br>
                    Fax: 800 123 3456 <br>
                    Email: <a href="mailto:info@Businessbox.com" class="">info@Businessbox.com</a>
                  </address>  
                  <ul class="list-inline social-icon-f top-data">
                    <li><a href="#" target="_empty"><i class="fa top-social fa-facebook"></i></a></li>
                    <li><a href="#" target="_empty"><i class="fa top-social fa-twitter"></i></a></li>
                    <li><a href="#" target="_empty"><i class="fa top-social fa-google-plus"></i></a></li> 
                  </ul>
                </div>
                <!-- End Latest Tweets -->
              </div>
            </div><!--/container -->
          </div> 
        </div>

        <div id="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div id="footer-copyrights">
                            <p>Copyrights &copy; 2017 All Rights Reserved by Businessbox. <a href="#">Privacy Policy</a> <a href="#">Terms of Services</a></p>
                        </div>
                    </div> 
                </div>
            </div>
        </div>
    </footer>

    <!--Global Javascript -->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper/popper.min.js"></script>
    <script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.cookie.js"></script>
    <script src="js/jquery.validate.min.js"></script> 
    <script src="js/chart.min.js"></script> 
    <script src="js/front.js"></script>  



</body>
</html>