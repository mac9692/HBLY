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
	    
	    .container1, table{
	    	margin-top: 1rem;
		    font-size: 20px;
		    text-align: center;
		    width: 100%;
		    border: 1px solid #bcbcbc;
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
			
			var formObj = $("form[name='readForm']");
			
			// 수정 
			$(".update_btn").on("click", function(){
				
				var boardNum = $(this).attr("data-boardNumber");
				
				$.ajax({
					type : 'POST',
					dataType : 'json',
					url : "/board/updateCheck",
					data : {boardNumber : boardNum},
					success : function(result){
						if(result == 0){
							alert("작성자 본인만 수정할 수 있습니다.");
							location.href = "/board/list";
						}
						
						if(result == 1) {
							location.href = "/board/updateView?boardNumber="+boardNum;
						}
					},
					error : function(){
						alert('로그인이 필요합니다')
						location.href="/member/signin";
					}
				});				
			})			
							
			
			// 삭제
			$(".delete_btn").on("click", function(){
				var deleteYN = confirm("정말로 삭제하시겠습니까?");				
				
				if(deleteYN == true ){
					var boardNum = $(this).attr("data-boardNumber");
					var userId = $(this).attr("data-userId");
					console.log(boardNum);
					console.log(userId);
					
					$.ajax({
						type : 'POST',
						dataType : 'json',
						url : "/board/delete",
						data : {boardNumber : boardNum, userId : userId},
						success : function(result){
							if(result == 0){
								alert("작성자 본인만 삭제할 수 있습니다.")						
							}
							
							if(result == 1) {
								alert("삭제되었습니다.")
								location.href = "/board/list";
							}
						},
						error : function(){
							alert('로그인이 필요합니다')
							location.href="/member/signin";
						}
					});					
				}				
			})			
			
			
			// 목록
			$(".list_btn").on("click", function(){			
			location.href = "/board/list?page=${scri.page}"
										+"&perPageNum=${scri.perPageNum}"
										+"&searchType=${scri.searchType}&keyword=${scri.keyword}";
			})
			
			//댓글 쓰기
			$(".replyWriteBtn").on("click", function(){
				  var formObj = $("form[name='replyForm']");
				  formObj.attr("${principal.member.userId}");				 
				  formObj.attr("action", "/board/replyWrite");
				  formObj.submit();
			}); 
			
			//	"&userId=${principal.member.userId}"

/* 			//댓글 쓰기
			$(".replyWriteBtn").on("click", function(){
				
				var boardNum = $(this).attr("data-boardNumber");
				var userId = $(this).attr("data-userId");
				
				console.log(boardNum) ;
				console.log(userId);
				
				  $.ajax({
					  type : 'POST',
					  dataType : 'json',
					  url : "/board/replyWrite",
					  data : {"boardNumber" : boardNum,
						  	  "userId" : userId},
					  success : function(data){
					  	location.href = "/board/replyWrite";
					  },
					  error : function(error){
						  alert(error);
					  }
				  })
			});
			 */
					
		/* 	//댓글 삭제 View
			$(".replyDeleteBtn").on("click", function(){
				location.href = "/board/replyDeleteView?boardNumber=${read.boardNumber}"
					+ "&page=${scri.page}"
					+ "&perPageNum=${scri.perPageNum}"
					+ "&searchType=${scri.searchType}"
					+ "&keyword=${scri.keyword}"
					+ "&boardReplyNumber="+$(this).attr("data-boardReplyNumber");
			});
			 */
			 
			// 댓글삭제
			$(".replyDeleteBtn").on("click", function(){
				var deleteYN = confirm("정말로 삭제하시겠습니까?");				
				
				if(deleteYN == true ){
					var data = {boardReplyNumber : $(this).attr("data-boardReplyNumber")};
					
					$.ajax({
						type : 'POST',
						dataType : 'json',
						url : "/board/replyDelete",
						data : data,
						success : function(result){
							if(result == 0){
								alert("작성자 본인만 삭제할 수 있습니다.")						
							}
							
							if(result == 1) {
								alert("삭제되었습니다.")
								location.href = "/board/list";
							}
						},
						error : function() {
							alert('로그인이 필요합니다')
							location.href="/member/signin";	
						}
					});					
				}				
			})			
			
			//댓글 수정 View
			$(".replyUpdateBtn").on("click", function(){
				
				var bn = $(this).attr("data-boardReplyNumber");
				var rbn = {boardReplyNumber : bn};
				
				$.ajax({
					type : 'POST',
					dataType : 'json',
					url : "/board/replyUpdateCheck",
					data : rbn,
					success : function(result){
						if(result == 0){
							alert("작성자 본인만 수정할 수 있습니다")
						}
						if(result==1){							
							location.href="/board/replyUpdateView?boardReplyNumber="+bn;
						}
					},
					error : function(){
						alert('로그인이 필요합니다')
						location.href="/member/signin";	
					}
					
				})
		
			});
			 
			
			 						
			 
	/* 		//댓글 수정 View
			$(".replyUpdateBtn").on("click", function(){
				location.href = "/board/replyUpdateView?boardNumber=${read.boardNumber}"
								+ "&page=${scri.page}"
								+ "&perPageNum=${scri.perPageNum}"
								+ "&searchType=${scri.searchType}"
								+ "&keyword=${scri.keyword}"
								+ "&boardReplyNumber="+$(this).attr("data-boardReplyNumber");
			});
				 */		
			
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
		<div class="container1">							
			<section id="container">
				<form name="readForm" role="form" method="post">
				  <input type="hidden" id="boardNumber" name="boardNumber" value="${read.boardNumber}" />
				  <input type="hidden" id="page" name="page" value="${scri.page}"> 
				  <input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
				  <input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
				  <input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 				 
				</form>
				
				<table class="table">
					<tbody>	
						<tr>
							<td>
								<label for="boardTitle">제목</label>
								<input type="text" id="boardTitle" name="boardTitle" value="${read.boardTitle}" readonly="readonly"/>
							</td>
						</tr>	
						<tr>
							<td>
								<label for="boardContent">내용</label>
								<textarea id="boardContent" name="boardContent" readonly="readonly"><c:out value="${read.boardContent}" /></textarea>
							</td>
						</tr>
						<tr>
							<td>
								<label for="userId">작성자</label>
								<input type="text" id="userId" name="userId" value="${read.userId}" readonly="readonly" />
							</td>
						</tr>
						<tr>
							<td>
								<label for="boardRegidate">작성 날짜</label>
								<fmt:formatDate value="${read.boardRegidate}" pattern="yyyy-MM-dd"/>					
							</td>
						</tr>		
					</tbody>			
				</table>
				
				<div>					
					<sec:authorize access="isAnonymous()">
						<c:url value="/member/signin" var="signinForm" />
						<a class="login-a" href="${signinForm}">로그인</a>										
					</sec:authorize>
				
					<sec:authorize access="isAuthenticated()"> 
					<button type="button"class="update_btn" data-boardNumber="${read.boardNumber}">수정</button>
					<!-- <button type="submit" class="update_btn">수정</button> -->							
					<button type="button"class="delete_btn" data-boardNumber="${read.boardNumber}">삭제</button>									
					<!-- <button type="submit" class="delete_btn">삭제</button>-->	
					</sec:authorize>														
																	
					<button type="submit" class="list_btn">목록</button>	
				</div>

		<!-- 댓글 -->
		<div id="reply">
			<ol class="replyList">
				<c:forEach items="${replyList}" var="replyList">
					 <li>					    
			        <p> 작성 내용 : ${replyList.boardReplyContent}</p>
						작성자 : ${replyList.userId}<br />
						작성 날짜 : <fmt:formatDate value="${replyList.boardReplyRegidate}" pattern="yyyy-MM-dd" />				
				<div>
					<sec:authorize access="isAuthenticated()"> 
					<button type="button" class="replyUpdateBtn" data-boardReplyNumber="${replyList.boardReplyNumber}">수정</button>
					<button type="button" class="replyDeleteBtn" data-boardReplyNumber="${replyList.boardReplyNumber}">삭제</button>
					</sec:authorize>	
				</div>
					</li>
				</c:forEach>   
			 </ol>
		</div>			
			<form name="replyForm" method="post">										
				<div>							
					<sec:authorize access="isAuthenticated()"> 
						<sec:authentication var="principal" property="principal"/>						
						<input type="hidden" id="boardNumber" name="boardNumber" value="${read.boardNumber}" />
						<input type="hidden" id="userId" name="userId" value="${principal.member.userId}" />
						<input type="hidden" id="page" name="page" value="${scri.page}"> 
						<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
						<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
						<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 						
						<label for="boardReplyContent">댓글 내용</label>
					    <input type="text" id="boardReplyContent" name="boardReplyContent" />						   
						<label for="userId">댓글 작성자</label>			
		                <a class="mypage-a">${principal.member.userId}</a>
		                
		                <button class="replyWriteBtn"  type="submit">작성 </button>                
	           		</sec:authorize>			
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