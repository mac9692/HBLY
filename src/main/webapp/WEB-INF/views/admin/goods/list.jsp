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