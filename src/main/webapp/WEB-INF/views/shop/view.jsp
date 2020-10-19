<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 

<html>
	<head>
		
		<title>HBLY</title>
		
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
							   			 beforeSend : function(xhr)
					                      {   
					                          xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
					                      },
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
