<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
  <meta charset="utf-8">
   <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>HBLY : 로그인</title>
	<meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="/resources/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/resources/assets/css/slicknav.css">
    <link rel="stylesheet" href="/resources/assets/css/flaticon.css">
    <link rel="stylesheet" href="/resources/assets/css/gijgo.css">
    <link rel="stylesheet" href="/resources/assets/css/animate.min.css">
    <link rel="stylesheet" href="/resources/assets/css/animated-headline.css">
    <link rel="stylesheet" href="/resources/assets/css/magnific-popup.css">
    <link rel="stylesheet" href="/resources/assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="/resources/assets/css/themify-icons.css">
    <link rel="stylesheet" href="/resources/assets/css/slick.css">
    <link rel="stylesheet" href="/resources/assets/css/nice-select.css">
    <link rel="stylesheet" href="/resources/assets/css/style.css">
    
    <link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	type="text/css">

<link rel="stylesheet"
	href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
	
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous" style=""></script>
</head>

<body >
<!--? Preloader Start -->
	<div id="preloader-active">
		<div class="preloader d-flex align-items-center justify-content-center">
			<div class="preloader-inner position-relative">
				<div class="preloader-circle"></div>
				<div class="preloader-img pere-text">
					<img src="/resources/assets/img/logo/loder.png" alt="">
				</div>
			</div>
		</div>
	</div>
	<!-- Preloader Start -->
	<header>
		<!-- Header Start -->
		<div class="header-area header-transparent">
			<div class="main-header header-sticky">
				<div class="container-fluid">
					<div class="menu-wrapper d-flex align-items-center justify-content-between">
						<!-- Logo -->
						<div class="logo">
							<a href="index.html"><img src="/resources/assets/img/logo/logo.png" alt=""></a>
						</div>
						<!-- Main-menu -->
						<div class="main-menu f-right d-none d-lg-block">
							<nav>
								<ul id="navigation">
									<li><a href="index.html">Home</a></li>
									<li><a href="about.html">About</a></li>
									<li><a href="courses.html">Courses</a></li>
									<li><a href="pricing.html">Pricing</a></li>
									<li><a href="gallery.html">Gallery</a></li>
									<li><a href="blog.html">Blog</a>
										<ul class="submenu">
											<li><a href="blog.html">Blog</a></li>
											<li><a href="blog_details.html">Blog Details</a></li>
											<li><a href="elements.html">Elements</a></li>
										</ul>
									</li>
									<li><a href="contact.html">Contact</a></li>
								</ul>
							</nav>
						</div>          
						<!-- Header-btn -->
						<div class="header-btns d-none d-lg-block f-right">
							<a href="contact.html" class="btn">Contact me</a>
						</div>
						<!-- Mobile Menu -->
						<div class="col-12">
							<div class="mobile_menu d-block d-lg-none"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Header End -->
	</header>
	<main>
		<!--? Hero Start -->
		<div class="slider-area2">
			<div class="slider-height2 d-flex align-items-center">
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div class="hero-cap hero-cap2 pt-70">
								<h2>Elements</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Hero End -->
								<!--? Start Align Area -->
								<div class="whole-wrap">
									<!-- memberjoin -->

<div class="py-5 text-center">
 <div class="container">
 <div class="row">
	<div class="mx-auto">
	<h1>HBLY 로그인</h1>
	
	<c:url value="/login" var="loginUrl" />
 	<form role="form" action="${loginUrl}" method="POST" autocomplete="off">
 
 	<div class="form-group" >
     <label for="userId">아이디</label>
      <input type="email" class="form-control" placeholder="Enter email" id="userId" name="userId" required="required" >
       <c:if test="${param.error != null}">
       <p>아이디와 비밀번호가 잘못되었습니다.</p>
       </c:if>
       </div>
       
    <div class="form-row">
    	<div class="form-group col-md-6">
    	<label for="userPassword">비밀번호</label>
    	<input type="password" class="form-control" id="userPassword" name="userPassword" placeholder="password" required>
       </div>
       
</div>


<div class="form-group mb-3">
	<small class="form-text text-muted text-right">
	<a href="/member/signup">회원가입</a><strong> | </strong> <a href="/member/idInqury">아이디</a><strong> / </strong> <a href="/member/pwInqury"> 비밀번호 찾기</a>
	</small>
</div>
</div>
<div class="form-group">
 <button type="submit" class="button button-contactForm btn_1 boxed-btn" id="signin_btn" name="signin_btn">로그인</button>
</form>
 
 <hr>
 
 <p class="text-info"><b>간편하게 시작하기</b></p>
 
 <div class="row mb-4 container d-flex justify-content-center">
  	<a href ="https://kauth.kakao.com/oauth/authorize?client_id=5bde6ae9c71bf5f382a97fe4ea87eb67&redirect_uri=http://localhost:8282/auth/kakao/callback&response_type=code"><img src="/images/kakao_login_button.png"/></a>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
 </div>
 
</div>

</div>
</div>

        </div>
    
  
  
  
  

<!-- JS here -->

<script src="./resources/assets/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="./resources/assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="./resources/assets/js/popper.min.js"></script>
<script src="./resources/assets/js/bootstrap.min.js"></script>
<!-- Jquery Mobile Menu -->
<script src="./resources/assets/js/jquery.slicknav.min.js"></script>

<!-- Jquery Slick , Owl-Carousel Plugins -->
<script src="./resources/assets/js/owl.carousel.min.js"></script>
<script src="./resources/assets/js/slick.min.js"></script>
<!-- One Page, Animated-HeadLin -->
<script src="./resources/assets/js/wow.min.js"></script>
<script src="./resources/assets/js/animated.headline.js"></script>
<script src="./resources/assets/js/jquery.magnific-popup.js"></script>

<!-- Date Picker -->
<script src="./resources/assets/js/gijgo.min.js"></script>
<!-- Nice-select, sticky -->
<script src="./resources/assets/js/jquery.nice-select.min.js"></script>
<script src="./resources/assets/js/jquery.sticky.js"></script>

<!-- counter , waypoint,Hover Direction -->
<script src="./resources/assets/js/jquery.counterup.min.js"></script>
<script src="./resources/assets/js/waypoints.min.js"></script>
<script src="./resources/assets/js/jquery.countdown.min.js"></script>
<script src="./resources/assets/js/hover-direction-snake.min.js"></script>

<!-- contact js -->
<script src="./resources/assets/js/contact.js"></script>
<script src="./resources/assets/js/jquery.form.js"></script>
<script src="./resources/assets/js/jquery.validate.min.js"></script>
<script src="./resources/assets/js/mail-script.js"></script>
<script src="./resources/assets/js/jquery.ajaxchimp.min.js"></script>

<!-- Jquery Plugins, main Jquery -->	
<script src="./resources/assets/js/plugins.js"></script>
<script src="./resources/assets/js/main.js"></script>
</body>

</html>