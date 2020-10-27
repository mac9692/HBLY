<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
	<head>
		
		<title>HBLY Order View</title>
	
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
		section#container { padding:20px 0; border-top:2px solid #eee; border-bottom:2px solid #eee; }
		section#container::after { content:""; display:block; clear:both; }
	
		section#container {}
		section#content { float:left; width:800px;}
	
		section#content ul li { border:5px solid #404040; padding:10px 20px; margin-bottom:20px; }
		section#content .orderList span { font-size:20px; font-weight:bold; display:inline-block; width:90px; margin-right:10px; }
	
	 	.orderList a { color:#ffffff; text-decoration: underline; }
	 	.btn a {}
		.orderList p { color:#ffffff; font-size: 20px; }
	
		section#container {background-color: #ffffff; margin-left:150px;}
		div#container_box {background-color: #000000;}
		
		div#orderInfo p {color:#000000; font-size: 30px;}
		div#gdsInfo p {color:#000000; font-size: 20px;}
		
		/* 사이드 배너 부분 */
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
	        height:500px;
	    }
	
	    #chaseBar {
	        width:100%;
	        background-color:#000000;
	        color:#FFFFFF;
	        font-weight:bold;
	        text-align:center;
	        font-size: 30px;
	    }  
	
		 /* 상품주문 상단 */
        h2 {
        font-size: 60px;
        padding: 10px;
        }
	
    </style>
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
                                <h2>order list View</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero End -->	
        
         <!-- 주문정보 시작   --> 
     <section class="pricing-area section-padding30 fix" id="back">
        <div class="container2">
        <div class="container-fluid">
        <!-- <div class="mainMenu col-lg-12 col-md-12 col-sm-12 col-xs-12" id="mainMenu">  -->
            <div class="row">
                 <div class="col-xl-12">
                    <div class="text-center mb-55">
                        <h2 style="color:black;">주문 상세 목록</h2>
                    </div>
                </div>
            </div>
    <!-- 주문정보 끝   --> 
        
         <!-- 사이드 메뉴 바 시작 -->
			<div class="sideMenu col-lg-3 col-md-3 col-sm-3 col-xs-3">
			</div>
            <!-- 사이드 바 메뉴 끝 -->
        
		
			<%-- <section id="container"> --%>
				<div id="container_box">
						<section id="content">

						 <div class="orderInfo" id="orderInfo">
						  <c:forEach items="${orderView}" var="orderView" varStatus="status">
						   
						   <c:if test="${status.first}">
						    <p><span>수령인&nbsp;:&nbsp;</span>${orderView.orderRec}</p>
						    <p><span>주소&nbsp;:&nbsp;</span>(${orderView.userAddress1}) ${orderView.userAddress2} ${orderView.userAddress3}</p>
						    <p style="color:red;"><span>가격&nbsp;:&nbsp;</span><fmt:formatNumber pattern="###,###,###" value="${orderView.amount}" /> 원</p>
						    <p style="color:orange;"><span>상태&nbsp;:&nbsp;</span>${orderView.delivery}</p>
						   </c:if>
						   
						  </c:forEach>
						 </div>
						 <hr>
						 <ul class="orderView">
						  <c:forEach items="${orderView}" var="orderView">     
						  <li>
						   <div class="thumb">
						    <img src="${orderView.goodsThumbImage}" />
						   </div>
						   <div class="gdsInfo" id="gdsInfo">
						    <p>
						     <span>상품명&nbsp;:&nbsp;</span>${orderView.goodsName}<br />
						     <span>개당 가격&nbsp;:&nbsp;</span><fmt:formatNumber pattern="###,###,###" value="${orderView.goodsPrice}" /> 원<br />
						     <span>구입 수량&nbsp;:&nbsp;</span>${orderView.cartStock} 개<br />
						     <span>최종 가격&nbsp;:&nbsp;</span><fmt:formatNumber pattern="###,###,###" value="${orderView.goodsPrice * orderView.cartStock}" /> 원                  
						    </p>
						   </div>
						  </li>     
						  </c:forEach>
						 </ul>
						</section>	
						
						<!-- 우측 스크롤 배너 -->
      			<div class="banner col-lg-3 col-md-3 col-sm-3 col-xs-3">
      				<div id="chase">
      					<img src= "${pageContext.request.contextPath}/resources/images/deliveryGuide.jpg"/>
      					<div id="chaseBar">빠른배송!</div>
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
    	<div id="back-top">
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
