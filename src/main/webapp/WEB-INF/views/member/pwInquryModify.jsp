<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
<title>HBLY : 비밀번호 찾기</title>
	
</head>
<body>

     <nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container"> <a class="navbar-brand" href="/">
        <b>HBLY</b>
      </a> <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar10" style="">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbar10">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item"> <a class="nav-link text-primary" href="/member/signin">로그인</a> </li>
          <li class="nav-item"> <a class="nav-link text-primary" href="/member/signup">회원가입</a> </li>
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
  <div class="py-5 px-5">
    <div class="container">
      <div class="row">
        <div class="col-md-11">
          <h1>비밀번호 재설정</h1>
           01. 아이디 입력 > 02. 본인확인<span class="text-primary"> > 03. 비밀번호 재설정</span>
          <hr>비밀번호를 변경해 주세요.<br>다른 아이디나 사이트에서 사용한 적 없는 안전한 비밀번호로 변경 해주세요.
        </div>
      </div>
      
      <!-- form -->
	 <form:form method="POST" action="/member/pwInqurySuccess">
      <div class="row">
        <div class="col-md-11 border my-2 p-3">
          <div class="form-group">
            <div class="mx-auto col-md-8 col-10 bg-white p-4">
              <p>
                <strong>헬블리 아이디 : <span class="text-primary">${userId}</span></strong>
              </p>
              <div class="form-group"> <input type="password" class="form-control" placeholder="새 비밀번호" id="userPassword" name="userPassword" required><div id="pwCheck"></div> </div>
              <div class="form-group mb-3"> <input type="password" class="form-control" placeholder="새 비밀번호 확인" id="userPasswordCheck" name="userPasswordCheck" required><div id="pw2Check"></div>
                <hr>
                <p> * 영문, 숫자를 함께 사용하면(4자이상 12자이하)보다 안전합니다.<br> * 다른 사이트와 다른 <b>헬블리 아이디만의 비밀번호</b>를 만들어주세요.</p>
              </div>
            </div>
          </div>
        </div>
        <div class="container text-center">
          <button type="submit" class="btn btn-primary" id="pwInqury_btn" class="btn btn-primary"disabled="disabled">확인</button>
        </div>
      </div>
      </form:form>      
      <!-- form end -->
    
    </div>
  </div>
</body>

<!-- 비밀번호 유효성 검사 -->
<script type="text/javascript">
// 비밀번호 정규식
var pwJ = /^[A-Za-z0-9]{4,12}$/;

// 비밀번호 유효성 검사
// 1-1 정규식 체크
$('#userPassword').blur(function() {
	if(pwJ.test($('#userPassword').val())){
		console.log('true');
		$('#pwCheck').text('');
	}else{
		console.log('false');
		$('#pwCheck').text('숫자 or 문자로만 4~12자리 입력해주세요.');
		$('#pwCheck').css('color', 'red');
		$('#pwInqury_btn').attr("disabled",true);

	}
})

// 1-2 패스워드 일치 확인
$('#userPasswordCheck').blur(function() {
	if ($('#userPassword').val() != $(this).val()) {
		$('#pw2Check').text('비밀번호가 일치하지 않습니다.');
		$('#pw2Check').css('color', 'red');
		$('#pwInqury_btn').attr("disabled",true);

	} else {
		$('#pw2Check').text('');
		$("#pwInqury_btn").attr("disabled",false);
	}
});

$('#pwInqury_btn').click(function() {
	alert('비밀번호가 성공적으로 변경되었습니다.');
})
</script>

</html>
