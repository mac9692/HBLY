<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
  	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>HBLY | 비밀번호 찾기</title>
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
	
	<link rel="stylesheet" href="/resources/assets/css/daunstyle.css">
</head>

<body>

	<!--? Header Start -->
	<%@ include file= "../include/header.jsp" %>
	
	<main>
		<!--? Hero Start -->
		<div class="slider-area2">
			<div class="slider-height2 d-flex align-items-center">
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div class="hero-capd hero-cap2 pt-70">
								<h2>비밀번호 찾기</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Hero End -->
	
  
		<!-- nav2 -->
		<nav class="navbar navbar-dark black-bg">
		    <div class="container d-flex justify-content-center">
		      <div class="container px-5 mx-5 text-center">
		        <div class="row">
		          <div class="col-md-6 daun">
		          <a class="navbar-brand" href="/member/idInqury">아이디 찾기</a>
		          </div>
		          <div class="col-md-6 daun">
		            <a class="navbar-brand" href="/member/pwInqury">비밀번호 찾기</a></div>
		        </div>
		      </div>
		    </div>
		</nav>
  
  		  <!-- pwInqury -->	
		  <div class="py-5 pl-5">
		    <div class="container">
		      <div class="row">
		        <div class="col-md-11">
		          <span><b class="text-danger">01. 아이디 입력</b></span> > 02. 본인확인 > 03. 비밀번호 재설정
		          <hr>비밀번호를 찾고자 하는 아이디를 입력해주세요.
		        </div>
		      </div>
		      
		      <!-- form -->
			  <form method="POST" action="/member/pwInquryCheck">	
		      <div class="row">
		        <div class="col-md-11 border my-2 p-3">
		            <div class="form-group"> <label for="form16" class="py-2"></label>
		              
		              <div class="form-group row"> <label for="userId" class="col-lg-2 col-md-2 col-sm-2 col-form-label">아이디</label>
		                <div class="col-lg-8 col-md-8 col-sm-8">
		                  <input type="email" class="form-control" id="userId" name="userId" placeholder="hbly@hbly.com" required="required"> </div>
		              </div>
		              
		              <div class="form-group row">
		              	<div class="col-lg-2 col-md-2 col-sm-2"></div>
		                <div class="col-lg-8 col-md-8 col-sm-8" id="idCheck"></div> 
		              </div>
		              
		            </div>
		        </div>
		        <div class="container text-center">
		          <button type="submit" class="genric-btn danger e-large" id="pwInqury_btn" disabled="disabled">다음</button>
		        </div>
		      </div>
		      </form>
		      <!-- form end -->
		      
		    </div>
		    
		  </div>
    
		 <!-- ? services-area -->
		<%@ include file= "../include/gymService.jsp" %>
	</main>
	
	
	<!-- Footer -->
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
	<div id="back-top" class="hero-d">
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
<!-- 유효성 검사/id check -->
<script type="text/javascript">

// 이메일 검사 정규식
var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

// 아이디 유효성 검사(1 = 중복 / 0 = 사용가능)
$('#userId').blur(function () {
	var userId = $('#userId').val();
	
	if (userId=='') {
		$('#idCheck').text('이메일을 입력해주세요.');
		$('#idCheck').css('color','red');
		$("#signup_btn").attr("disabled",true);		
	}else{
		//정규식 통과하면 idcheck
		if(mailJ.test($('#userId').val())){
			console.log(mailJ.test($('#userId').val()));
			$('#idCheck').text('');
			$("#signup_btn").attr("disabled",false);
			
				$.ajax({
					url : '${pageContext.request.contextPath}/member/checkId?userId='+userId,
					type : 'get',
					dataType : 'json',
					success : function(data) {
					console.log(data)
						
						if(data==1){
							// 1: 아이디(email) 있음
							$('#idCheck').text('');
							$("#pwInqury_btn").attr("disabled",false);								
						}else{
							// 0: 아이디(email) 없음
							$('#idCheck').text('아이디를 정확히 입력해주세요.');
							$('#idCheck').css('color','red');
							$("#pwInqury_btn").attr("disabled",true);
						}
						
					}, error : function(request,status,error){
					    console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					   }
				})
		}else{
			$('#idCheck').text('이메일을 확인해주세요.');
			$('#idCheck').css('color','red');
			$('#pwInqury_btn').attr("disabled",true);
		}
	}
	
});
</script>
</html>