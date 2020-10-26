<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    
<!DOCTYPE html>
<html>
	<head>

		<meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>HBLY | Admin</title>
        <link href="/resources/sb/css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
        <!-- jQuery -->
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
			
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
			
		<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

		<style>
		 body { font-family:'맑은 고딕', verdana; padding:0; margin:0; }
		 ul { padding:0; margin:0; list-style:none;  }
		
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
		/*
		#container_box table { width:900px; }
		#container_box table th { font-size:20px; font-weight:bold;
		       text-align:center; padding:10px; border-bottom:2px solid #666; }
		#container_box table tr:hover { background:#eee; }
		#container_box table td { padding:10px; text-align:center; }
		#container_box table img { width:150px; height:auto; }
		*/
		 .orderInfo { border:5px solid #eee; padding:10px 20px; margin:20px 0;}
		 .orderInfo span,.card-body span { font-size:20px; font-weight:bold; display:inline-block; width:90px; }
		 
		 .orderView li { margin-bottom:20px; padding-bottom:20px; border-bottom:1px solid #999; }
		 .orderView li::after { content:""; display:block; clear:both; }
		 
		 .thumb { float:left; width:200px; }
		 .thumb img { width:200px; height:200px; }
		 .gdsInfo { float:right; width:calc(100% - 220px); line-height:2; }
		 .gdsInfo span { font-size:20px; font-weight:bold; display:inline-block; width:100px; margin-right:10px; }
		 
		 .deliveryChange { text-align:right; }
	/* 	.delivery1_btn,
		.delivery2_btn { font-size:16px; background:#fff; border:1px solid #999; margin-left:10px; } */
				 
		</style>
		
	</head>
	
	
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="/admin/goods/list">HBLY Admin</a> | <a class="navbar-brand" href="/">HBLY Main</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
          
        </nav>
         <div id="layoutSidenav">
        
		<%@ include file= "../include/layoutSidenav.jsp"%>
		
        <div id="layoutSidenav_content">       
			<main>
                    <div class="container-fluid">
                        <h1 class="mt-4">상품 조회</h1>

                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                                        상품 조회
                            </div>
                            <div class="card-body">
	
			
				<div class="">
					<div class="card mb-4">
					  <c:forEach items="${orderView}" var="orderView" varStatus="status">
					  <c:if test="${status.first}">
					  
					  <div class="card-body">
					   <p><span>주문자</span>${orderView.userId}</p>
					   <p><span>수령인</span>${orderView.orderRec}</p>
					   <p><span>주소</span>(${orderView.userAddress1}) ${orderView.userAddress2} ${orderView.userAddress3}</p>
					   <p><span>가격</span><fmt:formatNumber pattern="###,###,###" value="${orderView.amount}" /> 원</p>
					   <p><span>배송상태</span>${orderView.delivery}</p>
					   
					   <div class="deliveryChange">
					   		<form role="form" method="post" class="deliveryForm">
					   			<input type="hidden" name="orderId" value="${orderView.orderId}"/>
					   			<input type="hidden" name="delivery" class="delivery" value=""/>
					   								   
						   		<button type="button" class="btn btn-primary delivery1_btn">배송 중</button>
						   		<button type="button" class="btn btn-primary delivery2_btn">배송 완료</button>
						   		
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
			</div>
                        </div>
                    </div>
                </main>
			<%@ include file="../include/footer.jsp" %>
            </div>
		
					
					

		</div>						
		
			 	<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="../../resources/sb/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="../../resources/sb/assets/demo/chart-area-demo.js"></script>
        <script src="../../resources/sb/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="../../resources/sb/assets/demo/datatables-demo.js"></script>	
		
		
		
		
	</body>
</html>