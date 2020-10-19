<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>HBLY 관리자 페이지</title>
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