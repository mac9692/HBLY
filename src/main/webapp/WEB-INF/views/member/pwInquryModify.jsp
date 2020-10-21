<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
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
 	<!--? Preloader Start -->
	<div id="preloader-active">
		<div class="preloader d-flex align-items-center justify-content-center">
			<div class="preloader-inner position-relative">
				<div class="preloader-circle"></div>
				<div class="preloader-img pere-text">
					<img src="/resources/assets/img/logo/HBLY.png" alt="">
				</div>
			</div>
		</div>
	</div>
	
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
								<h2>비밀번호 재설정</h2>
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
		      <div class="container px-5 mx-5">
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
  		<div class="whole-wrap">
  		<div class="container box_1170">
  		<!-- form start -->
      
  		<div class="section-top-border">
  		      <div class="row">
        <div class="col-md-11">
     	   01. 아이디 입력 > 02. 본인확인<span class="text-primary"><b class="text-danger"> > 03. 비밀번호 재설정</b></span>
          <hr>비밀번호를 변경해 주세요.<br>다른 아이디나 사이트에서 사용한 적 없는 안전한 비밀번호로 변경 해주세요.
        </div>
      	</div>
		
			
	      <!-- form -->
		 <form method="POST" action="/member/pwInqurySuccess">
	      <div class="row">
	        <div class="col-md-11 border my-2 p-3">
	          <div class="form-group">
	            <div class="mx-auto col-md-8 col-10 bg-white p-4">
	              <p>
	                <strong>헬블리 아이디 : <span class="text-primary">${userId}</span></strong>
	              </p>
	              <div class="form-group"> <input type="password" class="form-control" placeholder="새 비밀번호" id="userPassword" name="userPassword" required><div id="pwCheck"></div> </div>
	              <div class="form-group mb-3"> <input type="password" class="form-control" placeholder="새 비밀번호 확인" id="userPasswordCheck" name="userPasswordCheck" required><div id="pw2Check"></div>
	                <hr>
	                <p> * 영문, 숫자를 함께 사용하면(4자이상 12자이하)보다 안전합니다.<br> * 다른 사이트와 다른 <b>헬블리 아이디만의 비밀번호</b>를 만들어주세요.</p>
	              </div>
	            </div>
	          </div>
	        </div>
	        <div class="container text-center">
	          <button type="submit" class="genric-btn danger radius" id="pwInqury_btn" disabled="disabled">확인</button>
	        </div>
	      </div>
	      </form>      
	      <!-- form end -->
    
    </div>
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

<!-- 비밀번호 유효성 검사 -->
<script type="text/javascript">
// 비밀번호 정규식
var pwJ = /^[A-Za-z0-9]{4,12}$/;

// 비밀번호 유효성 검사
// 1-1 정규식 체크
$('#userPassword').blur(function() {
	if(pwJ.test($('#userPassword').val())){
		console.log('true');
		$('#pwCheck').text('');
	}else{
		console.log('false');
		$('#pwCheck').text('숫자 or 문자로만 4~12자리 입력해주세요.');
		$('#pwCheck').css('color', 'red');
		$('#pwInqury_btn').attr("disabled",true);

	}
})

// 1-2 패스워드 일치 확인
$('#userPasswordCheck').blur(function() {
	if ($('#userPassword').val() != $(this).val()) {
		$('#pw2Check').text('비밀번호가 일치하지 않습니다.');
		$('#pw2Check').css('color', 'red');
		$('#pwInqury_btn').attr("disabled",true);

	} else {
		$('#pw2Check').text('');
		$("#pwInqury_btn").attr("disabled",false);
	}
});

$('#pwInqury_btn').click(function() {
	alert('비밀번호가 성공적으로 변경되었습니다.');
})
</script>

</html>
