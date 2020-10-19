<%@page import="java.text.DateFormat"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
  <title>HBLY : 아이디찾기 </title>
 
</head>
<body>
	
	<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container"> <a class="navbar-brand" href="/">
        <b>HBLY</b>
      </a> <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar10">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbar10">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item"> <a class="nav-link text-primary" href="/member/signin2">로그인</a> </li>
          <li class="nav-item"> <a class="nav-link text-primary" href="/member/signup2">회원가입</a> </li>
        </ul>
      </div>
    </div>
  </nav>
  <nav class="navbar navbar-dark bg-primary">
    <div class="container d-flex justify-content-center">
      <div class="container px-5 mx-5">
        <div class="row">
          <div class="col-md-6"><a class="navbar-brand" href="/member/idInqury">
              <i class="fa d-inline fa-lg fa-circle-o"></i> <b>아이디 찾기</b>
            </a></div>
          <div class="col-md-6">
            <a class="navbar-brand" href="/member/pwInqury"><i class="fa d-inline fa-lg fa-stop-circle-o"></i>
              <b> 비밀번호 찾기</b>
            </a></div>
        </div>
      </div>
    </div>
  </nav>
  <div class="py-5">
    <div class="container">
      <div class="container">
        <h1>아이디 찾기</h1>
        <hr class="mt-0">
        <p> 고객님의 정보와 일치하는 아이디 목록입니다. </p>
      </div>
      <div class="row">
        <div class="col-md-12 border my-2 p-3">
          <div class="container">
            <div class="row">
              <div class="mx-auto col-lg-7 col-md-8">
              
              	<table>
              	<!-- idList -->
					<c:forEach items="${idList}" var="idList">
              		<tr>
              			<td style="padding:10px;"><b>${idList.userId}</b></td>
              			<td style="padding:10px;">가입일 : ${idList.userRegidate }</td>
              		</tr>
              		</c:forEach>
              	</table>
              	
              </div>
            </div>
          </div>
        </div>	
        <div class="container text-center">
          <div class="row">
            <div class="mx-auto col-lg-8 col-md-10">
              <a href="/member/signin2" class="btn btn-lg btn-primary mx-1">로그인하기</a> <a class="btn btn-lg mx-1 btn-outline-primary" href="/member/pwInqury">비밀번호 찾기</a> </div>
          </div>
        </div>
      </div>
    </div>
    
  </div>	
</body>
</html>