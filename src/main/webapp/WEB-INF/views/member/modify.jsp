<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<title>HBLY</title>
		
	</head>
	
	<script type="text/javascript">
		$(document).ready(function(){
			
			$(".cancle").on("click", function(){
				
				location.href = "/";
						    
			})
		
	})
	</script>
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
					<h1>modify Page</h1>
					
					
					<section id ="content">
					<c:url value="/member/modify" var="modifyUrl"/>
					<p>${modifyUrl}</p>
					<form:form role="form" action="${modifyUrl}" method="POST" autocomplete="off">
					<sec:authentication var="principal" property="principal" />
						<div class="input-area">
						<label for="userId">아이디</label>
						<input type="email" id="userId" name="userId" value="${principal.member.userId}" readonly/>
						</div>
						
						<div class="input_area">
						<label for="userPassword">새로운 패스워드</label>
						<input type="password" id="userPassword" name="userPassword"/>	
						</div>
						
						<div class="input_area">
						<label for="userName">새로운 이름</label>
						<input type="text" id="userName" name="userName" placeholder="이름을 입력해주세요."/>
						</div>
						
						<div class="input_area">
						<label for="userNickame">닉네임</label>
						<input type="text" id="userNickname" name="userNickname" placeholder="닉네임을 입력해주세요."/>
						</div>
						
						<div class="input_area">
						<label for="userPhoneNumber">연락처</label>
						<input type="text" id="userPhoneNumber" name="userPhoneNumber" placeholder="연락처를 입력해주세요"/>
						</div>
						
						<button type="submit" id="modify_btn" name="modify_btn">회원정보 수정</button>
						<button class="cancle btn" type="button">취소</button>
						
					</form:form>
					<c:if test="${msg == false}">
					내용을 입력해주세요
					</c:if>
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
