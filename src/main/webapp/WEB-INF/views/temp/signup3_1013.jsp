<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
	<head>
		<title>HBLY</title>
		<!-- 구글 -->
		
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
					<h1>SignUp Page</h1>
					
					
					<section id ="content">
					<c:url value="/member/signup" var="signupUrl"/>
					<p>${signupUrl}</p>
					<form:form role="form" action="${signupUrl}" method="POST" autocomplete="off">
						<div class="input-area">
						<label for="userId">아이디</label>
						<input type="email" id="userId" name="userId" placeholder="example@email.com" required="required"/>
						</div>
						
						<div class="input_area">
						<label for="userPassword">패스워드</label>
						<input type="password" id="userPassword" name="userPassword" required="required"/>	
						</div>
						
						<div class="input_area">
						<label for="userName">이름</label>
						<input type="text" id="userName" name="userName" placeholder="이름을 입력해주세요." required="required"/>
						</div>
						
						<div class="input_area">
						<label for="userNickname">닉네임</label>
						<input type="text" id="userNickname" name="userNickname" placeholder="닉네임을 입력해주세요." required="required"/>
						</div>
						
						<div class="input_area">
						<label for="userPhoneNumber">연락처</label>
						<input type="text" id="userPhoneNumber" name="userPhoneNumber" placeholder="연락처를 입력해주세요" required="required"/>
						</div>
						
						<button type="submit" id="signup_btn" name="signup_btn">회원가입</button>
						
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
