<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
  <title>HBLY : 비밀번호 찾기</title>
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
  
  <div class="py-5 pl-5">
    <div class="container">
      <div class="row">
        <div class="col-md-11">
          <h1>비밀번호 찾기</h1>
          <span class="text-primary">01. 아이디 입력</span> > 02. 본인확인 > 03. 비밀번호 재설정
          <hr>비밀번호를 찾고자 하는 아이디를 입력해주세요.
        </div>
      </div>
      
      <!-- form -->
	  <form:form method="POST" action="/member/pwInquryCheck">	
      <div class="row">
        <div class="col-md-11 border my-2 p-3">
            <div class="form-group"> <label for="form16" class="py-2"></label>
              
              <div class="form-group row"> <label for="userId" class="col-2 col-form-label">아이디</label>
                <div class="col-8">
                  <input type="email" class="form-control" id="userId" name="userId" placeholder="hbly@hbly.com"> </div>
              </div>
              
              <div class="form-group row">
                <div class="col-8" id="idCheck"></div> 
              </div>
              
            </div>
        </div>
        <div class="container text-center">
          <button type="submit" class="btn btn-primary" id="pwInqury_btn" disabled="disabled">다음</button>
        </div>
      </div>
      </form:form>
      <!-- form end -->
      
    </div>
    
  </div>
</body>
<!-- 유효성 검사/id check -->
<script type="text/javascript">

// 이메일 검사 정규식
var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

// 아이디 유효성 검사(1 = 중복 / 0 = 사용가능)
$('#userId').blur(function () {
	var userId = $('#userId').val();
	
	if (userId=='') {
		$('#idCheck').text('이메일을 입력해주세요.');
		$('#idCheck').css('color','red');
		$("#signup_btn").attr("disabled",true);		
	}
	
	//정규식 통과하면 idcheck
	if(mailJ.test($('#userId').val())){
		console.log(mailJ.test($('#userId').val()));
		$('#idCheck').text('');
		$("#signup_btn").attr("disabled",false);
		
			$.ajax({
				url : '${pageContext.request.contextPath}/member/checkId?userId='+userId,
				type : 'get',
				dataType : 'json',
				success : function(data) {
				console.log(data)
					
					if(data==1){
						// 1: 아이디(email) 있음
						$('#idCheck').text('');
						$("#pwInqury_btn").attr("disabled",false);								
					}else{
						// 0: 아이디(email) 없음
						$('#idCheck').text('아이디를 정확히 입력해주세요.');
						$('#idCheck').css('color','red');
						$("#pwInqury_btn").attr("disabled",true);
					}
					
				}, error : function(request,status,error){
				    console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				   }
			})
	}else{
		$('#idCheck').text('이메일을 확인해주세요.');
		$('#idCheck').css('color','red');
		$('#pwInqury_btn').attr("disabled",true);
	}
	
	
});
</script>
</html>