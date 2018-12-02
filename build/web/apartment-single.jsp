<%-- 
    Document   : apartment-single.jsp
    Created on : Nov 26, 2018, 11:36:14 PM
    Author     : Abhinav
--%>
<%@page import="java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.sql.Statement" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
	<!-- Basic Page Needs
	================================================== -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<!-- Specific Meta
	================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="description" content="glimmer is a modern presentation HTML5 Blog template.">
	<meta name="keywords" content="HTML5, Template, Design, Development, Blog">
	<meta name="author" content="">

	<!-- Titles
	================================================== -->
	<title>Apartments-single</title>

	<!-- Favicons
	================================================== -->
	<link rel="shortcut icon" href="assets\images\house-logo.png">
	<link rel="apple-touch-icon" href="assets/images/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">

	<!-- Custom Font
	================================================== -->
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i%7cPoppins:300,400,500,600,700" rel="stylesheet">    
	
	<!-- CSS
	================================================== -->
	<link rel="stylesheet" href="assets\css\plugins.css">
    <link rel="stylesheet" href="assets\css\colors.css">
	<link rel="stylesheet" href="style.css">
	<!-- Modernizr
	================================================== -->
	<script src="assets\js\vendor\modernizr-2.8.3.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script>
                $(document).ready(function(){
                    $("#submit2").click(function(e){
                        e.preventDefault();
                        if($("#pwd2").val() != "" && $("#user2").val() != ""){
                            if($("#pwd2").val() != $("#pwd3").val()){
                                alert("password does not match");
                            }
                            else{
                                var name =$("#user2").val();
                                var pwd =$("#pwd2").val();
                                console.log(name);
                                $.ajax({
                                    type: "POST",
                                    url: "signup",
                                    data: "name="+name+"&pwd="+pwd,
                                    success: function (msg) {
                                        alert(msg);
                                    },
                                    error: function () {                                    
                                        alert("Error!!");                            
                                    }
                                });
                            }
                        }
                        else{
                            alert("Empty Fields!!");
                        }
                    });
                });
                $(document).ready(function(){
                    $("#submit").click(function (e) {
                        e.preventDefault();
                        if($("#user").val() != "" && $("#pwd").val() != ""){
                            if($("#name").val()!=""){
                                var name =$("#user").val();
                                var pwd =$("#pwd").val();
                                console.log(name);
                                $.ajax({
                                    type: "POST",
                                    url: "login",
                                    data: "name="+name+"&pwd="+pwd,
                                    success: function (msg) {
                                        alert(msg);
                                    },
                                    error: function () {
                                        alert("Error!!");
                                    }
                                });
                            }
                        }
                        else{
                            alert("Empty Fields!!");
                        }
                    }); 
                });
            </script>
</head>
<style>
    fieldset{
        padding: 10px 20px;
    }
</style>
<body>
    <!-- ====== Header Mobile area ====== -->
    <header class="mobile-header-area bg-nero hidden-md hidden-lg">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 tb">
                    <div class="mobile-header-block">
                        <div class="menu-area tb-cell">
                            <!--Mobile Main Menu-->
                            <div class="mobile-menu-main hidden-md hidden-lg">
                                <div class="menucontent overlaybg"></div>
                                <div class="menuexpandermain slideRight">
                                    <a id="navtoggole-main" class="animated-arrow slideLeft menuclose">
                                        <span></span>
                                    </a>
                                    <span id="menu-marker"></span>
                                </div><!--/.menuexpandermain-->
                                <div id="mobile-main-nav" class="main-navigation slideLeft">
                                    <div class="menu-wrapper">
                                        <div id="main-mobile-container" class="menu-content clearfix"></div>
                                        <div class="left-content">
                                            <ul>
                                                <li>
                                                    <a href="#"><i class="fa fa-phone-square"></i>Call Us - 01623 030020</a>
                                                </li>
                                                <li>
                                                    <a href="#" class="cd-signin"><i class="fa fa-address-book"></i>Login / Register</a>
                                                </li>
                                            </ul>
                                        </div><!-- /.left-content -->
                                    </div>
                                </div><!--/#mobile-main-nav-->
                            </div><!--/.mobile-menu-main-->
                        </div><!-- /.menu-area -->
                        <div class="logo-area tb-cell">
                            <div class="site-logo">
                                <a href="index-1.html">
                                    <img src="assets\images\logo.png" alt="site-logo">
                                </a>
                            </div><!-- /.site-logo -->
                        </div><!-- /.logo-area -->
                        <div class="search-block tb-cell">
                            <a href="#" class="main-search"><i class="fa fa-search"></i></a>
                        </div><!-- /.search-block -->
                        <div class="additional-content tb-cell">
                            <a href="#" class="trigger-overlay"><i class="fa fa-sliders"></i></a>
                        </div><!-- /.additional-content -->
                    </div><!-- /.mobile-header-block -->
                </div><!-- /.col-md-12 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </header><!-- /.mobile-header-area --> 

    <!-- ====== Header Top area ====== -->
    <header class="header-area bg-nero hidden-xs hidden-sm">
        <div class="container">
            <div class="header-top-content">
                <div class="row">
                    <div class="col-md-7 col-sm-7 mobile-center">
                        <div class="site-logo">
                            <a href="index-1.html">
                                <img src="assets\images\logo.png" alt="site-logo">
                            </a>
                        </div><!-- /.site-logo -->
                    </div><!-- /.col-md-8 -->
                    <div class="col-md-5 col-sm-5 mobile-center">
                        <div class="left-content">
                            <ul>
                                <li>
                                    <a href="#"><i class="fa fa-phone-square"></i>Call Us - 01623 030020</a>
                                </li>
                                <li>
                                    <a href="#" class="cd-signin"><i class="fa fa-address-book"></i><% if(session.getAttribute("user") == null){out.println("Login / Register");}else{out.println("<a href=\"invalidate\">"+session.getAttribute("user")+" logout</a>");} %></a>
                                </li>
                                <li>
                                    <a href="#" class="main-search"><i class="fa fa-search"></i></a>
                                </li>
                                <li>
                                    <a href="#" class="trigger-overlay"><i class="fa fa-bars"></i></a>
                                </li>
                            </ul>
                        </div><!-- /.left-content -->
                    </div><!-- /.col-md-4 -->
                </div><!-- /.row -->
            </div><!-- /.header-top-content -->
        </div><!-- /.container -->
    </header><!-- /.head-area -->

    <!-- ====== Header Bottom Content ====== -->
    <header class="header-bottom-content bg-nero hidden-xs hidden-sm">
        <div class="container">        
            <div class="row">
                <div class="col-md-10 col-sm-10">
                    <nav id="main-nav" class="site-navigation top-navigation">
                        <div class="menu-wrapper">
                            <div class="menu-content">
                                <ul class="menu-list">
                                    <li>
                                        <a href="index.jsp">Home</a>
                                    </li>
                                    <li>
                                        <a href="apartment.jsp">Apartment</a>
                                    </li>
                                    <li>
                                        <a href="booking.jsp">Booking</a>
                                    </li>                                    
                                    <li>
                                        <a href="about.jsp">About</a>
                                    </li>
                                    <li>
                                        <a href="contact.jsp">Contact</a>
                                    </li>
                                </ul> <!-- /.menu-list -->
                            </div> <!-- /.menu-content-->
                        </div> <!-- /.menu-wrapper --> 
                    </nav><!-- /.site-navigation --> 
                </div><!-- /.col-md-10 -->

                <div class="col-md-2 col-sm-2">
                    <div class="booking">
                        <span><a href="booking.html">Booking</a></span>
                    </div><!-- /.Booking -->
                </div><!-- /.col-md-2 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </header><!-- /.header-bottom-content --> 

    <!-- ====== Header Overlay Content ====== -->
    <div class="header-overlay-content">
        <!-- overlay-menu-item -->
        <div class="overlay overlay-hugeinc gradient-transparent overlay-menu-item">
            <button type="button" class="overlay-close">Close</button>
            <nav>
                <ul class="overlay-menu">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">About</a>
                        <ul class="sub-menu">
                            <li><a href="#">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Work</a></li>
                            <li><a href="#">Clients</a>
                                <ul class="sub-menu">
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">About</a></li>
                                    <li><a href="#">Work</a></li>
                                    <li><a href="#">Clients</a></li>
                                    <li><a href="#">Contact</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Work</a></li>
                    <li><a href="#">Clients</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </nav>
        </div> <!-- /.overlay-menu-item -->

        <!-- header-search-content -->
        <div class="gradient-transparent overlay-search">
            <button type="button" class="overlay-close">Close</button>
            <div class="header-search-content">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <form action="#" method="get" class="searchform">
                                <div class="input-group" id="adv-search">
                                    <input type="text" class="form-controller" placeholder="Search for snippets">
                                    <div class="input-group-btn">
                                        <div class="btn-group" role="group">
                                            <div class="dropdown dropdown-lg">
                                                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                    <span class="fa fa-caret-down"></span>
                                                </button>
                                                <div class="dropdown-menu dropdown-menu-right" role="menu">
                                                    <div class="form-horizontal">
                                                        <div class="checkbox">
                                                            <label><input type="checkbox"> From Blog</label>
                                                        </div>
                                                        <div class="checkbox">
                                                            <label><input type="checkbox">Find Your Apartment</label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <button type="submit" class="btn btn-primary">
                                                <span class="fa fa-search" aria-hidden="true"></span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- /.header-search-content -->  

        <!-- Registrar Or Sign In-content -->
        <div class="cd-user-modal">
            <div class="cd-user-modal-container">
                <ul class="cd-switcher">
                    <li><a href="#0">Sign in</a></li>
                    <li><a href="#0">New account</a></li>
                </ul>

                <!-- log in form -->
                <div id="cd-login"> 
                     <div id="login" class ="form">
                        <fieldset><legend style="font-size: 25px;text-transform: uppercase;">Login</legend>
                            <div>
                                <label for="user"><i class="fa fa-user"></i></label>
                                <input id = "user" type="text" placeholder="username" required>
                            </div>                    			
                            <br>
                            <div>
                                <label for="pwd"><i class="fa fa-lock"></i></label>
                                <input id="pwd" type="password" placeholder="password" required>
                            </div>

                            <br>
                            <div id="but">
                                <input type="submit" id ="submit" value="LOGIN">                        
                            </div>                    
                        </fieldset>
                    </div>
                    
                    <p class="cd-form-bottom-message">
                        <a href="#0">Forgot your password?</a>
                    </p>
                    <a href="#0" class="cd-close-form">Close</a>
                </div> <!-- cd-login -->

                <!-- sign up form -->
                <div id="cd-signup">
                     <div id="signup" class ="form">
                        <fieldset><legend style="font-size: 25px;text-transform: uppercase;">signup</legend>
                            <div>
                                <label for="user2"><i class="fa fa-user"></i></label>
                                <input id = "user2" type="text" placeholder="username" required>
                            </div>                    			
                            <br>
                            <div>
                                <label for="pwd2"><i class="fa fa-lock"></i></label>
                                <input id="pwd2" type="password" placeholder="password" required>
                            </div>

                            <br>
                            <div>
                                <label for="pwd3"><i class="fa fa-lock"></i></label>
                                <input id="pwd3" type="password" placeholder="confirm password" required>
                            </div>
                            <div id="but">
                                <input type="submit" value="SIGNUP" id="submit2">
                            </div>                    
                        </fieldset>
                    </div>

                    <a href="#0" class="cd-close-form">Close</a>
                </div> <!-- cd-signup -->
                
                <!-- reset password form -->
                <div id="cd-reset-password">
                    <p class="cd-form-message">Lost your password? Please enter your email address. You will receive a link to create a new password.</p>

                    <form class="cd-form" action="login" method="post">
                        <p class="fieldset">
                            <label class="image-replace cd-email" for="reset-email">E-mail</label>
                            <input class="full-width has-padding has-border" id="reset-email" type="email" placeholder="E-mail">
                            <span class="cd-error-message">Error message here!</span>
                        </p>
                        <p class="fieldset">
                            <input class="full-width has-padding" type="submit" value="Reset password">
                        </p>
                    </form>

                    <p class="cd-form-bottom-message"><a href="#0">Back to log-in</a></p>
                </div> <!-- cd-reset-password -->
                <a href="#0" class="cd-close-form">Close</a>
            </div> <!-- cd-user-modal-container -->
        </div> <!-- cd-user-modal -->
    </div><!-- /.header-overlay-content -->

    <!-- ====== Page Header ====== --> 
    <div class="page-header default-template-gradient">
        <div class="container">
            <div class="row">
                <div class="col-md-12">                
                    <h2 class="page-title">House</h2>
                    <p class="page-description">More Details About Apartment</p>        
                </div><!-- /.col-md-12 -->
            </div><!-- /.row-->
        </div><!-- /.container-fluid -->           
    </div><!-- /.page-header -->

   <!-- ====== Breadcrumbs Area====== --> 
   <div class="breadcrumbs-area">
       <div class="container">
           <div class="row">
               <div class="col-md-12">
                   <div class="breadcrumbs">
                       <span class="first-item">
                        <a href="index01.html">Home</a></span>
                       <span class="separator">&gt;</span>
                       <span class="last-item">Apartment Single Page</span>
                   </div>
               </div><!-- /.col-md-12 -->
           </div><!-- /.row -->
       </div><!-- /.container -->
   </div><!-- /.breadcrumbs-area -->

	<!-- ====== Apartments-Single-Area ======= --> 
        <%
            Class.forName("org.apache.derby.jdbc.ClientDriver");  
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/apartments","kajal","qwerty");  
            Statement stmt=con.createStatement();  
            String query = "select * from apartment where name='"+request.getParameter("name")+"'";
            ResultSet rs = stmt.executeQuery(query);
            while(rs.next()){
        %>
	<div class="apartment-single-area">
	  	<div class="container">
		  	<div class="row">
			    <div class="col-md-8">
    				<div class="corousel-gallery-content">
    					  <div class="gallery">
    					       <div class="full-view owl-carousel">
    					     	  <a class="item image-pop-up" href="assets\images\apartment\apartment-single.jpeg">
    					     		  <img src="assets\images\apartment\apartment-single.jpeg" alt="corousel">
    					     	  </a>
    					     	  <a class="item image-pop-up" href="assets\images\apartment\apartment-single-1.jpeg">
    					     		  <img src="assets\images\apartment\apartment-single-1.jpeg" alt="corousel">
    					     	  </a>
    					     	  <a class="item image-pop-up" href="assets\images\apartment\apartment-single-2.jpeg">
    					     		  <img src="assets\images\apartment\apartment-single-2.jpeg" alt="corousel">
    					     	  </a>
    					     	  <a class="item image-pop-up" href="assets\images\apartment\apartment-single-3.jpeg">
    					     		  <img src="assets\images\apartment\apartment-single-3.jpeg" alt="corousel">
    					     	  </a>
    					     	  <a class="item image-pop-up" href="assets\images\apartment\apartment-single-4.jpeg">
    					     		  <img src="assets\images\apartment\apartment-single-4.jpeg" alt="corousel">
    					     	  </a>
                                  <a class="item image-pop-up" href="assets\images\apartment\apartment-single-5.jpeg">
    					     		  <img src="assets\images\apartment\apartment-single-5.jpeg" alt="corousel">
    					     	  </a>
    					       </div>

    					      <div class="list-view owl-carousel">
    					          <div class="item">
    					        	  <img src="assets\images\apartment\apartment-single.jpeg" alt="corousel-image">
    					          </div>
    					          <div class="item">
    					        	  <img src="assets\images\apartment\apartment-single-1.jpeg" alt="corousel-image">
    					          </div>
    					          <div class="item">
    					        	  <img src="assets\images\apartment\apartment-single-2.jpeg" alt="corousel-image">
    					          </div>
    					          <div class="item">
    					        	  <img src="assets\images\apartment\apartment-single-3.jpeg" alt="corousel-image">
    					          </div>
    					          <div class="item">
    					        	  <img src="assets\images\apartment\apartment-single-4.jpeg" alt="corousel-image">
    					          </div>
    					          <div class="item">
    					        	  <img src="assets\images\apartment\apartment-single-5.jpeg" alt="corousel-image">
    					          </div>
    					      </div>  
    					  </div> <!-- /.gallery-two -->
    				</div> <!-- /.corousel-gallery-content -->

    				<div class="family-apartment-content mobile-extend">
                        <div class="tb">
                            <div class="tb-cell">
        					   <h3 class="apartment-title"><% out.println(rs.getString("name")); %></h3>
                            </div><!-- /.tb-cell -->
                            <div class="tb-cell">
        					   <p class="pull-right rent">Rent/Month: <% out.println(rs.getFloat("price")); %></p>
                            </div><!-- /.tb-cell -->
                        </div><!-- /.tb -->
    					<div class="clearfix"></div><!-- /.clearfix -->
                                        <p class="apartment-description default-gradient-before"><% out.println(rs.getString("size")); %> sq-ft., 3 Bedroom, Semi-furnished, Luxurious, South facing Apartment for Rent in <% out.println(rs.getString("location")); %></p>
    					<div class="price-details">
    						<h3>Price Details-</h3>
    						<ul>
    							<li><span>Rent/Month: </span> <% out.println(rs.getFloat("price")); %> (negotiable)</li>
    							<li><span>Service Charge :</span> 8,000/= Tk per month, subject to change</li>
    							<li><span>Security Deposit :</span> 3 month’s rent</li>
    							<li><span>Flat Release Policy :</span> 3 months earlier notice required</li>
    						</ul>
    					</div><!-- /.price -->

    					<div class="property-details">
    						<h3>Property Details-</h3>
    						<ul>
    							<li><span>Address  &amp; Area :</span> <% out.println(rs.getString("address")); %></li>
    							<li><span>Flat Size :</span> <% out.println(rs.getString("size")); %>sq-ft</li>
    							<li><span>Room Category :</span> <% out.println(rs.getInt("bedrooms")); %> Large Bed Rooms, Spacious Drawing, Dining &amp; Family    Living Room, Highly Decorated Kitchen with Store Room and Servant room with <% out.println(rs.getInt("washroom")); %> attached washrooms.</li>
    							
    						</ul>
    					</div><!-- /.Property -->
    					
    				</div><!-- /.family-apartment-content -->
                    <div class="hidden-md hidden-lg text-center extend-btn">
                        <span class="extend-icon">
                            <i class="fa fa-angle-down"></i>
                        </span>
                    </div>
			    </div> <!-- /.col-md-8 -->

    			<div class="col-md-4">
                    <div class="apartment-sidebar">                    
        				<div class="widget_rental_search clerafix">					
        					<div class="form-border gradient-border">
        						<form action="booking" method="get" class="advance_search_query booking-form">
        							<div class="form-bg seven">
        								<div class="form-content">
                                            <h2 class="form-title">Book This Apartment</h2>
        									<div class="form-group">
        									   <label>Full Name</label>
        									   <input type="text" name="fname" placeholder="Full name" required>
        									</div><!-- /.form-group -->
        									<div class="form-group">
                            					<label>Phone Number</label>
                                                <input type="tel" name="phone" placeholder="+99(99)9999-9999" required>
        									</div><!-- /.form-group -->
        									<div class="form-group">
        										<label>Email Address</label>
        										<input type="email" name="email" placeholder="example@domain.com" required>
        									</div><!-- /.form-group -->
        									<div class="form-group">
        									    <label>Family Member</label>
                                                <input type="number" step="1" min="1" max="100" name="family" value="1" title="Qty" size="4" class="input-text" required>
        									</div><!-- /.form-group -->
                                            <div class="form-group">
                                                <label>Children</label>
                                                <input type="number" step="1" min="1" max="100" name="children" value="1" title="Qty" size="4" class="input-text" required>
                                            </div><!-- /.form-group -->
                                            <input type="text" name="apartment" placeholder="Full name" value="<% out.println(request.getParameter("name")); %>" style="display: none;">
        									<div class="form-group">
        									    <label>Your Message</label>
        		                                <textarea name="desc" placeholder="Message" class="form-controller" required></textarea>
        									</div><!-- /.form-group -->
        									<div class="form-group">
        										<button type="submit" class="button default-template-gradient button-radius">Request Booking</button>
        									</div><!-- /.form-group -->
        								</div><!-- /.form-content -->
        							</div><!-- /.form-bg -->
        						</form> <!-- /.advance_search_query -->
        					</div><!-- /.form-border -->
        				</div><!-- /.widget_rental_search -->

        				<div class="apartments-content seven post clerafix">
        					<div class="image-content">
        						<a href="#"><img class="overlay-image" src="assets\images\apartment-ad.png" alt="about"></a>
        					</div><!-- /.image-content -->
        				</div><!-- /.partments-content -->
                    </div><!-- /.apartment-sidebar -->
    			</div> <!-- .col-md-4 -->
		  	</div> <!-- /.row -->
	  	</div> <!-- /.container -->
  	</div> <!-- /.appartment-single-area -->
	<%} %>
	<!-- ====== Apartments-Related-area ====== --> 
    <!-- ====== Call To Action ======== --> 
    <div class="call-to-action default-template-gradient">
        <div class="container">
            <div class="row tb">
                <div class="col-md-6 col-sm-6 tb-cell">
                    <div class="contact-left-content">
                        <h3>Do you want to Rent your House</h3>
                        <h4>Call us and list your property here</h4>
                    </div><!-- /.contact-left-content -->
                </div><!-- /.col-md-6 -->
                <div class="col-md-6 col-sm-6 tb-cell">
                    <div class="contact-right-content">
                        <h4><a href="#">+880123654987<span>company@gmail.com</span></a></h4>
                        <a href="#" class="button">Contact us</a>
                    </div><!-- /.contact-right-content -->
                </div><!-- /.col-md-6 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </div><!-- /.call-to-action -->

    <!-- ====== Contact Area ====== --> 
    <div class="contact-area">
        <div class="container-large-device">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="heading-content-two available">
                            <h2 class="title">We Are Available<br> For You 24/7</h2>
                            <h5 class="sub-title">Our online support service is always 24 Hours</h5>
                        </div><!-- /.testimonial-heading-content -->
                    </div><!-- /.col-md-12 -->
                </div><!-- /.row -->
                <div class="row">
                    <div class="col-md-7">
                        <div class="map-left-content">
                            <iframe width="600" height="350" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyC871wKM6aoCLSV_pT3xBVsYzNGXaDh7Pw&q=121King+St,Melbourne+VIC+3000,Australia" allowfullscreen="allowfullscreen"></iframe>
                        </div><!-- /.mapl-left-content -->
                    </div><!-- /.col-md-7 -->
                    <div class="col-md-5">
                        <div class="map-right-content">
                            <div class="row">
                                <div class="col-md-6 col-sm-6">
                                    <div class="contact">
                                        <h4><i class="fa fa-address-book"></i>Address</h4>
                                        <p>112/B - Road 121, King/St Melbourne Australia</p>
                                    </div><!-- /.contact -->
                                </div><!-- /.col-md-6 -->
                                <div class="col-md-6 col-sm-6">
                                    <div class="contact">
                                        <h4><i class="fa fa-envelope"></i>Mail</h4>
                                        <p>yourmail@domain.com houserent@domain.com</p>
                                    </div><!-- /.contact -->
                                </div><!-- /.col-md-6 -->
                            </div><!-- /.row -->
                            <div class="row">
                                <div class="col-md-6 col-sm-6">
                                    <div class="contact">
                                        <h4><i class="fa fa-phone-square"></i>Call</h4>
                                        <p>+99 0215469875 <br>666 35874692050</p>
                                    </div><!-- /.contact -->
                                </div><!-- /.col-md-6 -->
                                <div class="col-md-6 col-sm-6">
                                    <div class="contact">
                                        <h4><i class="fa fa-user-circle"></i>Social account</h4>
                                        <div class="social-icon">
                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                            <a href="#"><i class="fa fa-instagram"></i></a>
                                            <a href="#"><i class="fa fa-google-plus"></i></a>
                                        </div><!-- /.Social-icon -->
                                    </div><!-- /.contact -->
                                </div><!-- /.col-md-6 -->
                            </div><!-- /.row -->
                        </div><!-- /.map-right-content -->
                    </div><!-- /.col-md-5 -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
    </div><!-- /.contact-area -->

    <!-- ====== Footer Area ====== --> 
    <footer class="footer-area bg-gray-color" style="background-image:url(assets/images/footer-bg.png)">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="widget widget_about nevy-color">    
                        <div class="widget-title-area">
                            <h3 class="widget-title">
                                About House Rent
                            </h3><!-- /.widget-title -->
                        </div><!-- /.widget-title-area -->
                        <div class="widget-about-content">
                            <img src="assets\images\footer-logo.png" alt="house">
                            <p>We Provide Premium Word Press, Ghost and HTML template. Our Perm tritium Templates is, develop gaped in a way so that the clients find  Support. Themes are developed in a way so that the clients find.</p>
                            <a href="#" class="button">More</a>
                        </div><!-- /.widget-content -->
                    </div><!-- /.widget widget_about -->
                </div><!-- /.col-md-4 -->
                <div class="col-md-4">
                    <div class="widget widget_place_category nevy-color">
                        <div class="widget-title-area">
                            <h3 class="widget-title">Place Category</h3><!-- /.widget-title -->
                        </div><!-- /.widget-title-area -->
                        <ul>
                            <li>Flat for Rent <a href="#">Francis</a></li>
                            <li>Flat for Rent <a href="#">Collins St</a></li>
                            <li>Flat for Rent <a href="#">Rose Ln</a></li>
                            <li>Flat for Rent <a href="#">Cosgrave Ln</a></li>
                            <li>Flat for Rent <a href="#">Bourke St</a></li>
                            <li>Flat for Rent <a href="#">Flienders Ln</a></li>
                        </ul> 
                    </div><!-- /.widget -->
                </div><!-- /.col-md-4 -->
                <div class="col-md-4">
                    <div class="widget widget_instagram nevy-color">
                        <div class="widget-title-area">
                            <h3 class="widget-title">Instagram Image</h3><!-- /.widget-title -->
                        </div><!-- /.widget-title-area -->
                        <div class="instagram-image-content">
                            <a href="#"><img src="assets\images\instagram\instagram-one.png" alt=""></a>
                            <a href="#"><img src="assets\images\instagram\instagram-two.png" alt=""></a>
                            <a href="#"><img src="assets\images\instagram\instagram-three.png" alt=""></a>
                            <a href="#"><img src="assets\images\instagram\instagram-four.png" alt=""></a>
                            <a href="#"><img src="assets\images\instagram\instagram-five.png" alt=""></a>
                            <a href="#"><img src="assets\images\instagram\instagram-six.png" alt=""></a>

                        </div><!-- /.instagram-image-content -->
                    </div><!-- /.widget -->
                </div><!-- /.col-md-4 -->
            </div><!-- /.row -->
            <div class="row">
                <div class="col-md-12">
                    <div class="bottom-content">
                        <p>Copyright  &copy;2017 <a href="#">HTMLguru</a></p>
                    </div><!-- /.bottom-top-content -->
                </div><!-- /.col-md-12 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </footer><!-- /.footer-area -->

	<!-- All The JS Files
	================================================== --> 
	<script src="assets\js\vendor\jquery-1.12.4.min.js"></script>
	<script src="assets\js\plugins.js"></script>
	<script src="assets\js\main.js"></script> <!-- main-js -->
</body>
</html>


