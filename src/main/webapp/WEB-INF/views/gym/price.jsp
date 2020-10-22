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
                            <h2>Pricing</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero End -->

			<section id="price">
				<div class="price_box">
					<%@ include file= "../include/gymPrice.jsp" %>
				</div>
			</section>
	
	
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