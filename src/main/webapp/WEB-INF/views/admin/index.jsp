<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>HBLY 관리자 페이지</title>
		
		<!-- jQuery -->
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		
		<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
		
		
		<style>
		
				body { font-family:'맑은 고딕',verdana;padding:0;margin:0; }
				ul { padding:0;margin:0;list-style:none; }
				div#root { width:90%; margin:0 auto; }
				
				
				header#header { font-size:600px; padding:20px 0;}
				header#header h1 a { color:#000; font-weight:bold; }
				
				nav#nav { padding:10px; text-align:right; }
				nav#nav il li { display:inline-block; margin-left:10px; }
				
				
				aside { float:left; width:calc(100% - 200px - 20px); }
				aside ul li	{ text-align:center; margin-bottom:10px; }
		</style>
		
		
		
	</head>
	<body>
		<div id="root">
			<header id="header">
				<div id="header_box">
					<%@ include file="include/header.jsp" %>
				</div>
			</header>
			
			<nav id="nav">
				<div id="nav_box">
					<%@ include file="include/nav.jsp" %>
				</div>
			</nav>
			
			
	
			<section id="container">
				<aside>
				 	<%@ include file="include/aside.jsp" %>
				</aside>
			
			
			
				<div id="container_box">
					본문 영역
				</div>
			</section>
			
			<footer id="footer">
				<div id="footer_box">
					<%@ include file="include/footer.jsp" %>
				</div>
			</footer>
		</div>
	</body>
</html>