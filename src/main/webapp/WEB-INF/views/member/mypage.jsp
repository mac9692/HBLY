<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html>
<html>

<head>
  <title>HBLY : 마이블리</title>
</head>



<body>
<!-- nav & header -->
	<div>
		<!-- nav -->
		<nav class="navbar navbar-expand-md navbar-light">
			<div class="container">
				<div class="collapse navbar-collapse" id="navbar4">
					<ul class="navbar-nav ml-auto">
						<%@ include file="../include/nav.jsp" %>
					</ul>
				</div>
			</div>
		</nav>
		<file ..menu.jsp>
		<!-- header -->
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container">
				<div class="collapse navbar-collapse" id="navbar8">
					<a class="navbar-brand text-primary" href="/"> <b class="">HBLY</b>
					</a>
					<div class="collapse navbar-collapse px-5" id="navbar5" style="">
						<div class="input-group">
							<input type="text" class="form-control" id="inlineFormInputGroup"
								placeholder="Search">
							<div class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</div>
					</div>
					<ul class="navbar-nav mr-3">
						<li class="nav-item ml-2"><a class="nav-link" href="/member/mypage"> <i
								class="fa fa-user-circle fa-3x" aria-hidden="true"></i>
						</a></li>
						<li class="nav-item ml-2"><a class="nav-link" href="/shop/cartList"> <i
								class="fa fa-shopping-cart fa-3x"></i>
						</a></li>
						<li class="nav-item ml-2"><a class="nav-link" href="#"> <i
								class="fa fa-bell fa-3x"></i>
						</a></li>
					</ul>
				</div>
			</div>
		</nav>
		
		<!-- menu -->
		<nav class="navbar navbar-expand-md navbar-dark bg-primary">
			<div class="container justify-content-center">
				<button class="navbar-toggler navbar-toggler-right border-0"
					type="button" data-toggle="collapse" data-target="#navbar15"
					aria-expanded="true">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div
					class="navbar-collapse collapse show"
					id="navbar15" style="">
					<ul class="navbar-nav">
						<li class="nav-item mx-2"><a
							class="nav-link navbar-brand mr-0 text-white" href="/"><i
								class="fa fa-comments-o" aria-hidden="true"></i> <b>커뮤니티</b></a></li>
						<li class="nav-item mx-2"><a
							class="nav-link navbar-brand mr-0 text-white" href="/market"><i
								class="fa fa-shopping-basket" aria-hidden="true"></i> <b>마켓</b></a>
						</li>
						<li class="nav-item mx-2"><a
							class="nav-link navbar-brand mr-0 text-white" href="#"><i
								class="fa fa-handshake-o" aria-hidden="true"></i> <b>중고거래</b></a></li>
					</ul>
				</div>
			</div>
		</nav>
		
	</div>
	
			
  <div class="py-5 text-white h-25" background-position: center center, center center; background-size: cover, cover; background-repeat: repeat, repeat;">
    <div class="text-center">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h2><b>마이블리</b></h2>
            <h5>내 활동의 모든것을 한눈에 확인하는 마이블리 </h5>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
          
            <div class="card-header text-center">
              <div class="container my-2">
                <div class="row text-right">
                  <div class="col-md-3 border-right border-left">
                    <dl><dt>게시글 수</dt>
                      <dd>0</dd>
                    </dl>
                  </div>
                  <div class="col-md-3 border-right">
                    <dl><dt class="">댓글 수</dt>
                      <dd>0</dd>
                    </dl>
                  </div>
                  <div class="col-md-3 border-right">
                    <dl><dt>최근 방문일</dt>
                      <dd>0</dd>
                    </dl>
                  </div>
                  <div class="col-md-3 border-right">
                    <dl><dt>포인트</dt>
                      <dd>0</dd>
                    </dl>
                  </div>
                </div>
              </div>
            </div>
            
            <div class="card-body">
              <div class="py-5">
                <div class="container">
                  <div class="row">
                    <div class="col-md-12">	
                      <div class="card">
                      
                        <div class="card-header">
                          <ul class="nav nav-tabs card-header-tabs">
                            <li class="nav-item">
                              <a class="nav-link active"  href="/member/pwChk">개인정보</a>
                            </li>
                          </ul>
                        </div>
                        
                        <div class="card-body">
                          <div class="tab-content mt-2">
                          
                            <div class="tab-pane fade active show" id="tabone" role="tabpanel">
                            
                              <!--1-->
                              <div class="container text-center">
                                <div class="row">
                                  <div class="mx-auto p-2 col-6">
                                    <p> 개인정보를 안전하게 보호하기 위하여 <br> HBLY 아이디 비밀번호를 한번 더 입력해주세요. </p>
                                      <div class="form-group"> <input type="password" class="form-control" id="form29" placeholder="비밀번호 입력" required="required"> </div>
                                      <a class="btn btn-primary w-100" href ="/member/modify">확인</a>
                                  </div>
                                </div>
                              </div>
                              		
                            </div>
                          </div>
                      </div>
                      
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
 </div>
 
 <%@ include file= "../include/footer.jsp" %>
</body>




</html>