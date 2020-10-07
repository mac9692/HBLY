<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
	<head>
		
		<title>HBLY</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<!-- 구글 -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		
		<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
				
		<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	type="text/css">
	<link rel="stylesheet"
		href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous" style=""></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
		integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
		crossorigin="anonymous" style=""></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous" style=""></script>

		
		
		<style>
		 body { font-family:'맑은 고딕', verdana; padding:0; margin:0; }
		 ul { padding:0; margin:0; list-style:none;  }
		
		 div#root { width:90%; margin:0 auto; }
		 
		 header#header { font-size:60px; padding:20px 0; }
		 header#header h1 a { color:#000; font-weight:bold; }
		 
		 nav#nav { padding:10px; text-align:right; }
		 nav#nav ul li { display:inline-block; margin-left:10px; }
		
		   section#container { padding:20px 0; border-top:2px solid #eee; border-bottom:2px solid #eee; }
		 section#container::after { content:""; display:block; clear:both; }
		 aside { float:left; width:200px; }
		 div#container_box { float:right; width:calc(100% - 200px - 20px); }
		 
		 aside ul li { text-align:center; margin-bottom:10px; }
		 
		 aside ul li a { display:block; width:100%; padding:10px 0;}
		 aside ul li a:hover { background:#eee; }
		 
		 footer#footer { background:#f9f9f9; padding:20px; }
		 footer#footer ul li { display:inline-block; margin-right:10px; }
		</style>		
		
		
		<style>

		 body { margin:0; padding:0; font-family:'맑은 고딕', verdana; }
		 a { color:#05f; text-decoration:none; }
		 a:hover { text-decoration:underline; }
		 
		 h1, h2, h3, h4, h5, h6 { margin:0; padding:0; }
		 ul, lo, li { margin:0; padding:0; list-style:none; }
		
		 /* ---------- */
		 
		 div#root { width:900px; margin:0 auto; }
		 header#header { }
		 nav#nav { }
		 section#container { }
		  section#content { float:right; width:700px; }
		  aside#aside { float:left; width:180px; }
		  section#container::after { content:""; display:block; clear:both; } 
		 footer#footer { background:#eee; padding:20px; }
		 
		 /* ---------- */
		 
		 header#header div#header_box { text-align:center; padding:30px 0; }
		 header#header div#header_box h1 { font-size:50px; }
		 header#header div#header_box h1 a { color:#000; }
		 
		 nav#nav div#nav_box { font-size:14px; padding:10px; text-align:right; }
		 nav#nav div#nav_box li { display:inline-block; margin:0 10px; }
		 nav#nav div#nav_box li a { color:#333; }
		 
		 section#container { }
		 
		 aside#aside h3 { font-size:22px; margin-bottom:20px; text-align:center; }
		 aside#aside li { font-size:16px; text-align:center; }
		 aside#aside li a { color:#000; display:block; padding:10px 0; }
		 aside#aside li a:hover { text-decoration:none; background:#eee; }
		 
		 aside#aside li { position:relative; }
		 aside#aside li:hover { background:#eee; }   
		 aside#aside li > ul.low { display:none; position:absolute; top:0; left:180px;  }
		 aside#aside li:hover > ul.low { display:block; }
		 aside#aside li:hover > ul.low li a { background:#eee; border:1px solid #eee; }
		 aside#aside li:hover > ul.low li a:hover { background:#fff;}
		 aside#aside li > ul.low li { width:180px; }
		 
		 
		 
		 
		 footer#footer { margin-top:100px; border-radius:50px 50px 0 0; }
		 footer#footer div#footer_box { padding:0 20px; }
		 
		</style>
		
	</head>
	<body>
		<div id="root">
			<header id="header">
				<div id="header_box">
					<%@ include file= "../include/header.jsp" %>
				</div>
			</header>
			
			<nav id="nav">
				<div id="nav_box">
					<%@ include file= "../include/nav.jsp" %>
				</div>
			</nav>
			
			<section id="container">
				<div id="container_box">
					<div class="content-header">
						<h3 class="policy-title">
							<strong>약관 및 정책</strong>
						</h3>
						<p>
							<a href="/">홈</a>
							>
							<a href="/">고객센터</a>
							>
							<a href="/policy/terms">약관 및 정책</a>
						</p>
					</div>
					
					
					<div class="policy-menu">
						<a href="/policy/terms">HBLY 이용 약관</a>
						<a href="/policy/privacy">개인정보 처리방침</a>
						<a href="/policy/commercial">HBLY 광고 정책</a>
						<a href="/policy/youth">청소년 보호정책</a>
					</div>
					
					
					<div class="policy terms" style="display: block;">
						<h1 style="text-align: center;">
							<strong>[HBLY 청소년 보호 정책]</strong>
						</h1>
						
						<p>
						<br>
						<br>
						</p>
						
						<p>
							HBLY 주식회사(이하 “회사”라 합니다)은 정보통신망을 통하여 유통되는 유해정보 및 유해환경으로부터 청소년을 보호하기 위하여 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』, 『청소년 보호법』,『전자상거래 등에서의 소비자보호에 관한 법률』등 관련법령에 근거하여 청소년보호정책을 아래와 같이 수립/시행하고 있습니다.
						</p>
						
						<p>
						<br>
						<br>
						</p>
						
						<p>
							<b>1. 청소년유해매체물 접근제한 및 관리</b>
						</p>
						<p>
							“회사”는 19세 미만의 청소년들이 유해정보에 접근할 수 없도록 별도의 인증장치를 마련하고 있으며, 동시에 청소년유채매체물 표시를 통해 청소년유해정보가 노출되지 않도록 사전예방조치를 강구하고 있습니다.
						</p>
						
						<p>
						<br>
						<br>
						</p>
						
						<p>
							<b>2. 청소년유해상품 판매제한</b>
						</p>
						<p>
							“회사”는 청소년유해물건, 약품, 청소년유해매체 등 청소년에게 유해 할 수 있는 상품의 주문 및 판매를 제한하고 있습니다.
						</p>
						
						
						<p>
						<br>
						<br>
						</p>
						
						<p>
							<b>3. 청소년보호 관련 교육실시</b>
						</p>
						<p>
							“회사”는 업무종사자들을 대상으로 청소년보호 관련법령 및 보호정책, 대처방안 등의 교육을 실시하고 있습니다.
						</p>
					
						
					</div>
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				<aside id="aside">
					 <%@ include file="../include/aside.jsp" %>
				</aside>
				</div>
			</section>
			
			<footer id="foorter">
				<div id="footer_box">
					<%@ include file= "../include/footer.jsp" %>
				</div>
			</footer>
		</div>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
			<!-- 챗봇 -->
			<div id="frogue-container" class="position-right-bottom"
			      data-chatbot="6de51246-5130-49fc-abbd-cb9c4dde9ddb"
			      data-user="사용자ID"
			      data-init-key="value">
			</div>
			<!-- data-init-식별키=값 으로 셋팅하면 챗플로우에 파라미터와 연동가능. 식별키는 소문자만 가능 -->
			<script>
			(function(d, s, id){
			    var js, fjs = d.getElementsByTagName(s)[0];
			    if (d.getElementById(id)) {return;}
			    js = d.createElement(s); js.id = id;
			    js.src = "https:\/\/danbee.ai/js/plugins/frogue-embed/frogue-embed.min.js";
			    fjs.parentNode.insertBefore(js, fjs);
			}(document, 'script', 'frogue-embed'));
			</script>
			
			<script>
			if (document.addEventListener) {
			// Mozilla, Opera, Webkit
			document.addEventListener("DOMContentLoaded", function () {
			document.removeEventListener("DOMContentLoaded", arguments.callee, false);
			htmlReady();
			}, false);
			} else if (document.attachEvent) {
			// Internet Explorer
			document.attachEvent("onreadystatechange", function () {
			if (document.readyState === "complete") {
			document.detachEvent("onreadystatechange", arguments.callee);
			htmlReady();
			}
			});
			}
			var htmlReadyTimer = null;
			//DOM이 모두 로드 되었을 때
			function htmlReady () {
			htmlReadyTimer = setTimeout(function() {
			if (frogueReadyFlag) {
			froguePushEvent('landingEvent', {event_name: '', event_value1: '', event_value2: ''});
			htmlReadyTimer = null;
			} else {
			htmlReady();
			}
			}, 500);
			}
			</script> 
					
	</body>
</html>
