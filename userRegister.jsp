<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <link rel="stylesheet" href="css/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/font-icon-style.css">
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">

    <!-- Core stylesheets -->
    <link rel="stylesheet" href="css/pages/login.css">
</head>
<body>

	<section class="hero-area">
	  <div class="overlay"></div>
	  <div class="container">
	    <div class="row">
	      <div class="col-md-12 ">
	          <div class="contact-h-cont">
	            
	            <form method="post" action="/CustomerCare/RegisterUserServelet">
					 <div class="form-group">
					     <input type="text" class="form-control p_input" name="username" placeholder="Username">
					 </div>
					 <div class="form-group">
					     <input type="text" class="form-control p_input" name="fullname" placeholder="Full Name">
					 </div>
					 <div class="form-group">
					     <input type="email" class="form-control p_input" name="email" placeholder="Email">
					 </div>
					 <div class="form-group">
					     <input type="text" class="form-control p_input" name="mobile" placeholder="Mobile">
					 </div>
					 <div class="form-group">
					     <input type="text" class="form-control p_input" name="password" placeholder="Password">
					 </div>  
	              	<button class="btn btn-general btn-blue" role="button"><i fa fa-right-arrow></i>Sign Up</button>
	            </form>
	            <p class="existing-user text-center pt-4 mb-0">Already have an account?&nbsp;<a href="login.jsp">Sign In</a></p>
	          </div>
	      </div>
	    </div>  
	  </div>
	</section>


  
   <!--Global Javascript -->
    <script src="js/jquery.min.js"></script>
    <script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

</body>
</html>