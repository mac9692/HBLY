<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
 
  <title>HBLY : 로그인</title>

	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">


	<!-- CSS here -->
	<link rel="stylesheet" href="/resources/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="/resources/assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="/resources/assets/css/slicknav.css">
	<link rel="stylesheet" href="/resources/assets/css/animate.min.css">
	<link rel="stylesheet" href="/resources/assets/css/magnific-popup.css">
	<link rel="stylesheet" href="/resources/assets/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="/resources/assets/css/themify-icons.css">
	<link rel="stylesheet" href="/resources/assets/css/slick.css">
	<link rel="stylesheet" href="/resources/assets/css/nice-select.css">
	<link rel="stylesheet" href="/resources/assets/css/style.css">
	
	<!-- pingendo -->
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
	
<style>
.hero-capd h1{
	color:black;
    font-size: 60px;
    font-weight: 600;
    text-transform: uppercase;
    line-height: 1;
}
.hero-capd h3{
	color:black;
    font-size: 20px;
    font-weight:400;
    text-transform: uppercase;
    line-height: 1;
}
.btn{
    background: #ff1313;
    font-family: "Oswald", sans-serif;
    text-transform: uppercase;
    padding: 27px 44px;
    color: #fff;
    cursor: pointer;
    display: inline-block;
    font-size: 18px;
    font-weight: 600;
    border-radius: 0px;
    line-height: 1;
    border: 2px solid #fff;
    -moz-user-select: none;
    letter-spacing: 1px;
    line-height: 0;
    margin-bottom: 0;
    margin: 10px;
    cursor: pointer;
    transition: color 0.4s linear;
    position: relative;
    z-index: 1;
    overflow: hidden;
    margin: 0;
}
</style>
</head>
<body>
	<header id="header">
		<div class="header_box text-center">
			<%@ include file= "../include/header.jsp" %>
		</div>
	</header>

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
	
	<main>
		<!--? Hero Start -->
		<div class="slider-area2">
			<div class="slider-height2 d-flex align-items-center">
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div class="hero-cap hero-cap2 pt-70">
								<h2>HBLY LOGIN</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Hero End -->
		
<!--? Start Align Area -->
<div class="whole-wrap">

	<!-- memberlogin -->
<c:url value="/login" var="loginUrl" />
  <form:form role="form" action="${loginUrl}" method="POST" autocomplete="off">

	<div class="py-5 text-center black-bg">
    <div class="container">
      <div class="row">
        <div class="hero-capd mx-auto col-md-6 col-10 bg-white p-5">
          <h1><a href="/"style="text-decoration:none">HBLY</a></h1>
            <div class="form-group">
            
            	<c:if test="${param.error != null}">
        		<p>아이디와 비밀번호가 잘못되었습니다.</p>
    			</c:if>
    			
            	<input type="email" class="form-control" placeholder="Enter email" id="userId" name="userId" required="required" >
            </div>
            <div class="form-group mb-3">
	            <input type="password" class="form-control" placeholder="Password" id="userPassword" name="userPassword" required="required">
	            <small class="form-text text-right">
	            <a class="text-dark" href="/member/signup">회원가입</a> | <a class="text-dark" href="/member/idInqury">아이디</a> / <a class="text-dark" href="/member/pwInqury"> 비밀번호 찾기</a>
	            </small>
            </div>
            <button type="submit" class="btn btn-danger" id="signin_btn" name="signin_btn">로그인</button>
          <hr>
          <h3 class="hero-capd">간편하게 시작하기</h3>
          <div>
            <a href ="https://kauth.kakao.com/oauth/authorize?client_id=5bde6ae9c71bf5f382a97fe4ea87eb67&redirect_uri=http://localhost:8282/auth/kakao/callback&response_type=code"><img src="/images/kakao_login_button.png"/></a>
					  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
          </div>
        </div>
      </div>
    </div>
	</div>
  </form:form>   
</div>
								<!-- End Align Area -->
								
								
								
								
								
								
								
								
								<!-- ? services-area -->
								<section class="services-area">
									<div class="container">
										<div class="row justify-content-between">
											<div class="col-xl-4 col-lg-4 col-md-6 col-sm-8">
												<div class="single-services mb-40">
													<div class="features-icon">
														<img src="/resources/assets/img/icon/icon1.svg" alt="">
													</div>
													<div class="features-caption">
														<h3>Location</h3>
														<p>You’ll look at graphs and charts in Task One, how to approach </p>
													</div>
												</div>
											</div>
											<div class="col-xl-3 col-lg-4 col-md-6 col-sm-8">
												<div class="single-services mb-40">
													<div class="features-icon">
														<img src="/resources/assets/img/icon/icon2.svg" alt="">
													</div>
													<div class="features-caption">
														<h3>Phone</h3>
														<p>(90) 277 278 2566</p>
														<p>  (78) 267 256 2578</p>
													</div>
												</div>
											</div>
											<div class="col-xl-3 col-lg-4 col-md-6 col-sm-8">
												<div class="single-services mb-40">
													<div class="features-icon">
														<img src="/resources/assets/img/icon/icon3.svg" alt="">
													</div>
													<div class="features-caption">
														<h3>Email</h3>
														<p>jacson767@gmail.com</p>
														<p>contact56@zacsion.com</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</section>
							</main>
							<footer>
								<!--? Footer Start-->
								<div class="footer-area black-bg">
									<div class="container">
										<div class="footer-top footer-padding">
											<!-- Footer Menu -->
											<div class="row">
												<div class="col-xl-12">
													<div class="single-footer-caption mb-50 text-center">
														<!-- logo -->
														<div class="footer-logo wow fadeInUp" data-wow-duration="1s" data-wow-delay=".2s">
															<a href="index.html"><img src="/resources/assets/img/logo/logo2_footer.png" alt=""></a>
														</div>
														<!-- Menu -->
														<!-- Header Start -->
														<div class="header-area main-header2 wow fadeInUp" data-wow-duration="2s" data-wow-delay=".4s">
															<div class="main-header main-header2">
																<div class="menu-wrapper menu-wrapper2">
																	<!-- Main-menu -->
																	<div class="main-menu main-menu2 text-center">
																		<nav>
																			<ul>
																				<li><a href="index.html">Home</a></li>
																				<li><a href="about.html">About</a></li>
																				<li><a href="courses.html">Courses</a></li>
																				<li><a href="pricing.html">Pricing</a></li>
																				<li><a href="gallery.html">Gallery</a></li>
																				<li><a href="contact.html">Contact</a></li>
																			</ul>
																		</nav>
																	</div>   
																</div>
															</div>
														</div>
														<!-- Header End -->
														<!-- social -->
														<div class="footer-social mt-30 wow fadeInUp" data-wow-duration="3s" data-wow-delay=".8s">
															<a href="#"><i class="fab fa-twitter"></i></a>
															<a href="https://bit.ly/sai4ull"><i class="fab fa-facebook-f"></i></a>
															<a href="#"><i class="fab fa-pinterest-p"></i></a>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- Footer Bottom -->
										<div class="footer-bottom">
											<div class="row d-flex align-items-center">
												<div class="col-lg-12">
													<div class="footer-copy-right text-center">
														<p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
															Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
															<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- Footer End-->
								</footer>
								<!-- Scroll Up -->
								<div id="back-top" >
									<a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
								</div>

								<!-- JS here -->

								<script src="/resources/assets/js/vendor/modernizr-3.5.0.min.js"></script>
								<!-- Jquery, Popper, Bootstrap -->
								<script src="/resources/assets/js/vendor/jquery-1.12.4.min.js"></script>
								<script src="/resources/assets/js/popper.min.js"></script>
								<script src="/resources/assets/js/bootstrap.min.js"></script>
								<!-- Jquery Mobile Menu -->
								<script src="/resources/assets/js/jquery.slicknav.min.js"></script>

								<!-- Jquery Slick , Owl-Carousel Plugins -->
								<script src="/resources/assets/js/owl.carousel.min.js"></script>
								<script src="/resources/assets/js/slick.min.js"></script>
								<!-- One Page, Animated-HeadLin -->
								<script src="/resources/assets/js/wow.min.js"></script>
								<script src="/resources/assets/js/animated.headline.js"></script>
								<script src="/resources/assets/js/jquery.magnific-popup.js"></script>
								
								<!-- Nice-select, sticky -->
								<script src="/resources/assets/js/jquery.nice-select.min.js"></script>
								<script src="/resources/assets/js/jquery.sticky.js"></script>
								
								<!-- contact js -->
								<script src="/resources/assets/js/contact.js"></script>
								<script src="/resources/assets/js/jquery.form.js"></script>
								<script src="/resources/assets/js/jquery.validate.min.js"></script>
								<script src="/resources/assets/js/mail-script.js"></script>
								<script src="/resources/assets/js/jquery.ajaxchimp.min.js"></script>
								
								<!-- Jquery Plugins, main Jquery -->	
								<script src="/resources/assets/js/plugins.js"></script>
								<script src="/resources/assets/js/main.js"></script>
								
							</body>
							</html>

