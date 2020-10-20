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
			<c:url value="/login" var="loginUrl" />
					
			<section id="container">
				<div id="container_box">
					<section id="content">
					
 						<form:form role="form" action="${loginUrl}" method="POST" autocomplete="off">
 						
 						
 						<c:if test="${param.error != null}">
        				<p>아이디와 비밀번호가 잘못되었습니다.</p>
    					</c:if>
    					
    					
		  					<div class="input_area">
		   					<label for="userId">아이디</label>
		  					<input type="email" id="userId" name="userId" required="required" />      
		 					</div>
		  
							<div class="input_area">
						    <label for="userPassword">패스워드</label>
						    <input type="password" id="userPassword" name="userPassword" required="required" />      
							</div>
					       
					  <button type="submit" id="signin_btn" name="signin_btn">로그인</button>
					 
					  <a href ="https://kauth.kakao.com/oauth/authorize?client_id=5bde6ae9c71bf5f382a97fe4ea87eb67&redirect_uri=http://localhost:8282/auth/kakao/callback&response_type=code"><img src="/images/kakao_login_button.png"/></a>
					  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
				</form:form>   
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
