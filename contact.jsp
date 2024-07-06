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
    <link rel="stylesheet" href="css/contact.css"> 
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/button.css">
</head>
<body id="page-top">

<% UserModel userObj = (UserModel) session.getAttribute("userObj"); %>
<%
    Connection con = null;
%>

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
<!--====================================================
                        CONTACT-P1  
======================================================--> 
    <section id="contact-p1" class="contact-p1">
      <div class="container">
        <div class="row">
          <div class="col-md-8">
            <div class="contact-p1-cont">
              <h3>Contact our experienced team</h3>
              <div class="heading-border-light"></div> 
              <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model texty.</p>
            </div>
          </div>
          <div class="col-md-4"> 
            <div class="contact-p1-cont2"> 
              <address class="address-details-f">
                25, Dist town Street, Logn <br>
                California, US <br>
                Phone: 800 123 3456 <br>
                Fax: 800 123 3456 <br>
                Email: <a href="mailto:info@Businessbox.com" class="">info@Businessbox.com</a>
              </address>
              <ul class="list-inline social-icon-f top-data">
                <li><a href="#" target="_empty"><i class="fa top-social fa-facebook" style="height: 35px; width:35px; line-height: 35px;"></i></a></li>
                <li><a href="#" target="_empty"><i class="fa top-social fa-twitter" style="height: 35px; width:35px; line-height: 35px;"></i></a></li>
                <li><a href="#" target="_empty"><i class="fa top-social fa-google-plus" style="height: 35px; width:35px; line-height: 35px;"></i></a></li> 
              </ul>
            </div>
          </div>  
        </div>
      </div>
    </section>

<!--====================================================
                        CONTACT-P2 
======================================================--> 
    <section class="contact-p2" id="contact-p2">
      <div class="container">
          <form method="post" action="/CustomerCare/addFeedbackServelet?userId=${userObj.userId}">
                <div class="form-group cl-white"> 
                  <label for="name">Feedback Type</label>
                  <select class="form-control" name="feedback_type">
                      <%
	                   try {
	                       con = DBConnect.getConnection();
	                       String sql = "SELECT * FROM feedback_type";
	
	                       PreparedStatement ps = con.prepareStatement(sql);
	                       ResultSet rs = ps.executeQuery();
	
	                       while (rs.next()) { 
	                    	   
	                    %>
	                                    <option value="<%= rs.getInt("feedback_type_id") %>"><%= rs.getString("feedback_type") %></option>
	                                   
	                                   <%
	                              }
	                              con.close();
	                          } catch (Exception e) {
	                              e.printStackTrace();
	                          }
	                      %>
                  </select> 
                </div>    
                <div class="form-group cl-white">
                  <label for="message">Message</label>
                  <textarea class="form-control" name="message" rows="3"></textarea>
                </div>  
                
                	<button type="submit" class="btn btn-general btn-white">Submit</button>
                
              </form>
      </div>
    </section>


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