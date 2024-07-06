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

    <!-- Global Stylesheets -->
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">
    <link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/animate/animate.min.css">
    <link rel="stylesheet" href="css/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl-carousel/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/style.css">
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
                         HOME
======================================================-->
    <section id="home">
      <div id="carousel" class="carousel slide carousel-fade" data-ride="carousel"> 
        <!-- Carousel items -->
        <div class="carousel-inner">
            <div class="carousel-item active slides">
              <div class="overlay"></div>
              <div class="slide-1"></div>
                <div class="hero ">
                  <hgroup class="wow fadeInUp">
                      <h1>We Help <span ><a href="" class="typewrite" data-period="2000" data-type='[ " Business", " Startup"]'>
                        <span class="wrap"></span></a></span> </h1>        
                      <h3>The next big idea is waiting for its next big changer</h3>
                  </hgroup>
                  <button class="btn btn-general btn-green wow fadeInUp" role="button">Contact Now</button>
                </div>           
            </div> 
        </div> 
      </div> 
    </section> 

<!--====================================================
                        ABOUT
======================================================-->
    <section id="about" class="about">
    <div class="container">
        <div class="row title-bar">
            <div class="col-md-12">
                <h1 class="wow fadeInUp">We are committed to helping</h1>
                <div class="heading-border"></div>
                <p class="wow fadeInUp" data-wow-delay="0.4s">Our system is dedicated to delivering value to all stakeholders and striving for excellence and leadership in every aspect of our service. We aim to support our stakeholders in all their endeavors. Our system provides innovative solutions and great opportunities.</p>
                <div class="title-but"><button class="btn btn-general btn-green" role="button">Read More</button></div>
            </div>
        </div>
    </div>  
    <!-- About right side withBG parallax -->
    <div class="container-fluid">
        <div class="row"> 
            <div class="col-md-4 bg-starship">
                <div class="about-content-box wow fadeInUp" data-wow-delay="0.3s">
                    <i class="fa fa-snowflake-o"></i>
                    <h5>Thought Leadership Platform</h5>
                    <p class="desc">Our system provides a platform for thought leadership, where ideas are shared and innovation thrives. We encourage creative thinking and collaboration.</p>
                </div>
            </div> 
            <div class="col-md-4 bg-chathams">
                <div class="about-content-box wow fadeInUp" data-wow-delay="0.5s">
                    <i class="fa fa-circle-o-notch"></i>
                    <h5>Corporate World Platform</h5>
                    <p class="desc">Our system serves as a platform for the corporate world, offering tools and resources for businesses to succeed. We support organizations in achieving their goals and driving growth.</p>
                </div>
            </div> 
            <div class="col-md-4 bg-matisse">
                <div class="about-content-box wow fadeInUp" data-wow-delay="0.7s">
                    <i class="fa fa-hourglass-o"></i>
                    <h5>End-to-End Testing Platform</h5>
                    <p class="desc">Our system offers an end-to-end testing platform, ensuring quality and reliability in every step of the process. We provide comprehensive testing solutions to meet your needs.</p>
                </div>
            </div> 
        </div> 
    </div>       
</section>


<!--====================================================
                        OFFER
======================================================-->
    <section id="comp-offer">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3 col-sm-6 desc-comp-offer wow fadeInUp" data-wow-delay="0.2s">
                <h2>What We Offer</h2>
                <div class="heading-border-light"></div> 
                <button class="btn btn-general btn-green" role="button">See Current Offers</button>
                <button class="btn btn-general btn-white" role="button">Contact Us Today</button>
            </div>
            <div class="col-md-3 col-sm-6 desc-comp-offer wow fadeInUp" data-wow-delay="0.4s">
                <div class="desc-comp-offer-cont">
                    <div class="thumbnail-blogs">
                        <div class="caption">
                            <i class="fa fa-line-chart"></i>
                        </div>
                        <img src="img/news/news-11.jpg" class="img-fluid" alt="Business Management">
                    </div>
                    <h3>Business Management</h3>
                    <p class="desc">We offer comprehensive business management solutions tailored to your needs. From strategy development to operational excellence, we help you achieve your business goals.</p>
                    <a href="#"><i class="fa fa-arrow-circle-o-right"></i> Learn More</a>
                </div>
            </div>          
            <div class="col-md-3 col-sm-6 desc-comp-offer wow fadeInUp" data-wow-delay="0.6s">
                <div class="desc-comp-offer-cont">
                    <div class="thumbnail-blogs">
                        <div class="caption">
                            <i class="fa fa-users"></i>
                        </div>
                        <img src="img/news/news-13.jpg" class="img-fluid" alt="Leadership Development">
                    </div>              
                    <h3>Leadership Development</h3>
                    <p class="desc">We provide leadership development programs designed to empower individuals and teams to reach their full potential. Our training sessions focus on essential leadership skills and strategies.</p>
                    <a href="#"><i class="fa fa-arrow-circle-o-right"></i> Learn More</a>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 desc-comp-offer wow fadeInUp" data-wow-delay="0.8s">
                <div class="desc-comp-offer-cont">
                    <div class="thumbnail-blogs">
                        <div class="caption">
                            <i class="fa fa-heart"></i>
                        </div>
                        <img src="img/news/news-14.jpg" class="img-fluid" alt="Social Benefits and Services">
                    </div>
                    <h3>Social Benefits and Services</h3>
                    <p class="desc">We offer a range of social benefits and services to support the well-being of our employees and communities. From healthcare initiatives to community engagement programs, we are committed to making a positive impact.</p>
                    <a href="#"><i class="fa fa-arrow-circle-o-right"></i> Learn More</a>
                </div>
            </div>
        </div>
    </div>
</section>

<!--====================================================
                     WHAT WE DO
======================================================-->
    <section class="what-we-do bg-gradiant">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <h3>What We Do</h3>
                <div class="heading-border-light"></div> 
                <p class="desc">We partner with clients to put recommendations into practice.</p>
            </div>
            <div class="col-md-9">
                <div class="row">
                    <div class="col-md-4  col-sm-6">
                        <div class="what-we-desc">
                            <i class="fa fa-briefcase"></i>
                            <h6>Workspace</h6>
                            <p class="desc">We provide innovative workspace solutions tailored to the needs of modern businesses. From coworking spaces to virtual offices, we offer flexible options to enhance productivity and collaboration.</p>
                        </div>
                    </div>
                    <div class="col-md-4  col-sm-6">
                        <div class="what-we-desc">
                            <i class="fa fa-shopping-bag"></i>
                            <h6>Storefront</h6>
                            <p class="desc">Our storefront solutions help businesses establish an online presence and reach customers worldwide. We offer e-commerce platforms and digital marketing services to drive sales and grow brand visibility.</p>
                        </div>
                    </div>
                    <div class="col-md-4  col-sm-6">
                        <div class="what-we-desc">
                            <i class="fa fa-building-o"></i>
                            <h6>Apartments</h6>
                            <p class="desc">We specialize in apartment management and leasing services, ensuring tenants enjoy a comfortable living experience while property owners maximize their investment returns. Our team handles all aspects of property management with professionalism and efficiency.</p>
                        </div>
                    </div>
                    <div class="col-md-4  col-sm-6">
                        <div class="what-we-desc">
                            <i class="fa fa-bed"></i>
                            <h6>Hotels</h6>
                            <p class="desc">We offer comprehensive hotel management solutions to streamline operations and enhance guest satisfaction. From reservation management to housekeeping services, we provide tailored solutions to meet the unique needs of each property.</p>
                        </div>
                    </div>
                    <div class="col-md-4  col-sm-6">
                        <div class="what-we-desc">
                            <i class="fa fa-hourglass-2"></i>
                            <h6>Concept</h6>
                            <p class="desc">Our concept development services help businesses bring their ideas to life. From initial brainstorming sessions to prototype development, we guide clients through every step of the creative process, ensuring their vision becomes a reality.</p>
                        </div>
                    </div>
                    <div class="col-md-4  col-sm-6">
                        <div class="what-we-desc">
                            <i class="fa fa-cutlery"></i>
                            <h6>Restaurant</h6>
                            <p class="desc">We specialize in restaurant management and consulting services, helping owners optimize operations and increase profitability. From menu design to staff training, we provide expert guidance to ensure culinary success.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>      
</section>


<!--====================================================
                      STORY
======================================================--> 
    <section id="story">
    <div class="container">
        <div class="row title-bar">
            <div class="col-md-12">
                <h1 class="wow fadeInUp">Our Success Transformation Story</h1>
                <div class="heading-border"></div> 
            </div>
        </div>
    </div>  
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <div class="story-himg">
                    <img src="img/image-4.jpg" class="img-fluid" alt="">
                </div>
            </div>
            <div class="col-md-6">
                <div class="story-desc">
                    <h3>How to Grow with Us</h3>
                    <div class="heading-border-light"></div> 
                    <p>At Businessbox, success is defined by the achievements of our students, alumni, and their employers. We prioritize the success of our alumni, aiming to be among the best and maintaining a high employment rate. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                    <p>You can discover success stories from our students and alumni here. Each story is unique, reflecting individual experiences and perspectives. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                    <p class="text-right" style="font-style: italic; font-weight: 700;"><a href="#">Businessbox</a></p>
                    <div class="title-but"><button class="btn btn-general btn-green" role="button">Read More</button></div>
                </div>
            </div>
        </div>
    </div>  
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.1s"> 
                <div class="story-descb">
                    <img src="img/news/news-10.jpg" class="img-fluid" alt="Virtual training systems">
                    <h6>Virtual Training Systems</h6>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                    <a href="#"><i class="fa fa-arrow-circle-o-right"></i> Read More</a>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.3s"> 
                <div class="story-descb">
                    <img src="img/news/news-2.jpg" class="img-fluid" alt="Design planning">
                    <h6>Design Planning</h6>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                    <a href="#"><i class="fa fa-arrow-circle-o-right"></i> Read More</a>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.5s"> 
                <div class="story-descb">
                    <img src="img/news/news-8.jpg" class="img-fluid" alt="Remote condition monitoring">
                    <h6>Remote Condition Monitoring</h6>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                    <a href="#"><i class="fa fa-arrow-circle-o-right"></i> Read More</a>
                </div>
            </div>                        
        </div>
    </div>  
</section>


<!--====================================================
                  COMPANY THOUGHT
======================================================-->
    <div class="overlay-thought"></div>
    <section id="thought" class="bg-parallax thought-bg">
    <div class="container">
        <div id="thought-desc" class="row title-bar title-bar-thought owl-carousel owl-theme">
            <div class="col-md-12">
                <div class="heading-border bg-white"></div>
                <p class="wow fadeInUp" data-wow-delay="0.4s">At Businessbox, we are committed to delivering value to all stakeholders and achieving excellence and leadership through the delivery of that value. We strive to support our stakeholders in all activities related to our business, providing great things along the way.</p>
                <h6>John Doe</h6>
            </div>
            <div class="col-md-12 thought-desc">
                <div class="heading-border bg-white"></div>
                <p class="wow fadeInUp" data-wow-delay="0.4s">Ensuring quality at Businessbox is an obsession, and we maintain high quality standards through a rigorous quality assurance process. Quality assurance is performed by an independent team of trained experts for each project.</p>
                <h6>Tom John</h6>
            </div>
        </div>
    </div>         
</section>

    
<!--====================================================
                   SERVICE-HOME
======================================================--> 
    <section id="service-h">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <div class="service-himg">
                    <iframe src="https://www.youtube.com/embed/754f1w90gQU?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
                </div>
            </div>
            <div class="col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                <div class="service-h-desc">
                    <h3>We are Providing great Services</h3>
                    <div class="heading-border-light"></div>
                    <p>Businessbox offers the full spectrum of services to help organizations work better. Everything from creating standards of excellence to training your people to work in more effective ways.</p>
                    <div class="service-h-tab">
                        <nav class="nav nav-tabs" id="myTab" role="tablist">
                            <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-expanded="true">Developing</a>
                            <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile">Training</a>
                            <a class="nav-item nav-link" id="my-profile-tab" data-toggle="tab" href="#my-profile" role="tab" aria-controls="my-profile">Medical</a>
                        </nav>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                <p>Nulla est ullamco ut irure incididunt nulla Lorem Lorem minim irure officia enim reprehenderit. Magna duis labore cillum sint adipisicing exercitation ipsum. Nostrud ut anim non exercitation velit laboris fugiat cupidatat. Commodo esse dolore fugiat sint velit ullamco magna consequat voluptate minim amet aliquip ipsum aute. exercitation ipsum. Nostrud ut anim non exercitation velit laboris fugiat cupidatat. Commodo esse dolore fugiat sint velit ullamco magna consequat voluptate minim amet aliquip ipsum aute. </p>
                            </div>
                            <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                                <p>Nulla est ullamco ut irure incididunt nulla Lorem Lorem minim irure officia enim reprehenderit. Magna duis labore cillum sint adipisicing exercitation ipsum. Nostrud ut anim non exercitation velit laboris fugiat cupidatat. Commodo esse dolore fugiat sint velit ullamco magna consequat voluptate minim amet aliquip ipsum aute</p>
                            </div>
                            <div class="tab-pane fade" id="my-profile" role="tabpanel" aria-labelledby="my-profile-tab">
                                <p>Nulla est ullamco ut irure incididunt nulla Lorem Lorem minim irure officia enim reprehenderit. Magna duis labore cillum sint adipisicing exercitation ipsum. Nostrud ut anim non exercitation velit laboris fugiat cupidatat. Commodo esse dolore fugiat sint velit ullamco magna consequat voluptate minim amet aliquip ipsum aute</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!--====================================================
                      CLIENT
======================================================-->
    <section id="client" class="client">
    <div class="container">
        <div class="row title-bar">
            <div class="col-md-12">
                <h1 class="wow fadeInUp">Our Client Say</h1>
                <div class="heading-border"></div>
                <p class="wow fadeInUp" data-wow-delay="0.4s">We are committed to helping you maintain your Brand Value.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 col-sm-12">
                <div class="client-cont wow fadeInUp" data-wow-delay="0.1s">
                    <img src="img/client/avatar-6.jpg" class="img-fluid" alt="">
                    <h5>Leesa Len</h5>
                    <h6>DSS CEO & Cofounder</h6>
                    <i class="fa fa-quote-left"></i>
                    <p>The Businessbox service helps fill our Business and increase our show-up rate every single time.</p>
                </div>
            </div>
            <div class="col-md-6 col-sm-12">
                <div class="client-cont wow fadeInUp" data-wow-delay="0.3s">
                    <img src="img/client/avatar-2.jpg" class="img-fluid" alt="">
                    <h5>Dec Bol</h5>
                    <h6>TEMS founder</h6>
                    <i class="fa fa-quote-left"></i>
                    <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece.</p>
                </div>
            </div>
        </div>
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
                    <li><a href="admin/login.jsp">Admin Login</a><i class="fa fa-angle-right"></i></li> 
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
        <a href="#home" id="back-to-top" class="btn btn-sm btn-green btn-back-to-top smooth-scrolls hidden-sm hidden-xs" title="home" role="button">
            <i class="fa fa-angle-up"></i>
        </a>
    </footer>

    <!--Global JavaScript -->
    <script src="js/jquery/jquery.min.js"></script>
    <script src="js/popper/popper.min.js"></script>
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <script src="js/wow/wow.min.js"></script>
    <script src="js/owl-carousel/owl.carousel.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="js/jquery-easing/jquery.easing.min.js"></script> 
    <script src="js/custom.js"></script> 



</body>
</html>