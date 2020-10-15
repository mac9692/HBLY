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
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  
</head>

<script type="text/javascript">
$(document).ready(function(){
			
		$("#pwChk_btn").on("click", function(){
			if($("#userPassword").val()==""){
				alert("비밀번호를 입력해주세요.");
				$("#userPassword").focus();
				return false;
			}
			
 			$.ajax({
				url : "/member/pwChk",
				async: true,
				type : "POST",
				dataType : "text json",
				contentType: "application/json",
				data : JSON.stringify({pw: $('#userPassword').val()}),
				beforeSend : function(xhr)
                {   
                    xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
                },
				success: function(data) {
					console.log(data);
					const isSuccess = data.statusCode === 200;
					if(isSuccess){
						alert("비밀번호가 일치합니다");
						
					}else{
						alert("비밀번호를 다시 입력해 주세요");
					}
				},
				error: function(error) {
					console.log(error);
					alert("알수 없는 에러 발생");
				}
			})
		});

})

</script>

<body>
<header id="header">
				<div id="header_box">
					<%@ include file= "../include/header.jsp" %>
				</div>
			</header>
			
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
                              <a class="nav-link active" data-toggle="tab" data-target="#tabone"href="/member/pwChk">개인정보</a>
                            </li>
                            
                          </ul>
                        </div>
                        <div class="card-body">
                          <div class="tab-content mt-2">
                          
                            <div class="tab-pane fade active show" id="tabone" role="tabpanel" style="">
                            		  
                              <!--1-->
                              <div class="container text-center">
                                <div class="row">
                                  <div class="mx-auto p-2 col-6">
                                    <p> 개인정보를 안전하게 보호하기 위하여 <br> HBLY 아이디 비밀번호를 한번 더 입력해주세요. </p>
                                   <c:url value="/member/pwChk" var="pwChkUrl"/>
                        			<form:form role="form" action="${pwChkUrl}" method="POST" autocomplete="off">
                                    
                                    <div class="form-group"> <input type="password" class="form-control" id="userPassword" name="userPassword" placeholder="비밀번호 입력" > </div>
                                      <button type="submit" class="btn btn-primary w-100" id="pwChk_btn" name="pwChk_btn">확인</button>
                                     </form:form>
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
  
</body>
</html>