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
	<style type="text/css">
	.dauntable{
	width:100%;
	}
	</style>
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
  		<div class="whole-wrap">
  		<div class="container box_1170">
  		<!-- form start -->
  		 <!-- form -->
       <form method="post" action="/member/pwInquryModify">
  		<div class="section-top-border">
  		      <div class="row">
        <div class="col-md-11">
     	   01. 아이디 입력 <span class="text-primary"><b class="text-danger">> 02. 본인확인 </b></span> > 03. 비밀번호 재설정
          <hr>
        </div>
      </div>
			<div class="form-group"><h3 class="mb-30"><b>회원정보에 등록한 휴대전화로 인증</b></h3><p>회원정보에 등록한 휴대전화 번호와 입력한 휴대전화 번호가 같아야, 인증번호를 받을 수 있습니다.</p>
              
            
				<div class="row">
					<div class="col-lg-12">
						<blockquote class="generic-blockquote">
						
							<div class="form-group row">
				              <label for="userName" class="col-lg-2 col-md-3 col-sm-12 col-form-label">이름</label>
				                <div class="col-lg-7 col-md-5 col-sm-12">
				                  <input type="text" class="form-control" id="userName" name="userName"placeholder="이름" required>
				                </div>
				                                  
				              </div>
				              
				              <div class="form-group row">
				              	<div class="col-lg-2 col-md-3 col-sm-12"></div>
				                <div class="col-lg-7 col-md-5 col-sm-12"> <div id="nameCheck"></div></div> 
				              </div>
				              
				              <div class="form-group row">
				              <label for="userPhoneNumber" class="col-lg-2 col-md-3 col-sm-12 col-form-label">휴대전화</label>
				                <div class="col-lg-7 col-md-5 col-sm-12">
				                  <input type="text" class="form-control" id="userPhoneNumber" name="userPhoneNumber" placeholder="ex)01012345678" required>
				                  
				                 </div>
				               <div class="col-lg-3 col-md-4 col-sm-12"><button type="button" class="genric-btn danger radius dauntable" onclick="ckeck1();">인증번호 받기</button></div>   
				                
				              </div>
				              
				              <div class="form-group row">
				              	<div class="col-lg-2 col-md-3 col-sm-12"></div>
				                <div class="col-lg-8 col-md-8 col-sm-12"><div id="phoneCheck"></div></div> 
				              </div>
				              
				              <div class="form-group row"> <label for="certification" class="col-lg-2 col-md-3 col-sm-12 col-form-label">인증번호</label>
				                <div class="col-lg-7 col-md-5 col-sm-12">
				                  <input type="text" class="form-control" id="certification" name="certification"placeholder="인증번호 숫자 입력">
				                </div>
				                
				                 <div class="col-lg-3 col-md-4 col-sm-12"><button type="button" class="genric-btn danger radius dauntable" onclick="smsAuthBtn();">인증번호 확인</button></div>
				              </div>
				              
				              <input type="hidden" id="randomVal" value=""/>	
				              
				          	
				             <div class="form-group row">
				                <div class="col-lg-2 col-md-2 col-sm-2"></div>
				                <div class="col-lg-8 col-md-8 col-sm-8"><div id="certCheck"></div></div> 
				             </div>
				              
				        <div class="container text-center">
				          <button type="submit" class="genric-btn danger radius" id="pwInqury_btn" disabled="disabled">다음</button>
				        </div>
        
						</blockquote>
					</div>
				</div>
				
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
	<!-- 유효성 검사 & 휴대폰 인증  -->
	<script type="text/javascript">
	
	function ckeck1() {
		var userName  = $('#userName').val();
		var userPhoneNumber = $('#userPhoneNumber').val();		
		
		//버튼을 누르고 공백일때,
		if(userName==''){
			$('#nameCheck').text('이름을 입력해주세요.');
			$('#nameCheck').css('color','red');
			$("#pwInqury_btn").attr("disabled",true);
			alert('이름을 입력해주세요.');		
		}else{
			$('#nameCheck').text('');
		}
		
		if(userPhoneNumber==''){
			$('#phoneCheck').text('휴대번호를 입력해주세요.');
			$('#phoneCheck').css('color','red');
			$("#pwInqury_btn").attr("disabled",true);
			alert('휴대번호를 입력해주세요.');
		}else{			
			$('#phoneCheck').text('');
		}
		
		if(userName!='' && userPhoneNumber!=''){
			check2();
		}

	}
	
	function check2() {
		
		var random = Math.floor(Math.random() * 1000000)+"";
		var userName  = $('#userName').val();
		var userPhoneNumber = $('#userPhoneNumber').val();
		var obj = {
				"userName" : userName,
				"userPhoneNumber" : userPhoneNumber
		};
		console.log(obj);
		// name & phone 정보가 DB에 있나 확인
		$.ajax({
			type:'POST',
			url : "/member/checkNamePhoneNumber",
			dataType : "json",
			data : JSON.stringify(obj),
			contentType: "application/json",
			success : function(data) {
				// 일치하는 회원이 있으면 1, sms 전송/ 없으면 0
				if(data == 0){
					$('#phoneCheck').text("입력하신 정보와 일치하는 회원이 존재하지 않습니다.");
					$('#phoneCheck').css('color','red');
					$("#pwInqury_btn").attr("disabled",true);
				}else { // DB에 정보가 존재하면 인증문자 발송
					$('#phoneCheck').text("");
					cert();
				}
			},
			error : function (error) {
				console.log("실패!");
				alert(error);
			}
		});
	}
	
	function cert() {	
	
		 var random = Math.floor(Math.random() * 1000000)+"";
		 var phone = $('#userPhoneNumber').val();				 
		 
		 $('#randomVal').val(random);
			var obj = {
					"type" : "SMS",
					"contentType" : "COMM",
					"from" : "01090955190",
					"subject" : "HBLY 비밀번호 찾기 본인인증 문자입니다",
					"countryCode" : "82",
					"content" : random,
					"messages" : [ {
						"to" : phone,
						"subject" : "HBLY 인증 문자",
						"content" : "[HBLY] 비밀번호 찾기 본인인증 문자입니다. 인증번호 [" + random +"]를 입력해주세요."
					} ]
				};
			
			$.ajax({
				type : 'POST',
				url : "/member/sms",
				dataType : "json",
				data :  JSON.stringify(obj),
				contentType: "application/json",
				success : function(data) {
					if(data.statusName == "success"){
						$('#certCheck').text("인증 번호가 전송되었습니다.");
						$('#certCheck').css('color','blue');
						$("#pwInqury_btn").attr("disabled",true);
					}else {
						$('#certCheck').text("입력한 번호를 다시 확인해주세요.");
						$('#certCheck').css('color','red');
						$("#pwInqury_btn").attr("disabled",true);
					}
				}
			});
	}
	
	function smsAuthBtn() {
	console.log("4번 smsAuthBtn 함수");
	
		var userVal = $('#certification').val();
		var certVal = $('#randomVal').val();
		
		if(userVal == certVal){
			$('#certCheck').text("인증이 완료되었습니다.");
			$('#certCheck').css('color','blue');	
			$("#pwInqury_btn").attr("disabled",false);
		}else{
			$('#certCheck').text("인증번호를 다시 확인해주세요");
			$('#certCheck').css('color','red');
			$("#pwInqury_btn").attr("disabled",true);
		}
	};

	</script>


  	
</html>