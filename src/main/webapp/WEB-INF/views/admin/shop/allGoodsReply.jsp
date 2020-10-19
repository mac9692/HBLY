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
					
					<ul>
						<c:forEach items="${goodsReply}" var="goodsReply">
						<li>
							<div class="replyInfo">
								<p>
									<span>작성자</span>${goodsReply.userNickname}(${goodsReply.userId})
								</p>
								<p>
									<span>작성된 상품</span><a href="/shop/view?n=${goodsReply.goodsNumber}">바로가기</a>
								</p>
							</div>
							<div class="replyContent">
								${goodsReply.goodsReplyContent}
							</div>
							
							<div class="replyDelete">
								<form role="form" method="post">
									<input type="hidden" name="goodsReplyNumber" value="${goodsReply.goodsReplyNumber}"/>
									<button type="submit" class="delete_${goodsReply.goodsReplyNumber}_btn">삭제</button>
								</form>
								
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