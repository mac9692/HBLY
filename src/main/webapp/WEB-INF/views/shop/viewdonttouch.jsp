<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 

<html>
	<head>
		
		<title>HBLY</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<!-- 구글 -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		
		<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
				

				
		
		
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
									     
									     + "<c:if test='${member != null}'>"
									     
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
		 div.goods div.goodsImage { float:left; width:350px; }
		 div.goods div.goodsImage img { width:350px; height:auto; }
		 
		 div.goods div.goodsInfo { float:right; width:330px; font-size:22px; }
		 div.goods div.goodsInfo p { margin:0 0 20px 0; }
		 div.goods div.goodsInfo p span { display:inline-block; width:100px; margin-right:15px; }
		 
		 div.goods div.goodsInfo p.cartStock input { font-size:22px; width:50px; padding:5px; margin:0; border:1px solid #eee; }
		 div.goods div.goodsInfo p.cartStock button { font-size:26px; border:none; background:none; }
		 div.goods div.goodsInfo p.addToCart { text-align:right; }
		 div.goods div.goodsDescribe { font-size:18px; clear:both; padding-top:30px; }
		</style>
		
		
		<style>
		 section.replyForm { padding:30px 0; }
		 section.replyForm div.input_area { margin:10px 0; }
		 section.replyForm textarea { font-size:16px; font-family:'맑은 고딕', verdana; padding:10px; width:500px;; height:150px; }
		 section.replyForm button { font-size:20px; padding:5px 10px; margin:10px 0; background:#fff; border:1px solid #ccc; }
		 
		 section.goodsReplyList { padding:30px 0; }
		 section.goodsReplyList ol { padding:0; margin:0; }
		 section.goodsReplyList ol li { padding:10px 0; border-bottom:2px solid #eee; }
		 section.goodsReplyList div.userInfo { }
		 section.goodsReplyList div.userInfo .userName { font-size:24px; font-weight:bold; }
		 section.goodsReplyList div.userInfo .date { color:#999; display:inline-block; margin-left:10px; }
		 section.goodsReplyList div.goodsReplyContent { padding:10px; margin:20px 0; }
		 section.goodsReplyList div.replyFooter button { font-size:14px; border: 1px solid #999; background:none; margin-right:10px; }
		</style>
		
		<style>
		 div.replyModal { position:relative; z-index:1; display:none;}
		 div.modalBackground { position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0, 0, 0, 0.8); z-index:-1; }
		 div.modalContent { position:fixed; top:20%; left:calc(50% - 250px); width:500px; height:250px; padding:20px 10px; background:#fff; border:2px solid #666; }
		 div.modalContent textarea { font-size:16px; font-family:'맑은 고딕', verdana; padding:10px; width:500px; height:200px; }
		 div.modalContent button { font-size:20px; padding:5px 10px; margin:10px 0; background:#fff; border:1px solid #ccc; }
		 div.modalContent button.modal_cancel { margin-left:20px; }
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
							 ${view.goodsDescribe}
							</div>
							
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
							 
							 <section class="goodsReplyList">
								 <ol>
								<%-- ajax 쓰기 전 소감(댓글) 리스트 코드
								 <c:forEach items="${goodsReplyList}" var="goodsReplyList">
								
								  <li>
								      <div class="userInfo">
								       <span class="userName">${goodsReplyList.userNickname}</span>
								       <span class="date"><fmt:formatDate value="${goodsReplyList.goodsReplyRegidate}" pattern="yyyy-MM-dd" /></span>
								      </div>
								      <div class="goodsReplyContent">${goodsReplyList.goodsReplyContent}</div>
								    </li>
								   </c:forEach>  --%>
								  </ol>
								  <script>
								  	goodsReplyList();
								  </script>	  
								  
								  <script>
								  $(document).on("click", ".modify", function(){
									  $(".replyModal").fadeIn(200);
									  var goodsReplyNumber = $(this).attr("data-goodsReplyNumber");
									  var goodsReplyContent = $(this).parent().parent().children(".goodsReplyContent").text();
									  
									  $(".modal_replyContent").val(goodsReplyContent);
									  $(".modal_modify_btn").attr("data-goodsReplyNumber", goodsReplyNumber);
									  
									  
									 });
								  
								  
								  </script>
								  
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
							</div>
							
							
							
							
							
		
					 </section>
					 
					<aside>
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
		
		
	</body>
</html>
