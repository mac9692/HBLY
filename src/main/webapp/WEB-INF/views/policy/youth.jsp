<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
	<head>
		
		<title>HBLY</title>
		
		
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
