<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>HBLY 관리자 페이지</title>
		
		
		
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<!-- 구글 -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		
		<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
			
		
		<link rel="stylesheet" href="/resources/bootstrap/bootstrap.min.css">
		<link rel="stylesheet" href="/resources/bootstrap/bootstrap-theme.min.css">
		<script src="/resources/bootstrap/bootstrap.min.js"></script>
		
		
		
				
				
				
				
				
				
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
		#container_box table { width: 900px; }
		#container_box table th { font-size:20px; font-weight:bold;
									text-align:center; padding:10px; border-bottom:2px solid #666; }
		#container_box table tr:hover { background:#eee; }
		#container_box table td { padding:10px; text-align:center; }
		#container_box table img { width: 150px; height:auto; }

		</style>
		
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
					<table>
						<thead>
							<tr>
								<th>번호</th>
								<th>이름</th>
								<th>카테고리</th>
								<th>가격</th>
								<th>수량</th>
								<th>등록날짜</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list}" var="list">
							<tr>
								<td>
									<img src="${list.goodsThumbImage}">
								</td>
								<td>
									<a href="/admin/goods/view?n=${list.goodsNumber}">${list.goodsName}</a>
								</td>
								<td>
								${list.categoryName}
								</td>
								<td>
								<fmt:formatNumber value="${list.goodsPrice}" pattern="###,###,###"/>
								</td>
								<td>
								${list.goodsStock}
								</td>
								<td>
								<fmt:formatDate value="${list.goodsRegidate}" pattern="yyyy-MM-dd"/>
								</td>
							</tr>
							</c:forEach>	
						</tbody>
					</table>
					
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