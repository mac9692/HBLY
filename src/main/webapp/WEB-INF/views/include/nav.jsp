<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>


<nav class="navbar navbar-expand-md navbar-light">
	<div class="container">
		<div class="collapse navbar-collapse" id="navbar4">
				<c:if test="${pageContext.request.userPrincipal.name == null}">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link"
							href="/member/signup">회원가입</a></li>
						<li class="nav-item"><a class="nav-link" href="#">고객센터</a></li>
						<li class="nav-item"><a class="nav-link" href="/board/list?categoryCode=0">공지사항</a></li>
						<li><a class="btn navbar-btn ml-md-2 btn-light"
							href="/member/signin">로그인</a></li>
					</ul>
				</c:if>

				<c:if test="${pageContext.request.userPrincipal.name != null}">
					<ul class="navbar-nav ml-auto">
						<sec:authentication var="principal" property="principal" />
						<c:if test="${principal.member.verify == 9}">
							<li class="nav-item"><a class="nav-link" href="/admin/goods/list">관리자
									화면</a></li>
						</c:if>


						<li class="nav-item"><sec:authorize
								access="isAuthenticated()">
								<sec:authentication var="principal" property="principal" />
								<a class="nav-link"><B><STRONG>${principal.member.userNickname}님,
											환영합니다!</STRONG></B></a>
							</sec:authorize></li>

						<li class="nav-item"><a class="nav-link"
							href="/shop/cartList">장바구니 리스트</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/shop/orderList">주문 목록</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/member/mypage">마이페이지</a></li>
						<li class="nav-item"><a class="nav-link" href="/board/list">게시판</a>
						</li>
						<li><sec:authorize access="isAuthenticated()">
								<form:form action="/logout" method="POST">
									<input type="submit" class="btn navbar-btn ml-md-2 btn-light"
										value="Logout">
								</form:form>
							</sec:authorize></li>


					</ul>

				</c:if>
		</div>
	</div>
</nav>