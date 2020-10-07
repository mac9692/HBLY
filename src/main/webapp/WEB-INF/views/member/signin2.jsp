<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
  <meta charset="utf-8">
  <title>HBLY : 로그인</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
</head>

<body>
  <!--login-->
  <div class="py-5 text-center" style="background-image: url('https://static.pingendo.com/cover-bubble-dark.svg');background-size:cover;" >
    <div class="container">
      <div class="row">
        <div class="mx-auto col-md-6 col-10 bg-white p-5">
          <h1 class="mb-4 text-primary"><a href="/"style="text-decoration:none">HBLY</a></h1>
          <form>
            <div class="form-group">
            	<input type="email" class="form-control" placeholder="Enter email" id="form9">
            </div>
            <div class="form-group mb-3">
	            <input type="password" class="form-control" placeholder="Password" id="form10">
	            <small class="form-text text-muted text-right">
	            <a href="/member/signup2">회원가입</a> | <a href="/member/idInqury">아이디</a> / <a href="/member/pwInqury"> 비밀번호 찾기</a>
	            </small>
            </div>
            <button type="submit" class="btn btn-primary">로그인</button>
          </form>
          <hr>
          <p class="text-info"><b>간편하게 시작하기</b></p>
          <div class="row mb-4 container d-flex justify-content-center">
            <div class="mx-2">
              <a class="btn text-white ml-3" href="#" style="background:#55acee" target="_blank"><i class="fa fa-twitter fa-fw fa-1x py-1"></i></a></div>
            <div class="mx-2"><a class="btn text-white" href="#" style="background:#dd4b39" target="_blank"><i class="fa fa-google-plus fa-fw fa-1x py-1"></i></a></div>
            <div class="mx-2"><a class="btn text-white" href="#" style="background:#3b5998" target="_blank"><i class="fa fa-facebook fa-fw fa-1x py-1"></i></a></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>

  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous" style=""></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 
</html>