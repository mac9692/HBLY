<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 

<html>
	<head>
		
		<title>HBLY Shop List</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<!-- 구글 -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		
		<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
				
	
		
		
		<style>
		 body { font-family:'맑은 고딕', verdana; padding:0; margin:0; }
		 ul { padding:0; margin:0; list-style:none;  }
		
		 div#root { width:90%; margin:0 auto; }
		 
		 header#header { font-size:60px; padding:20px 0; }
		 header#header h1 a { color:#000; font-weight:bold; }
		 
		 nav#nav { padding:10px; text-align:right; }
		 nav#nav ul li { display:inline-block; margin-left:10px; }
		
		   section#container { padding:20px 0; border-top:2px solid #eee; border-bottom:2px solid #eee; }
		 section#container::after { content:""; display:block; clear:both; }
		 aside { float:left; width:200px; }
		 div#container_box { float:right; width:calc(100% - 200px - 20px); }
		 
		 aside ul li { text-align:center; margin-bottom:10px; }
		 
		 aside ul li a { display:block; width:100%; padding:10px 0;}
		 aside ul li a:hover { background:#eee; }
		 
		 footer#footer { background:#f9f9f9; padding:20px; }
		 footer#footer ul li { display:inline-block; margin-right:10px; }
		</style>		
		
		
		<style>

		 body { margin:0; padding:0; font-family:'맑은 고딕', verdana; }
		 a { color:#05f; text-decoration:none; }
		 a:hover { text-decoration:underline; }
		 
		 h1, h2, h3, h4, h5, h6 { margin:0; padding:0; }
		 ul, lo, li { margin:0; padding:0; list-style:none; }
		
		 /* ---------- */
		 
		 div#root { width:900px; margin:0 auto; }
		 header#header { }
		 nav#nav { }
		 section#container { }
		  section#content { float:right; width:700px; }
		  aside#aside { float:left; width:180px; }
		  section#container::after { content:""; display:block; clear:both; } 
		 footer#footer { background:#eee; padding:20px; }
		 
		 /* ---------- */
		 
		 header#header div#header_box { text-align:center; padding:30px 0; }
		 header#header div#header_box h1 { font-size:50px; }
		 header#header div#header_box h1 a { color:#000; }
		 
		 nav#nav div#nav_box { font-size:14px; padding:10px; text-align:right; }
		 nav#nav div#nav_box li { display:inline-block; margin:0 10px; }
		 nav#nav div#nav_box li a { color:#333; }
		 
		 section#container { }
		 
		 aside#aside h3 { font-size:22px; margin-bottom:20px; text-align:center; }
		 aside#aside li { font-size:16px; text-align:center; }
		 aside#aside li a { color:#000; display:block; padding:10px 0; }
		 aside#aside li a:hover { text-decoration:none; background:#eee; }
		 
		 aside#aside li { position:relative; }
		 aside#aside li:hover { background:#eee; }   
		 aside#aside li > ul.low { display:none; position:absolute; top:0; left:180px;  }
		 aside#aside li:hover > ul.low { display:block; }
		 aside#aside li:hover > ul.low li a { background:#eee; border:1px solid #eee; }
		 aside#aside li:hover > ul.low li a:hover { background:#fff;}
		 aside#aside li > ul.low li { width:180px; }
		 
		 
		 
		 
		 footer#footer { margin-top:100px; border-radius:50px 50px 0 0; }
		 footer#footer div#footer_box { padding:0 20px; }
		 
		</style>
		
		
		<style>
/* 		 section#content ul li { display:inline-block; margin:10px; }
		 section#content div.goodsThumb img { width:200px; height:200px; }
		 section#content div.goodsName { padding:10px 0; text-align:center; }
		 section#content div.goodsName a { color:#000; } */
		 
		 section#content ul li { margin:10px 0; }
		 section#content ul li img { width:250px; height:250px; }
		 section#content ul li::after { content:""; display:block; clear:both; }
		 section#content div.thumb { float:left; width:250px; }
		 section#content div.gdsInfo { float:right; width:calc(100% - 270px); }
		 section#content div.gdsInfo { font-size:20px; line-height:2; }
		 section#content div.gdsInfo span { display:inline-block; width:100px; font-weight:bold; margin-right:10px; }
		 section#content div.gdsInfo .delete { text-align:right; }
		 section#content div.gdsInfo .delete button { font-size:22px;
            padding:5px 10px; border:1px solid #eee; background:#eee;}
		 
		    .allCheck { float:left; width:200px; }
			.allCheck input { width:16px; height:16px; }
			.allCheck label { margin-left:10px; }
			.delBtn { float:right; width:300px; text-align:right; }
			.delBtn button { font-size:18px; padding:5px 10px; border:1px solid #eee; background:#eee;}
			
			.checkBox { float:left; width:30px; }
			.checkBox input { width:16px; height:16px; }
			
			
			.listResult { padding:20px; background:#eee; }
			.listResult .sum { float:left; width:45%; font-size:22px; }
			
			.listResult .orderOpne { float:right; width:45%; text-align:right; }
			.listResult .orderOpne button { font-size:18px; padding:5px 10px; border:1px solid #999; background:#fff;}
			.listResult::after { content:""; display:block; clear:both; }
			
			.orderInfo { border:5px solid #eee; padding:20px; display:none;}
			.orderInfo .inputArea { margin:10px 0; }
			.orderInfo .inputArea label { display:inline-block; width:120px; margin-right:10px; }
			.orderInfo .inputArea input { font-size:14px; padding:5px; }
			#userAddr2, #userAddress3 { width:250px; }
			
			.orderInfo .inputArea:last-child { margin-top:30px; }
			.orderInfo .inputArea button { font-size:20px; border:2px solid #ccc; padding:5px 10px; background:#fff; margin-right:20px;}
			
			.orderInfo .inputArea #sample2_address { width:230px; }
			.orderInfo .inputArea #sample2_detailAddress { width:280px; }
			.orderInfo .inputArea #sample2_extraAddress { display:none; }			
		</style>
		
	</head>
	<body>
		<div id="root">
			<header id="header">
				<div id="header_box">
					<%@ include file= "../include/header.jsp" %>
				</div>
			</header>
			
			<nav id="nav">
				<div id="nav_box">
					<%@ include file= "../include/nav.jsp" %>
				</div>
			</nav>
			
			<section id="container">
				<div id="container_box">
					<section id="content">
						<ul>
						 <li>
						  <div class="allCheck">
						   <input type="checkbox" name="allCheck" id="allCheck" /><label for="allCheck">모두 선택</label> 
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
						  
						  
						  </div>
						  
						  <div class="delBtn">
						   <button type="button" class="selectDelete_btn">선택 삭제</button> 
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
							    beforeSend : function(xhr)
			                      {   
			                          xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
			                      },
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
													   
						   
						   
						   
						  </div>
						  
						 </li>
						 <c:set var="sum" value="0" />
						 
						 <c:forEach items="${cartList}" var="cartList">
						 <li>
							  <div class="checkBox">
							   <input type="checkbox" name="chBox" class="chBox" data-cartNum="${cartList.cartNumber}" />
							   <script>
								 $(".chBox").click(function(){
								  $("#allCheck").prop("checked", false);
								 });
								</script>
						  
						  
						  </div>
						 
						  <div class="thumb">
						   <img src="${cartList.goodsThumbImage}" />
						  </div>
						  <div class="gdsInfo">
						   <p>
						    <span>상품명</span>${cartList.goodsName}<br />
						    <span>개당 가격</span><fmt:formatNumber pattern="###,###,###" value="${cartList.goodsPrice}" /> 원<br />
						    <span>구입 수량</span>${cartList.cartStock} 개<br />
						    <span>최종 가격</span><fmt:formatNumber pattern="###,###,###" value="${cartList.goodsPrice * cartList.cartStock}" /> 원
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
							    beforeSend : function(xhr)
			                      {   
			                          xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
			                      },
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
						
						<div class="listResult">
						 <div class="sum">
						  총 합계 : <fmt:formatNumber pattern="###,###,###" value="${sum}" />원
						 </div>
						 
						 <div class="orderOpne">
						  <button type="button" class="orderOpne_bnt">주문 정보 입력</button>
						 </div>
						 
						 <script>
						 $(".orderOpne_bnt").click(function(){
						  $(".orderInfo").slideDown();
						  $(".orderOpne_bnt").slideUp();
						 });      
						</script>
												 
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
						  
						  <!-- 카카오(다음) 주소 API 사용 전 코드
						  <div class="inputArea">
						   <label for="userAddress1">우편번호</label>
						   <input type="text" name="userAddress1" id="userAddress1" required="required" />
						  </div>
						  
						  <div class="inputArea">
						   <label for="userAddress2">1차 주소</label>
						   <input type="text" name="userAddress2" id="userAddress2" required="required" />
						  </div>
						  
						  <div class="inputArea">
						   <label for="userAddress3">2차 주소</label>
						   <input type="text" name="userAddress3" id="userAddress3" required="required" />
						  </div> -->
						  
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
						   
						   
						   
						  </div>
						  
						 </form:form> 
						</div>
						 
						 
						 
						 
						 
						 
						</div>
					</section>
						<aside id="aside">
							 <%@ include file="../include/aside.jsp" %>
						</aside>
				</div>
			</section>
			
			<footer id="foorter">
				<div id="footer_box">
					<%@ include file= "../include/footer.jsp" %>
				</div>
			</footer>
		</div>
	</body>
</html>
