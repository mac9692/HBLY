<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

    <header>
    	  <%--   <!--로딩시 로고 시작 -->
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
     --%>
    
    <!-- Preloader Start -->
    
    
    
        <div class="header-area header-transparent">
            <div class="main-header header-sticky">
                <div class="container-fluid">

                    <div class="hero-d menu-wrapper d-flex align-items-center justify-content-between">
                        <!-- Logo -->
                        <h1 data-animation="fadeInLeft" data-delay="0.4s" class="" style="animation-delay: 0.4s;"><a href="/">HBLY</a></h1>
                        <!-- Main-menu -->
                        <div class="main-menu f-right d-none d-lg-block">
                            <nav>
                                <ul id="navigation">
                                    
                                    
                                    <li><a href="/shop/list?c=000&l=1">MARKET</a>
                                    	<ul class="submenu">
                                    		<li><a href="/shop/list?c=000&l=1">헬스보충식품</a>
                                    			<ul class="submenu2">
                                    				<li><a style="padding:10px 10px;" href="/shop/list?c=001&l=2">프로틴</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=002&l=2">크레아틴</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=003&l=2">아미노산</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=004&l=2">기타헬스보조제</a></li>
                                    			</ul>
                                    		</li>
                                    		<li><a href="/shop/list?c=100&l=1">비타민/미네랄</a>
                                    			<ul class="submenu2">
                                    				<li><a style="padding:10px 10px;" href="/shop/list?c=101&l=2">멀티비타민</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=102&l=2">비타민A</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=103&l=2">비타민B</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=104&l=2">비타민C</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=107&l=2">비타민K</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=110&l=2">마그네슘</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=117&l=2">기타비타민/미네랄</a></li>
                                    			</ul>
                                    		<li><a href="/shop/list?c=200&l=1">영양제</a>
                                    			<ul class="submenu2">
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=203&l=2">밀크시슬</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=206&l=2">코엔자임Q10</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=207&l=2">히알루론산/콜라겐</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=209&l=2">폴리코사놀</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=210&l=2">글루코사민</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=213&l=2">크레아틴</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=214&l=2">아미노산</a></li>
                                    			</ul>
                                    		<li><a href="/shop/list?c=300&l=1">허브/자연추출물</a>
                                    		<ul class="submenu2">
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=308&l=2">로얄젤리/벌화분</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=309&l=2">알로에베라</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=311&l=2">클로렐라</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=316&l=2">아사이베리</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=317&l=2">크랜베리</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=318&l=2">블루베리</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=320&l=2">카무카무</a></li>
                                    			</ul>
                                    		<li><a href="/shop/list?c=400&l=1">홍삼/인삼</a>
                                    			<ul class="submenu2">
                                    				<li><a style="padding:10px 10px;" href="/shop/list?c=401&l=2">홍삼농축액/홍삼정</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=402&l=2">홍삼진액/파우치</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=403&l=2">홍삼정과/절편</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=404&l=2">홍삼캡슐</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=406&l=2">홍삼캔디/젤리</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=407&l=2">인삼/수삼/장뇌삼</a></li>
                                    			</ul>
                                    		<li><a href="/shop/list?c=500&l=1">건강즙</a>
                                    			<ul class="submenu2">
                                    				<li><a style="padding:10px 10px;" href="/shop/list?c=501&l=2">배즙/도라지즙</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=502&l=2">양배추즙</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=503&l=2">비트/호박즙</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=504&l=2">석류/사과/포도즙</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=505&l=2">양파즙/마늘즙</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=506&l=2">기타건강즙</a></li>
                                    			</ul>
                                    		<li><a href="/shop/list?c=600&l=1">다이어트 식품</a>
                                    			<ul class="submenu2">
                                    				<li><a style="padding:10px 10px;" href="/shop/list?c=601&l=2">탄수화물차단제</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=602&l=2">체지방감소제</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=603&l=2">다이어트쉐이크</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=604&l=2">기타다이어트식품</a></li>
                                    			</ul>
                                    		<li><a href="/shop/list?c=700&l=1">헬스/요가용품</a>
                                    			<ul class="submenu2">
                                    				<li><a style="padding:10px 10px;" href="/shop/list?c=701&l=2">요가/필라테스</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=702&l=2">근력운동</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=703&l=2">유산소운동</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=704&l=2">스트레칭/균형</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=705&l=2">헬스소품/보호대</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=706&l=2">운동측정용품</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=707&l=2">부위별 운동용품</a></li>
                                    			</ul>
                                    		<li><a href="/shop/list?c=800&l=1">건강가전</a>
                                    			<ul class="submenu2">
                                    				<li><a style="padding:10px 10px;" href="/shop/list?c=801&l=2">안마/찜질기</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=802&l=2">전동칫솔/살균기</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=804&l=2">손건조기/소독기</a></li>
                                    			</ul>
                                    		<li><a href="/shop/list?c=900&l=1">건강도서</a>
                                    			<ul class="submenu2">
                                    				<li><a style="padding:10px 10px;" href="/shop/list?c=901&l=2">다이어트</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=902&l=2">요가/체조/기타</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=903&l=2">질병과 치료법</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=904&l=2">한의학/한방치료</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=905&l=2">건강에세이</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=906&l=2">웰빙/다이어트요리</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=907&l=2">해외건강도서</a></li>
                                    			</ul>
                                    		<li><a href="/shop/list?c=1000&l=1">건강/의료용품</a>
                                    			<ul class="submenu2">
                                    				<li><a style="padding:10px 10px;" href="/shop/list?c=1001&l=2">눈건강/렌즈관리</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=1003&l=2">보호대/교정용품</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=1004&l=2">건강측정용품</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=1005&l=2">찜질/부항/뜸/좌훈</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=1006&l=2">호흡/수면건강</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=1007&l=2">가정의료용품</a></li>
											  		<li><a style="padding:10px 10px;" href="/shop/list?c=1008&l=2">금연용품</a></li>
                                    			</ul>
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
                                    </li>
                                    <li><a href="/gym/course">courses</a>
                                    </li>
                                    <li><a href="/gym/price">pricing</a>
                                    </li>
                                    <li><a href="/gym/gallery">Gallery</a>
                                    </li>
                                   
                                    <li><a href="/gym/contact">Contact</a></li>

										<sec:authorize access="isAuthenticated()">
												
										
										<li><a href="/member/mypage">MYPAGE</a>
                                        <ul class="submenu">
											<li><a href="/member/mypage">개인정보 수정</a>
                                            <li><a href="/shop/cartList">장바구니</a></li>
                                            <li><a href="/shop/orderList">주문목록</a></li>
                                        </ul>
                                    	</li>
										
										<sec:authentication var="principal" property="principal" />
												<li>
												<a href="/">${principal.member.userNickname}님,환영합니다!</a>
												</li>	
										</sec:authorize>
										
										
										<!-- 관리자 메뉴 -->
									<c:if test="${pageContext.request.userPrincipal.name != null}">
										<sec:authentication var="principal" property="principal" />
										<c:if test="${principal.member.verify == 9}">
											<li><a href="/admin/goods/list">관리자화면</a>
												<ul class="submenu">
													<li><a href="/">다른 관리페이지</a></li>
												</ul>
											</li>	
										</c:if>
										
										
										<li><sec:authorize access="isAuthenticated()">
												<form:form action="/logout" method="POST">
													<input type="submit" class="header-btn btn" value="Logout">
												</form:form>
											</sec:authorize>
										</li>
								</c:if>
                                    
									</ul>
				
                                    
                                    
                            </nav>
                        </div>
                        
                        
                        <!-- 회원이 아닐 시 버튼 구현 -->
                        <c:if test="${pageContext.request.userPrincipal.name == null}">
                        
                        <div class="header-btns d-none d-lg-block f-right">
							<a href="/member/signup" class="header-btn btn">회원가입</a>					
                            <a href="/member/signin" class="header-btn btn">로그인</a>
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

