<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
 
  <title>HBLY : 로그인</title>
 
</head>

<body>

  <c:url value="/login" var="loginUrl" />
  <form:form role="form" action="${loginUrl}" method="POST" autocomplete="off">
  
  <!--login-->
  <div class="py-5 text-center" background-size:cover;" >
    <div class="container">
      <div class="row">
        <div class="mx-auto col-md-6 col-10 bg-white p-5">
          <h1 class="mb-4 text-primary"><a href="/"style="text-decoration:none">HBLY</a></h1>
            <div class="form-group">
            
            	<c:if test="${param.error != null}">
        		<p>아이디와 비밀번호가 잘못되었습니다.</p>
    			</c:if>
    			
            	<input type="email" class="form-control" placeholder="Enter email" id="userId" name="userId" required="required" >
            </div>
            <div class="form-group mb-3">
	            <input type="password" class="form-control" placeholder="Password" id="userPassword" name="userPassword" required="required">
	            <small class="form-text text-muted text-right">
	            <a href="/member/signup2">회원가입</a> | <a href="/member/idInqury">아이디</a> / <a href="/member/pwInqury"> 비밀번호 찾기</a>
	            </small>
            </div>
            <button type="submit" class="btn btn-primary" id="signin_btn" name="signin_btn">로그인</button>
          <hr>
          <p class="text-info"><b>간편하게 시작하기</b></p>
          <div class="row mb-4 container d-flex justify-content-center">
            <a href ="https://kauth.kakao.com/oauth/authorize?client_id=5bde6ae9c71bf5f382a97fe4ea87eb67&redirect_uri=http://localhost:8282/auth/kakao/callback&response_type=code"><img src="/images/kakao_login_button.png"/></a>
					  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
          </div>
        </div>
      </div>
    </div>
  </div>
  
  </form:form>   
  
  
  <footer id="foorter">
	<div id="footer_box">
		<%@ include file= "../include/footer.jsp" %>
	</div>
  </footer>
  
</body>
</html>