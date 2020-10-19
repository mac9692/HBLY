<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
	
<html>

<head>

<title>HBLY : 회원가입</title>
</head>

<body>

	<!-- memberjoin -->
	<div class="py-5 text-center">
		<div class="container">
			<div class="row">
				<div class="mx-auto col-lg-6 col-10">
					<h1>HBLY 회원가입</h1>
					<p class="mb-3">When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees.</p>

					<!-- form -->
					<form:form method="post" class="text-left" action="/member/signup">									
						
						<!-- id -->
						<div class="form-group">
							<label for="userId">아이디</label>
							<input type="email" class="form-control" id="userId" name="userId" placeholder="hbly@hbly.com" required>
							<div id="idCheck"></div>
						</div>

						<!-- password -->
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="userPassword">비밀번호</label>
								<input type="password" class="form-control" id="userPassword" name="userPassword" placeholder="password" required>
								<div id="pwCheck"></div>
							</div>

							<div class="form-group col-md-6">
								<label for="userPasswordCheck">비밀번호 재확인</label>
								<input type="password" class="form-control" id="userPasswordCheck" name="userPasswordCheck" placeholder="confirm Password" required>
								<div id="pw2Check"></div>
							</div>
						</div>

						<!-- name -->
						<div class="form-group">
							<label for="userName">이름</label>
							<input type="text" class="form-control" id="userName" name="userName" placeholder="name" required>
							<div id="nameCheck"></div>
						</div>

						<!-- birth -->
						<div class="form-group">
							<label for="userBirth">생년월일</label>
							<input type="text" class="form-control" id="userBirth" name="userBirth" placeholder="ex)19991225" required>
							<div id="birthCheck"></div>
						</div>
	
						<!-- gender -->
						<div class="form-group" >
						    <label for="userGender">성별</label>
						    <div class="row">
						      <div class="col-md-6">
						        <div class="custom-control custom-radio">
						          <input id="man" name="userGender" type="radio" class="custom-control-input" checked required value="M"> <label class="custom-control-label" for="man">남자</label> </div>
						      </div>
						      <div class="col-md-6">
						        <div class="custom-control custom-radio">
						          <input id="female" name="userGender" type="radio" class="custom-control-input" required value="F"> <label class="custom-control-label" for="female">여자</label> </div>
						      </div>
						    </div>
						</div>
						
						<!-- nickname -->
						<div class="form-group">
							<label for="userNickname">닉네임</label>
							<input type="text" class="form-control" id="userNickname" name="userNickname" placeholder="nickname" required>
							<div id="nicknameCheck"></div>
						</div>
						
						<!-- address -->
						<div class="form-group">
							<label for="userAddress">주소</label>
						</div>

						<div class="form-row">
							<div class="form-group col-md-8">
								<input type="text" class="form-control" id="userAddress1" name="userAddress1" placeholder="우편번호" onclick="execDaumPostcode()" readonly required>
							</div>

							<div class="form-group col-md-4">
								<button type="button" onclick="execDaumPostcode()"class="btn btn-primary">우편번호 찾기</button>
							</div>
						</div>

						<div class="form-row">
							<div class="form-group col-md-6">
								<input type="text" class="form-control" id="userAddress2" name="userAddress2"placeholder="주소" onclick="execDaumPostcode()" readonly required>
							</div>

							<div class="form-group col-md-6">
								<input type="text" class="form-control" id="userAddress3" name="userAddress3"placeholder="상세주소" required>
							</div>
						</div>
						
						<!-- phone number -->
						<div class="form-group">
							<label for="userPhoneNumber">휴대전화 ('-' 없이 번호만 입력해주세요) </label>
						</div>

						<div class="form-group">
							<select class="form-control">
								<option value="대한민국 +82">대한민국 +82</option>
								<option value="미국/캐나다 +1">미국/캐나다 +1</option>
							</select>
						</div>

						<div class="form-row">
							<div class="form-group col-md-8">
								<input type="text" class="form-control" id="userPhoneNumber" name="userPhoneNumber" placeholder="ex)01012345678" required>
								<div id="phoneCheck"></div>
							</div>

							<div class="form-group col-md-4">
								<button type="button" class="btn btn-primary" onclick="cert();">인증번호 받기</button>
							</div>

						</div>
						
						<div class="form-row">
							<div class="form-group col-md-8">
								<input type="text" class="form-control" id="certification"  placeholder="인증번호를 입력해주세요" required>
								<div class="form-group" id="certCheck"></div>	
							</div>

							<div class="form-group col-md-4">
								<button type="button" class="btn btn-primary" id="sms_AuthBtn" onclick="smsAuthBtn();">확인</button>
							</div>
		
						
						</div>	
														
						<input type="hidden" id="randomVal" value=""/>	
						
						<!-- term -->
						<div class="form-group">
							<label for="form10">이용약관</label>
						</div>
						
						<div class="form-group">
							<textarea class="form-control" id="form10" rows="4"
								placeholder="Your message" readonly="readonly"></textarea>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="form11"value="on">
								<label class="form-check-label" for="form10">
								I Agree with <a href="#">Term and Conditions</a> of the service
								</label>
							</div>
						</div>

						<!-- button -->
						<button type="submit" id="signup_btn" class="btn btn-primary">가입하기</button>
						<button type="button" class="btn btn-primary" OnClick="javascript:history.back(-1)">취소</button>
					</form:form>

				</div>

			</div>

		</div>
	</div>
	
	
	<footer id="foorter">
		<div id="footer_box">
			<%@ include file= "../include/footer.jsp" %>
		</div>
	</footer>

</body>
<!--우편번호/주소 API -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    //document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    //document.getElementById("sample6_extraAddress").value = '';
                }
				console.log(addr+extraAddr)
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('userAddress1').value = data.zonecode;
                document.getElementById("userAddress2").value = addr+' '+extraAddr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("userAddress3").focus();
            }
        }).open({
        	//여러개의 팝업창이 뜨는 것을 방지하기 위해 팝업이름을 지정
        	//지정하지 않을시 기본값은 '_blank'로 설정되어 계속 새창으로 열리게 됩니다
            popupName: 'postcodePopup' //팝업 이름을 설정(영문,한글,숫자 모두 가능, 영문 추천)
        });
    }
</script>

<!--휴대폰 인증 / SMS SENS API -->
<script type="text/javascript">
	function cert() {
		 var random = Math.floor(Math.random() * 1000000)+"";
		 var phone = $('#userPhoneNumber').val();				 
		 
		 $('#randomVal').val(random);
			var obj = {
					"type" : "SMS",
					"contentType" : "COMM",
					"from" : "01090955190",
					"subject" : "HBLY 가입 본인인증 문자입니다",
					"countryCode" : "82",
					"content" : random,
					"messages" : [ {
						"to" : phone,
						"subject" : "HBLY 인증 문자",
						"content" : "[HBLY] 회원가입 본인인증 문자입니다. 인증번호 [" + random +"]를 입력해주세요."
					} ]
				};
			
			$.ajax({
				type : 'POST',
				url : "/member/sms",
				dataType : "json",
				data :  JSON.stringify(obj),
				beforeSend : function(xhr)
                 	{   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
                     xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
                 	},
				contentType: "application/json",
				success : function(data) {
					if(data.statusName == "success"){
						$('#certCheck').text("인증 번호가 전송되었습니다.");
						$('#certCheck').css('color','blue');
						$("#signup_btn").attr("disabled",true);
					}else {
						$('#certCheck').text("입력한 번호를 다시 확인해주세요.");
						$('#certCheck').css('color','red');
						$("#signup_btn").attr("disabled",true);
					}
				}
			});
	}
	
	function smsAuthBtn() {
		
		var userVal = $('#certification').val();
		var certVal = $('#randomVal').val();
		
		if(userVal == certVal){
			$('#certCheck').text("인증이 완료되었습니다.");
			$('#certCheck').css('color','blue');	
			$("#signup_btn").attr("disabled",false);
		}else{
			$('#certCheck').text("인증번호를 다시 확인해주세요");
			$('#certCheck').css('color','red');
			$("#signup_btn").attr("disabled",true);
		}
	};
</script>

<!--유효성 검사 -->
<script>

	//모든 공백 체크 정규식
	var empJ = /\s/g;
	//아이디 정규식
	var idJ = /^[a-z0-9]{4,12}$/;
	// 비밀번호 정규식
	var pwJ = /^[A-Za-z0-9]{4,12}$/; 
	// 이름 정규식
	var nameJ = /^[가-힣]{2,6}$/;
	// 이메일 검사 정규식
	var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	// 휴대폰 번호 정규식
	var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
	// 닉네임 정규식
	var nickJ = /^[가-힣A-Za-z0-9]{2,6}$/;
	
	// 아이디 유효성 검사(1 = 중복 / 0 = 사용가능)
	$('#userId').blur(function () {
		var userId = $('#userId').val();
		
		if (userId=='') {
			$('#idCheck').text('이메일을 입력해주세요.');
			$('#idCheck').css('color','red');
			$("#signup_btn").attr("disabled",true);		
		}
		
		$.ajax({
			url : '${pageContext.request.contextPath}/member/checkId?userId='+userId,
			type : 'get',
			dataType : 'json',
			success : function(data) {
			console.log(data)
			console.log("1 중복 / 0 사용가능 :"+data);
				
				if(data==1){
					// 1: 아이디(email) 중복
					$('#idCheck').text('이미 가입된 이메일 입니다.');
					$('#idCheck').css('color','red');
					$("#signup_btn").attr("disabled",true);								
				}else{
					// 0: 아이디(email) 사용가능
					if(mailJ.test($('#userId').val())){
						console.log(mailJ.test($('#userId').val()));
						$('#idCheck').text('');
						$("#signup_btn").attr("disabled",false);
					}else{
						$('#idCheck').text('이메일을 확인해주세요.');
						$('#idCheck').css('color','red');
						$('#signup_btn').attr("disabled",true);
					}
				}
				
			}, error : function(request,status,error){
			    console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			   }
		})
	});
	
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
			$('#signup_btn').attr("disabled",true);

		}
	})
	
	// 1-2 패스워드 일치 확인
	$('#userPasswordCheck').blur(function() {
		if ($('#userPassword').val() != $(this).val()) {
			$('#pw2Check').text('비밀번호가 일치하지 않습니다.');
			$('#pw2Check').css('color', 'red');
			$('#signup_btn').attr("disabled",true);

		} else {
			$('#pw2Check').text('');
			$("#signup_btn").attr("disabled",false);
		}
	});
	

	// 이름에 특수문자 들어가지 않도록 설정
	$("#userName").blur(function() {
		if (nameJ.test($(this).val())) {
				console.log(nameJ.test($(this).val()));
				$("#nameCheck").text('');
		} else {
			$('#nameCheck').text('이름을 확인해주세요');
			$('#nameCheck').css('color', 'red');
			$("#signup_btn").attr("disabled",true);	
		}
	});
	
	// 닉네임 유효성 검사(1 = 중복 / 0 != 중복)
	$('#userNickname').blur(function () {
		var userNickname = $('#userNickname').val();	
		if (userNickname=='') {
			$('#nicknameCheck').text('닉네임을 입력해주세요.');
			$('#nicknameCheck').css('color','red');
			$("#signup_btn").attr("disabled",true);		
		}
		
		$.ajax({
			url : '${pageContext.request.contextPath}/member/checkNickname?userNickname='+userNickname,
			type : 'get',
			dataType : 'json',
			success : function(data) {
				console.log("1 중복 / 0 사용가능 :"+data);
				
				if(data==1){
					// 1: 아이디 중복
					$('#nicknameCheck').text('이미 사용중인 닉네임 입니다.');
					$('#nicknameCheck').css('color','red');
					$("#signup_btn").attr("disabled",true);								
				}else{
					// 0: nickname
					if(nickJ.test($('#userNickname').val())){
						console.log(mailJ.test($('#userNickname').val()));
						$('#nicknameCheck').text('');
						$("#signup_btn").attr("disabled",false);
					}else{
						$('#nicknameCheck').text('닉네임을 확인해주세요.');
						$('#nicknameCheck').css('color','red');
						$('#signup_btn').attr("disabled",true);
					}
				}
				
			}, error : function(error){
				console.log("실패");
			}
		})
	});
	
	// 휴대전화
	$('#userPhoneNumber').blur(function(){
		if(phoneJ.test($(this).val())){
			console.log(phoneJ.test($(this).val()));
			$("#phoneCheck").text('');
			$("#signup_btn").attr("disabled",false);
		} else {
			$('#phoneCheck').text('휴대폰번호를 확인해주세요 ');
			$('#phoneCheck').css('color', 'red');
			$('#signup_btn').attr("disabled",true);

		}
	});
	
	// 생일 유효성 검사
	var birthJ = false;
	
	// 생년월일	birthJ 유효성 검사
	$('#userBirth').blur(function(){
		var dateStr = $(this).val();		
	    var year = Number(dateStr.substr(0,4)); 
	    var month = Number(dateStr.substr(4,2));
	    var day = Number(dateStr.substr(6,2));
	    var today = new Date(); // 날짜 변수 선언
	    var yearNow = today.getFullYear();
		
	    if (dateStr.length <=8) {
			
		    if (year < 1900 || year > yearNow){
		    	
		    	$('#birthCheck').text('생년월일을 확인해주세요.');
				$('#birthCheck').css('color', 'red');
		    	
		    }else if (month < 1 || month > 12) {
		    		
		    	$('#birthCheck').text('생년월일을 확인해주세요.');
				$('#birthCheck').css('color', 'red'); 
		    
		    }else if (day < 1 || day > 31) {
		    	
		    	$('#birthCheck').text('생년월일을 확인해주세요.');
				$('#birthCheck').css('color', 'red'); 
		    	
		    }else if ((month==4 || month==6 || month==9 || month==11) && day==31) {
		    	 
		    	$('#birthCheck').text('생년월일을 확인해주세요.');
				$('#birthCheck').css('color', 'red'); 
		    	 
		    }else if (month == 2) {
		    	 
		       	var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
		       	
		     	if (day>29 || (day==29 && !isleap)) {
		     		
		     		$('#birthCheck').text('생년월일을 확인해주세요.');
					$('#birthCheck').css('color', 'red'); 
		    	
				}else{
					$('#birthCheck').text('');
					birthJ = true;
				}//end of if (day>29 || (day==29 && !isleap))
		     	
		    }else{
		    	
		    	$('#birthCheck').text(''); 
				birthJ = true;
			}//end of if
			
			}else{
				//1.입력된 생년월일이 8자 초과할때 :  auth:false
				$('#birthCheck').text('생년월일을 확인해주세요.');
				$('#birthCheck').css('color', 'red');  
			}
		}); //End of method /*
		
		// 가입하기 실행 버튼 유효성 검사!
		var inval_Arr = new Array(5).fill(false);
		$('#signup_btn').click(function(){
			// 비밀번호가 같은 경우 && 비밀번호 정규식
			if (($('#userPassword').val() == ($('#userPasswordCheck').val()))
					&& pwJ.test($('#userPassword').val())) {
				inval_Arr[0] = true;
			} else {
				inval_Arr[0] = false;
			}
			// 이름 정규식
			if (nameJ.test($('#userName').val())) {
				inval_Arr[1] = true;	
			} else {
				inval_Arr[1] = false;
			}
			// 이메일 정규식
			if (mailJ.test($('#userId').val())){
				console.log(phoneJ.test($('#userId').val()));
				inval_Arr[2] = true;
			} else {
				inval_Arr[2] = false;
			}
			// 휴대폰번호 정규식
			if (phoneJ.test($('#userPhoneNumber').val())) {
				console.log(phoneJ.test($('#userPhoneNumber').val()));
				inval_Arr[3] = true;
			} else {
				inval_Arr[3] = false;
			}
			// 생년월일 정규식
			if (birthJ) {
				console.log(birthJ);
				inval_Arr[4] = true;
			} else {
				inval_Arr[4] = false;
			}
			
			var validAll = true;
			for(var i = 0; i < inval_Arr.length; i++){
				
				if(inval_Arr[i] == false){
					validAll = false;
				}
			}
			
			if(validAll){ // 유효성 모두 통과
				alert('회원가입이 완료되었습니다.');
			} else{
				alert('입력한 정보들을 다시 한번 확인해주세요.')
			}
		});
	
</script>
</html>