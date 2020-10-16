<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
  <meta charset="utf-8">
  <title>HBLY : 아이디 찾기</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  

</head>

<body>
  <!-- nav1 -->
  <nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container"> <a class="navbar-brand" href="/">
        <b>HBLY</b>
      </a> <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar10">
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
  
  <!-- nav2 -->
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
  
  <!-- pwInqury -->
  <div class="py-5 pl-5">
    <div class="container">
      <div class="row">
        <div class="col-md-11">
          <h1>비밀번호 찾기</h1>
     	   01. 아이디 입력 <span class="text-primary">> 02. 본인확인 </span> > 03. 비밀번호 재설정
          <hr>
        </div>
      </div>
      
      <div class="row">
      <!-- form -->
       <form:form method="post" action="/member/pwInquryModify">
       	
        <div class="row border my-2 p-3">
            <div class="form-group"> <label for="form16" class="py-2"><h4><i class="fa d-inline fa-lg fa-circle-o"></i> <b>회원정보에 등록한 휴대전화로 인증</b></h4>회원정보에 등록한 휴대전화 번호와 입력한 휴대전화 번호가 같아야, 인증번호를 받을 수 있습니다.</label>
              <br>
              
              <div class="form-group row">
              <label for="userName" class="col-2 col-form-label">이름</label>
                <div class="col-8">
                  <input type="text" class="form-control" id="userName" name="userName"placeholder="이름" required>
                </div>
                                  
              </div>
              
              <div class="form-group row">
              	<div class="col-2"></div>
                <div class="col-8"> <div id="nameCheck"></div></div> 
              </div>
              
              <div class="form-group row">
              <label for="userPhoneNumber" class="col-2 col-form-label">휴대전화</label>
                <div class="col-8">
                  <input type="text" class="form-control" id="userPhoneNumber" name="userPhoneNumber" placeholder="ex)01012345678" required>
                  
                 </div>
               <div class="col-2"><button type="button" class="btn btn-primary" onclick="ckeck1();">인증번호 받기</button></div>   
                
              </div>
              
              <div class="form-group row">
              	<div class="col-2"></div>
                <div class="col-8"><div id="phoneCheck"></div></div> 
              </div>
              
              <div class="form-group row"> <label for="certification" class="col-2 col-form-label"></label>
                <div class="col-8">
                  <input type="text" class="form-control" id="certification" name="certification"placeholder="인증번호 숫자 입력">
                </div>
                
                 <div class="col-2"><button type="button" class="btn btn-primary" onclick="smsAuthBtn();">인증번호 확인</button></div>
              </div>
              
              <input type="hidden" id="randomVal" value=""/>	
              
          
              
            </div>
            
            <div class="form-group row">
               <div class="col-2"></div>
               <div class="col-8"><div id="certCheck"></div></div> 
            </div>
            
        </div>
        <div class="container text-center">
          <button type="submit" class="btn btn-primary" id="pwInqury_btn">다음</button>
        </div>
        
       </form:form>
       <!-- form end -->
        
      </div>
    </div>
  </div>
  
  <!-- footer -->
  
		<%@ include file= "../include/footer.jsp" %>
	
</body>
	<!-- 유효성 검사 & 휴대폰 인증  -->
	<script type="text/javascript">
	
	function ckeck1() {
		var userName  = $('#userName').val();
		var userPhoneNumber = $('#userPhoneNumber').val();		
		
		//버튼을 누르고 공백일때,
		if(userName==''){
			$('#nameCheck').text('이름을 입력해주세요.');
			$('#nameCheck').css('color','red');
			$("#pwInqury_btn").attr("disabled",true);
			alert('이름을 입력해주세요.');		
		}else{
			$('#nameCheck').text('');
		}
		
		if(userPhoneNumber==''){
			$('#phoneCheck').text('휴대번호를 입력해주세요.');
			$('#phoneCheck').css('color','red');
			$("#pwInqury_btn").attr("disabled",true);
			alert('휴대번호를 입력해주세요.');
		}else{			
			$('#phoneCheck').text('');
		}
		
		if(userName!='' && userPhoneNumber!=''){
			check2();
		}

	}
	
	function check2() {
		
		var random = Math.floor(Math.random() * 1000000)+"";
		var userName  = $('#userName').val();
		var userPhoneNumber = $('#userPhoneNumber').val();
		var obj = {
				"userName" : userName,
				"userPhoneNumber" : userPhoneNumber
		};
		console.log(obj);
		// name & phone 정보가 DB에 있나 확인
		$.ajax({
			type:'POST',
			url : "/member/checkNamePhoneNumber",
			dataType : "json",
			data : JSON.stringify(obj),
			contentType: "application/json",
			success : function(data) {
				// 일치하는 회원이 있으면 1, sms 전송/ 없으면 0
				if(data == 0){
					$('#phoneCheck').text("입력하신 정보와 일치하는 회원이 존재하지 않습니다.");
					$('#phoneCheck').css('color','red');
					$("#pwInqury_btn").attr("disabled",true);
				}else { // DB에 정보가 존재하면 인증문자 발송
					$('#phoneCheck').text("");
					cert();
				}
			},
			error : function (error) {
				console.log("실패!");
				alert(error);
			}
		});
	}
	
	function cert() {	
	
		 var random = Math.floor(Math.random() * 1000000)+"";
		 var phone = $('#userPhoneNumber').val();				 
		 
		 $('#randomVal').val(random);
			var obj = {
					"type" : "SMS",
					"contentType" : "COMM",
					"from" : "01090955190",
					"subject" : "HBLY 비밀번호 찾기 본인인증 문자입니다",
					"countryCode" : "82",
					"content" : random,
					"messages" : [ {
						"to" : phone,
						"subject" : "HBLY 인증 문자",
						"content" : "[HBLY] 비밀번호 찾기 본인인증 문자입니다. 인증번호 [" + random +"]를 입력해주세요."
					} ]
				};
			
			$.ajax({
				type : 'POST',
				url : "/member/sms",
				dataType : "json",
				data :  JSON.stringify(obj),
				contentType: "application/json",
				success : function(data) {
					if(data.statusName == "success"){
						$('#certCheck').text("인증 번호가 전송되었습니다.");
						$('#certCheck').css('color','blue');
						$("#pwInqury_btn").attr("disabled",true);
					}else {
						$('#certCheck').text("입력한 번호를 다시 확인해주세요.");
						$('#certCheck').css('color','red');
						$("#pwInqury_btn").attr("disabled",true);
					}
				}
			});
	}
	
	function smsAuthBtn() {
	console.log("4번 smsAuthBtn 함수");
	
		var userVal = $('#certification').val();
		var certVal = $('#randomVal').val();
		
		if(userVal == certVal){
			$('#certCheck').text("인증이 완료되었습니다.");
			$('#certCheck').css('color','blue');	
			$("#pwInqury_btn").attr("disabled",false);
		}else{
			$('#certCheck').text("인증번호를 다시 확인해주세요");
			$('#certCheck').css('color','red');
			$("#pwInqury_btn").attr("disabled",true);
		}
	};

	</script>


  	
</html>