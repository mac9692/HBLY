<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
					<h1>withdrawal page</h1>
					<section id="content">
					<c:url value="/member/withdrawal" var="withdrawalUrl"/>
					<p>${withdrawalUrl}</p>
					
					<form:form role="form" action="${withdrawalUrl}" method="POST" autocomplete="off">
 						<sec:authentication var="principal" property="principal" />
						
		  					<div class="input_area">
		   					<label for="userId">아이디</label>
		  					<input type="email" id="userId" name="userId" value="${principal.member.userId}" readonly/>      
		 					</div>
		  
							<div class="input_area">
						    <label for="userPassword">패스워드</label>
						    <input type="password" id="userPassword" name="userPassword" required="required" />      
							</div>
					       
					  <button type="submit" id="withdrawal_btn" name="signin_btn">회원탈퇴</button>
					  <button class="cencle btn btn-danger" type="button">취소</button>
				</form:form>   
				
				<div>
				<c:if test="${msg == false}">
					비밀번호가 맞지 않습니다.
				</c:if>
				</div>
			</section>
					
					
				</div>
			</section>
			
			<footer id="foorter">
				<div id="footer_box">
					<%@ include file= "../include/footer.jsp" %>
				</div>
			</footer>
		</div>
	</body>
</html>
