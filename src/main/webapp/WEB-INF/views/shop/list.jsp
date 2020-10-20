<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		
		<title>HBLY Shop List</title>
		
		
	</head>
	<body>
		<div>
			
			<%@ include file= "../include/nav.jsp" %>
			
			
			<%@ include file= "../include/header.jsp" %>
			
			
			<%@ include file= "../include/menu.jsp" %>
			
		</div>
			
			<div>
			<section id="container">
				<div id="container_box">
					<section id="content">
						<ul>
						 <c:forEach items="${list}" var="list">
						 <li>
						  <div class="goodsThumbImage">
						   <img src="${list.goodsThumbImage}">
						  </div> 
						  <div class="goodsName">
						   <a href="/shop/view?n=${list.goodsNumber}">${list.goodsName}</a>
						  </div>
						 </li>
						 </c:forEach>
						</ul>
					</section>
						<aside id="aside">
							 <%@ include file="../include/aside.jsp" %>
						</aside>
				</div>
			</section>
			</div>
			
					<%@ include file= "../include/footer.jsp" %>
		
		
	</body>
</html>
