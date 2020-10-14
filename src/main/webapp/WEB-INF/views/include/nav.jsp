<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 

	<ul>
	<c:if test="${pageContext.request.userPrincipal.name == null}">
		 <li>
		  <a href="/member/signin">로그인</a>
		 </li>
		  <li>
		  <a href="/member/signin2">로그인2</a>
		 </li>
		 <li>
		  <a href="/member/signup">회원가입</a>
		 </li>
		 <li>
		  <a href="/member/signup2">회원가입2</a>
		 </li>
		 <li>
		  <a href="/board/list">게시판</a>
		 </li>
		  <li>
		  <a href="/board/writeView">글쓰기</a>
		 </li>
	</c:if>

	<c:if test="${pageContext.request.userPrincipal.name != null}">
	
	<sec:authentication var="principal" property="principal" />
	<c:if test="${principal.member.verify == 9}">
		<li>
		 <a href="/admin/index">관리자 화면</a> 
		</li> 
	</c:if>
	
	<sec:authorize access="isAuthenticated()">
    <li>
		<sec:authentication property="principal.member.userNickname"/> 님, 환영합니다!
	</li>
	<li>
	<sec:authorize access="isAuthenticated()">
	<form:form action="/logout" method="POST">
	 <input type="submit" class="btn btn-secondary btn-sm" value="Logout">
    </form:form>
    </sec:authorize> 
	</li>
	</sec:authorize>
	<li>
		<a href="/shop/cartList">장바구니 리스트</a>
	</li>
	
	<li>
		<a href="/shop/orderList">주문 목록</a>
	</li>
	<li>
		<a href="/member/modify">회원정보 수정</a>
	</li>
	<li>
		<a href="/member/withdrawal">회원탈퇴</a>
	</li>
	<li>
		<a href="/member/mypage">마이페이지</a>
	</li>
	
	
	
</c:if>
</ul>