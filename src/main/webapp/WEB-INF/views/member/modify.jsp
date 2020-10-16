<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title>HBLY : 마이블리</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>

<body>
<!-- nav & header -->
	<div>
		<!-- nav -->
		<%@ include file="../include/nav.jsp" %>
		
		<!-- header -->
		<%@ include file="../include/header.jsp" %>
		
		<!-- menu -->
		<%@ include file="../include/menu.jsp" %>
		
		
	</div>
  <div class="py-5 text-white h-25" style="background-image: linear-gradient(rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0.75)), url(&quot;https://static.pingendo.com/cover-bubble-dark.svg&quot;); background-position: center center, center center; background-size: cover, cover; background-repeat: repeat, repeat;">
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
                          <ul class="nav nav-tabs card-header-tabs" style="">
                            <li class="nav-item">
                              <a class="nav-link active" data-toggle="tab" data-target="#tabone">개인정보</a>
                            </li>
                          </ul>
                        </div>
                        <div class="card-body">
                          <div class="tab-content mt-2">
                          
                            
                            
                            <div class="tab-pane fade active show" id="tabone" role="tabpanel">
                             
                              <!--2 개인정보 변경/회원탈퇴-->
                              <div class="container">
                                <div class="row">
                                  <div class="col-md-12 my-3 text-left">
                                    <h2><b>개인 정보</b></h2>
                                    <p> 정보를 수정할 경우에는 비밀번호를 꼭 다시 한번 확인해 주세요. </p>
                                  </div>
                                  <div class="col-md-12">
                                    <h3 class="text-left"><b>기본 정보</b></h3>
                                  </div>
                                  <div class="col-md-12">
                                    <div>
                                   <c:url value="/member/modify" var="modifyUrl"/>
                                    <form:form role="form" action="${modifyUrl }" method="POST" autocomplemte="off">
                                     <sec:authentication var="principal" property="principal" />
                                    <table class="table table-bordered ">
                                      <tbody class="my-0">
                                          <tr>
                                            <td class="table-info">아이디</td>
                                            <td>
                                              <div class="col-md-6 px-0">
                                                <input type="text" class="form-control mb-2" disabled="" readonly="" value="${principal.member.userId}">
                                              </div>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td class="table-info">신규 비밀번호</td>
                                            <td>
                                              <ul class="list-inline">
                                                <li class="list-inline-item"><input type="password" class="form-control" id="userPassword" name="userPassword"><div id="pwCheck"></div></li>
                                                <li class="list-inline-item">숫자 or 문자로만 4~12자리 입력해주세요.</li>
                                              </ul>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td class="table-info">신규 비밀번호 확인</td>
                                            <td>
                                              <ul class="list-inline">
                                                <li class="list-inline-item"><input type="password" class="form-control" id="userPasswordCheck" name="userPasswordCheck"><div id="pw2Check"></div></li>
                                                <li class="list-inline-item">신규 비밀번호를 한번더 입력해주세요.</li>
                                              </ul>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td class="table-info">이름</td>
                                            <td>
                                              <ul class="list-inline">
                                                <li class="list-inline-item"><input type="text" class="form-control" disabled="" readonly="" value="${principal.member.userName}"></li>
                                              </ul>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td class="table-info">생년월일</td>
                                            <td>
                                              <ul class="list-inline">
                                                <li class="list-inline-item"><input type="text" class="form-control" disabled="" readonly="" value="${principal.member.userBirth}"></li>
                                              </ul>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td class="table-info">닉네임</td>
                                            <td>
                                              <ul class="list-inline">
                                                <li class="list-inline-item"><input type="text" class="form-control" id="userNickname" name="userNickname"><div id="nicknameCheck"></div></li>
                                                <li class="list-inline-item"> <input type="button" class="btn btn-primary" value="중복확인"></li>
                                              </ul>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td class="table-info" rowspan="2">주소</td>
                                            <td>
                                              <ul class="list-inline pb-0">
                                                <li class="list-inline-item"><input type="text" class="form-control" readonly="" value="${principal.member.userAddress1}" id="userAddress1" name="userAddress2"></li>
                                                <li class="list-inline-item"> <input type="button" class="btn btn-primary" value="우편번호 찾기"></li>
                                              </ul>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td>
                                              <div class="row mb-2">
                                                <div class="col-md-6"><input type="text" class="form-control" readonly="" value="${principal.member.userAddress2}" id="userAddress2" name="userAddress2"></div>
                                                <div class="col-md-6"><input type="text" class="form-control" readonly="" value="${principal.member.userAddress3}" id="userAddress3" name="userAddress3"></div>
                                              </div>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td class="table-info">휴대폰 번호</td>
                                            <td>
                                              <div class="col-md-6 px-0">
                                                <input type="text" class="form-control mb-2" disabled="" readonly="" value="${principal.member.userPhoneNumber}">
                                              </div>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td class="table-info">성별</td>
                                            <td>
                                              <ul class="list-inline">
                                                <li class="list-inline-item">
                                                  <div class="custom-control custom-radio">
                                                    <input id="man" name="userGender" type="radio" class="custom-control-input" checked="" disabled="disabled" value="M"> <label class="custom-control-label" for="man" readonly="">남자</label> </div>
                                                </li>
                                                <li class="list-inline-item">
                                                  <div class="custom-control custom-radio">
                                                    <input id="woman" name="userGender" type="radio" class="custom-control-input" disabled="disabled" value="F"> <label class="custom-control-label" for="woman" readonly="">여자</label> </div>
                                                </li>
                                              </ul>
                                            </td>
                                          </tr>
                                        </tbody>
                                      </table>
                                      </form:form>
                                      <div class="container py-5 text-center">
                                        <div class="row">
                                          <div class="mx-auto col-lg-8 col-md-10">
                                            <button type="submit" id="modify_btn" name="modify_btn" class="btn btn-lg btn-primary mx-1">개인정보 수정</button> <a class="btn btn-lg mx-1 btn-outline-primary" href="/member/withdrawal">회원탈퇴</a>
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
        </div>
      </div>
    </div>
  </div>
  			<%@ include file= "../include/footer.jsp" %>
  
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
	
	
	// 1-2 패스워드 일치 확인
	$('#userPasswordCheck').blur(function() {
		if ($('#userPassword').val() != $(this).val()) {
			$('#pw2Check').text('비밀번호가 일치하지 않습니다.');
			$('#pw2Check').css('color', 'red');
			$('#modify_btn').attr("disabled",true);

		} else {
			$('#pw2Check').text('');
			$("#modify_btn").attr("disabled",false);
		}
	});
	
	/* // 이름에 특수문자 들어가지 않도록 설정
	$("#userName").blur(function() {
		if (nameJ.test($(this).val())) {
				console.log(nameJ.test($(this).val()));
				$("#nameCheck").text('');
		} else {
			$('#nameCheck').text('이름을 확인해주세요');
			$('#nameCheck').css('color', 'red');
			$("#modify_btn").attr("disabled",true);	
		}
	}); */
	
	// 닉네임 유효성 검사(1 = 중복 / 0 != 중복)
	$('#userNickname').blur(function () {
		var userNickname = $('#userNickname').val();	
		if (userNickname=='') {
			$('#nicknameCheck').text('닉네임을 입력해주세요.');
			$('#nicknameCheck').css('color','red');
			$("#modify_btn").attr("disabled",true);		
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
					$("#modify_btn").attr("disabled",true);								
				}else{
					// 0: nickname
					if(nickJ.test($('#userNickname').val())){
						console.log(mailJ.test($('#userNickname').val()));
						$('#nicknameCheck').text('');
						$("#modify_btn").attr("disabled",false);
					}else{
						$('#nicknameCheck').text('닉네임을 확인해주세요.');
						$('#nicknameCheck').css('color','red');
						$('#modify_btn').attr("disabled",true);
					}
				}
				
			}, error : function(error){
				console.log("실패");
			}
		})
	});
	
	// 가입하기 실행 버튼 유효성 검사!
	var inval_Arr = new Array(5).fill(false);
	$('#modify_btn').click(function(){
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
			alert('회원정보 수정이 완료되었습니다.');
		} else{
			alert('입력한 정보들을 다시 한번 확인해주세요.')
		}
	});

	</script>
</html>