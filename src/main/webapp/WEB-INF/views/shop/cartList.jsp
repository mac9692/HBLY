<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>

<head>

    <title>HBLY Cart List</title>
    <!-- 아임포트		 -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

    <!-- jQuery -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>

    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


    <!-- 근육질  -->
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="resources/assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/slicknav.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/gijgo.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/animated-headline.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/magnific-popup.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/themify-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/slick.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/nice-select.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/style.css">


    <style>
    	
        div.allCheck {
            color: #000000;
            font-size: 20px;			
			/* margin: auto; width: 50%; */
        }
        
        .checkBox {
            color: #000;
            font-size: 20px;
           
            
        }

		button {
            margin: 5px;
        }


		.genric-btn danger radius {
            /* color: tomato; */
            font-size: 50px;
            color: #fff;
    		background: #f44a40;
   			border: 1px solid transparent;
           	margin-top: 20px;
            
        }
        
        
        .gdsInfo {
 			border: 1px solid #000000;
  			padding: 5px;
  			color: #000000;
  			/* margin: auto; */ width: 50%;
        }
        
        #delete {
            font-size: 10px;
            color: #fff;
    		background: #f44a40;
   			border: 1px solid transparent;
            
        }

 		.sum {
            color: #000000;
            font-size: 25px;
            outline: medium none;
        }
        
        .orderOpne_bnt {
            color: orange;
            font-size: 16px;
            outline: medium none;
            padding: 3px;
            margin: 10px;
        } 
           
        .orderInfo {
          
            font-size: 16px;
            outline: medium none;
        }  
        
       /*  #order_btn1 {
            color: orange;
            font-size: 20px;
            outline: medium none;
            border: 2px solid #000;
            box-shadow: 3px 3px 3px grey;
            margin: 10px;
            background-color: #ffffff;
        } */
       
        /* #order_btn2 {
            color: blue;
            font-size: 20px;
            outline: medium none;
            border: 2px solid #000;
            box-shadow: 3px 3px 3px grey;
            margin: 10px;
            background-color: #ffffff;
        } */
        
       /*  #cancel_btn {
            color: MediumSeaGreen;
            font-size: 20px;
            outline: medium none;
            border: 2px solid #000;
            box-shadow: 3px 3px 3px grey;
            margin: 10px;
            background-color: #ffffff;
        } */
        
        .goodsPrice {
            color: #800000;
        }

        .goodsPrice b {
            color: #800000;
            bold;
            font-size: 20px;
        }

        .list-group {
            background-color: #ccc;
        }

        .list-group a {
            color: #000;
            font-size: 16px;
        }

        .panel a {
            color: #000;
            font-size: 20px;
        }

        .panel-info {
            border-color: #fff;
            background-color: #ccc;
        }

        .sideMenu {}

        .goodsThumbImage img {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            max-width: 100%;
            height: auto;
            object-fit: cover;
        }

        .goodsThumbImage-wrapper {
            width: 100%;
        }

        .goodsThumbImage {
            position: relative;
            padding-top: 100%;
            overflow: hidden;
        }

        .goodsThumbImage .centered {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
        }

        .goodsThumbImage .centerd img {
            position: absolute;
            top: 0;
            left: 0;
            max-width: 100%;
            height: auto;
        } 
        
        section#back{background-color: #ffffff; text-color: #000000; }
        
        /* 메인 주문목록 구역 */
        div#mainMenu{background-color: #ffffff; border: 2px solid #000; /* align: center; */ }
        section#back{font-size: 100px;}
        
        
        /* 수령인, 수령인 연락처 */
        div.inputArea{color: #000000;}
        
        /* 수령인, 수령인 연락처 */
        input#orderRec{color: #000000;}
        input#orderPhoneNumber{color: #000000;}
        
        /* 주소입력 */
        input#post_bt{color: #000000;}
        input#sample6_postcode{color: #000000;}
        input#sample6_address{color: #000000;}
        input#sample6_detailAddress{color: #000000;}
        input#sample6_extraAddress{color: #000000;}
        
        /* 상품주문 가이드 */
        span.guide {
        font-size: 30px;
  		font-weight: 500;
  		color: #000000;
  		text-transform: uppercase;
        }
        
        /* 상품주문 상단 */
        h2 {
        font-size: 100px;
        padding: 20px;
        }
        
        /* .thumbnail-wrappper { width: 25%; } 
        /* .thumbnail { position: relative; padding-top: 100%; /* 1:1 ratio */ overflow: hidden; }

        
        #chase {
	        width:250px;
	        overflow:hidden;
	        margin-top:10px;
	        margin-left:10px;
	        margin-right:10px;
	        margin-bottom:10px;
	    }
	
	    #chase Img {
	        width:100%;
	        height:500px;
	    }
	
	    #chaseBar {
	        width:100%;
	        background-color:#000000;
	        color:#FFFFFF;
	        font-weight:bold;
	        text-align:center;
	        font-size: 30px;
	    }  
    </style>

</head>

<body>
    <header id="header">
        <div id="header_box">
            <%@ include file= "../include/header.jsp" %>
        </div>
    </header>

    <main>
        <!--? Hero Start -->
        <div class="slider-area2">
            <div class="slider-height2 d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap hero-cap2 pt-70">
                                <h2>shopping basket</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero End -->
        
          <!-- Courses area start -->
    <section class="pricing-area section-padding30 fix" id="back">
        <div class="container2">
        <div class="container-fluid">
        <!-- <div class="mainMenu col-lg-12 col-md-12 col-sm-12 col-xs-12" id="mainMenu">  -->
            <div class="row">
                 <div class="col-xl-12">
                    <div class="text-center mb-55">
                        <h2 style="color:black;">주문목록</h2>
                    </div>
                </div>
            </div>
            
            
            <!-- 사이드 메뉴 바 시작 -->
			<div class="sideMenu col-lg-3 col-md-3 col-sm-3 col-xs-3">
			</div>
            <!-- 사이드 바 메뉴 끝 -->
            
            
            
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                    <div class="properties mb-30" style="border:2px solid;"> <!-- margin-left:100px; -->
                        <div class="properties__card">
                            <%-- <div class="about-icon">
                               <img src="${pageContext.request.contextPath}/resources/assets/img/icon/price.svg" alt="">
                            </div> --%>
                            <div class="properties__caption">
                            
                            
                            
          		        
                    <ul>
                        <li>
                            <div class="allCheck">
                                <input type="checkbox" name="allCheck" id="allCheck" /><label for="allCheck">모두 선택</label>
                                <script>
                                    $("#allCheck").click(function() {
                                        var chk = $("#allCheck").prop("checked");
                                        if (chk) {
                                            $(".chBox").prop("checked", true);
                                        } else {
                                            $(".chBox").prop("checked", false);
                                        }
                                    });
                                </script>
                            </div>
                            
                            
                             <div class="delBtn">
                                <button type="button" class="genric-btn danger radius" style="font-size: 17px;">선택 삭제</button>
                                <script>
                                    $(".delBtn").click(function() {
                                        var confirm_val = confirm("정말 삭제하시겠습니까?");

                                        if (confirm_val) {
                                            var checkArr = new Array();

                                            $("input[class='chBox']:checked").each(function() {
                                                checkArr.push($(this).attr("data-cartNum"));
                                            });

                                            $.ajax({
                                                url: "/shop/deleteCart",
                                                type: "post",
                                                data: {
                                                    chbox: checkArr
                                                },

                                                success: function(result) {
                                                    if (result == 1) {
                                                        location.href = "/shop/cartList";

                                                    } else {
                                                        alert("삭제 실패");
                                                    }
                                                }
                                            });
                                        }
                                    });
                                </script>
                            </div>
                        </li>
                        
                        <c:set var="sum" value="0" />

                        <c:forEach items="${cartList}" var="cartList">
                            <li>
                                <div class="checkBox">
                                    <input type="checkbox" name="chBox" class="chBox" data-cartNum="${cartList.cartNumber}" />
                                    <script>
                                        $(".chBox").click(function() {
                                            $("#allCheck").prop("checked", false);
                                        });
                                    </script>
                                </div>

                                <div class="thumb">
                                    <img src="${cartList.goodsThumbImage}" />
                                </div>
                                <div class="gdsInfo">
                                    <p style="color:black;">
                                        <span style="color:black;">상품명&nbsp;:&nbsp;</span>${cartList.goodsName}<br />
                                        <span style="color:black;">개당 가격&nbsp;:&nbsp;</span>
                                        <fmt:formatNumber pattern="###,###,###" value="${cartList.goodsPrice}" /> 원<br />
                                        <span style="color:black;">구입 수량&nbsp;:&nbsp;</span>${cartList.cartStock} 개<br />
                                        <span style="color:black;">최종 가격&nbsp;:&nbsp;</span>
                                        <fmt:formatNumber pattern="###,###,###" value="${cartList.goodsPrice * cartList.cartStock}" /> 원
                                    </p>

                                    <div class="delete">
                                        <button type="button" id="delete" class="delete_${cartList.cartNumber}_btn" data-cartNum="${cartList.cartNumber}">삭제</button>
                                    </div>
                                    <script>
                                        $(".delete_${cartList.cartNumber}_btn").click(function() {
                                            var confirm_val = confirm("정말 삭제하시겠습니까?");

                                            if (confirm_val) {
                                                var checkArr = new Array();

                                                checkArr.push($(this).attr("data-cartNum"));

                                                $.ajax({
                                                    url: "/shop/deleteCart",
                                                    type: "post",
                                                    data: {
                                                        chbox: checkArr
                                                    },

                                                    success: function(result) {
                                                        if (result == 1) {
                                                            location.href = "/shop/cartList";
                                                        } else {
                                                            alert("삭제 실패");
                                                        }
                                                    }
                                                });
                                            }
                                        });
                                    </script>
                                </div>
                            </li>
                            <c:set var="sum" value="${sum + (cartList.goodsPrice * cartList.cartStock)}" />
                        </c:forEach>
                    </ul>    
                            
                     <div class="listResult">
                        <div class="sum">
                            총 합계 :
                            <fmt:formatNumber pattern="###,###,###" value="${sum}" />원
                        </div>

                        <div class="orderOpne">
                            <button type="button" class="genric-btn danger radius" style="font-size: 20px;">주문 정보 입력</button>
                        </div>

                        <script>
                            $(".orderOpne").click(function() {
                                $(".orderInfo").slideDown();
                                $(".orderOpne_bnt").slideUp();
                            });
                        </script>

                        <div class="orderInfo">
                            <form:form role="form" method="post" autocomplete="off">

                                <input type="hidden" name="amount" value="${sum}" />

                                <div class="inputArea">
                                    <label for="">수령인</label>
                                    <input type="text" name="orderRec" id="orderRec" required="required" />
                                </div>

                                <div class="inputArea">
                                    <label for="orderPhoneNumber">수령인 연락처</label>
                                    <input type="text" name="orderPhoneNumber" id="orderPhoneNumber" required="required" />
                                </div>        
                            
                            	 <div class="inputArea" id="postArea">
                                    <p>
                                        <input type="text" id="sample6_postcode" placeholder="우편번호">
                                        <input type="button" id="post_bt" class="genric-btn danger radius" style="color: #fff;" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
                                    </p>
                                    <p>
                                        <input type="text" name="userAddress1" id="sample6_address" placeholder="주소"><br>
                                        <input type="text" name="userAddress2" id="sample6_detailAddress" placeholder="상세주소">
                                        <input type="text" name="userAddress3" id="sample6_extraAddress" placeholder="참고항목">
                                    </p>
                                    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
                                    <script>
                                        function sample6_execDaumPostcode() {
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
                                                    if (data.userSelectedType === 'R') {
                                                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                                                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                                                        if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                                                            extraAddr += data.bname;
                                                        }
                                                        // 건물명이 있고, 공동주택일 경우 추가한다.
                                                        if (data.buildingName !== '' && data.apartment === 'Y') {
                                                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                                                        }
                                                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                                                        if (extraAddr !== '') {
                                                            extraAddr = ' (' + extraAddr + ')';
                                                        }
                                                        // 조합된 참고항목을 해당 필드에 넣는다.
                                                        document.getElementById("sample6_extraAddress").value = extraAddr;

                                                    } else {
                                                        document.getElementById("sample6_extraAddress").value = '';
                                                    }

                                                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                                                    document.getElementById('sample6_postcode').value = data.zonecode;
                                                    document.getElementById("sample6_address").value = addr;
                                                    // 커서를 상세주소 필드로 이동한다.
                                                    document.getElementById("sample6_detailAddress").focus();
                                                	}
                                            		}).open();
                                        			}
                                    				</script>
                                					</div>

							<span class="guide">상품주문 가이드</span>
                                <p style="color:black;" class="paymentMethod">결제방법<span style="color:black;">/주문방법</span></p>
                                <div class="single-features">
                                    <div class="features-icon">
                                        <img src="${pageContext.request.contextPath}/resources/assets/img/icon/check.svg" alt="">
                                    </div>
                                    <div class="features-caption">
                                        <p style="color:black;">1.총 결제 금액을 확인합니다.</p>
                                    </div>
                                </div>
                                <div class="single-features">
                                    <div class="features-icon">
                                        <img src="${pageContext.request.contextPath}/resources/assets/img/icon/check.svg" alt="">
                                    </div>
                                    <div class="features-caption">
                                        <p style="color:black;">2.수령 정보를 입력 후 결제 버튼을 누릅니다.</p>
                                    </div>
                                </div>
                                <div class="single-features">
                                    <div class="features-icon">
                                        <img src="${pageContext.request.contextPath}/resources/assets/img/icon/check.svg" alt="">
                                    </div>
                                    <div class="features-caption">
                                        <p style="color:black;">3.결제완료 후 주문 버튼을 누릅니다</p>
                                    </div>
                                </div>
                                <div class="single-features">
                                    <div class="features-icon">
                                        <img src="${pageContext.request.contextPath}/resources/assets/img/icon/check.svg" alt="">
                                    </div>
                                    <div class="features-caption">
                                        <p style="color:black;">4.주문목록 페이지에서 주문현황을 확인하세요.</p>
                                    </div>
                                </div>
                                <div class="single-features mb-20">
                                    <div class="features-icon">
                                        <img src="${pageContext.request.contextPath}/resources/assets/img/icon/check.svg" alt="">
                                    </div>
                                    <div class="features-caption">
                                        <p style="color:black;">5.배송현황이나 환불요청은 고객센터 문의</p>
                                    </div>
                                </div>
                               <!--  <a href="#" class="border-btn border-btn2">Join Now</a> -->
           
                                <div class="inputArea">
                                    <button type="button" id="order_btn1" class="genric-btn danger radius" style="font-size: 20px;">결제</button>

                                    <script>
                                        $("#order_btn1").on("click", function() {
                                            var IMP = window.IMP; // 생략가능
                                            IMP.init('imp76199502'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
                                            var msg;

                                            IMP.request_pay({
                                                pg: 'html5_inicis',
                                                pay_method: 'card',
                                                merchant_uid: 'merchant_' + new Date().getTime(),
                                                name: 'HBLY 상품결제',
                                                amount: ${sum},
                                                buyer_email: 'iamport@siot.do',
                                                buyer_name: '구매자이름',
                                                buyer_tel: '010-1234-5678',
                                                buyer_addr: '서울특별시 강남구 삼성동',
                                                buyer_postcode: '123-456'
                                            }, function(rsp) {
                                                if (rsp.success) {
                                                    var msg = '결제가 완료되었습니다.';
                                                    msg += '고유ID : ' + rsp.imp_uid;
                                                    msg += '상점 거래ID : ' + rsp.merchant_uid;
                                                    msg += '결제 금액 : ' + rsp.paid_amount;
                                                    msg += '카드 승인번호 : ' + rsp.apply_num;
                                                } else {
                                                    var msg = '결제에 실패하였습니다.';
                                                    msg += '에러내용 : ' + rsp.error_msg;
                                                }

                                                alert(msg);
                                            });
                                        });
                                    </script>
                                </div>

                                <div class="inputArea">
                                    <button type="submit" class="genric-btn danger radius" id="order_btn2" style="font-size: 20px;">주문</button>
                                    <button type="button" class="genric-btn danger radius" id="cancel_btn" style="font-size: 20px;">취소</button>

                                    <script>
                                        $("#cancel_btn").click(function() {
                                            $(".orderInfo").slideUp();
                                            $(".orderOpne_bnt").slideDown();
                                        });
                                    </script>
                                </div>
                                </form:form>
                                </div>
                                </div>
                                </div>
                                </div>
                                </div>
                                </div>
                                
      			<!-- 우측 스크롤 배너 -->
      			<div class="banner col-lg-3 col-md-3 col-sm-3 col-xs-3">
      				<div id="chase">
      					<img src= "${pageContext.request.contextPath}/resources/images/deliveryGuide.jpg"/>
      					<div id="chaseBar">빠른배송!</div>
      				</div>
      			</div>
      			<!-- 우측 스크롤 배너 끝 -->
                        </div>
                    </div>     
      		</div>
      		</section>
        <section id="service">
            <div class="service_box">
                <%@ include file= "../include/gymService.jsp" %>
            </div>
        </section>

        <footer id="footer">
            <div id="footer_box">
                <%@ include file= "../include/footer.jsp" %>
            </div>
        </footer>


        <section id="chat">
            <div id="chat_box">
                <%@ include file= "../include/chat.jsp" %>
            </div>
        </section>
    </main>

    <!-- Scroll Up -->
    <div id="back-top">
        <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
    </div>

    <!-- JS here -->

    <script src="${pageContext.request.contextPath}/resources/assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <!-- Jquery, Popper, Bootstrap -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.min.js"></script>
    <!-- Jquery Mobile Menu -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.slicknav.min.js"></script>

    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/slick.min.js"></script>
    <!-- One Page, Animated-HeadLin -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/wow.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/animated.headline.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.magnific-popup.js"></script>

    <!-- Date Picker -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/gijgo.min.js"></script>
    <!-- Nice-select, sticky -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.sticky.js"></script>

    <!-- counter , waypoint,Hover Direction -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.counterup.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.countdown.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/hover-direction-snake.min.js"></script>

    <!-- contact js -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/contact.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.form.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/mail-script.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.ajaxchimp.min.js"></script>

    <!-- Jquery Plugins, main Jquery -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/plugins.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>


</body>

</html>