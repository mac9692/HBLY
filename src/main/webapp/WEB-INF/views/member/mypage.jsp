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
	
		<!-- nav -->
		<%@ include file="../include/nav.jsp" %>
	
		
		<!-- header -->
		<%@ include file="../include/header.jsp" %>
	
	
		<!-- menu -->
		<%@ include file="../include/menu.jsp" %>
		
		
	
	
			
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
                              <a class="nav-link active"  href="/member/mypage">개인정보</a>
                            </li>
                          </ul>
                        </div>
                        
                        <div class="card-body">
                          <div class="tab-content mt-2">
                          
                            <div class="tab-pane fade active show" id="tabone" role="tabpanel">
                            
                              <!--1-->
								<%@ include file= "pwChk.jsp" %>
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