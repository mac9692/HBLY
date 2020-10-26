<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 

<html>
	<head>
		
		<title>HBLY</title>
		
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
				

				
		
		
					<!-- ajax를 이용한 상품댓글리스트 함수 (함수여서 head에 놓음) -->
								<script> 
									function goodsReplyList(){
									
									
									 var goodsNumber = ${view.goodsNumber};
									 $.getJSON("/shop/view/replyList" + "?n=" + goodsNumber, function(data){
									  var str = "";
									  
									  $(data).each(function(){
									   
									   console.log(data);
									   
									   var goodsReplyRegidate = new Date(this.goodsReplyRegidate);
									   goodsReplyRegidate = goodsReplyRegidate.toLocaleDateString("ko-US")
									   
									   str += "<li data-goodsReplyNumber='" + this.goodsReplyNumber + "'>"
									     + "<div class='userInfo'>"
									     + "<span class='userNickname'>" + this.userNickname + "</span>"
									     + "<span class='goodsReplyRegidate'>" + goodsReplyRegidate + "</span>"
									     + "</div>"
									     + "<div class='goodsReplyContent'>" + this.goodsReplyContent + "</div>"
									     
									     + "<c:if test="${pageContext.request.userPrincipal.name != null}">"
									     
									     + "<div class='replyFooter'>"
									     + "<button type='button' class='modify' data-goodsReplyNumber='" + this.goodsReplyNumber + "'>M</button>"
									     + "<button type='button' class='delete' data-goodsReplyNumber='" + this.goodsReplyNumber + "'>D</button>"
									     + "</div>"
									     
									     + "</c:if>"
									     
									     + "</li>";           
									  });
									  
									  $("section.goodsReplyList ol").html(str);
									 });
									 
									 
									}
									</script>
		
		
		
		
		
		
		
		
		<!-- 댓글 모달 스타일 -->
		<style>
		 
		
		 div.modalContent { 
		 	position:fixed; 
		 	top:20%; 
		 	left:calc(50% - 250px); 
		 	width:600px; 
		 	height:300px; 
		 	padding:20px 10px; 
		 	background:#fff; 
		 	border:2px solid #666; }
		 
		 
		 
		 div.modalContent textarea { 
		 	font-size:16px; 
		 	font-family:'맑은 고딕', verdana; 
		 	padding:10px; 
		 	width:570px; 
		 	height:200px; 
		 }
		 
		 
		 .replyModal {
		 	position: relative;
		 	z-index: 1;
		 	display: none;
		 }
		 
		 .modalBackground {
		 	position:fixed;
		 	top:0; 
		 	left:0; 
		 	width:100%; 
		 	height:100%; 
		 	background:rgba(0, 0, 0, 0.8); 
		 	z-index:-1;
		 	
		 }
		 
		 .modalContent{
		 	position:fixed;
		 }
		 
		 .modalContent button{
		 	font-size:20px; 
		 	padding:10px 10px; 
		 	margin:10px 0;  
		 	border:1px solid #ccc;
		 }
		 
		 
		 .modal_cancel {
		 	color: #fff;
			background: #1f2b7b;
			border: 1px solid transparent;
			margin-left:20px;
		 }
		 
		 .modal_cancel:hover {
		 	color: #1f2b7b;
			border: 1px solid #1f2b7b;
			background: #fff;
		 }
		 
		 .modal_modify_btn {
		 	color: #fff;
			background: #1f2b7b;
			border: 1px solid transparent;
		 }
		 .modal_modify_btn:hover {
		 	color: #1f2b7b;
			border: 1px solid #1f2b7b;
			background: #fff;
		 }
		</style>
		
		
		
		
		
		
		<!-- 상품 리스트 스타일 -->
		<style>
		 div.goods div.goodsImage { float:left; width:350px; }
		 div.goods div.goodsImage img { width:350px; height:auto; }
		 
		 div.goods div.goodsInfo { float:right; width:330px; font-size:22px; }
		 div.goods div.goodsInfo p { margin:0 0 20px 0; }
		 div.goods div.goodsInfo p span { display:inline-block; width:100px; margin-right:15px; font-weight:bold; }
		 
		 div.goods div.goodsInfo p.cartStock input { font-size:22px; width:50px; padding:5px; margin:0; border:1px solid #eee; }
		 div.goods div.goodsInfo p.cartStock button { color:#000; font-size:26px; border:none; background:none; }
		 
		 
		 div.goods div.goodsInfo p.addToCart { text-align:right; }
		 div.goods div.goodsDescribe { font-size:18px; clear:both; padding-top:30px;
		 padding: 20px 20px;
		 background-color: #f2f9f9; }
		
		.goodsDescribe hr {
			border-bottom: 1px solid #ccc;
		}
		
		</style>
		
		
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
		</style>
		
		
		
		<!-- 상단 배너 스타일 -->
		<style>
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
		
		
		
		
		
		
		
		
		
		
		
		<!-- 댓글 리스트 스타일 -->
		<style>
		 
		 .replyForm {
		 	padding: 30px 0;
		 }
		 .replyForm div.input_area {
		 	margin: 10px 0;
		 }
		 .replyForm textarea {
		 	font-size:16px; 
		 	font-family:'맑은 고딕', verdana; 
		 	padding:10px; 
		 	width:500px;
		 	height:150px;
		 }
		 .replyForm button {
		 	font-size:20px; 
		 	padding:5px 10px; 
		 	margin:10px 0;
		 }
		 
		 .replyFooter button {
		 	color : #000;
		 	font-size: 14px;
		 	border: 1px solid #999;
		 	background: none;
		 	margin-right: 10px;
		 }
		 
		 .goodsReplyList {
		 	padding: 30px 0;
		 }
		 
		 .goodsReplyList ol {
		 	padding: 0;
		 	margin: 0;
		 }
		 
		 .goodsReplyList ol li {
		 	padding: 10px 0;
		 	border-bottom: 2px solid #eee;
		 }
		 
		 
		 .goodsReplyList div.replyFooter {
		 	margin-bottom:10px;
		 }
		 
		 .userNickname {
		 	color: #2c234d;
		 	font-size: 16px;
		 	font-weight: bold;
		 }
		 .goodsReplyContent {
		 	color: #777777;
		 	font-size: 15px;
		 	padding: 10px;
		 	margin:20px 0;
		 }
		 .goodsReplyRegidate {
		 	color: #999999;
		 	font-size: 14px;
		 	margin-bottom: 0;
		 	margin-left: 20px;
		 }
		 
		 
		 .input_area button {
		 	color: #fff;
			background: #1f2b7b;
			border: 1px solid transparent;
		 }
		 .input_area button:hover {
			color: #1f2b7b;
			border: 1px solid #1f2b7b;
			background: #fff;
		 }
		 
		 .addCart_btn {
		 	color: #fff;
			background: #1f2b7b;
			border: 1px solid transparent;
		 }
		 .addCart_btn:hover {
		 	color: #1f2b7b;
			border: 1px solid #1f2b7b;
			background: #fff;
		 }
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
			

    <!--? Hero Start -->
    <div class="slider-area2">
        <div class="slider-height2 d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap hero-cap2 pt-70">
                            <h2>상품조회</h2>
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
			
			
			
			
      			<!-- 상품 상세 설명 시작 -->
      			<form:form role="form" method="post">
					<input type="hidden" name="goodsNumber" value="${view.goodsNumber}" />
				</form:form>
						
				<div class="goods">
				
					<div class="goodsImage">
						<img src="${view.goodsImage}">
					</div>
					
					<div class="goodsInfo">
						<p class="goodsName"><span>상품명</span>${view.goodsName}</p>
							  
						<p class="categoryName"><span>카테고리</span>${view.categoryName}</p>
							  
						<p class="goodsPrice">
							<span>가격 </span><fmt:formatNumber pattern="###,###,###" value="${view.goodsPrice}" /> 원
						</p>
							  
						<p class="goodsStock">
							<span>재고 </span><fmt:formatNumber pattern="###,###,###" value="${view.goodsStock}" /> EA
						</p>
							  
						
						
						<c:if test="${view.goodsStock != 0}">
							  
						<p class="cartStock">
						<span>구입 수량</span>
						<button type="button" class="minus">-</button>
						<input type="number" class="numBox" min="1" max="${view.goodsStock}" value="1" readonly="readonly"/>
						<button type="button" class="plus">+</button>
								 
							<script>
								  $(".plus").click(function(){
								   var num = $(".numBox").val();
								   var plusNum = Number(num) + 1;
								   
								   if(plusNum >=${view.goodsStock}  ) {    
								    $(".numBox").val(num);
								   } else {
								    $(".numBox").val(plusNum);          
								   }
								  });
								  
								  $(".minus").click(function(){
								   var num = $(".numBox").val();
								   var minusNum = Number(num) - 1;
								   
								   if(minusNum <= 0) {
								    $(".numBox").val(num);
								   } else {
								    $(".numBox").val(minusNum);          
								   }
								  });
							</script>
								 
						</p>
							  
						
						<p class="addToCart">
							 
							<button type="button" class="addCart_btn">카트에 담기</button>
							 
							<script>
							  
							   
							   $(".addCart_btn").click(function(){
							   			var goodsNumber = $("#goodsNumber").val();
							   			var cartStock = $(".numBox").val();
							   			
							   			var data = {
							   					goodsNumber : goodsNumber,
							   					cartStock : cartStock
							   			};
							   			$.ajax({
							   				url : "/shop/addCart",
							   				type : "POST",
							   				data : data,
							   			 	success : function(result){
							   					console.log(result);
							   					if(result==1){
							   					alert("카트 담기 성공");
							   					$(".numBox").val("1");
							   					}else{
							   					alert("회원만 사용할 수 있습니다.")
							   					$(".numBox").val("1");
							   				}
							   			},
							   				error : function(){
							   					alert("카트 담기 실패");
							   				}
							   			});
							   		});
							   </script>
							   
						</p>
						</c:if>
						
						
						<c:if test="${view.goodsStock ==0 }">
							<p>상품 수량이 부족합니다.</p>
						</c:if>
					</div>
							 
					<div class="goodsDescribe">
						<h1 style="font-weight:bold;">제품 상세설명</h1>
						<hr>
						<br>
					
						${view.goodsDescribe}
					</div>
			<!-- 상품 상세 설명 끝 -->
			
			
			<!-- 댓글 시작 -->
			
			<div id="reply">
				<c:if test="${pageContext.request.userPrincipal.name ==null }">
					<p>소감을 남기시려면<a href="/member/signin">로그인</a>해주세요</p>
				</c:if>
				
				<c:if test="${pageContext.request.userPrincipal.name != null}">
					<section class="replyForm">
						<form:form role="form" method="post" autocomplete="off">
							<input type="hidden" name="goodsNumber" id="goodsNumber" value="${view.goodsNumber}">
							   		
							<div class="input_area">
								<textarea name="goodsReplyContent" id="goodsReplyContent"></textarea>
							</div>
							   		
							<div class="input_area">
								<button type="button" id="reply_btn">소감 남기기</button>
									   			
								<script>
								$("#reply_btn").click(function(){
									var formObj = $(".replyForm form[role='form']");
									var goodsNumber = $("#goodsNumber").val();
									var goodsReplyContent = $("textarea#goodsReplyContent").val()
									var data = {
										goodsNumber : goodsNumber,
										goodsReplyContent : goodsReplyContent
										};
												  
									$.ajax({
									url : "/shop/view/registerGoodsReply",
									   type : "post",
									   data : data,
									   success : function(){
										   goodsReplyList();
										   $("textarea#goodsReplyContent").val("");
									   }
									  });
									 });
									</script>
							</div>
				 		</form:form>
					</section>
				</c:if>
			</div>
			<!-- 댓글 리스트 끝 -->
			
			<section class="goodsReplyList">
				  <ol>
				  </ol>
				  <script>
				  	goodsReplyList();
				  </script>	  
				  
				  <!-- 수정 버튼 함수 -->
				  <script>
				  $(document).on("click", ".modify", function(){
					  $(".replyModal").fadeIn(200);
					  var goodsReplyNumber = $(this).attr("data-goodsReplyNumber");
					  var goodsReplyContent = $(this).parent().parent().children(".goodsReplyContent").text();
					  
					  $(".modal_replyContent").val(goodsReplyContent);
					  $(".modal_modify_btn").attr("data-goodsReplyNumber", goodsReplyNumber);
					 });
				  </script>
				  <!-- 삭제 버튼 함수 -->
				  <script>
					 $(document).on("click", ".delete", function(){
					  
					  
					  var deleteConfirm = confirm("정말로 삭제하시겠습니까?")
					  if(deleteConfirm){
					  var data = { goodsReplyNumber : $(this).attr("data-goodsReplyNumber")};
					   
					  $.ajax({
					   url : "/shop/view/deleteGoodsReply",
					   type : "post",
					   data : data,
					   success : function(result){
						   console.log(result);
						   if(result ==1){
						   goodsReplyList();
						   }else{
							   alert("작성자 본인만 삭제가능합니다.")
						   }
					   }
					  ,
					  error : function(){
						  alert("로그인이 필요합니다.")
					  }
					  });
					  }
					 });
					</script>
			</section>
			<!--  -->
			
			
			
			
			
			
		<!-- 모달 시작 -->
		<div class="replyModal">
			<div class="modalContent">
				<div>
					<textarea class="modal_replyContent" name="modal_replyConent"></textarea>
		  		</div>
		  
		  		<div>
				   <button type="button" class="modal_modify_btn">수정</button>
				   <button type="button" class="modal_cancel">취소</button>
		  		</div>
		  	</div>
		
		<div class="modalBackground"></div>
		</div>
		
		<script>
		$(".modal_cancel").click(function(){
			 $(".replyModal").fadeOut(200);
			});
		
		</script>
		
		<script>
		$(".modal_modify_btn").click(function(){
			 var modifyConfirm = confirm("정말로 수정하시겠습니까?");
			 console.log(modifyConfirm);
			 if(modifyConfirm) {
			  var data = {
			     goodsReplyNumber : $(this).attr("data-goodsReplyNumber"),
			     goodsReplyContent : $(".modal_replyContent").val()
			    };  // ReplyVO 형태로 데이터 생성
			  
			  $.ajax({
			   url : "/shop/view/modifyGoodsReply",
			   type : "post",
			   data : data,
			   success : function(result){
			    console.log(result);
			    if(result == 1) {
			     goodsReplyList();
			     $(".replyModal").fadeOut(200);
			    } else {
			     alert("작성자 본인만 할 수 있습니다.");   
			     
			    }
			   },
			   error : function(){
			    alert("로그인하셔야합니다.")
			   }
			  });
			 }
			 
			});
		</script>
			
			
			
			
			
			
		</div>
	</div>
      			<!-- 상품 상세 설명 끝 -->
      			
      			
      			
      			
      			
      			<!-- 우측 스크롤 배너 -->
      			<div class="banner col-lg-2 col-md-2 col-sm-2 col-xs-2">
      				<div id="chase">
      					<img src= "${pageContext.request.contextPath}/resources/images/sideBanner.jpg"/>
      					<div id="chaseBar">프로젝트 화이팅</div>
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
