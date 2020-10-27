<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
	<head>
		<title>HBLY</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- jQuery -->
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		
		<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
		
		
		
		
			<!-- 근육질  -->
		    <link rel="manifest" href="site.webmanifest">
		    <link rel="shortcut icon" type="image/x-icon" href="../resources/assets/img/favicon.ico">
		
		    <!-- CSS here -->
		    <link rel="stylesheet" href="../resources/assets/css/bootstrap.min.css">
		    <link rel="stylesheet" href="../resources/assets/css/owl.carousel.min.css">
		    <link rel="stylesheet" href="../resources/assets/css/slicknav.css">
		    <link rel="stylesheet" href="../resources/assets/css/flaticon.css">
		    <link rel="stylesheet" href="../resources/assets/css/gijgo.css">
		    <link rel="stylesheet" href="../resources/assets/css/animate.min.css">
		    <link rel="stylesheet" href="../resources/assets/css/animated-headline.css">
		    <link rel="stylesheet" href="../resources/assets/css/magnific-popup.css">
		    <link rel="stylesheet" href="../resources/assets/css/fontawesome-all.min.css">
		    <link rel="stylesheet" href="../resources/assets/css/themify-icons.css">
		    <link rel="stylesheet" href="../resources/assets/css/slick.css">
		    <link rel="stylesheet" href="../resources/assets/css/nice-select.css">
		    <link rel="stylesheet" href="../resources/assets/css/style.css">
		    
		    
		    <style>
		    	.blog-cap span {
		    		font-size:16px;
		    		color:#fff;
		    	}
		    </style>
	</head>
	<body class="black-bg">
    		<header id="header">
				<div class="header_box text-center">
					<%@ include file= "../include/header.jsp" %>
				</div>
			</header>
    
<main>
    <!--? Hero Start -->
    <div class="slider-area2">
        <div class="slider-height2 d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap hero-cap2 pt-70">
                            <h2>Gallery</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero End -->
			
			
			
			
			
			
			
    <!--명예의 전당 시작 -->
    <section class="team-area fix">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="section-tittle text-center mb-55 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".1s">
                        <h2 >명예의 전당</h2>
                    </div>
                    
                </div>
            </div>
            
            <hr/>
            <br/>
            
            
            <div class="row text-center">
                <div class="col-xl-3 col-lg-3 col-md-3">
                    <div class="home-blog-single mb-30 wow fadeInUp " data-wow-duration="1s" data-wow-delay=".2s">
                        <div class="blog-img-cap">
                            <div class="blog-img">
                                <img src="${pageContext.request.contextPath}/resources/assets/img/gallery/guser1.png" style="width:250px; height:300px;" alt="">
                            </div>
                            <div class="blog-cap">
                                <span>정지훈 회원님</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-3">
                    <div class="home-blog-single mb-30 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">
                        <div class="blog-img-cap">
                            <div class="blog-img">
                                <img src="${pageContext.request.contextPath}/resources/assets/img/gallery/guser2.png" style="width:250px; height:300px;" alt="">
                            </div>
                            <div class="blog-cap">
                                <span>소지섭 회원님</span>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                <div class="col-xl-3 col-lg-3 col-md-3">
                    <div class="home-blog-single mb-30 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">
                        <div class="blog-img-cap">
                            <div class="blog-img">
                                <img src="${pageContext.request.contextPath}/resources/assets/img/gallery/guser3.png" style="width:250px; height:300px;" alt="">
                            </div>
                            <div class="blog-cap">
                                <span>김종국 회원님</span>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                <div class="col-xl-3 col-lg-3 col-md-3">
                    <div class="home-blog-single mb-30 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">
                        <div class="blog-img-cap">
                            <div class="blog-img">
                                <img src="${pageContext.request.contextPath}/resources/assets/img/gallery/guser4.png" style="width:250px; height:300px;" alt="">
                            </div>
                            <div class="blog-cap">
                                <span>이창민 회원님</span>
                            </div>
                        </div>
                    </div>
                </div>
             
                
                <div class="col-xl-3 col-lg-3 col-md-3">
                    <div class="home-blog-single mb-30 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">
                        <div class="blog-img-cap">
                            <div class="blog-img">
                                <img src="${pageContext.request.contextPath}/resources/assets/img/gallery/guser5.png" style="width:250px; height:300px;" alt="">
                            </div>
                            <div class="blog-cap">
                                <span>권상우 회원님</span>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                <div class="col-xl-3 col-lg-3 col-md-3">
                    <div class="home-blog-single mb-30 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">
                        <div class="blog-img-cap">
                            <div class="blog-img">
                                <img src="${pageContext.request.contextPath}/resources/assets/img/gallery/guser6.png" style="width:250px; height:300px;" alt="">
                            </div>
                            <div class="blog-cap">
                                <span>정석원 회원님</span>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-xl-3 col-lg-3 col-md-3">
                    <div class="home-blog-single mb-30 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">
                        <div class="blog-img-cap">
                            <div class="blog-img">
                                <img src="${pageContext.request.contextPath}/resources/assets/img/gallery/guser7.jpg" style="width:250px; height:300px;" alt="">
                            </div>
                            <div class="blog-cap">
                                <span>민호 회원님</span>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                <div class="col-xl-3 col-lg-3 col-md-3">
                    <div class="home-blog-single mb-30 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">
                        <div class="blog-img-cap">
                            <div class="blog-img">
                                <img src="${pageContext.request.contextPath}/resources/assets/img/gallery/guser8.png" style="width:250px; height:300px;" alt="">
                            </div>
                            <div class="blog-cap">
                                <span>송승헌 회원님</span>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-xl-3 col-lg-3 col-md-3">
                    <div class="home-blog-single mb-30 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">
                        <div class="blog-img-cap">
                            <div class="blog-img">
                                <img src="${pageContext.request.contextPath}/resources/assets/img/gallery/guser9.jpg" style="width:250px; height:300px;" alt="">
                            </div>
                            <div class="blog-cap">
                                <span>공유 회원님</span>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                <div class="col-xl-3 col-lg-3 col-md-3">
                    <div class="home-blog-single mb-30 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">
                        <div class="blog-img-cap">
                            <div class="blog-img">
                                <img src="${pageContext.request.contextPath}/resources/assets/img/gallery/guser10.jpeg" style="width:250px; height:300px;" alt="">
                            </div>
                            <div class="blog-cap">
                                <span>준수 회원님</span>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-xl-3 col-lg-3 col-md-3">
                    <div class="home-blog-single mb-30 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">
                        <div class="blog-img-cap">
                            <div class="blog-img">
                                <img src="${pageContext.request.contextPath}/resources/assets/img/gallery/guser11.jpg" style="width:250px; height:300px;" alt="">
                            </div>
                            <div class="blog-cap">
                                <span>이병헌 회원님</span>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                <div class="col-xl-3 col-lg-3 col-md-3">
                    <div class="home-blog-single mb-30 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">
                        <div class="blog-img-cap">
                            <div class="blog-img">
                                <img src="${pageContext.request.contextPath}/resources/assets/img/gallery/guser12.jpg" style="width:250px; height:300px;" alt="">
                            </div>
                            <div class="blog-cap">
                                <span>옥택연 회원님</span>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                <div class="col-xl-12 col-lg-12 col-md-12">
                    <div class="home-blog-single mb-30 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">
                        <hr>
                    </div>
                </div>
            
            
            </div>
            </section>
		   <!--명예의 전당 끝 -->
	
	<br>
			<section id="service">
				<div class="service_box">
					<%@ include file= "../include/gymService.jsp" %>
				</div>
			</section>
			
			<footer id="footer">
				<div id="footer_box">
					<%@ include file= "../include/footer.jsp" %>
				</div>
			</footer>
			
			
			<section id="chat">
				<div id="chat_box">
					<%@ include file= "../include/chat.jsp" %>
				</div>
			</section>
</main>

  <!-- Scroll Up -->
  <div id="back-top" >
    <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
</div>

<!-- JS here -->

<script src="../resources/assets/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="../resources/assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="../resources/assets/js/popper.min.js"></script>
<script src="../resources/assets/js/bootstrap.min.js"></script>
<!-- Jquery Mobile Menu -->
<script src="../resources/assets/js/jquery.slicknav.min.js"></script>

<!-- Jquery Slick , Owl-Carousel Plugins -->
<script src="../resources/assets/js/owl.carousel.min.js"></script>
<script src="../resources/assets/js/slick.min.js"></script>
<!-- One Page, Animated-HeadLin -->
<script src="../resources/assets/js/wow.min.js"></script>
<script src="../resources/assets/js/animated.headline.js"></script>
<script src="../resources/assets/js/jquery.magnific-popup.js"></script>

<!-- Date Picker -->
<script src="../resources/assets/js/gijgo.min.js"></script>
<!-- Nice-select, sticky -->
<script src="../resources/assets/js/jquery.nice-select.min.js"></script>
<script src="../resources/assets/js/jquery.sticky.js"></script>

<!-- counter , waypoint,Hover Direction -->
<script src="../resources/assets/js/jquery.counterup.min.js"></script>
<script src="../resources/assets/js/waypoints.min.js"></script>
<script src="../resources/assets/js/jquery.countdown.min.js"></script>
<script src="../resources/assets/js/hover-direction-snake.min.js"></script>

<!-- contact js -->
<script src="../resources/assets/js/contact.js"></script>
<script src="../resources/assets/js/jquery.form.js"></script>
<script src="../resources/assets/js/jquery.validate.min.js"></script>
<script src="../resources/assets/js/mail-script.js"></script>
<script src="../resources/assets/js/jquery.ajaxchimp.min.js"></script>

<!-- Jquery Plugins, main Jquery -->	
<script src="../resources/assets/js/plugins.js"></script>
<script src="../resources/assets/js/main.js"></script>

</body>
</html>