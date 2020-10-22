<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 

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
                            <h2>장바구니</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero End -->
			
			
    <!-- Courses area start -->
    <section class="pricing-area section-padding30 fix">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="properties mb-30">
                        <div class="properties__card">
                            <div class="properties__caption">
                                <div class="col-xl-12">
				                    <div class="section-tittle text-center mb-55">
				                        <h2>장바구니</h2>
				                    </div>
				                </div>
				        		<hr>
                         
                         <div class="content">
                         <ul>
						 <li>
						  <div class="allCheck">
						   <input type="checkbox" name="allCheck" id="allCheck" /><label for="allCheck">모두 선택</label> 
						  </div>
						  
						  <div class="delBtn">
						   <button type="button" class="selectDelete_btn">선택 삭제</button> 
						  </div>
						  
						 </li>
						 
						 <c:set var="sum" value="0" />
						 <c:forEach items="${cartList}" var="cartList">
						 <hr size="10px">
						 <li>
							  <div class="checkBox">
							   <input type="checkbox" name="chBox" class="chBox" data-cartNum="${cartList.cartNumber}" />
						  </div>
						 
						  <div class="thumb">
						   <img src="${cartList.goodsThumbImage}" />
						  </div>
						  <div class="gdsInfo">
						   <p>
						    <span>상품명 : </span>${cartList.goodsName}<br />
						    <span>개당 가격 : </span><fmt:formatNumber pattern="###,###,###" value="${cartList.goodsPrice}" /> 원<br />
						    <span>구입 수량 : </span>${cartList.cartStock} 개<br />
						    <span>최종 가격 : </span><fmt:formatNumber pattern="###,###,###" value="${cartList.goodsPrice * cartList.cartStock}" /> 원
						   </p>
						   
						   <div class="delete">
						    <button type="button" class="delete_${cartList.cartNumber}_btn" data-cartNum="${cartList.cartNumber}">삭제</button>
						   </div>
						   <script>
							 $(".delete_${cartList.cartNumber}_btn").click(function(){
							  var confirm_val = confirm("정말 삭제하시겠습니까?");
							  
							  if(confirm_val) {
							   var checkArr = new Array();
							   
							   checkArr.push($(this).attr("data-cartNum"));
							              
							   $.ajax({
							    url : "/shop/deleteCart",
							    type : "post",
							    data : { chbox : checkArr },
							    
							    success : function(result){
							     if(result == 1) {            
							      location.href = "/shop/cartList";
							     } else {
							      alert("삭제 실패");
							     }
							    }
							   });
							  } 
							 });
							</script>
						  </div>   
						 </li>
						 <c:set var="sum" value="${sum + (cartList.goodsPrice * cartList.cartStock)}" />
						 </c:forEach>
						</ul>
						</div>
						
						
						<div class="listResult">
						 <div class="sum">
						  총 합계 : <fmt:formatNumber pattern="###,###,###" value="${sum}" />원
						 </div>
						 
						 <div class="orderOpne">
						  <button type="button" class="orderOpne_bnt">주문 정보 입력</button>
						 </div>
						 
						 
												 
						 <div class="orderInfo">
						 <form:form role="form" method="post" autocomplete="off">
						    
						  <input type="hidden" name="amount" value="${sum}" />
						    
						  <div class="inputArea">
						   <label for="">수령인</label>
						   <input type="text" name="orderRec" id="orderRec" required="required" />
						  </div>
						  
						  <div class="inputArea">
						   <label for="orderPhoneNumber">수령인 연락처</label>
						   <input type="text" name="orderPhoneNumber" id="orderPhoneNumber" required="required" />
						  </div>
						  
						  
						  
						  <div class="inputArea">
						  	<p>
						  	<input type="text" id="sample6_postcode" placeholder="우편번호">
							<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
							</p>
							<p>
							<input type="text" name="userAddress1" id="sample6_address" placeholder="주소"><br>
							<input type="text" name="userAddress2" id="sample6_detailAddress" placeholder="상세주소">
							<input type="text" name="userAddress3" id="sample6_extraAddress" placeholder="참고항목">
							</p>
							<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
							<script>
							    function sample6_execDaumPostcode() {
							        new daum.Postcode({
							            oncomplete: function(data) {
							                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
							
							                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
							                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							                var addr = ''; // 주소 변수
							                var extraAddr = ''; // 참고항목 변수
							
							                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							                    addr = data.roadAddress;
							                } else { // 사용자가 지번 주소를 선택했을 경우(J)
							                    addr = data.jibunAddress;
							                }
							
							                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
							                if(data.userSelectedType === 'R'){
							                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
							                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
							                        extraAddr += data.bname;
							                    }
							                    // 건물명이 있고, 공동주택일 경우 추가한다.
							                    if(data.buildingName !== '' && data.apartment === 'Y'){
							                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
							                    }
							                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							                    if(extraAddr !== ''){
							                        extraAddr = ' (' + extraAddr + ')';
							                    }
							                    // 조합된 참고항목을 해당 필드에 넣는다.
							                    document.getElementById("sample6_extraAddress").value = extraAddr;
							                
							                } else {
							                    document.getElementById("sample6_extraAddress").value = '';
							                }
							
							                // 우편번호와 주소 정보를 해당 필드에 넣는다.
							                document.getElementById('sample6_postcode').value = data.zonecode;
							                document.getElementById("sample6_address").value = addr;
							                // 커서를 상세주소 필드로 이동한다.
							                document.getElementById("sample6_detailAddress").focus();
							            }
							        }).open();
							    }
							</script>
						  </div>
						  <div class="inputArea">
						   <button type="submit" class="order_btn">주문</button>
						   <button type="button" class="cancel_btn">취소</button> 
						
						<script>
							$(".cancel_btn").click(function(){
							 $(".orderInfo").slideUp();
							 $(".orderOpne_bnt").slideDown();
							});      
							</script>
						   
						   
						   
						   
						   
						   <script>
							$("#allCheck").click(function(){
							 var chk = $("#allCheck").prop("checked");
							 if(chk) {
							  $(".chBox").prop("checked", true);
							 } else {
							  $(".chBox").prop("checked", false);
							 }
							});
						</script>
						   
						   
						   
						   <script>
							 $(".selectDelete_btn").click(function(){
							  var confirm_val = confirm("정말 삭제하시겠습니까?");
							  
							  if(confirm_val) {
							   var checkArr = new Array();
							   
							   $("input[class='chBox']:checked").each(function(){
							    checkArr.push($(this).attr("data-cartNum"));
							   });
							    
							   $.ajax({
							    url : "/shop/deleteCart",
							    type : "post",
							    data : { chbox : checkArr },
							    
							    success : function(result){
							    	if(result ==1){
							    		location.href = "/shop/cartList";
							    		
							    	}else{
							    		alert("삭제 실패");
							    	}
							     
							    }
							   });
							  } 
							 });
							</script>
						   
						   
						   
						   <script>
								 $(".chBox").click(function(){
								  $("#allCheck").prop("checked", false);
								 });
								</script>
						   
						   
						   <script>
							 $(".orderOpne_bnt").click(function(){
							  $(".orderInfo").slideDown();
							  $(".orderOpne_bnt").slideUp();
							 });      
							</script>
							
						  </div>
						 </form:form> 
						
						
                            </div>
                        </div>
                    </div>
                </div>
    </section>
    <!-- Courses area End -->
			
			
			
						   
						  
						
			
			
			
			
			
			
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
