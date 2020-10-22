<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

    <header>
    	    <!--로딩시 로고 시작 -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="${pageContext.request.contextPath}/resources/assets/img/logo/HBLY.png" alt="">
                </div>
            </div>
        </div>
    </div>
    
    
    <!-- Preloader Start -->
    
    
    
        <div class="header-area header-transparent">
            <div class="main-header header-sticky">
                <div class="container-fluid">
                    <div class="menu-wrapper d-flex align-items-center justify-content-between">
                        <!-- 로고(사진이었으나 글로 변경) -->
                        <a href="/">HBLY</a>
                        <!-- Main-menu -->
                        <div class="main-menu f-right d-none d-lg-block">
                            <nav>
                                <ul id="navigation">
                                    <li><a href="/">HBLY</a></li>
                                    
                                    
                                    <li><a href="/">SHOP</a>
                                    	<ul class="submenu">
                                    		<li><a href="/shop/list?c=000&l=1">헬스보충식품</a></li>
                                    		<li><a href="/shop/list?c=100&l=1">비타민/미네랄</a>
                                    		<li><a href="/shop/list?c=200&l=1">영양제</a>
                                    		<li><a href="/shop/list?c=300&l=1">허브/자연추출물</a>
                                    		<li><a href="/shop/list?c=400&l=1">홍삼/인삼</a>
                                    		<li><a href="/shop/list?c=500&l=1">건강즙</a>
                                    		<li><a href="/shop/list?c=600&l=1">다이어트 식품</a>
                                    		<li><a href="/shop/list?c=700&l=1">헬스/요가용품</a>
                                    		<li><a href="/shop/list?c=800&l=1">건강가전</a>
                                    		<li><a href="/shop/list?c=900&l=1">건강도서</a>
                                    		<li><a href="/shop/list?c=1000&l=1">건강/의료용품</a>
                                    	</ul>
                                    </li>
                                    
                                    
                                    
                                    <li><a href="/board/list">BOARD</a>
                                        <ul class="submenu">
                                            <li><a href="/board/list?categoryCode=0">공지사항</a></li>
                                            <li><a href="/board/list?categoryCode=1">자유게시판</a></li>
                                            <li><a href="/board/list?categoryCode=2">문의게시판</a></li>
                                            <li><a href="/board/list?categoryCode=3">리뷰게시판</a></li>
                                        </ul>
                                    </li>
									
									
                                    <li><a href="/gym/about">ABOUT</a>
                                        <ul class="submenu">
                                            <li><a href="/gym/price">PRICE</a></li>
                                            <li><a href="blog_details.html">Blog Details</a></li>
                                            <li><a href="elements.html">Elements</a></li>
                                            <li><a href="courses.html">Courses</a></li>
                                            <li><a href="gallery.html">Gallery</a></li>
                                        </ul>
                                    </li>
                                    
                                    
                                    <li><a href="/">HELP</a>
                                        <ul class="submenu">
                                            <li><a href="/">고객센터</a></li>
                                            <li><a href="/">공지사항</a></li>
                                            <li><a href="elements.html">Elements</a></li>
                                        </ul>
                                    </li>
                                    
                                    <li><a href="contact.html">Contact</a></li>
                                    
                                    
                                    
                                    
										
										<sec:authorize access="isAuthenticated()">
												
										
										<li><a href="/member/mypage">MYPAGE</a>
                                        <ul class="submenu">
                                        	<li><a href="/shop/cartList">장바구니</a>
                                            <li><a href="/shop/orderList">주문 목록</a></li>
                                            <li><a href="/board/list">게시판</a></li>
                                        </ul>
                                    	</li>
										
										<sec:authentication var="principal" property="principal" />
												<li><a href="/">${principal.member.userNickname}님,환영합니다!</a>
															</sec:authorize></li>
										
										
										<!-- 관리자 메뉴 -->
									<c:if test="${pageContext.request.userPrincipal.name != null}">
										<sec:authentication var="principal" property="principal" />
										<c:if test="${principal.member.verify == 9}">
											<li><a href="/admin/index">관리자화면</a>
												<ul class="submenu">
													<li><a href="/">다른 관리페이지</a></li>
												</ul>
											</li>	
										</c:if>
										
										
										<li><sec:authorize access="isAuthenticated()">
												<form:form action="/logout" method="POST">
													<input type="submit" class="btn navbar-btn ml-md-2 btn-light" value="Logout">
												</form:form>
											</sec:authorize>
										</li>
									</ul>
				
								</c:if>
                                    
                                    
                                    
                                </ul>
                            </nav>
                        </div>
                        
                        
                        <!-- 회원이 아닐 시 버튼 구현 -->
                        <c:if test="${pageContext.request.userPrincipal.name == null}">
                        
                        <div class="header-btns d-none d-lg-block f-right">
							<a href="/member/signup" class="btn">회원가입</a>					
                            <a href="/member/signin" class="btn">로그인</a>
                       	</div>
                       	</c:if>
                       
                       
                       <!-- Mobile Menu -->
                       <div class="col-12">
                        <div class="mobile_menu d-block d-lg-none"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

