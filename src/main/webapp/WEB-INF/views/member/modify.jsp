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
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	  <title>HBLY : 회원정보 수정</title>
		
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
	

	<!-- CSS here -->
	<link rel="stylesheet" href="/resources/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="/resources/assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="/resources/assets/css/slicknav.css">
	<link rel="stylesheet" href="/resources/assets/css/animate.min.css">
	<link rel="stylesheet" href="/resources/assets/css/magnific-popup.css">
	<link rel="stylesheet" href="/resources/assets/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="/resources/assets/css/themify-icons.css">
	<link rel="stylesheet" href="/resources/assets/css/slick.css">
	<link rel="stylesheet" href="/resources/assets/css/nice-select.css">
	<link rel="stylesheet" href="/resources/assets/css/style.css">
  	
  	<!-- pingendo -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
	<link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
  	<link rel="stylesheet" href="/resources/assets/css/daunstyle.css">
  <style>
.hero-j h5{
    color: #ffffff;
    font-weight: 500;
    font-size: 40px;
    text-transform: uppercase;
    -webkit-transition: 0.4s;
    -moz-transition: 0.4s;
    -o-transition: 0.4s;
    transition: 0.4s;
    margin-bottom: 17px;
}

 </style>   
 
</head>

<body>
	
	<%@ include file= "../include/header.jsp" %>
				
 <div class="slider-area2">
        <div class="slider-height2 d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-j hero-cap hero-cap2 pt-70">
                            <h2>마이블리</h2>
                            <h5>내 활동의 모든것을 한눈에 확인하는 마이블리</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
  
 				<!-- nav2 -->
		<nav class="navbar navbar-dark black-bg">
		    <div class="container d-flex justify-content-center" style="padding:40px;">
		      <div class="container px-5 mx-5 text-center">
		        <div class="row">
		          <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 daun">
		          <a href="/member/mypage"><i class="fa fa-user-circle" aria-hidden="true"></i> 개인정보 수정</a>
		          </div>
		          <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 daun">
		            <a href="/shop/cartList"><i class="fa fa-cart-plus" aria-hidden="true"></i> 장바구니</a></div>
		            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 daun">
		           <a href="/shop/orderList"><i class="fa fa-list-ol" aria-hidden="true"></i> 주문목록</a></div>
		        </div>
		      </div>
		    </div>
		</nav>
    
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
          
            
            
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
                                   
                                    <form action="/member/modify" method="POST">
                                     <sec:authentication var="principal" property="principal" />
                                    <table class="table table-bordered ">
                                      <tbody class="my-0">
                                          <tr>
                                            <td class="table-info">아이디</td>
                                            <td>
                                              <div class="col-md-6 px-0">
                                                <input type="email" class="form-control mb-2" id="userId" name="userId" readonly value="${principal.member.userId}" >
                                              </div>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td class="table-info">신규 비밀번호</td>
                                            <td>
                                              <ul class="list-inline">
                                                <li class="list-inline-item"><input type="password" class="form-control" id="userPassword" name="userPassword" required="required"><div id="pwCheck"></div></li>
                                                <li class="list-inline-item">숫자 or 문자로만 4~12자리 입력해주세요.</li>
                                              </ul>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td class="table-info">신규 비밀번호 확인</td>
                                            <td>
                                              <ul class="list-inline">
                                                <li class="list-inline-item"><input type="password" class="form-control" id="userPasswordCheck" name="userPasswordCheck" required="required"><div id="pw2Check"></div></li>
                                                <li class="list-inline-item">신규 비밀번호를 한번더 입력해주세요.</li>
                                              </ul>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td class="table-info">이름</td>
                                            <td>
                                              <ul class="list-inline">
                                                <li class="list-inline-item"><input type="text" class="form-control" id="userName" name="userName" disabled="" readonly="" value="${principal.member.userName}"></li>
                                              </ul>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td class="table-info">생년월일</td>
                                            <td>
                                              <ul class="list-inline">
                                                <li class="list-inline-item"><input type="text" class="form-control" id="userBirth" name="userBirth" disabled="disabled" readonly value="${principal.member.userBirth}"></li>
                                              </ul>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td class="table-info">닉네임</td>
                                            <td>
                                              <ul class="list-inline">
                                                <li class="list-inline-item"><input type="text" class="form-control" id="userNickname" name="userNickname" required="required"><div id="nicknameCheck"></div></li>
                                                <li class="list-inline-item"> <input type="button" class="btn btn-danger" value="중복확인"></li>
                                              </ul>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td class="table-info" rowspan="2">주소</td>
                                            <td>
                                              <ul class="list-inline pb-0">
                                                <li class="list-inline-item"><input type="text" class="form-control" readonly value="${principal.member.userAddress1}" id="userAddress1" name="userAddress1" onclick="execDaumPostcode()"></li>
                                                <li class="list-inline-item"> <input type="button" class="btn btn-danger" value="우편번호 찾기" onclick="execDaumPostcode()"></li>
                                              </ul>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td>
                                              <div class="row mb-2">
                                                <div class="col-md-6"><input type="text" class="form-control" readonly value="${principal.member.userAddress2}" id="userAddress2" name="userAddress2" onclick="execDaumPostcode()"></div>
                                                <div class="col-md-6"><input type="text" class="form-control" value="${principal.member.userAddress3}" id="userAddress3" name="userAddress3" ></div>
                                              </div>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td class="table-info">휴대폰 번호</td>
                                            <td>
                                              <div class="col-md-6 px-0">
                                                <input type="text" class="form-control mb-2" id="userPhoneNumber" name="userPhoneNumber"  disabled="" readonly="" value="${principal.member.userPhoneNumber}">
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
                                      <div class="container py-5 text-center">
                                        <div class="row">
                                          <div class="mx-auto col-lg-8 col-md-10">
                                            <button type="submit" id="modify_btn" name="modify_btn" class="btn btn-danger" disabled="disabled">개인정보 수정</button> <a class="btn btn-danger" href="/member/withdrawal">회원탈퇴</a>
                                          </div>
                                        </div>
                                      </div>
                                      </form>
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
  			
  			
  <!-- JS here -->

<script src="/resources/assets/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="/resources/assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="/resources/assets/js/popper.min.js"></script>
<script src="/resources/assets/js/bootstrap.min.js"></script>
<!-- Jquery Mobile Menu -->
<script src="/resources/assets/js/jquery.slicknav.min.js"></script>

<!-- Jquery Slick , Owl-Carousel Plugins -->
<script src="/resources/assets/js/owl.carousel.min.js"></script>
<script src="/resources/assets/js/slick.min.js"></script>
<!-- One Page, Animated-HeadLin -->
<script src="/resources/assets/js/wow.min.js"></script>
<script src="/resources/assets/js/animated.headline.js"></script>
<script src="/resources/assets/js/jquery.magnific-popup.js"></script>

<!-- Nice-select, sticky -->
<script src="/resources/assets/js/jquery.nice-select.min.js"></script>
<script src="/resources/assets/js/jquery.sticky.js"></script>
								
<!-- contact js -->
<script src="/resources/assets/js/contact.js"></script>
<script src="/resources/assets/js/jquery.form.js"></script>
<script src="/resources/assets/js/jquery.validate.min.js"></script>
<script src="/resources/assets/js/mail-script.js"></script>
<script src="/resources/assets/js/jquery.ajaxchimp.min.js"></script>
								
<!-- Jquery Plugins, main Jquery -->	
<script src="/resources/assets/js/plugins.js"></script>
<script src="/resources/assets/js/main.js"></script>
											
  
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
			$('#modify_btn').attr("disabled",true);

		} else {
			$('#pw2Check').text('');
			$("#modify_btn").attr("disabled",false);
		}
	});
	
	
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
 	var inval_Arr = new Array(2).fill(false);
	$('#modify_btn').click(function(){

		// 비밀번호가 같은 경우 && 비밀번호 정규식
		if (($('#userPassword').val() == ($('#userPasswordCheck').val()))
				&& pwJ.test($('#userPassword').val())) {
			inval_Arr[0] = true;
		} else {
			inval_Arr[0] = false;
		}

		// 닉네임 정규식
		if (nickJ.test($('#userNickname').val())) {
			inval_Arr[1] = true;
		} else {
			inval_Arr[1] = false;
		}
		
		var validAll = true;
		for(var i = 0; i < inval_Arr.length; i++){
			
			if(inval_Arr[i] == false){
				validAll = false;
			}
		}
		
		
		if(validAll){ // 유효성 모두 통과
			alert('회원정보 수정이 완료되었습니다. 변경된 비밀번호로 로그인해주세요.');
		} else{
			alert('입력한 정보들을 다시 한번 확인해주세요.')
			return false;
		}
	});

	</script>
</html>