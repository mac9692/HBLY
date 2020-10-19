<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
    
<!DOCTYPE html>
<html>
	<head>
		<title>HBLY 관리자 페이지</title>
		
		
	</head>
	
	
	<body>
		<div id="root">
			<header id="header">
				<div id="header_box">
					<%@ include file="../include/header.jsp" %>
				</div>
			</header>
			
			<nav id="nav">
				<div id="nav_box">
					<%@ include file="../include/nav.jsp" %>
				</div>
			</nav>
			
			
	
			<section id="container">
				<aside>
				 	<%@ include file="../include/aside.jsp" %>
				</aside>
				<div id="container_box">
					<div class="orderInfo">
					  <c:forEach items="${orderView}" var="orderView" varStatus="status">
					  
					  <c:if test="${status.first}">
					   <p><span>주문자</span>${orderView.userId}</p>
					   <p><span>수령인</span>${orderView.orderRec}</p>
					   <p><span>주소</span>(${orderView.userAddress1}) ${orderView.userAddress2} ${orderView.userAddress3}</p>
					   <p><span>가격</span><fmt:formatNumber pattern="###,###,###" value="${orderView.amount}" /> 원</p>
					   <p><span>배송상태</span>${orderView.delivery}</p>
					   
					   <div class="deliveryChange">
					   		<form role="form" method="post" class="deliveryForm">
					   			<input type="hidden" name="orderId" value="${orderView.orderId}"/>
					   			<input type="hidden" name="delivery" class="delivery" value=""/>
					   								   
						   		<button type="button" class="delivery1_btn">배송 중</button>
						   		<button type="button" class="delivery2_btn">배송 완료</button>
						   		
						   		<script>
						   			$(".delivery1_btn").click(function(){
						   				$(".delivery").val("배송 중");
						   				run();
						   			});
						   			$(".delivery2_btn").click(function(){
						   				$(".delivery").val("배송 완료");
						   				run();
						   			});
						   			function run(){
						   				$(".deliveryForm").submit();
						   			}
						   		</script>
						   		
					   		</form>
					   </div>
					  </c:if>
					 </c:forEach>
					</div>
					
					<ul class="orderView">
					 <c:forEach items="${orderView}" var="orderView">     
					 <li>
					  <div class="thumb">
					   <img src="${orderView.goodsThumbImage}" />
					  </div>
					  <div class="gdsInfo">
					   <p>
					    <span>상품명</span>${orderView.goodsName}<br />
					    <span>개당 가격</span><fmt:formatNumber pattern="###,###,###" value="${orderView.goodsPrice}" /> 원<br />
					    <span>구입 수량</span>${orderView.cartStock} 개<br />
					    <span>최종 가격</span><fmt:formatNumber pattern="###,###,###" value="${orderView.goodsPrice * orderView.cartStock}" /> 원                  
					   </p>
					  </div>
					 </li>     
					 </c:forEach>
					</ul>
				</div>
				
			</section>
			
			<footer id="footer">
				<div id="footer_box">
					<%@ include file="../include/footer.jsp" %>
				</div>
			</footer>
		</div>
		
		
		
		
	</body>
</html>