<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
		
		<title>HBLY Board List</title>
		
		  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>	
		
		
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
		<link href="https://fonts.googleapis.com/css2?family=Syne+Tactile&display=swap" rel="stylesheet">

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

	.table{
		width:90%;
		margin-left: 5%;
    	margin-right: 5%;
	}
	a{
		color:black;
		margin-left: 10%;
	}
	
	a:hover{
		color:#F23838;
	}
	
	th,td{
		text-align:center;
	}
	.search{
		margin-left: 40%;
	}	
	
	ul{
		text-align:center;
		display: inline-block;
	}

	
	#searchBtn{
	  color : black;
	}
	
	.writebutton{
		-webkit-tap-highlight-color: transparent;
		 background-color: #fff;
		 border-radius: 5px;
		 border: solid 1px #e8e8e8;
		 box-sizing: border-box;
		 clear: both;
		 cursor: pointer;
		 display: block;
		 margin-left: 89%;
		 font-family: inherit;
		 font-size: 14px;
		 font-weight: normal;
		 height: 42px;
		 line-height: 40px;
		 outline: none;
		 padding-left: 30px;
		 padding-right: 30px;
		 position: relative;
		 text-align: left !important;
		 -webkit-transition: all 0.2s ease-in-out;
		 transition: all 0.2s ease-in-out;
		 -webkit-user-select: none;
		    -moz-user-select: none;
		     -ms-user-select: none;
		         user-select: none;
		 white-space: nowrap;
		 width: auto; 
		 bottom: 43;
	}
	
	 #searchBtn{
		 -webkit-tap-highlight-color: transparent;
		 background-color: #fff;
		 border-radius: 5px;
		 border: solid 1px #e8e8e8;
		 box-sizing: border-box;
		 clear: both;
		 cursor: pointer;		 
		 font-family: inherit;
		 font-size: 14px;
		 font-weight: normal;		
		 line-height: 40px;
		 outline: none;
		 padding-left: 25px;
		 padding-right: 30px;
		 position: relative;
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
	
	#keywordInput{
		/* width: 200px;
    	height: 30px;
    	font-size: 15;	
    	margin: 5px; */
    	 -webkit-tap-highlight-color: transparent;
		 background-color: #fff;
		 border-radius: 5px;
		 border: solid 1px #e8e8e8;
		 box-sizing: border-box;
		 clear: both;
		 cursor: pointer;		 
		 font-family: inherit;
		 font-size: 14px;
		 font-weight: normal;
		 height: 42px;
		 line-height: 40px;
		 outline: none;
		 padding-left: 18px;
		 padding-right: 30px;
		 position: relative;
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

	div.page{
		text-align:center;
		font-size: 14px;
		line-height: 20px;
	}
	
	.pagination{
		text-align:center;
		font-size: 14px;
		line-height: 20px;
		display: -webkit-inline-box;
	}	
	
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
	    
	    #tabletop{
	    background-color:#EEE8E9;
	    height: 50px;
  		font-size: 25px;
  		font-family: "Oswald", sans-serif;
  		color: #443E3F;
	    }
	    
	    .cate1{
        text-align: center;
	    height: 50px;
  		font-size: 25px;
  		font-family: "Oswald", sans-serif;
  		margin-bottom: 1%;
	    background-color: #CB0B2B;
	    }
	    
	    
/* 	    .navbar-nav{
	    text-align:center;
	    padding-left: 30%;
        margin-top: 1rem;
   		margin-bottom: 1rem;
	    }

		.nav-link{
		color:black;
		}
		.nav-item{
		color:black;
		} */
		
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
	
<%-- <nav class="navbar navbar-expand-sm bg-light navbar-light" id="cate1">
		<ul class="navbar-nav">
			<li class="nav-item">
				<c:set var="categoryCode" value="${pageMaker.cri.categoryCode}" />		
				<a class="nav-link" href="/board/list?categoryCode=0">공지사항 </a>		
			</li>
			<li class="nav-item">
				<a class="nav-link"  href="/board/list?categoryCode=1">자유게시판 </a>	
			</li>	
			<li class="nav-item">
				<a class="nav-link" href="/board/list?categoryCode=2">문의게시판 </a>
			</li>		
			<li class="nav-item">
				<a class="nav-link" href="/board/list?categoryCode=3">리뷰게시판</a>
			</li>
		</ul>
	</nav>  --%>
	
<div class="cate1">
	<c:set var="categoryCode" value="${pageMaker.cri.categoryCode}" />		
		<a href="/board/list?categoryCode=0">공지사항 </a>		
		<a  href="/board/list?categoryCode=1">자유게시판 </a> 			
		<a  href="/board/list?categoryCode=2">문의게시판 </a>				
		<a  href="/board/list?categoryCode=3">리뷰게시판</a>
	</div>  
 	
<section id="listcontainer">
	<form role="form" method="get" >
		<table class="table">
			<tr id="tabletop">
				<th>글 번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>등록일</th>
				<th>조회수</th>
			</tr>
			
			<c:forEach items="${list}" var = "list">
				<tr>
					<td><c:out value="${list.boardNumber}" /></td>
					<td >
					<a href="/board/readView?boardNumber=${list.boardNumber}&
															page=${scri.page}&
															perPageNum=${scri.perPageNum}&
															searchType=${scri.searchType}&
															keyword=${scri.keyword}"><c:out value="${list.boardTitle}" /></a>
					</td>
					<td><c:out value="${list.userId}" /></td>
					<td><fmt:formatDate value="${list.boardRegidate}" pattern="yyyy-MM-dd"/></td>
					<td><c:out value="${list.boardHit }"/></td>
				</tr>
			</c:forEach>											
		</table>
		
		<div class="search">
		    <select name="searchType">
		      <option value="t"<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
		      <option value="c"<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
		      <option value="w"<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
		      <option value="tc"<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
		    </select>						    
	    <input type="text" name="keyword" id="keywordInput" value="${scri.keyword}" />		
	    <button id="searchBtn" type="button" >검색</button>			    		    		   				    											   				    			    				  			
	  </div>
	  
	  <input type="button" class="writebutton" value="글쓰기" onclick="location.href='/board/writeView?categoryCode=${categoryCode}'">	

	  	
	<div class="page">
	  <ul class="pagination">
	    <c:if test="${pageMaker.prev}">
	    	<li><a href="list${pageMaker.makeSearch(pageMaker.startPage - 1, categoryCode)}">이전</a></li>
	    </c:if> 
	
	    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
	    	<li><a href="list${pageMaker.makeSearch(idx, categoryCode)}">${idx}</a></li>
	    </c:forEach>
	
	    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
	    	<li><a href="list${pageMaker.makeSearch(pageMaker.endPage + 1, categoryCode)}">다음</a></li>
	    </c:if> 
	  </ul>
	</div>
		
	</form>								
	</section>

		
	<!-- 건들지맙시다 -->
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
		 
		 
		 <script>
	      $(function(){
	        $('#searchBtn').click(function() {
	        	location.replace("/board/list?page=1&categoryCode=${categoryCode}&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val()));
	        });
	      });				   
	    </script>	
		<script>
	    $(function(){
	        $('#searchBtn').keypress(function(e) {
	        	if(e.which == 13)
	        	location.replace("/board/list?page=1&categoryCode=${categoryCode}&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val()));
	        });
	      });  
	    </script>
		
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