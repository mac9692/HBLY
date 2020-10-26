<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
 
  <title>HBLY | 인기상품</title>

	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">


		<!-- CSS here -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.carousel.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/slicknav.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/flaticon.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/gijgo.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/animate.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/animated-headline.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/magnific-popup.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/fontawesome-all.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/themify-icons.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/slick.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/nice-select.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/style.css">

	
	<link rel="stylesheet" href="resources/assets/css/daunstyle.css">
<style>
.hero-capd h3{
	color:black;
    font-size: 20px;
    font-weight:400;
    line-height: 1;
}
</style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#showmenu').click(function() {
            $('.menu').slideToggle("fast");
    });
});
</script>
</head>
<body class="black-bg">
        
	<!--? Header Start -->
	<%-- <%@ include file= "include/header.jsp" %> --%>
	
	<main>
		<!--? Hero Start -->
		<div class="slider-area2">
			<div class="slider-height2 d-flex align-items-center">
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div class="hero-cap hero-cap2 pt-70">
								<h2>인기 상품</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Hero End -->
		

		<section class="team-area fix">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="section-tittle text-center mb-55 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".1s" style="visibility: visible; animation-duration: 1s; animation-delay: 0.1s; animation-name: fadeInUp;">
                        <h2>What Do You Want</h2>
                    </div>
                </div>
            </div>
        </div>
 	   </section>
 	   
 	   
	<section class="blog_area section-padding">
        <div class="container">
            <div class="row">
            
            <div class="col-lg-3">
                    <div class="blog_right_sidebar">
                        <aside class="single_sidebar_widget post_category_widget">
                        
	                        <div class="d-flex justify-content-between">
							      <div class="d-flex align-items-center">
							      <h4 class="widget_title" style="color: #2d2d2d;"><a href="/shop/list?c=000&l=1">헬스보충식품</a></h4>
							    </div>
							    <div class="reply-btn">
							     <i id="showmenu" class="fa fa-arrow-down" aria-hidden="true"></i>
							   </div>
							 </div>
                           
                            <div class="menu" style="display: none;">
                            <ul class="list cat-list">
                                <li>
                                    <a href="/shop/list?c=001&l=2" class="d-flex">
                                        <p>프로틴</p>
                                        <p>(37)</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/shop/list?c=002&l=2" class="d-flex">
                                        <p>크레아틴</p>
                                        <p>(10)</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/shop/list?c=003&l=2" class="d-flex">
                                        <p>아미노산</p>
                                        <p>(03)</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="/shop/list?c=004&l=2" class="d-flex">
                                        <p>기타헬스보조제</p>
                                        <p>(11)</p>
                                    </a>
                                </li>
                                <li>
                                </li>
                            </ul>
                            </div>
                            <h4 class="widget_title" style="color: #2d2d2d;"><a href="/shop/list?c=100&l=1">비타민/미네랄</a></h4>
                            <ul class="list cat-list">
                                <li>
                                    <a href="#" class="d-flex">
                                        <p>Resaurant food</p>
                                        <p>(37)</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex">
                                        <p>Travel news</p>
                                        <p>(10)</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex">
                                        <p>Modern technology</p>
                                        <p>(03)</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex">
                                        <p>Product</p>
                                        <p>(11)</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex">
                                        <p>Inspiration</p>
                                        <p>21</p>
                                    </a>
                                </li>
                                <li>
                                </li>
                            </ul>                            
                        </aside>                        
                    </div>
                </div>
            
            
                <div class="col-lg-9 mb-5 mb-lg-0">
                 
                    <div class="blog_left_sidebar">
                        <article class="blog_item">
                            <div class="gallery-area section-padding30" style="padding:0;">
        <div class="container-fluid ">
            <div class="row">

                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                    <div class="box snake mb-30">
                        <div class="gallery-img big-img" style="background-image: url(resources/assets/img/gallery/gallery1.png);"></div>
                        <div class="overlay" style="top: 500px; left: 0px; width: 992px; height: 500px;">
                            <div class="overlay-content">
                                <h3>Muscle gaining </h3>
                                <a href="gallery.html"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                   <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                    <div class="box snake mb-30">
                        <div class="gallery-img big-img" style="background-image: url(resources/assets/img/gallery/gallery1.png);"></div>
                        <div class="overlay" style="top: 500px; left: 0px; width: 992px; height: 500px;">
                            <div class="overlay-content">
                                <h3>Muscle gaining </h3>
                                <a href="gallery.html"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                   <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                    <div class="box snake mb-30">
                        <div class="gallery-img big-img" style="background-image: url(resources/assets/img/gallery/gallery1.png);"></div>
                        <div class="overlay" style="top: 500px; left: 0px; width: 992px; height: 500px;">
                            <div class="overlay-content">
                                <h3>Muscle gaining </h3>
                                <a href="gallery.html"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                                   <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                    <div class="box snake mb-30">
                        <div class="gallery-img big-img" style="background-image: url(resources/assets/img/gallery/gallery1.png);"></div>
                        <div class="overlay" style="top: 500px; left: 0px; width: 992px; height: 500px;">
                            <div class="overlay-content">
                                <h3>Muscle gaining </h3>
                                <a href="gallery.html"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                                   <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                    <div class="box snake mb-30">
                        <div class="gallery-img big-img" style="background-image: url(resources/assets/img/gallery/gallery1.png);"></div>
                        <div class="overlay" style="top: 500px; left: 0px; width: 992px; height: 500px;">
                            <div class="overlay-content">
                                <h3>Muscle gaining </h3>
                                <a href="gallery.html"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                                   <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                    <div class="box snake mb-30">
                        <div class="gallery-img big-img" style="background-image: url(resources/assets/img/gallery/gallery1.png);"></div>
                        <div class="overlay" style="top: 500px; left: 0px; width: 992px; height: 500px;">
                            <div class="overlay-content">
                                <h3>Muscle gaining </h3>
                                <a href="gallery.html"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
              
            </div>
        </div>
    </div>
                        </article>

                        <nav class="blog-pagination justify-content-center d-flex">
                            <ul class="pagination">
                                <li class="page-item">
                                    <a href="#" class="page-link" aria-label="Previous">
                                        <i class="ti-angle-left"></i>
                                    </a>
                                </li>
                                <li class="page-item">
                                    <a href="#" class="page-link">1</a>
                                </li>
                                <li class="page-item active">
                                    <a href="#" class="page-link">2</a>
                                </li>
                                <li class="page-item">
                                    <a href="#" class="page-link" aria-label="Next">
                                        <i class="ti-angle-right"></i>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                
            </div>
        </div>
    </section>	

		
		
		
		
		
		
		
		<!-- ? services-area -->
	<%-- 	<%@ include file= "include/gymService.jsp" %>		 --%>			
	</main>
	
	<!-- Footer -->
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
							<div class="footer-logo wow fadeInUp" data-wow-duration="1s"
								data-wow-delay=".2s">
								<a href=""><img
									src="../resources/assets/img/logo/HBLYfooter.png" alt=""></a>
							</div>
							<!-- Menu -->
							<!-- Header Start -->
							<div class="header-area main-header2 wow fadeInUp"
								data-wow-duration="2s" data-wow-delay=".4s">
								<div class="main-header main-header2">
									<div class="menu-wrapper menu-wrapper2">
										<!-- Main-menu -->
										<div class="main-menu main-menu2 text-center">
											<nav>
												<ul>
													<li><a href="/">Home</a></li>
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
							<div class="footer-social mt-30 wow fadeInUp"
								data-wow-duration="3s" data-wow-delay=".8s">
								<a href="#"><i class="fab fa-twitter"></i></a> <a
									href="https://bit.ly/sai4ull"><i class="fab fa-facebook-f"></i></a>
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
							<p>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | This template is made with <i
									class="fa fa-heart" aria-hidden="true"></i> by <a
									href="https://colorlib.com" target="_blank">HBLY</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>
						</div>
					</div>
				</div>
			</div>
			<div >
				<div class="row d-flex align-items-center">
					<div class="col-lg-12">
						<div class="hero-d footer-copy-right text-center">
							<p><a href="/">입점/제휴문의</a> | <a href="/policy/terms">이용 약관</a> | <a
		href="/policy/privacy">개인정보 처리방침</a> | <a href="/policy/commercial">광고정책</a> |
	<a href="/policy/youth">청소년 보호정책</a></p>	
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer End-->
</footer>
	
	
	<!-- Scroll Up -->
	<div id="back-top" class="hero-d" >
		<p><a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a></p>
	</div>

		<!-- JS here -->
		
		<script src="${pageContext.request.contextPath}/resources/assets/js/vendor/modernizr-3.5.0.min.js"></script>
		<!-- Jquery, Popper, Bootstrap -->
		<script src="${pageContext.request.contextPath}/resources/assets/js/vendor/jquery-1.12.4.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/popper.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.min.js"></script>
		<!-- Jquery Mobile Menu -->
		<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.slicknav.min.js"></script>
		
		<!-- Jquery Slick , Owl-Carousel Plugins -->
		<script src="${pageContext.request.contextPath}/resources/assets/js/owl.carousel.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/slick.min.js"></script>
		<!-- One Page, Animated-HeadLin -->
		<script src="${pageContext.request.contextPath}/resources/assets/js/wow.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/animated.headline.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.magnific-popup.js"></script>
		
		<!-- Date Picker -->
		<script src="${pageContext.request.contextPath}/resources/assets/js/gijgo.min.js"></script>
		<!-- Nice-select, sticky -->
		<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.nice-select.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.sticky.js"></script>
		
		<!-- counter , waypoint,Hover Direction -->
		<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.counterup.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/waypoints.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.countdown.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/hover-direction-snake.min.js"></script>
		
		<!-- contact js -->
		<script src="${pageContext.request.contextPath}/resources/assets/js/contact.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.form.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.validate.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/mail-script.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.ajaxchimp.min.js"></script>
		
		<!-- Jquery Plugins, main Jquery -->   
		<script src="${pageContext.request.contextPath}/resources/assets/js/plugins.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>

					
    </body>
</html>
