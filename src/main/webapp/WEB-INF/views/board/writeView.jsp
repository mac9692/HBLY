<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
		
		<title>HBLY Board List</title>
		<!-- jQuery -->
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
			
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
			
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
			
		<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
		
		<script src="/resources/ckeditor/ckeditor.js"></script>
		
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

		<!-- 상단 배너 스타일 -->		
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
		
		#cke_boardContent{
			height:500px;
		}  				
		
		#cke_1_bottom{
			display: none;
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
	    
	    #container{
	    	color:black;
	    }
	    
/* 		  table, th, td, tr {
		    margin-top: 1rem;
		    font-size: 20px;
		    text-align: center;
		  } */
		  
	  .t1 {
	    background-color: transparent;
	    font-size: 20px;
	    text-align: center;
	    width: 90%;
	    border: 1px solid #7A7276;
	    margin: 1%;
		  }		 
		  
/* 		  .button1{
			display: flex;
			margin-left: 30%;
   			padding-left: 15%;
			margin-top: 1rem;
		  }  */
	
		.write_btn{
		-webkit-tap-highlight-color: transparent;
		 background-color: #fff;
		 border-radius: 5px;
		 border: solid 1px #e8e8e8;
		 box-sizing: border-box;
		 clear: both;
		 cursor: pointer;
		 display: block;
		 margin-left: 80%;
		 font-family: inherit;
		 font-size: 14px;
		 font-weight: normal;
		 height: 42px;
		 line-height: 40px;
		 outline: none;
		 padding-left: 30px;
		 padding-right: 30px;	
		 -webkit-transition: all 0.2s ease-in-out;
		 transition: all 0.2s ease-in-out;
		 -webkit-user-select: none;
		    -moz-user-select: none;
		     -ms-user-select: none;
		         user-select: none;
		 white-space: nowrap;
		 color: black;
		 margin-top: 1%;
   		 margin-bottom: 1%;
	}
	
/* 	  .cancel_btn{
		-webkit-tap-highlight-color: transparent;
		 background-color: #fff;
		 border-radius: 5px;
		 border: solid 1px #e8e8e8;
		 box-sizing: border-box;
		 clear: both;
		 cursor: pointer;
		 display: block;
		 font-family: inherit;
		 font-size: 14px;
		 font-weight: normal;
		 height: 42px;
		 line-height: 40px;
		 outline: none;
		 padding-left: 30px;
		 padding-right: 30px;	
		 -webkit-transition: all 0.2s ease-in-out;
		 transition: all 0.2s ease-in-out;
		 -webkit-user-select: none;
		    -moz-user-select: none;
		     -ms-user-select: none;
		         user-select: none;
		 white-space: nowrap;
		 color: black;
		 margin-top: 1%;
   		 margin-bottom: 1%;
		  } */
	
	 .category{
		margin: 1%;
	} 
	
	/* #t2{
	   display: grid;
	}
	
	#t3{
	   display: grid;
       margin-top: 1%;
	}
	#t4{
	   display: grid;
	}
	#t5{
	   display: grid;
	} */
	
	#t6{
	display: -webkit-box;
	}
	
	.t2{
	background-color: #EEE8E9;
    border: 1px solid #7A7276;
    text-align: center;
    border: 1px solid #7A7276;
	}
	
	.t3{
	 border: 1px solid #7A7276;
    text-align: center;
    border: 1px solid #7A7276;
	}
	
	#boardTitle{
 	   text-align: center;
       width: 90%;
	    margin-top: 1%;
	    margin-bottom: 1%;

	}
	
	#boardContent{
	    margin-top: 1%;
        height: 1000px !important;
   		width: 90%;

	}

	#userId{
	text-align: center;
    margin-top: 1%;
    margin-bottom: 1%;
    width: 90%;

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

	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='writeForm']");
			
			$(".write_btn").on("click", function(){
				formObj.attr("action", "/board/write");
				formObj.attr("method", "post");
				formObj.submit();
			});
		})		
	</script>
	
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
                            <h2>게시판</h2>                           	
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero End -->
    
    <sec:authentication var="principal" property="principal" />
	
	<div class="container">		
			<section id="container">
				<form role="writeForm" method="post" action="/board/write">
																
						<select class = "category" name="categoryCode" >
							<c:if test="${principal.member.verify == 9}">
							<option value = "0" ${categoryCode=="0" ? "selected" : ""}>공지사항</option>	
							</c:if>																											
							<option value = "1" ${categoryCode=="1" ? "selected" : ""}>자유게시판</option>
							<option value = "2" ${categoryCode=="2" ? "selected" : ""}>문의게시판</option>
							<option value = "3" ${categoryCode=="3" ? "selected" : ""}>리뷰게시판</option>
						</select>											


					<table class="t1">
						<tbody>	
							<tr>
								<td class="t2">제목</td>
								<td class="t3">
								<input type="text" id="boardTitle" name="boardTitle" required="required"/>
								</td>
							</tr>	
							<tr>
								<td class="t2">내용</td>
								<td class="t3">
								<textarea id="boardContent" name="boardContent" required="required" ></textarea>
								
								<script>
								 var ckeditor_config = {
								   resize_enaleb : false,
								   enterMode : CKEDITOR.ENTER_BR,
								   shiftEnterMode : CKEDITOR.ENTER_P,
								   filebrowserUploadUrl : "/admin/goods/ckUpload"
								 };
								 
								 CKEDITOR.replace("boardContent", ckeditor_config);
								</script>
								
								</td>
							</tr>						
							<tr>
								<td class="t2">작성자</td>
								<td class="t3">
								<input type="text" id="userId" name="userId" value="${principal.member.userId}"/>
								</td>		
						</tbody>			
					</table>
					
					<div class="button1">				
						<button class="write_btn" type="submit">작성</button>	
						<button class="cancel_btn" type="submit">취소</button>
					</div>
					
				</form>
			</section>
			<hr />
		</div>
   
		
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