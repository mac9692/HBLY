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
					
					
					<div class="policy privacy" style="display: block;">
						<h1 style="text-align: center;">
							<strong>[고객의 개인정보를 위한 HBLY의 약속]</strong>
						</h1>
						
						<p>
						<br>
						<br>
						</p>
						
						<div>
							<br>
						</div>
						<p>
							HBLY는 고객이 HBLY에서 상품을 구매하고 배송받은 이후 전 과정에 걸쳐 빠르고 혁신적이며 안전한 쇼핑을 제공하기 위해 헌신하고 있습니다. 이러한 차별화된 경험을 통해 고객들이 "HBLY 없이 어떻게 살았을까"라고 말하는 세상을 만드는 것이 HBLY의 목표입니다. HBLY는 고객의 개인정보를 보호하면서 이러한 개인 맞춤형 온라인 쇼핑서비스를 제공하는 것이 가능하다고 믿습니다. 따라서 고객의 개인정보를 보호하는 것은 HBLY의 중요한 사업 원칙입니다.  
						</p>
						<p>
							<strong>고객의 개인정보는 고객의 것이며 HBLY는 이를 항상 존중합니다.</strong>
						</p>
						<p>
							HBLY는 고객이 믿고 맡긴 개인정보를 제3자와 거래하지 않습니다. 주문 처리 또는 고객 경험개선을 위해 수탁업체에 제한적으로 정보를 제공할 수 있으나, 그 경우 반드시 업체명과 제공되는 정보를 고지합니다. HBLY는 데이터 기반의 회사입니다. 데이터를 활용하여 고객 경험을 개선한다는 우리의 설립 원칙은 지금까지도 유효합니다. 
						</p>
						<p>
							<strong>HBLY의 혁신은 고객의 개인정보를 보호하며 맞춤형 쇼핑 경험을 제공하는 데서 시작합니다.</strong>
						</p>
						<p>
							고객의 데이터를 기반으로 우리는 빠르고 안전한 개인 맞춤형 쇼핑 경험을 제공하고 혁신해 나갑니다. 예를 들어 고객의 개인별 니즈와 선호도에 따른 맞춤화된 추천 서비스를 제공하고 고객이 원하는 시간, 장소 및 방식에 맞게 HBLY맨 또는 HBLY 플렉스가 상품을 배송합니다. 
							<br>
							또한 로켓페이와 같은 새롭고 매력적인 서비스 개발의 중심에는 개인정보에 대한 이해, 그리고 보안과 개인정보보호에 대한 강력한 의지가 반영되어 있습니다. HBLY 자체적으로 개발한 로켓페이는 사용이 편리한 결제 플랫폼으로, 고도의 암호화와 데이터 분석을 통해 빠르고 안전하게, 터치 한 번으로 결제를 가능하게 합니다.  
						</p>
						<p>
							<strong>HBLY는 세계 최고의 전문가와 기술로 고객을 보호합니다.</strong>
						</p>
						<p>
							안전하고 신뢰할 수 있는 서비스에 대한 중요성은 쿠팡의 기업 문화 전반에 깊숙이 뿌리내리고 있습니다.
							<br>
							HBLY는 세계 최고 수준의 시스템 및 기술력을 바탕으로 고객의 개인정보를 안전하게 보호합니다. HBLY 보안팀은 관련 시스템을 24시간 끊김없이 모니터링하며 지속적으로 진화하는 사이버 위협에 맞추어 프로세스를 강화합니다. 또한 글로벌 최고 수준의 기준에 부합하고 보다 엄격한 내부 기준을 마련하기 위해 보안과 개인정보보호에 지속적으로 많은 투자를 하고 있습니다. 보안 및 개인정보보호 전담팀은 임직원을 대상으로 데이터 취급방법에 대한 교육을 실시합니다. 임직원 모두는 기존 관행에 언제든지 문제를 제기하도록 장려되며, 고객의 개인정보 보호에 대한 경각심을 갖고 노력을 기울이는 것을 공동의 책임으로 여기고 있습니다.
							<br>
							더 나아가 HBLY는 관련 법령을 준수하며 정부 및 규제 당국과 긴밀히 협력하여 이커머스 산업의 미래를 만들어 나가고 있습니다. 
						</p>
						
						
						
						
						<p>
						<br>
						<br>
						</p>
						
				
				
						<h1 style="text-align: center;">[개인정보 처리방침]</h1>
						<p>
						<br>
						</p>
						<p>
							고객의 개인정보 보호는 HBLY 주식회사(이하 'HBLY')의 중요한 사업 원칙입니다. HBLY는 지속적으로 고객에게 더 높은 수준의 서비스, 편리함과 가치를 희생하며 서비스 목표를 달성하지 않습니다.
						</p>
						<p>
						<br>
						</p>
						<p>
							따라서, HBLY가 수행하는 모든 활동은 정보통신망 이용촉진 및 정보보호 등에 관한 법률(이하 '정보통신망법')과 개인정보 보호법 등 국내 관련 법령을 준수하며, 본 개인정보 처리방침을 따릅니다.
						</p>
						<p>
							본 개인정보 처리방침은 HBLY의 개인정보 처리와 관련한 정보를 제공하고 고객이 가진 권리 및 어떻게 그 권리를 행사할 수 있는 지에 대하여 설명합니다. 마지막으로, HBLY의 서비스 이용 중 개인정보와 관련하여 문의가 있을 경우 연락할 수 있는 개인정보 보호책임자 및 담당자의 연락처를 안내합니다.
						</p>
						<p>
							HBLY는 고객의 개인정보와 관련된 변경사항이 생길 경우 개인정보 처리방침 개정을 통해 빠른 시일 안에 고객에게 안내합니다.
						</p>
						
						
						<p>
						<br>
						<br>
						</p>
						<p>
							<strong>개인정보의 파기</strong>
						</p>
						<p>
							수집된 개인정보의 보유 및 이용기간은 서비스 이용계약 체결(회원가입)시부터 서비스 이용계약 해지(탈퇴신청, 직권탈퇴포함)시까지 입니다. 또한 동의 해지 시 고객의 개인정보를 상기 명시한 정보보유 사유에 따라 일정 기간 저장하는 자료를 제외하고는 지체 없이 파기합니다. 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각 등을 통하여 파기하고, 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법 또는 물리적 방법을 사용하여 파기합니다.
						</p>
						<p>
							수집 및 이용목적이 달성된 개인정보의 경우 별도의 DB에 옮겨져 내부규정 및 관련 법령을 준수하여 안전하게 보관되며, 정해진 기간이 종료되었을 때 지체없이 파기됩니다. 이때, 별도의 DB로 옮겨진 개인정보는 회원이 동의한 목적을 초과하거나 혹은 법률이 정한 경우 외의 다른 목적으로 이용되지 않습니다.
						</p>
						<p>
							HBLY를 최종 이용 후 1년 동안 이용 기록이 없는 고객(장기미이용회원)의 개인정보는 별도로 분리하여 안전하게 관리하게 되며, 대상자에게는 분리 보관 처리일을 기준으로 하여 최소 30일 이전에 이메일 주소를 통해 안내를 합니다. 단,통신비밀보호법, 전자상거래 등에서의 소비자보호에 관한 법률 등의 관계법령의 규정에 의하여 보존할 필요가 있는 경우 규정된 기간 동안 고객의 개인정보를 보관합니다.
						</p>
						
						<p>
						<br>
						<br>
						</p>
						<p>
							<strong>고지의 의무</strong>
						</p>
						<p>
							이 개인정보 처리방침은 시행일로부터 적용됩니다. 고객의 개인정보 권리에 중요한 변경 사유가 발생하는 경우 최소 14일전에 HBLY 공지사항을 통하여 고지합니다. 이 외의 다른 변경사항이 발생하는 경우에는 변경사항의 시행 최소 7일 전부터 공지사항을 통해 고지합니다.
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
