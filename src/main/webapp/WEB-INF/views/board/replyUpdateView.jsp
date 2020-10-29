<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

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
			margin-left: 25%;
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
		height:550;
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
	    
	    .button{
	    	display: flex;
			margin-left: 30%;
 			padding-left: 15%;
			color: black;
			margin-top: 1rem;	
	    }	
	    
	    .update_btn{
	    color:black;
			-webkit-tap-highlight-color: transparent;
			  background-color: #fff;
			  border-radius: 5px;
			  border: solid 1px #e8e8e8;
			  box-sizing: border-box;
			  clear: both;
			  cursor: pointer;
			  display: inline-block;
			  font-family: inherit;
			  font-size: 14px;
			  font-weight: normal;
			  height: 42px;
			  line-height: 40px;
			  outline: none;
			  padding-left: 25px;
			  padding-right: 30px;
			  text-align: left !important;
			  -webkit-transition: all 0.2s ease-in-out;
			  transition: all 0.2s ease-in-out;
			  -webkit-user-select: none;
		     -moz-user-select: none;
		      -ms-user-select: none;
		          user-select: none;
			  white-space: nowrap;
			  width: auto; 
	    }
	    
	    .cancel_btn{
	    color:black;
			-webkit-tap-highlight-color: transparent;
			  background-color: #fff;
			  border-radius: 5px;
			  border: solid 1px #e8e8e8;
			  box-sizing: border-box;
			  clear: both;
			  cursor: pointer;
			  display: inline-block;
			  font-family: inherit;
			  font-size: 14px;
			  font-weight: normal;
			  height: 42px;
			  line-height: 15px;
			  outline: none;
			  padding-left: 20px;
			  padding-right: 25px;
			  text-align: left !important;
			  -webkit-transition: all 0.2s ease-in-out;
			  transition: all 0.2s ease-in-out;
			  -webkit-user-select: none;
		     -moz-user-select: none;
		      -ms-user-select: none;
		          user-select: none;
			  white-space: nowrap;
			  width: auto; 
	    }	 

	    .re{
	    	border: solid 1px #e8e8e8;
	    	height: 42px;
	    }
	    
	    .t0{
   	    margin-top: 3%;
	    margin-left: 5%;
	    margin-right: 5%;
   	    margin-bottom: 1%;
	    font-size: 20px;
	    text-align: center;
	    border: 1px solid #7A7276;
	    width: 90%;

	    }
	    
	/*     .t{
       	margin-top: 1%;
	    margin-left: 5%;
	    margin-right: 5%;
   	    margin-bottom: 1%;
	    } */
	    
	    .t1{
    	margin-top: 1%;
	    font-size: 20px;
	    background-color: #EEE8E9;
	    border: 1px solid #7A7276;
	    text-align: center;
	    }
	    
	    .t2{
    	margin-top: 1%;
	    font-size: 20px;
	    border: 1px solid #7A7276;
	    text-align: center;
	    width: 80%;
	    
	    }
	    
		#boardReplyContent{
     	margin-top: 1%;
   	    margin-bottom: 1%;
   	    height: 300px;
	    width: 90%;
	    border: 1px solid #7A7276;
	    text-align: left;
	    } 
	    
	    #boardReplyUserId{
	    margin-top: 1%;
	    margin-left: 5%;
	    margin-right: 5%;
   	    margin-bottom: 1%;
 	    height: 40px;
 		width: 90%;
	    text-align: left;
	    border: 1px solid #7A7276;
	    }
	    
	/*     #re1{
	    display:grid;
	    }
	    #re2{
	    display:grid;
	    margin-top: 5%;
	    } */
	    
		</style>

</head>

	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='updateForm']");
			
			$(".cancel_btn").on("click", function(){
				location.href =  "/board/readView?boardNumber=${update.boardNumber}"
					   + "&page=${scri.page}"
					   + "&perPageNum=${scri.perPageNum}"
					   + "&searchType=${scri.searchType}"
					   + "&keyword=${scri.keyword}";
					
					
					/* "/board/readView?boardNumber=${replyUpdate.boardNumber}"
								   + "&page=${scri.page}"
								   + "&perPageNum=${scri.perPageNum}"
								   + "&searchType=${scri.searchType}"
								   + "&keyword=${scri.keyword}"; */
			});
			
			$(".update_btn").on("click", function() {
				var formObj = $("form[name='updateForm']");
				  formObj.attr("action", "/board/replyUpdate");
				  formObj.submit();
			});
			
		})
		
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
                            <h2>게시판</h2>                       
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero End -->
    
    
  	<sec:authentication var="principal" property="principal"/>
		<div id="root">

		<section id="container">
			<form name="updateForm" role="form" method="post">
				<input type="hidden" name="boardNumber" value="${update.boardNumber}" readonly="readonly"/>
				<input type="hidden" id="boardReplyNumber" name="boardReplyNumber" value="${update.boardReplyNumber}" />
				<input type="hidden" id="page" name="page" value="${scri.page}"> 
				<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
				<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
				<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 
				<table class="t0">
					<tbody >
					<tr>
						<td class="t1">댓글 내용</td>
						<td class="t2">
						<input type="text" id="boardReplyContent" name="boardReplyContent" value="${update.boardReplyContent}"/>
<!-- 						<script>
							 var ckeditor_config = {
							   resize_enaleb : false,
							   enterMode : CKEDITOR.ENTER_BR,
							   shiftEnterMode : CKEDITOR.ENTER_P,
							   filebrowserUploadUrl : "/admin/goods/ckUpload"
							 };
							 
							 CKEDITOR.replace("boardReplyContent", ckeditor_config);
						</script> -->
						</td>
					</tr>
					<tr>
						<td class="t1">댓글 작성자</td>
						<td class="t2"><input type="text" id="boardReplyUserId" name="userId" value="${principal.member.userId}"/></td>	
					</tr>						
					</tbody>			
				</table>
				<div class="button">
					<button type="submit" class="update_btn">저장</button>
					<button type="button" class="cancel_btn">취소</button>
				</div>
			</form>
		</section>
		<hr />
	</div>	
	
	<!--  상단 배너 시작 -->
		<div class="topBanner-wrapper">
			<div class="topBanner">
				
					<img src= "${pageContext.request.contextPath}/resources/images/topBanner.jpg"/>
				
			</div>
			</div>			
	<!-- 상단 배너 끝 -->
		
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