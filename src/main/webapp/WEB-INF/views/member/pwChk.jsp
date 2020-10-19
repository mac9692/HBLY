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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript" ></script>
  
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
				success: function(data) {
					console.log(data);
					const isSuccess = data.statusCode === 200;
					if(isSuccess){
						alert("비밀번호가 일치합니다");
						location.href = "/member/modify";
					}else{
						alert("비밀번호를 다시 입력해 주세요");
					}
				},
				error: function(err) {
				/* 	console.log("error:"+err);
					alert("알수 없는 에러 발생"); */
				}
			})
		});

})

</script>

<body>
               		  
                              <!--1-->
                              <div class="container text-center">
                                <div class="row">
                                  <div class="mx-auto p-2 col-6">
                                    <p> 개인정보를 안전하게 보호하기 위하여 <br> HBLY 아이디 비밀번호를 한번 더 입력해주세요. </p>
                                   <c:url value="/member/pwChk" var="pwChkUrl"/>
                        			<form:form role="form" action="${pwChkUrl}" method="POST" autocomplete="off" id="pwChkForm">
                                    
                                    <div class="form-group"> <input type="password" class="form-control" id="userPassword" name="userPassword" placeholder="비밀번호 입력" > </div>
                                      <button type="submit" class="btn btn-primary w-100" id="pwChk_btn" name="pwChk_btn">확인</button>
                                     </form:form>
                                  </div>
                                </div>
                              </div>
                           
  
</body>


</html>