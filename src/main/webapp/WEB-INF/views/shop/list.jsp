<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		
		<title>HBLY Shop List</title>
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
		<link rel="shortcut icon" type="image/x-icon" href="resources/assets/img/favicon.ico">
		
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
		
		
		
		
		
		
		
		<style>
		.goodsName a {
  		color: #000;
  		font-size: 16px;
  		outline: medium none;
		}
			
			
		.goodsPrice {
		color: #800000;
		}	
		
		.goodsPrice b{
		color: #800000;
		bold;
		font-size: 20px;
		}
		
		.list-group{
			background-color:#fff;
		}
			
		.list-group a{
			color: #000;
			font-size: 16px;
		}
		
		.panel a{
			color: #000;
			font-size: 20px;
		}
		
		.panel-info {
			border-color:#fff;
			background-color:#fff;
		}
		.sideMenu {
		
		}
		
		.goodsThumbImage img {
			position: absolute;
			top: 0;
			left: 0;
			right: 0;
			bottom: 0;
			max-width: 100%;
			height: auto;
		}
		
		.goodsThumbImage-wrapper {
			width: 100%;
		}
		.goodsThumbImage {
			position: relative;
			padding-top: 100%;
			overflow: hidden;
		}
		
		.goodsThumbImage .centered {
			position: absolute; 
			top: 0; 
			left: 0; 
			right: 0; 
			bottom: 0; 
		}
		
		.goodsThumbImage .centerd img {
			position: absolute; 
			top: 0; 
			left: 0; 
			max-width: 100%; 
			height: auto; 

		}
		
		
		
		
		/* 상단 배너 스타일 */
		
		.topBanner-wrapper{
			width: 100%;
		}
		.topBanner {
			position: relative;
			padding-top: 20%;
			overflow: hidden;
		}
		
		
		.topBanner img {
			position: absolute;
			top: 0;
			left: 0;
			right: 0;
			bottom: 0;
			max-width: 100%;
			height: auto;
		}
		
		
		</style>
		
		<style>
		/* 왼쪽 사이드메뉴 스타일 시작 */
		
		.sideMenu {
			background-color: #f2f9f9;
		}
		
		.panel-info {
			background-color: #e3fafa;
			font-weight:bold;
		}
		
		.list-group {
			background-color: #f2f9f9;
		}
		
		/* 왼쪽 사이드메뉴 스타일 끝 */
		</style>
		
		<!-- 우측 사이드배너 스타일 -->
		<style type="text/css">
		.banner {
	        float:left;
	        background-color:#fff;
	        width:50px;
	        height:50px;
	    }
	
	    #chase {
	        width:250px;
	        overflow:hidden;
	        margin-top:10px;
	        margin-left:10px;
	        margin-right:10px;
	        margin-bottom:10px;
	    }
	
	    #chase Img {
	        width:100%;
	    }
	
	    #chaseBar {
	        width:100%;
	        background-color:#000000;
	        color:#FFFFFF;
	        font-weight:bold;
	        text-align:center;
	    }
		
		</style>
		
		<script type="text/javascript">
		jQuery(window).scroll(function() {
		
		
		
		    // 브라우저 화면 스크롤의 현재 높이가 플로팅 배너의 높이보다 클경우
		
		    if(jQuery(window).scrollTop() > jQuery(".banner").offset().top) {
		
		
		
		        jQuery("#chase").css("position", "fixed");
				
		        jQuery("#chase").css("bottom", "70px");
		       
		    }
		
		
		
		    // 브라우저 화면 스크롤 현재 높이가 플로팅 배너의 높이보다 작을경우
		
		    else if((jQuery(window).scrollTop() < jQuery(".banner").offset().top)) {
		
		
		        jQuery("#chase").css("position", "static");
		        
		        
		
		    }
		}); 
		</script>
		
		
		
		
		
	</head>
	<body>
			<header id="header">
				<div id="header_box">
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
                            <h2>Shop</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero End -->
    
    
    
    
	
	
	<section class="pricing-area section-padding30 fix">
        <div class="container">
        <div class="container-fluid">
			<div class="row">
			
			
			
			<!-- 사이드 메뉴 바 시작 -->
			<div class="sideMenu col-lg-2 col-md-2 col-sm-2 col-xs-2">
				<!-- 사이드 바 메뉴 구현-->
				<!--  패널 타이틀 -->
				<div class="panel panel-info">
					<a href="/shop/list?c=000&l=1">헬스보충식품</a>
				</div>
				<!-- 사이드바 메뉴목록 -->
				<ul class="list-group">
					<li><a href="/shop/list?c=001&l=2">프로틴</a></li>
			  		<li><a href="/shop/list?c=002&l=2">크레아틴</a></li>
			  		<li><a href="/shop/list?c=003&l=2">아미노산</a></li>
			  		<li><a href="/shop/list?c=004&l=2">기타헬스보조제</a></li>
				</ul>
				
				<hr>
				<!--  패널 타이틀 -->
				<div class="panel panel-info">
					<a href="/shop/list?c=100&l=1">비타민/미네랄</a>
				</div>
				<!-- 사이드바 메뉴목록 -->
				<ul class="list-group">
					<li><a href="/shop/list?c=101&l=2">멀티비타민</a></li>
			  		<li><a href="/shop/list?c=102&l=2">비타민A</a></li>
			  		<li><a href="/shop/list?c=103&l=2">비타민B</a></li>
			  		<li><a href="/shop/list?c=104&l=2">비타민C</a></li>
			  		<li><a href="/shop/list?c=105&l=2">비타민D</a></li>
			  		<li><a href="/shop/list?c=106&l=2">비타민E</a></li>
			  		<li><a href="/shop/list?c=107&l=2">비타민K</a></li>
			  		<li><a href="/shop/list?c=108&l=2">비오틴</a></li>
			  		<li><a href="/shop/list?c=109&l=2">칼슘</a></li>
			  		<li><a href="/shop/list?c=110&l=2">마그네슘</a></li>
			  		<li><a href="/shop/list?c=111&l=2">아연</a></li>
			  		<li><a href="/shop/list?c=112&l=2">철분</a></li>
			  		<li><a href="/shop/list?c=113&l=2">요오드</a></li>
			  		<li><a href="/shop/list?c=114&l=2">엽산</a></li>
			  		<li><a href="/shop/list?c=115&l=2">셀레늄</a></li>
			  		<li><a href="/shop/list?c=116&l=2">크롬</a></li>
			  		<li><a href="/shop/list?c=117&l=2">기타비타민/미네랄</a></li>
				</ul>
				
				<hr>
				<!--  패널 타이틀 -->
				<div class="panel panel-info">
					<a href="/shop/list?c=200&l=1">영양제</a>
				</div>
				<!-- 사이드바 메뉴목록 -->
				<ul class="list-group">
					<li><a href="/shop/list?c=201&l=2">유산균</a></li>
			  		<li><a href="/shop/list?c=202&l=2">루테인</a></li>
			  		<li><a href="/shop/list?c=203&l=2">밀크시슬</a></li>
			  		<li><a href="/shop/list?c=204&l=2">오메가369/피쉬오일</a></li>
			  		<li><a href="/shop/list?c=205&l=2">DHA</a></li>
			  		<li><a href="/shop/list?c=206&l=2">코엔자임Q10</a></li>
			  		<li><a href="/shop/list?c=207&l=2">히알루론산/콜라겐</a></li>
			  		<li><a href="/shop/list?c=208&l=2">효소</a></li>
			  		<li><a href="/shop/list?c=209&l=2">폴리코사놀</a></li>
			  		<li><a href="/shop/list?c=210&l=2">글루코사민</a></li>
			  		<li><a href="/shop/list?c=211&l=2">프로폴리스</a></li>
			  		<li><a href="/shop/list?c=212&l=2">쏘팔매토</a></li>
			  		<li><a href="/shop/list?c=213&l=2">크레아틴</a></li>
			  		<li><a href="/shop/list?c=214&l=2">아미노산</a></li>
			  		<li><a href="/shop/list?c=215&l=2">MSM 식이유황</a></li>
			  		<li><a href="/shop/list?c=216&l=2">커큐민</a></li>
			  		<li><a href="/shop/list?c=217&l=2">레시틴</a></li>
			  		<li><a href="/shop/list?c=218&l=2">SAE-E 메티오닌</a></li>
			  		<li><a href="/shop/list?c=219&l=2">퀘세틴</a></li>
			  		<li><a href="/shop/list?c=220&l=2">트리뷸러스</a></li>
			  		<li><a href="/shop/list?c=221&l=2">레스베라트롤</a></li>
				</ul>
				
				<hr>
				<!--  패널 타이틀 -->
				<div class="panel panel-info">
					<a href="/shop/list?c=300&l=1">허브/자연추출물</a>
				</div>
				<!-- 사이드바 메뉴목록 -->
				<ul class="list-group">
					<li><a href="/shop/list?c=301&l=2">인삼</a></li>
			  		<li><a href="/shop/list?c=302&l=2">감초</a></li>
			  		<li><a href="/shop/list?c=303&l=2">징코</a></li>
			  		<li><a href="/shop/list?c=304&l=2">마카</a></li>
			  		<li><a href="/shop/list?c=305&l=2">마늘</a></li>
			  		<li><a href="/shop/list?c=306&l=2">커큐민</a></li>
			  		<li><a href="/shop/list?c=307&l=2">녹차</a></li>
			  		<li><a href="/shop/list?c=308&l=2">로얄젤리/벌화분</a></li>
			  		<li><a href="/shop/list?c=309&l=2">알로에베라</a></li>
			  		<li><a href="/shop/list?c=310&l=2">석류</a></li>
			  		<li><a href="/shop/list?c=311&l=2">클로렐라</a></li>
			  		<li><a href="/shop/list?c=312&l=2">감마리놀렌산</a></li>
			  		<li><a href="/shop/list?c=313&l=2">아유르베다</a></li>
			  		<li><a href="/shop/list?c=314&l=2">스피루리나</a></li>
			  		<li><a href="/shop/list?c=315&l=2">삼부커스</a></li>
			  		<li><a href="/shop/list?c=316&l=2">아사이베리</a></li>
			  		<li><a href="/shop/list?c=317&l=2">크랜베리</a></li>
			  		<li><a href="/shop/list?c=318&l=2">블루베리</a></li>
			  		<li><a href="/shop/list?c=319&l=2">빌베리</a></li>
			  		<li><a href="/shop/list?c=320&l=2">카무카무</a></li>
			  		<li><a href="/shop/list?c=321&l=2">루테인</a></li>
				</ul>
				
				<hr>
				<!--  패널 타이틀 -->
				<div class="panel panel-info">
					<a href="/shop/list?c=400&l=1">홍삼/인삼</a>
				</div>
				<!-- 사이드바 메뉴목록 -->
				<ul class="list-group">
					<li><a href="/shop/list?c=401&l=2">홍삼농축액/홍삼정</a></li>
			  		<li><a href="/shop/list?c=402&l=2">홍삼진액/파우치</a></li>
			  		<li><a href="/shop/list?c=403&l=2">홍삼정과/절편</a></li>
			  		<li><a href="/shop/list?c=404&l=2">홍삼캡슐</a></li>
			  		<li><a href="/shop/list?c=405&l=2">홍삼환</a></li>
			  		<li><a href="/shop/list?c=406&l=2">홍삼캔디/젤리</a></li>
			  		<li><a href="/shop/list?c=407&l=2">인삼/수삼/장뇌삼</a></li>
				</ul>
				
				<hr>
				<!--  패널 타이틀 -->
				<div class="panel panel-info">
					<a href="/shop/list?c=500&l=1">건강즙</a>
				</div>
				<!-- 사이드바 메뉴목록 -->
				<ul class="list-group">
					<li><a href="/shop/list?c=501&l=2">배즙/도라지즙</a></li>
			  		<li><a href="/shop/list?c=502&l=2">양배추즙</a></li>
			  		<li><a href="/shop/list?c=503&l=2">비트/호박즙</a></li>
			  		<li><a href="/shop/list?c=504&l=2">석류/사과/포도즙</a></li>
			  		<li><a href="/shop/list?c=505&l=2">양파즙/마늘즙</a></li>
			  		<li><a href="/shop/list?c=506&l=2">기타건강즙</a></li>
				</ul>
				
				
				<hr>
				<!--  패널 타이틀 -->
				<div class="panel panel-info">
					<a href="/shop/list?c=600&l=1">다이어트 식품</a>
				</div>
				<!-- 사이드바 메뉴목록 -->
				<ul class="list-group">
					<li><a href="/shop/list?c=601&l=2">탄수화물차단제</a></li>
			  		<li><a href="/shop/list?c=602&l=2">체지방감소제</a></li>
			  		<li><a href="/shop/list?c=603&l=2">다이어트쉐이크</a></li>
			  		<li><a href="/shop/list?c=604&l=2">기타다이어트식품</a></li>
				</ul>
				
				
				<hr>
				<!--  패널 타이틀 -->
				<div class="panel panel-info">
					<a href="/shop/list?c=700&l=1">헬스/요가용품</a>
				</div>
				<!-- 사이드바 메뉴목록 -->
				<ul class="list-group">
					<li><a href="/shop/list?c=701&l=2">요가/필라테스</a></li>
			  		<li><a href="/shop/list?c=702&l=2">근력운동</a></li>
			  		<li><a href="/shop/list?c=703&l=2">유산소운동</a></li>
			  		<li><a href="/shop/list?c=704&l=2">스트레칭/균형</a></li>
			  		<li><a href="/shop/list?c=705&l=2">헬스소품/보호대</a></li>
			  		<li><a href="/shop/list?c=706&l=2">운동측정용품</a></li>
			  		<li><a href="/shop/list?c=707&l=2">부위별 운동용품</a></li>
				</ul>
				
				
				<hr>
				<!--  패널 타이틀 -->
				<div class="panel panel-info">
					<a href="/shop/list?c=800&l=1">건강가전</a>
				</div>
				<!-- 사이드바 메뉴목록 -->
				<ul class="list-group">
					<li><a href="/shop/list?c=801&l=2">안마/찜질기</a></li>
			  		<li><a href="/shop/list?c=802&l=2">전동칫솔/살균기</a></li>
			  		<li><a href="/shop/list?c=803&l=2">비데</a></li>
			  		<li><a href="/shop/list?c=804&l=2">손건조기/소독기</a></li>
				</ul>
				
				
				<hr>
				<!--  패널 타이틀 -->
				<div class="panel panel-info">
					<a href="/shop/list?c=900&l=1">건강도서</a>
				</div>
				<!-- 사이드바 메뉴목록 -->
				<ul class="list-group">
					<li><a href="/shop/list?c=901&l=2">다이어트</a></li>
			  		<li><a href="/shop/list?c=902&l=2">요가/체조/기타</a></li>
			  		<li><a href="/shop/list?c=903&l=2">질병과 치료법</a></li>
			  		<li><a href="/shop/list?c=904&l=2">한의학/한방치료</a></li>
			  		<li><a href="/shop/list?c=905&l=2">건강에세이</a></li>
			  		<li><a href="/shop/list?c=906&l=2">웰빙/다이어트요리</a></li>
			  		<li><a href="/shop/list?c=907&l=2">해외건강도서</a></li>
				</ul>
				
				
				<hr>
				<!--  패널 타이틀 -->
				<div class="panel panel-info">
					<a href="/shop/list?c=1000&l=1">건강/의료용품</a>
				</div>
				<!-- 사이드바 메뉴목록 -->
				<ul class="list-group">
					<li><a href="/shop/list?c=1001&l=2">눈건강/렌즈관리</a></li>
			  		<li><a href="/shop/list?c=1002&l=2">마스크</a></li>
			  		<li><a href="/shop/list?c=1003&l=2">보호대/교정용품</a></li>
			  		<li><a href="/shop/list?c=1004&l=2">건강측정용품</a></li>
			  		<li><a href="/shop/list?c=1005&l=2">찜질/부항/뜸/좌훈</a></li>
			  		<li><a href="/shop/list?c=1006&l=2">호흡/수면건강</a></li>
			  		<li><a href="/shop/list?c=1007&l=2">가정의료용품</a></li>
			  		<li><a href="/shop/list?c=1008&l=2">금연용품</a></li>
				</ul>
				
			</div>
			
			
			<!-- 사이드 바 메뉴 끝 -->
			
			
			
			
			
			<!-- 상품 리스트 시작 -->
			<div class="mainMenu col-lg-8 col-md-8 col-sm-8 col-xs-8">
			
			
			
			
			<!--  상단 배너 시작 -->
			<div class="topBanner-wrapper">
				<div class="topBanner">
					
						<img src= "${pageContext.request.contextPath}/resources/images/topBanner.jpg"/>
					
				</div>
			</div>
			
			<!-- 상단 배너 끝 -->
			
			
			
			
      			<!-- 상품 리스트 forEach 시작 -->
      			<c:forEach items="${list}" var="list">
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"style="height:130px; height:260px;">
                    <div class="properties mb-30">
                        <div class="properties__card">
                            
                        <ul>
						 <li>
						 <div class="goodsThumbImage-wrapper">
						  <div class="goodsThumbImage">
						  	<div class="centered">
						   <img src="${list.goodsThumbImage}">
						   	</div>
						  </div> 
						 </div>
						  <div class="goodsName">
						   <a href="/shop/view?n=${list.goodsNumber}">${list.goodsName}</a>
						  </div>
						  <div class="goodsPrice">
						  	<b><fmt:formatNumber pattern="###,###,###" value="${list.goodsPrice}" /></b>원
						  </div>
						 </li>
						 
						</ul>
                            </div>
                        </div>
                        </div>
                        </c:forEach>
      			</div>
      			<!-- 상품리스트 끝 -->
      			
      			
      			
      			<!-- 우측 스크롤 배너 -->
      			<div class="banner col-lg-2 col-md-2 col-sm-2 col-xs-2">
      				<div id="chase">
      					<img src= "${pageContext.request.contextPath}/resources/images/sideBanner.jpg"/>
      					<div id="chaseBar">HBLY 이벤트</div>
      				</div>
      			</div>
      			<!-- 우측 스크롤 배너 끝 -->
      			
      			
      			
      			
      			
      			
			</div>
		</div>
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
