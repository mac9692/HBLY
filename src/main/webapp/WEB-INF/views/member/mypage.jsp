<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html>
<html>

<head>
   <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>HBLY : 마이블리</title>
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
    <link rel="stylesheet" href="/resources/assets/css/themify-icons.css">
    <link rel="stylesheet" href="/resources/assets/css/slick.css">
    <link rel="stylesheet" href="/resources/assets/css/nice-select.css">
    <link rel="stylesheet" href="/resources/assets/css/style.css">
    

    
	<link rel="stylesheet" href="/resources/assets/css/daunstyle.css">
    

 <style>
.hero-j h5{
    color: #ffffff;
    font-weight: 500;
    font-size: 40px;
    text-transform: uppercase;
    -webkit-transition: 0.4s;
    -moz-transition: 0.4s;
    -o-transition: 0.4s;
    transition: 0.4s;
    margin-bottom: 17px;
}

 </style>   
</head>

<body>

<%@include file="../include/header.jsp" %>


<div class="slider-area2">
        <div class="slider-height2 d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-j hero-cap hero-cap2 pt-70">
                            <h2>마이블리</h2>
                            <h5>내 활동의 모든것을 한눈에 확인하는 마이블리</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
				<!-- nav2 -->
		<nav class="navbar navbar-dark black-bg">
		    <div class="container d-flex justify-content-center" style="padding:40px;">
		      <div class="container px-5 mx-5 text-center">
		        <div class="row">
		          <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 daun">
		          <a href="/member/mypage"><i class="fa fa-user-circle" aria-hidden="true"></i> 개인정보 수정</a>
		          </div>
		          <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 daun">
		            <a href="/shop/cartList"><i class="fa fa-cart-plus" aria-hidden="true"></i> 장바구니</a></div>
		            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 daun">
		           <a href="/shop/orderList"><i class="fa fa-list-ol" aria-hidden="true"></i> 주문목록</a></div>
		        </div>
		      </div>
		    </div>
		</nav>
		
		

	
			 
  
  <div class="py-5">
    <div class="container">

      <div class="row">
        <div class="col-md-12">
          <div class="card">
          
            
            
            <div class="card-body">
              <div class="py-5">
                <div class="container">
                  <div class="row">
                    <div class="col-md-12">	
                      <div class="card">
                      
                        <div class="card-header">
                          <ul class="nav nav-tabs card-header-tabs">
                            <li class="nav-item">
                              <a class="nav-link active"  href="/member/mypage">개인정보</a>
                            </li>
                          </ul>
                        </div>
                        
                        <div class="card-body">
                          <div class="tab-content mt-2">
                          
                            <div class="tab-pane fade active show" id="tabone" role="tabpanel">
                            
                              <!--1-->
								<%@ include file= "pwChk.jsp" %>
                            </div>
                          </div>
                      </div>
                      
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
 </div>
 <%@ include file= "../include/footer.jsp" %>
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

<!-- Nice-select, sticky -->
<script src="/resources/assets/js/jquery.nice-select.min.js"></script>
<script src="/resources/assets/js/jquery.sticky.js"></script>
<script src="/resources/assets/js/jquery.magnific-popup.js"></script>

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




</html>